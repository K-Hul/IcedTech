// draw_occlusion.cpp
//

#include "engine_precompiled.h"
#include "../tr_local.h"

enum rvnmOcclusionQueryState
{
	OCCLUSION_QUERY_STATE_HIDDEN,
	OCCLUSION_QUERY_STATE_VISIBLE,
	OCCLUSION_QUERY_STATE_WAITING
};

class rvmOcclusionQuery {
public:
	rvmOcclusionQuery()
	{
		glGenQueries(1, &id);
		queryState = OCCLUSION_QUERY_STATE_HIDDEN;
		queryStartTime = -1;
	}

	~rvmOcclusionQuery() {
		queryStartTime = -1;
		glDeleteQueries(1, &id);
	}

	void RunQuery(viewLight_t*light)
	{
		this->light = light;

		if (queryState != OCCLUSION_QUERY_STATE_WAITING)
		{
			queryState = OCCLUSION_QUERY_STATE_WAITING;

			queryStartTime = Sys_Milliseconds();
			queryTimeOutTime = queryStartTime + SEC2MS(r_occlusionQueryTimeOut.GetInteger());

			glBeginQuery(GL_ANY_SAMPLES_PASSED, id);
			RB_DrawElementsImmediate(light->frustumTris);
			glEndQuery(GL_ANY_SAMPLES_PASSED);
		}
	}

	viewLight_t* GetViewLight() { return light; }

	bool IsVisible() {
		GLuint passed = INT_MAX;
		
		passed = 0;
		glGetQueryObjectuiv(id, GL_QUERY_RESULT, &passed);
		if (passed) {
			return true;
		}

		return false;
	}

	int GetQueryStartTime(void) {
		return queryStartTime;
	}
	
	bool IsQueryStale(void) {
		int currentTime = Sys_Milliseconds();
		return queryTimeOutTime < currentTime;
	}

private:
	int queryStartTime;
	int queryTimeOutTime;
	GLuint id;
	viewLight_t* light;
	rvnmOcclusionQueryState queryState;
};

void RB_Reap_Occlusion(viewLight_t* vLight) {
	if (vLight->lightDef->currentOcclusionQuery) {
		// Only reap the occlusion query if it isn't stale.
		if (!vLight->lightDef->currentOcclusionQuery->IsQueryStale())
		{
			if (vLight->lightDef->currentOcclusionQuery->IsVisible()) {
				vLight->lightDef->visibleFrame = tr.frameCount;

				backEnd.perfMetrics.gpuCulledLights++;

				if (!vLight->lightDef->parms.noShadows)
					backEnd.perfMetrics.shadowedLightCount++;
			}
			else
			{
				// If we are inside of the light volume then assume we are visible.
				idBounds bounds = vLight->lightDef->globalLightBounds;
				if (bounds.ContainsPoint(backEnd.viewDef->renderView.vieworg)) {
					vLight->lightDef->visibleFrame = tr.frameCount;

					backEnd.perfMetrics.gpuCulledLights++;

					if (!vLight->lightDef->parms.noShadows)
						backEnd.perfMetrics.shadowedLightCount++;
				}
			}
		}

		delete vLight->lightDef->currentOcclusionQuery;
		vLight->lightDef->currentOcclusionQuery = NULL;
	}
}

void RB_Draw_LightOcclusion(void) {
	viewLight_t		*vLight;

	if (backEnd.viewDef->viewLights == NULL)
		return;

	// the scissor may be smaller than the viewport for subviews
	if (r_useScissor.GetBool() && !backEnd.ignoreScissorOptimization) {
		glScissor(tr.viewportOffset[0] + backEnd.viewDef->viewport.x1 + backEnd.viewDef->scissor.x1,
			tr.viewportOffset[1] + backEnd.viewDef->viewport.y1 + backEnd.viewDef->scissor.y1,
			backEnd.viewDef->scissor.x2 + 1 - backEnd.viewDef->scissor.x1,
			backEnd.viewDef->scissor.y2 + 1 - backEnd.viewDef->scissor.y1);
		backEnd.currentScissor = backEnd.viewDef->scissor;
	}

	renderProgManager.BindShader_Depth();

	RB_SetMVP(backEnd.viewDef->worldSpace.mvp);

	renderProgManager.CommitUniforms();

	glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
	glDepthMask(GL_FALSE);

	for (vLight = backEnd.viewDef->viewLights; vLight; vLight = vLight->next) {
		RB_Reap_Occlusion(vLight);

		backEnd.perfMetrics.frustumCulledLights++;

		rvmOcclusionQuery*query = new rvmOcclusionQuery();
		query->RunQuery(vLight);
		vLight->lightDef->currentOcclusionQuery = query;
	}

	glDepthMask(GL_TRUE);
	glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);

	renderProgManager.Unbind();
}