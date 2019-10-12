# DarkEngine.cmake
#

set(src_engine
	# Precompiled Header
	./framework/Engine_precompiled.cpp

	# Collision System
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
	./framework/DeclFX.cpp
	./framework/DeclFX.h
	./framework/DeclManager.cpp
	./framework/DeclManager.h
	./framework/DeclParticle.cpp
	./framework/DeclParticle.h
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

	#Renderer
	./renderer/BinaryImage.cpp
	./renderer/BinaryImage.h
	./renderer/BinaryImageData.h
	./renderer/BufferObject.cpp
	./renderer/BufferObject.h
	./renderer/Cinematic.cpp
	./renderer/Cinematic.h
	./renderer/Color
	./renderer/draw_common.cpp
	./renderer/draw_feedback.cpp
	./renderer/draw_interaction.cpp
	./renderer/draw_occlusion.cpp
	./renderer/draw_shadow.cpp
	./renderer/DXT
	./renderer/GLMatrix.cpp
	./renderer/GLMatrix.h
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
	./renderer/jpeg-6
	./renderer/Material.cpp
	./renderer/Material.h
	./renderer/MegaTexture.cpp
	./renderer/MegaTexture.h
	./renderer/MegaTextureBuild.cpp
	./renderer/MegaTextureFile.cpp
	./renderer/Model.cpp
	./renderer/Model.h
	./renderer/ModelDecal.cpp
	./renderer/ModelDecal.h
	./renderer/ModelManager.cpp
	./renderer/ModelManager.h
	./renderer/ModelOverlay.cpp
	./renderer/ModelOverlay.h
	./renderer/Model_ase.cpp
	./renderer/Model_ase.h
	./renderer/Model_beam.cpp
	./renderer/Model_ColladaHelper.h
	./renderer/Model_ColladaParser.cpp
	./renderer/Model_ColladaParser.h
	./renderer/Model_liquid.cpp
	./renderer/Model_local.h
	./renderer/Model_lwo.cpp
	./renderer/Model_lwo.h
	./renderer/Model_ma.cpp
	./renderer/Model_ma.h
	./renderer/Model_md3.cpp
	./renderer/Model_md3.h
	./renderer/Model_md5.cpp
	./renderer/Model_obj.cpp
	./renderer/Model_prt.cpp
	./renderer/Model_sprite.cpp
	./renderer/Model_terrain.cpp
	./renderer/qgllib
	./renderer/RenderEntity.cpp
	./renderer/RenderMatrix.cpp
	./renderer/RenderMatrix.h
	./renderer/RenderProgs.cpp
	./renderer/RenderProgs.h
	./renderer/RenderProgs_GLSL.cpp
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
	./renderer/RenderWorld_portals.cpp
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
	./renderer/tr_render.cpp
	./renderer/tr_rendertools.cpp
	./renderer/tr_shadowbounds.cpp
	./renderer/tr_stencilshadow.cpp
	./renderer/tr_subview.cpp
	./renderer/tr_trace.cpp
	./renderer/tr_trisurf.cpp
	./renderer/tr_turboshadow.cpp
	./renderer/VertexCache.cpp
	./renderer/VertexCache.h
	./renderer/VirtualTexture.h
	./renderer/VirtualTextureFeedbackJob.cpp
	./renderer/VirtualTextureSystem.cpp
	./renderer/VirtualTextureTranscode.cpp
	./renderer/wglext.h
	./renderer/Color/ColorSpace.cpp
	./renderer/Color/ColorSpace.h
	./renderer/DXT/DXTCodec.h
	./renderer/DXT/DXTDecoder.cpp
	./renderer/DXT/DXTEncoder.cpp
	./renderer/jpeg-6/jcapimin.c
	./renderer/jpeg-6/jcapistd.c
	./renderer/jpeg-6/jccoefct.c
	./renderer/jpeg-6/jccolor.c
	./renderer/jpeg-6/jcdctmgr.c
	./renderer/jpeg-6/jchuff.c
	./renderer/jpeg-6/jchuff.h
	./renderer/jpeg-6/jcinit.c
	./renderer/jpeg-6/jcmainct.c
	./renderer/jpeg-6/jcmarker.c
	./renderer/jpeg-6/jcmaster.c
	./renderer/jpeg-6/jcomapi.c
	./renderer/jpeg-6/jconfig.h
	./renderer/jpeg-6/jcparam.c
	./renderer/jpeg-6/jcphuff.c
	./renderer/jpeg-6/jcprepct.c
	./renderer/jpeg-6/jcsample.c
	./renderer/jpeg-6/jctrans.c
	./renderer/jpeg-6/jdapimin.c
	./renderer/jpeg-6/jdapistd.c
	./renderer/jpeg-6/jdatadst.c
	./renderer/jpeg-6/jdatasrc.c
	./renderer/jpeg-6/jdcoefct.c
	./renderer/jpeg-6/jdcolor.c
	./renderer/jpeg-6/jdct.h
	./renderer/jpeg-6/jddctmgr.c
	./renderer/jpeg-6/jdhuff.c
	./renderer/jpeg-6/jdhuff.h
	./renderer/jpeg-6/jdinput.c
	./renderer/jpeg-6/jdmainct.c
	./renderer/jpeg-6/jdmarker.c
	./renderer/jpeg-6/jdmaster.c
	./renderer/jpeg-6/jdmerge.c
	./renderer/jpeg-6/jdphuff.c
	./renderer/jpeg-6/jdpostct.c
	./renderer/jpeg-6/jdsample.c
	./renderer/jpeg-6/jdtrans.c
	./renderer/jpeg-6/jerror.c
	./renderer/jpeg-6/jerror.h
	./renderer/jpeg-6/jfdctflt.c
	./renderer/jpeg-6/jfdctfst.c
	./renderer/jpeg-6/jfdctint.c
	./renderer/jpeg-6/jidctflt.c
	./renderer/jpeg-6/jidctfst.c
	./renderer/jpeg-6/jidctint.c
	./renderer/jpeg-6/jidctred.c
	./renderer/jpeg-6/jinclude.h
	./renderer/jpeg-6/jmemmgr.c
	./renderer/jpeg-6/jmemnobs.c
	./renderer/jpeg-6/jmemsys.h
	./renderer/jpeg-6/jmorecfg.h
	./renderer/jpeg-6/jpegint.h
	./renderer/jpeg-6/jpeglib.h
	./renderer/jpeg-6/jquant1.c
	./renderer/jpeg-6/jquant2.c
	./renderer/jpeg-6/jutils.c
	./renderer/jpeg-6/jversion.h
	./renderer/qgllib/glew.c
	./renderer/qgllib/glew.h
	./renderer/qgllib/qgllib.h
	./renderer/qgllib/wglew.h

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
	./sound/XAudio2
	./sound/XAudio2/XA2_SoundHardware.cpp
	./sound/XAudio2/XA2_SoundHardware.h
	./sound/XAudio2/XA2_SoundSample.cpp
	./sound/XAudio2/XA2_SoundSample.h
	./sound/XAudio2/XA2_SoundVoice.cpp
	./sound/XAudio2/XA2_SoundVoice.h

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

	./external/irrxml/src/CXMLReaderImpl.h
	./external/irrxml/src/fast_atof.h
	./external/irrxml/src/heapsort.h
	./external/irrxml/src/irrArray.h
	./external/irrxml/src/irrString.h
	./external/irrxml/src/irrTypes.h
	./external/irrxml/src/irrXML.cpp
	./external/irrxml/src/irrXML.h

)

# Engine Directories
include_directories(./external/dxsdk/Include)
include_directories(./external/zlib)
include_directories(./external/png)
include_directories(./external/irrxml/src)

# External Static Library
add_library(External STATIC ${src_external})
set_target_properties(External PROPERTIES LINK_FLAGS "/PDB:\"External.pdb\"")

# DoomDLL Project
add_definitions(-D__DOOM_DLL__)
add_library(DoomDLL SHARED  ${src_engine} )
target_link_libraries(DoomDLL idLib External Tools "opengl32.lib" "dxguid.lib" "glu32.lib" "dinput8.lib" "winmm.lib" "wsock32.lib" "dbghelp.lib" "iphlpapi.lib")
add_precompiled_header( DoomDLL Engine_precompiled.h  SOURCE_CXX ./framework/Engine_precompiled.cpp )
set_target_properties(DoomDLL PROPERTIES OUTPUT_NAME "DoomDLL" LINK_FLAGS "/PDB:\"DoomDLL.pdb\" /LARGEADDRESSAWARE /DEF:${CMAKE_CURRENT_SOURCE_DIR}/exports.def")

# Launcher Project
add_executable(Launcher ${src_launcher})
target_link_libraries(Launcher DoomDLL)
set_target_properties(Launcher PROPERTIES OUTPUT_NAME "Darklight" LINK_FLAGS "/SUBSYSTEM:WINDOWS /PDB:\"Darklight.pdb\"")