# PATH_LOG set in calling batch file
# PATH_ROOT set in calling batch file

CMD=cmd /x /c 

###############################################################################
#
###############################################################################

all:	buildPC buildXBox buildPS2 buildGC coveragetests viewer

coveragetests:	buildCoverappPC buildCoverappXBox buildCoverappPS2 buildCoverappGC

viewer:	buildViewerPC buildViewerXBox buildViewerPS2 buildViewerGC

buildPC:	buildToolsPC buildP3DPC buildPDDIPC buildRadmathPC buildScroobyPC

buildToolsPC:
	echo Win32 - building tools...
	date /t >  $(PATH_LOG)\build_tools_pc.log
	time /t >> $(PATH_LOG)\build_tools_pc.log
	$(CMD) msdev $(TOOLS_PATH_BUILD_PC)\tools.dsw /MAKE "ALL - ALL" /REBUILD >> $(PATH_LOG)\build_tools_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_tools_pc.log
	time /t >> $(PATH_LOG)\build_tools_pc.log
	
buildP3DPC:
	echo Win32 - building pure3d...
	date /t >  $(PATH_LOG)\build_pure3d_pc.log
	time /t >> $(PATH_LOG)\build_pure3d_pc.log
	$(CMD) msdev $(PURE3D_PATH_BUILD_PC)\pure3d.dsw /MAKE "Pure3D - ALL" /REBUILD >> $(PATH_LOG)\build_pure3d_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_pure3d_pc.log
	time /t >> $(PATH_LOG)\build_pure3d_pc.log

buildPDDIPC:
	echo Win32 - building pddi...
	date /t >  $(PATH_LOG)\build_pddi_pc.log
	time /t >> $(PATH_LOG)\build_pddi_pc.log
	$(CMD) msdev $(PURE3D_PATH_BUILD_PC)\pddidx8.dsp /MAKE "pddidx8 - ALL" /REBUILD >> $(PATH_LOG)\build_pddi_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_pddi_pc.log
	time /t >> $(PATH_LOG)\build_pddi_pc.log

buildRadmathPC:
	echo Win32 - building radmath...
	date /t >  $(PATH_LOG)\build_radmath_pc.log
	time /t >> $(PATH_LOG)\build_radmath_pc.log
	$(CMD) msdev $(RADMATH_PATH_BUILD_PC)\radmath.dsp /MAKE "radmath - ALL" /REBUILD >> $(PATH_LOG)\build_radmath_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_radmath_pc.log
	time /t >> $(PATH_LOG)\build_radmath_pc.log

buildScroobyPC:
	echo Win32 - building scrooby...
	date /t >  $(PATH_LOG)\build_scrooby_pc.log
	time /t >> $(PATH_LOG)\build_scrooby_pc.log
	$(CMD) msdev $(SCROOBY_PATH_BUILD_PC)\ScroobyLib.dsp /MAKE "ScroobyLib - ALL" /REBUILD >> $(PATH_LOG)\build_scrooby_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_scrooby_pc.log
	time /t >> $(PATH_LOG)\build_scrooby_pc.log

buildCoverappPC:
	echo Win32 - building coverapp...
	date /t >  $(PATH_LOG)\build_coverapp_pc.log
	time /t >> $(PATH_LOG)\build_coverapp_pc.log
	$(CMD) msdev $(COVERAPP_PATH_BUILD_PC)\coverage.dsw /MAKE "ALL - Win32 Debug" /REBUILD >> $(PATH_LOG)\build_coverapp_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_coverapp_pc.log
	time /t >> $(PATH_LOG)\build_coverapp_pc.log

buildViewerPC:
	echo Win32 - building viewer...
	date /t >  $(PATH_LOG)\build_viewer_pc.log
	time /t >> $(PATH_LOG)\build_viewer_pc.log
	$(CMD) msdev $(VIEWER_PATH_BUILD_PC)\p3dview.dsw /MAKE "ALL - ALL" /REBUILD >> $(PATH_LOG)\build_viewer_pc.log 2>&1
	date /t >> $(PATH_LOG)\build_viewer_pc.log
	time /t >> $(PATH_LOG)\build_viewer_pc.log

# do a reboot so the build can copy files to the xbox
# the build cannot copy files if files are still open
	
buildXBox:	buildP3DXBox buildRadmathXBox buildScroobyXBox

XBoxREBOOT:
	echo XBox - rebooting...
	xbsetcfg -x slda-xbox -v NTSC-M
	xbreboot

buildP3DXBox:
	echo XBox - building pure3d...
	date /t >  $(PATH_LOG)\build_pure3d_xbox.log
	time /t >> $(PATH_LOG)\build_pure3d_xbox.log
	$(CMD) msdev $(PURE3D_PATH_BUILD_XBOX)\Pure3D.dsw /MAKE "ALL - ALL" /REBUILD >> $(PATH_LOG)\build_pure3d_xbox.log 2>&1
	date /t >> $(PATH_LOG)\build_pure3d_xbox.log
	time /t >> $(PATH_LOG)\build_pure3d_xbox.log

buildRadmathXBox:
	echo XBox - building radmath...
	date /t >  $(PATH_LOG)\build_radmath_xbox.log
	time /t >> $(PATH_LOG)\build_radmath_xbox.log
	$(CMD) msdev $(RADMATH_PATH_BUILD_XBOX)\radmath.dsp /MAKE "radmath - ALL" /REBUILD >> $(PATH_LOG)\build_radmath_xbox.log 2>&1
	date /t >> $(PATH_LOG)\build_radmath_xbox.log
	time /t >> $(PATH_LOG)\build_radmath_xbox.log

buildScroobyXBox:
	echo XBox - building scrooby...
	date /t >  $(PATH_LOG)\build_scrooby_xbox.log
	time /t >> $(PATH_LOG)\build_scrooby_xbox.log
	$(CMD) msdev $(SCROOBY_PATH_BUILD_XBOX)\ScroobyLib.dsp /MAKE "ScroobyLib - ALL" /REBUILD >> $(PATH_LOG)\build_scrooby_xbox.log 2>&1
	date /t >> $(PATH_LOG)\build_scrooby_xbox.log
	time /t >> $(PATH_LOG)\build_scrooby_xbox.log

buildCoverappXBox:
	echo XBox - building coverapp...
	date /t >  $(PATH_LOG)\build_coverapp_xbox.log
	time /t >> $(PATH_LOG)\build_coverapp_xbox.log
	$(CMD) msdev $(COVERAPP_PATH_BUILD_XBOX)\coverage.dsw /MAKE "ALL - XBox Debug" /REBUILD >> $(PATH_LOG)\build_coverapp_xbox.log 2>&1
	date /t >> $(PATH_LOG)\build_coverapp_xbox.log
	time /t >> $(PATH_LOG)\build_coverapp_xbox.log

buildViewerXBox:
	echo XBox - building viewer...
	date /t >  $(PATH_LOG)\build_viewer_xbox.log
	time /t >> $(PATH_LOG)\build_viewer_xbox.log
	$(CMD) msdev $(VIEWER_PATH_BUILD_XBOX)\p3dview.dsw /MAKE "ALL - ALL" /REBUILD >> $(PATH_LOG)\build_viewer_xbox.log 2>&1
	date /t >> $(PATH_LOG)\build_viewer_xbox.log
	time /t >> $(PATH_LOG)\build_viewer_xbox.log

buildPS2:	buildP3DPS2 buildRadmathPS2 buildScroobyPS2

# Don't log output from PS2 clean
buildP3DPS2:
	echo PS2 - building pure3d...
	$(CMD) date /t >  $(PATH_LOG)\build_pure3d_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_pure3d_ps2.log
	cd %PURE3D_PATH_BUILD_PS2% && $(CMD) build all clean
	cd %PURE3D_PATH_BUILD_PS2% && $(CMD) build all >> $(PATH_LOG)\build_pure3d_ps2.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_pure3d_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_pure3d_ps2.log

buildRadmathPS2:
	echo PS2 - building radmath...
	$(CMD) date /t >  $(PATH_LOG)\build_radmath_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_radmath_ps2.log
	cd %RADMATH_PATH_BUILD_PS2% && $(CMD) build all clean
	cd %RADMATH_PATH_BUILD_PS2% && $(CMD) build all >> $(PATH_LOG)\build_radmath_ps2.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_radmath_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_radmath_ps2.log

buildScroobyPS2:
	echo PS2 - building scrooby...
	$(CMD) date /t >  $(PATH_LOG)\build_scrooby_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_scrooby_ps2.log
	cd %SCROOBY_PATH_BUILD_PS2% && $(CMD) clean
	cd %SCROOBY_PATH_BUILD_PS2% && $(CMD) makeall >> $(PATH_LOG)\build_scrooby_ps2.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_scrooby_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_scrooby_ps2.log

buildCoverappPS2:
	echo PS2 - building coverapp...
	$(CMD) date /t >  $(PATH_LOG)\build_coverapp_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_coverapp_ps2.log
	cd %COVERAPP_PATH_BUILD_PS2% && $(CMD) make clean
	cd %COVERAPP_PATH_BUILD_PS2% && $(CMD) make >> $(PATH_LOG)\build_coverapp_ps2.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_coverapp_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_coverapp_ps2.log

buildViewerPS2:
	echo PS2 - building viewer...
	$(CMD) date /t >  $(PATH_LOG)\build_viewer_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_viewer_ps2.log
	cd %VIEWER_PATH_BUILD_PS2% && $(CMD) make clean
	cd %VIEWER_PATH_BUILD_PS2% && $(CMD) make >> $(PATH_LOG)\build_viewer_ps2.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_viewer_ps2.log
	$(CMD) time /t >> $(PATH_LOG)\build_viewer_ps2.log

buildGC:	buildP3DGC buildRadmathGC buildScroobyGC

# Don't log output from GC clean
buildP3DGC:
	echo GC - building pure3d...
	$(CMD) date /t >  $(PATH_LOG)\build_pure3d_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_pure3d_gc.log
	cd %PURE3D_PATH_BUILD_GC% && $(CMD) build all clean >> $(PATH_LOG)\build_pure3d_gc.log 2>&1
	cd %PURE3D_PATH_BUILD_GC% && $(CMD) build all >> $(PATH_LOG)\build_pure3d_gc.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_pure3d_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_pure3d_gc.log

buildRadmathGC:
	echo GC - building radmath...
	$(CMD) date /t >  $(PATH_LOG)\build_radmath_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_radmath_gc.log
	cd %RADMATH_PATH_BUILD_GC% && $(CMD) build all clean >> $(PATH_LOG)\build_radmath_gc.log 2>&1
	cd %RADMATH_PATH_BUILD_GC% && $(CMD) build all >> $(PATH_LOG)\build_radmath_gc.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_radmath_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_radmath_gc.log

buildScroobyGC:
	echo GC - building scrooby...
	$(CMD) date /t >  $(PATH_LOG)\build_scrooby_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_scrooby_gc.log
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build d clean >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build t clean >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build r clean >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build d >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build t >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	cd %SCROOBY_PATH_BUILD_GC% && $(CMD) build r >> $(PATH_LOG)\build_scrooby_gc.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_scrooby_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_scrooby_gc.log

buildCoverappGC:
	echo GC - building coverapp...
	$(CMD) date /t >  $(PATH_LOG)\build_coverapp_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_coverapp_gc.log
	cd %COVERAPP_PATH_BUILD_GC% && $(CMD) %PATH_TOOLS%\gnumake cleand >> $(PATH_LOG)\build_coverapp_gc.log 2>&1
	cd %COVERAPP_PATH_BUILD_GC% && $(CMD) %PATH_TOOLS%\gnumake debug >> $(PATH_LOG)\build_coverapp_gc.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_coverapp_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_coverapp_gc.log

buildViewerGC:
	echo GC - building viewer...
	$(CMD) date /t >  $(PATH_LOG)\build_viewer_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_viewer_gc.log
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make cleand
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make cleant
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make cleanr
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make debug >> $(PATH_LOG)\build_viewer_gc.log 2>&1
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make tune >> $(PATH_LOG)\build_viewer_gc.log 2>&1
	cd %VIEWER_PATH_BUILD_GC% && $(CMD) make release >> $(PATH_LOG)\build_viewer_gc.log 2>&1
	$(CMD) date /t >> $(PATH_LOG)\build_viewer_gc.log
	$(CMD) time /t >> $(PATH_LOG)\build_viewer_gc.log