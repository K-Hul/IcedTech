# DarkEngine.cmake
#

set(src_engine
	# Collision System
	./cm/CollisionModel.cpp
	./cm/CollisionModel_trace.cpp
	./cm/CollisionModel.h
	./cm/CollisionModel_rotate.cpp
	./cm/CollisionModel_contents.cpp
	./cm/CollisionModel_debug.cpp
	./cm/CollisionModel_files.cpp
	./cm/CollisionModel_local.h
	./cm/CollisionModel_contacts.cpp
	./cm/CollisionModel_translate.cpp
	./cm/CollisionModel_load.cpp

	# Framework
	./framework/async
	./framework/BuildDefines.h
	./framework/BuildVersion.h
	./framework/CmdSystem.cpp
	./framework/CmdSystem.h
	./framework/Common.cpp
	./framework/Common.h
	./framework/Compressor.cpp
	./framework/Compressor.h
	./framework/Console.cpp
	./framework/Console.h
	./framework/ConsoleHistory.cpp
	./framework/ConsoleHistory.h
	./framework/CVarSystem.cpp
	./framework/CVarSystem.h
	./framework/DeclAF.cpp
	./framework/DeclAF.h
	./framework/DeclEntityDef.cpp
	./framework/DeclEntityDef.h
	./framework/DeclManager.cpp
	./framework/DeclManager.h
	./framework/DeclPDA.cpp
	./framework/DeclPDA.h
	./framework/DeclSkin.cpp
	./framework/DeclSkin.h
	./framework/DeclTable.cpp
	./framework/DeclTable.h
	./framework/DemoChecksum.h
	./framework/DemoFile.cpp
	./framework/DemoFile.h
	./framework/EditField.cpp
	./framework/EditField.h
	./framework/EventLoop.cpp
	./framework/EventLoop.h
	./framework/File.cpp
	./framework/File.h
	./framework/FileSystem.cpp
	./framework/FileSystem.h
	./framework/KeyInput.cpp
	./framework/KeyInput.h
	./framework/Licensee.h
	./framework/ParallelJobList.cpp
	./framework/ParallelJobList.h
	./framework/ParallelJobListLocal.h
	./framework/ParallelJobList_JobHeaders.h
	./framework/Session.cpp
	./framework/Session.h
	./framework/Session_local.h
	./framework/Session_menu.cpp
	./framework/Thread.cpp
	./framework/Thread.h
	./framework/Unzip.cpp
	./framework/Unzip.h
	./framework/UsercmdGen.cpp
	./framework/UsercmdGen.h
	./framework/async/AsyncClient.cpp
	./framework/async/AsyncClient.h
	./framework/async/AsyncNetwork.cpp
	./framework/async/AsyncNetwork.h
	./framework/async/AsyncServer.cpp
	./framework/async/AsyncServer.h
	./framework/async/MsgChannel.cpp
	./framework/async/MsgChannel.h
	./framework/async/NetworkSystem.cpp
	./framework/async/NetworkSystem.h
	./framework/async/ServerScan.cpp
	./framework/async/ServerScan.h
	
	#NavMesh
	./navigation/Nav_File.cpp
	./navigation/Nav_public.h
	./navigation/Nav_Manager.cpp
	./navigation/Nav_local.h

	#Model
	./model/Model.cpp
	./model/Model.h
	./model/ModelDecal.cpp
	./model/ModelDecal.h
	./model/ModelManager.cpp
	./model/ModelManager.h
	./model/ModelOverlay.cpp
	./model/ModelOverlay.h
	./model/Model_ase.cpp
	./model/Model_ase.h
	./model/Model_mdr.cpp
	./model/Model_mdr.h
	./model/Model_beam.cpp
	./model/Model_ColladaHelper.h
	./model/Model_ColladaParser.cpp
	./model/Model_ColladaParser.h
	./model/Model_liquid.cpp
	./model/Model_local.h
	./model/Model_lwo.cpp
	./model/Model_lwo.h
	./model/Model_ma.cpp
	./model/Model_ma.h
	./model/Model_md3.cpp
	./model/Model_md3.h
	./model/Model_md5.cpp
	./model/Model_fx.cpp
	./model/Model_obj.cpp
	./model/Model_sprite.cpp
	./model/Model_terrain.cpp

	#Renderer
	./renderer/BinaryImage.cpp
	./renderer/BinaryImage.h
	./renderer/BinaryImageData.h
	./renderer/BufferObject.cpp
	./renderer/BufferObject.h
	./renderer/Cinematic.cpp
	./renderer/Cinematic.h
	./renderer/Color
	./renderer/render/render.cpp
	./renderer/render/render_common.cpp
	./renderer/render/render_depthfill.cpp
	./renderer/render/render_feedback.cpp
	./renderer/render/render_interaction.cpp
	./renderer/render/render_occlusion.cpp
	./renderer/render/render_particles.cpp
	./renderer/render/render_shadow.cpp
	./renderer/render/render_skin.cpp
	./renderer/DXT
	./renderer/GLMatrix.cpp
	./renderer/GLMatrix.h
	./renderer/GpuTimer.cpp
	./renderer/GpuTimer.h
	./renderer/GraphicsContext.h
	./renderer/GuiModel.cpp
	./renderer/GuiModel.h
	./renderer/Image.h
	./renderer/ImageManager.cpp
	./renderer/ImageOpts.h
	./renderer/Image_files.cpp
	./renderer/Image_GL.cpp
	./renderer/Image_intrinsic.cpp
	./renderer/Image_load.cpp
	./renderer/Image_process.cpp
	./renderer/Image_program.cpp
	./renderer/Interaction.cpp
	./renderer/Interaction.h
	./renderer/Material.cpp
	./renderer/Material.h
	./renderer/MegaTexture.cpp
	./renderer/MegaTexture.h
	./renderer/MegaTextureBuild.cpp
	./renderer/MegaTextureFile.cpp
	./renderer/RenderEntity.cpp
	./renderer/RenderMatrix.cpp
	./renderer/RenderMatrix.h
	./renderer/RenderProgs.cpp
	./renderer/RenderProgs.h
	./renderer/RenderProgs_GLSL.cpp
	./renderer/RenderShadows.cpp
	./renderer/RenderSystem.cpp
	./renderer/RenderSystem.h
	./renderer/RenderSystem_init.cpp
	./renderer/RenderTexture.cpp
	./renderer/RenderTexture.h
	./renderer/RenderWorld.cpp
	./renderer/RenderWorld.h
	./renderer/RenderWorld_demo.cpp
	./renderer/RenderWorld_load.cpp
	./renderer/RenderWorld_local.h
	./renderer/simplex.h
	./renderer/tr_backend.cpp
	./renderer/tr_deform.cpp
	./renderer/tr_font.cpp
	./renderer/tr_guisurf.cpp
	./renderer/tr_light.cpp
	./renderer/tr_lightrun.cpp
	./renderer/tr_local.h
	./renderer/tr_main.cpp
	./renderer/tr_orderIndexes.cpp
	./renderer/tr_polytope.cpp
	./renderer/tr_rendertools.cpp
	./renderer/tr_subview.cpp
	./renderer/tr_trace.cpp
	./renderer/tr_trisurf.cpp
	./renderer/VertexCache.cpp
	./renderer/VertexCache.h
	./renderer/VirtualTexture.h
	./renderer/VirtualTextureFeedbackJob.cpp
	./renderer/VirtualTextureSystem.cpp
	./renderer/VirtualTextureTranscode.cpp
	./renderer/Color/ColorSpace.cpp
	./renderer/Color/ColorSpace.h
	./renderer/DXT/DXTCodec.h
	./renderer/DXT/DXTDecoder.cpp
	./renderer/DXT/DXTEncoder.cpp

	# Sound System
	./sound/snd_emitter.cpp
	./sound/snd_local.h
	./sound/snd_shader.cpp
	./sound/snd_system.cpp
	./sound/snd_world.cpp
	./sound/sound.h
	./sound/SoundVoice.cpp
	./sound/SoundVoice.h
	./sound/WaveFile.cpp
	./sound/WaveFile.h
	./sound/OpenAL
	./sound/OpenAL/AL_SoundHardware.cpp
	./sound/OpenAL/AL_SoundHardware.h
	./sound/OpenAL/AL_SoundSample.cpp
	./sound/OpenAL/AL_SoundSample.h
	./sound/OpenAL/AL_SoundVoice.cpp
	./sound/OpenAL/AL_SoundVoice.h

	# System
	./sys/sys_intrinsics.h
	./sys/sys_local.cpp
	./sys/sys_local.h
	./sys/sys_public.h
	./sys/sys_threading.h
	./sys/win32/eax.h
	./sys/win32/eaxguid.lib
	./sys/win32/rc
	./sys/win32/sdk
	./sys/win32/win_cpu.cpp
	./sys/win32/win_glimp.cpp
	./sys/win32/win_input.cpp
	./sys/win32/win_local.h
	./sys/win32/win_main.cpp
	./sys/win32/win_net.cpp
	./sys/win32/win_qgl.cpp
	./sys/win32/win_shared.cpp
	./sys/win32/win_snd.cpp
	./sys/win32/win_syscon.cpp
	./sys/win32/win_taskkeyhook.cpp
	./sys/win32/win_thread.cpp
	./sys/win32/win_wndproc.cpp
	./sys/win32/rc/CreateResourceIDs.cpp

	./ui/BindWindow.cpp
	./ui/BindWindow.h
	./ui/ChoiceWindow.cpp
	./ui/ChoiceWindow.h
	./ui/DeviceContext.cpp
	./ui/DeviceContext.h
	./ui/EditWindow.cpp
	./ui/EditWindow.h
	./ui/FieldWindow.cpp
	./ui/FieldWindow.h
	./ui/GameBearShootWindow.cpp
	./ui/GameBearShootWindow.h
	./ui/GameBustOutWindow.cpp
	./ui/GameBustOutWindow.h
	./ui/GameSSDWindow.cpp
	./ui/GameSSDWindow.h
	./ui/GuiScript.cpp
	./ui/GuiScript.h
	./ui/ListGUI.cpp
	./ui/ListGUI.h
	./ui/ListGUILocal.h
	./ui/ListWindow.cpp
	./ui/ListWindow.h
	./ui/MarkerWindow.cpp
	./ui/MarkerWindow.h
	./ui/Rectangle.h
	./ui/RegExp.cpp
	./ui/RegExp.h
	./ui/RegExp_old.h
	./ui/RenderWindow.cpp
	./ui/RenderWindow.h
	./ui/SimpleWindow.cpp
	./ui/SimpleWindow.h
	./ui/SliderWindow.cpp
	./ui/SliderWindow.h
	./ui/UserInterface.cpp
	./ui/UserInterface.h
	./ui/UserInterfaceLocal.h
	./ui/Window.cpp
	./ui/Window.h
	./ui/Winvar.cpp
	./ui/Winvar.h
)

set(src_launcher
	./sys/win32/win_launcher.cpp
	./sys/win32/rc/doom.rc
	./sys/win32/rc/doom_resource.h
	./sys/win32/rc/res/BEVEL.BMP
	./sys/win32/rc/res/BITMAP2.BMP
	./sys/win32/rc/res/BMP00001.BMP
	./sys/win32/rc/res/bmp00002.bmp
	./sys/win32/rc/res/bmp00003.bmp
	./sys/win32/rc/res/bmp00004.bmp
	./sys/win32/rc/res/bmp00005.bmp
	./sys/win32/rc/res/BMP0002.BMP
	./sys/win32/rc/res/cchsb.bmp
	./sys/win32/rc/res/ccrgb.bmp
	./sys/win32/rc/res/dbg_back.bmp
	./sys/win32/rc/res/dbg_breakpoint.ico
	./sys/win32/rc/res/dbg_current.ico
	./sys/win32/rc/res/dbg_currentline.ico
	./sys/win32/rc/res/dbg_empty.ico
	./sys/win32/rc/res/dbg_open.bmp
	./sys/win32/rc/res/dbg_toolbar.bmp
	./sys/win32/rc/res/DEFTEX.WAL
	./sys/win32/rc/res/doom.ico
	./sys/win32/rc/res/ENDCAP.BMP
	./sys/win32/rc/res/fpoint.cur
	./sys/win32/rc/res/fxeditor.ico
	./sys/win32/rc/res/fxed_link.ico
	./sys/win32/rc/res/fxed_toolbar.bmp
	./sys/win32/rc/res/GetString.htm
	./sys/win32/rc/res/guied.ico
	./sys/win32/rc/res/guied_collapse.ico
	./sys/win32/rc/res/guied_expand.ico
	./sys/win32/rc/res/guied_hand.cur
	./sys/win32/rc/res/guied_nav_visible.ico
	./sys/win32/rc/res/guied_nav_visibledisabled.ico
	./sys/win32/rc/res/guied_scripts.ico
	./sys/win32/rc/res/guied_scripts_white.ico
	./sys/win32/rc/res/guied_viewer_toolbar.bmp
	./sys/win32/rc/res/IBEVEL.BMP
	./sys/win32/rc/res/icon2.ico
	./sys/win32/rc/res/IENDCAP.BMP
	./sys/win32/rc/res/logo_sm3dfx.bmp
	./sys/win32/rc/res/matedtree.bmp
	./sys/win32/rc/res/MaterialEditor.ico
	./sys/win32/rc/res/MEFileToolbar.bmp
	./sys/win32/rc/res/MEtoolbar.bmp
	./sys/win32/rc/res/me_disabled_icon.ico
	./sys/win32/rc/res/me_enabled.ico
	./sys/win32/rc/res/me_off_icon.ico
	./sys/win32/rc/res/me_on_icon.ico
	./sys/win32/rc/res/PropTree.rc2
	./sys/win32/rc/res/Q.BMP
	./sys/win32/rc/res/qe3.ico
	./sys/win32/rc/res/Radiant.ico
	./sys/win32/rc/res/RADIANT3.GIF
	./sys/win32/rc/res/RadiantDoc.ico
	./sys/win32/rc/res/shaderbar.bmp
	./sys/win32/rc/res/shaderdoc.ico
	./sys/win32/rc/res/shaderframe.ico
	./sys/win32/rc/res/spliter.cur
	./sys/win32/rc/res/Toolbar.bmp
	./sys/win32/rc/res/TOOLBAR1.BMP
	./sys/win32/rc/res/TOOLBAR2.BMP
	./sys/win32/rc/res/VIEWDEFA.BMP
	./sys/win32/rc/res/VIEWOPPO.BMP
)

set(src_external
	./external/zlib/adler32.c
	./external/zlib/compress.c
	./external/zlib/crc32.c
	./external/zlib/deflate.c
	./external/zlib/gzclose.c
	./external/zlib/gzlib.c
	./external/zlib/gzread.c
	./external/zlib/gzwrite.c
	./external/zlib/infback.c
	./external/zlib/inffast.c
	./external/zlib/inflate.c
	./external/zlib/inftrees.c
	./external/zlib/trees.c
	./external/zlib/uncompr.c
	./external/zlib/zutil.c
	./external/zlib/crc32.h
	./external/zlib/deflate.h	
	./external/zlib/gzguts.h
	./external/zlib/inffast.h
	./external/zlib/inffixed.h
	./external/zlib/inflate.h
	./external/zlib/inftrees.h
	./external/zlib/trees.h
	./external/zlib/zconf.h
	./external/zlib/zconf.h.in
	./external/zlib/zlib.h
	./external/zlib/zutil.h
	./external/zlib/minizip/ioapi.h
	./external/zlib/minizip/unzip.h
	./external/zlib/minizip/zip.h

	./external/glew/glew.c
	./external/glew/glew.h
	./external/glew/qgllib.h
	./external/glew/wglew.h

	./external/png/png.c
	./external/png/pngerror.c
	./external/png/pnggccrd.c
	./external/png/pngget.c
	./external/png/pngmem.c
	./external/png/pngpread.c
	./external/png/pngread.c
	./external/png/pngrio.c
	./external/png/pngrtran.c
	./external/png/pngrutil.c
	./external/png/pngset.c
	./external/png/pngtrans.c
	./external/png/pngvcrd.c
	./external/png/pngwio.c
	./external/png/pngwrite.c
	./external/png/pngwtran.c
	./external/png/pngwutil.c
	./external/png/png.h
	./external/png/pngconf.h


	./external/recast/Include/Recast.h
	./external/recast/Include/RecastAlloc.h
	./external/recast/Include/RecastAssert.h
	./external/recast/Source/Recast.cpp
	./external/recast/Source/RecastAlloc.cpp
	./external/recast/Source/RecastArea.cpp
	./external/recast/Source/RecastAssert.cpp
	./external/recast/Source/RecastContour.cpp
	./external/recast/Source/RecastFilter.cpp
	./external/recast/Source/RecastLayers.cpp
	./external/recast/Source/RecastMesh.cpp
	./external/recast/Source/RecastMeshDetail.cpp
	./external/recast/Source/RecastRasterization.cpp
	./external/recast/Source/RecastRegion.cpp

	./external/detour/Include/DetourAlloc.h
	./external/detour/Include/DetourAssert.h
	./external/detour/Include/DetourCommon.h
	./external/detour/Include/DetourMath.h
	./external/detour/Include/DetourNavMesh.h
	./external/detour/Include/DetourNavMeshBuilder.h
	./external/detour/Include/DetourNavMeshQuery.h
	./external/detour/Include/DetourNode.h
	./external/detour/Include/DetourStatus.h
	./external/detour/Source/DetourAlloc.cpp
	./external/detour/Source/DetourAssert.cpp
	./external/detour/Source/DetourCommon.cpp
	./external/detour/Source/DetourNavMesh.cpp
	./external/detour/Source/DetourNavMeshBuilder.cpp
	./external/detour/Source/DetourNavMeshQuery.cpp
	./external/detour/Source/DetourNode.cpp



	./external/irrxml/src/CXMLReaderImpl.h
	./external/irrxml/src/fast_atof.h
	./external/irrxml/src/heapsort.h
	./external/irrxml/src/irrArray.h
	./external/irrxml/src/irrString.h
	./external/irrxml/src/irrTypes.h
	./external/irrxml/src/irrXML.cpp
	./external/irrxml/src/irrXML.h

	./external/imgui/imconfig.h
	./external/imgui/imgui.cpp
	./external/imgui/imgui.h
	./external/imgui/imgui_draw.cpp
	./external/imgui/imgui_internal.h
	./external/imgui/imgui_widgets.cpp
	./external/imgui/imstb_rectpack.h
	./external/imgui/imstb_textedit.h
	./external/imgui/imstb_truetype.h
	./external/imgui/examples/imgui_impl_opengl3.cpp
	./external/imgui/examples/imgui_impl_opengl3.h
	./external/imgui/examples/imgui_impl_win32.cpp
	./external/imgui/examples/imgui_impl_win32.h
)

# Engine Directories
include_directories(./external/dxsdk/Include)
include_directories(./external/zlib)
include_directories(./external/png)
include_directories(./external/irrxml/src)

# External Static Library
add_library(External STATIC ${src_external})
set_target_properties(External PROPERTIES LINK_FLAGS "/PDB:\"External.pdb\"")
target_include_directories(External PRIVATE ./external/Recast/include ./external/detour/Include)

# DoomDLL Project
add_definitions(-D__DOOM_DLL__)
add_library(DoomDLL SHARED  ${src_engine} ./framework/Engine_precompiled.cpp )
target_link_libraries(DoomDLL idLib External Tools "opengl32.lib" "dxguid.lib" "glu32.lib" "dinput8.lib" "winmm.lib" "wsock32.lib" "dbghelp.lib" "iphlpapi.lib" "${CMAKE_SOURCE_DIR}/external/openal/out/build/x64-Release/OpenAL32.lib")
add_precompiled_header( DoomDLL Engine_precompiled.h  SOURCE_CXX ./framework/Engine_precompiled.cpp )
set_target_properties(DoomDLL PROPERTIES OUTPUT_NAME "DoomDLL" LINK_FLAGS "/STACK:16777216,16777216 /PDB:\"DoomDLL.pdb\" /DEF:${CMAKE_CURRENT_SOURCE_DIR}/exports.def")
target_include_directories(DoomDLL PRIVATE ./external/Recast/include ./external/detour/Include ./external/openal/include)

# Launcher Project
add_executable(Launcher ${src_launcher})
target_link_libraries(Launcher DoomDLL)
set_target_properties(Launcher PROPERTIES OUTPUT_NAME "Darklight" LINK_FLAGS "/STACK:16777216,16777216 /SUBSYSTEM:WINDOWS /PDB:\"Darklight.pdb\"")

# Dedicated Server
add_executable(DoomDedicatedServer ${src_engine} ./framework/Dedicated_precompiled.cpp)
target_compile_definitions(DoomDedicatedServer PRIVATE ID_DEDICATED ID_ENGINE_EXECUTABLE)
add_precompiled_header( DoomDedicatedServer Engine_precompiled.h  SOURCE_CXX ./framework/Dedicated_precompiled.cpp )
target_link_libraries(DoomDedicatedServer idLib External "opengl32.lib" "dxguid.lib" "glu32.lib" "dinput8.lib" "winmm.lib" "wsock32.lib" "dbghelp.lib" "iphlpapi.lib" "${CMAKE_SOURCE_DIR}/external/openal/out/build/x64-Release/OpenAL32.lib")
target_include_directories(DoomDedicatedServer PRIVATE ./external/Recast/include ./external/detour/Include ./external/openal/include)
set_target_properties(DoomDedicatedServer PROPERTIES OUTPUT_NAME "DarklightDedicated" LINK_FLAGS "/STACK:16777216,16777216 /SUBSYSTEM:WINDOWS /PDB:\"DarklightDedicated.pdb\"")
add_dependencies(DoomDedicatedServer DoomDLL )