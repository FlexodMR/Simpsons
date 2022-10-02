:// nightbuild.bat
:// derived from DA's nightbuild script by Stephen Lambie
:// builds libraries on all Win32, XBox, PS2, GC platforms

cls
@echo off

echo -------------------------------------------------------------
echo -                                                           -
echo -            P U R E 3 D N I G H T B U I L D                -
echo -                                                           -
echo -                                                           -
echo -                                          vmar@radical.ca  -
echo -------------------------------------------------------------

REM ###
REM ### Set environment variables to use here and pass to makefile
REM ### There must be no spaces either side of "=" sign
REM ###

set       	 PATH_ROOT=..\..\..
set  	   	  PATH_LOG=%PATH_ROOT%\pure3d\build\nightbuild\logs
set      	PATH_TOOLS=%PATH_ROOT%\pure3d\build\nightbuild\tools
set    TOOLS_PATH_BUILD_PC=%PATH_ROOT%\pure3d\tools
set   PURE3D_PATH_BUILD_PC=%PATH_ROOT%\pure3d\build\win32
set PURE3D_PATH_BUILD_XBOX=%PATH_ROOT%\pure3d\build\xbox
set  PURE3D_PATH_BUILD_PS2=%PATH_ROOT%\pure3d\build\ps2
set   PURE3D_PATH_BUILD_GC=%PATH_ROOT%\pure3d\build\gamecube

set   RADMATH_PATH_BUILD_PC=%PATH_ROOT%\radmath\build\win32
set RADMATH_PATH_BUILD_XBOX=%PATH_ROOT%\radmath\build\xbox
set  RADMATH_PATH_BUILD_PS2=%PATH_ROOT%\radmath\build\ps2
set   RADMATH_PATH_BUILD_GC=%PATH_ROOT%\radmath\build\gamecube

set   SCROOBY_PATH_BUILD_PC=%PATH_ROOT%\scrooby\build\win32
set SCROOBY_PATH_BUILD_XBOX=%PATH_ROOT%\scrooby\build\xbox
set  SCROOBY_PATH_BUILD_PS2=%PATH_ROOT%\scrooby\build\ps2
set   SCROOBY_PATH_BUILD_GC=%PATH_ROOT%\scrooby\build\gamecube

set   COVERAPP_PATH_BUILD_PC=%PATH_ROOT%\pure3d\apps\coverage\build\win32
set   COVERAPP_PATH_BUILD_XBOX=%PATH_ROOT%\pure3d\apps\coverage\build\xbox
set   COVERAPP_PATH_BUILD_PS2=%PATH_ROOT%\pure3d\apps\coverage\build\ps2
set   COVERAPP_PATH_BUILD_GC=%PATH_ROOT%\pure3d\apps\coverage\build\gamecube

set   VIEWER_PATH_BUILD_PC=%PATH_ROOT%\pure3d\apps\p3dview\build\win32
set VIEWER_PATH_BUILD_XBOX=%PATH_ROOT%\pure3d\apps\p3dview\build\xbox
set  VIEWER_PATH_BUILD_PS2=%PATH_ROOT%\pure3d\apps\p3dview\build\ps2
set   VIEWER_PATH_BUILD_GC=%PATH_ROOT%\pure3d\apps\p3dview\build\gamecube

REM ###
REM ### get programmer changes in last 24 hours > logs/p4_changes.log
REM ###
call p4who.bat 24 > %PATH_LOG%\p4_changes.log 2>&1

REM ###
REM ### get time of beginning of build
REM ###

date /t >  %PATH_LOG%\build_summary.txt
time /t >> %PATH_LOG%\build_summary.txt

REM ###
REM ### force re-sync to the development tree
REM ###

date /t >  %PATH_LOG%\p4sync_cd.log
time /t >> %PATH_LOG%\p4sync_cd.log
p4 sync //depot/Development/pure3d/... >> %PATH_LOG%\\p4sync_cd.log 2>&1
p4 sync //depot/Development/radmath/... >> %PATH_LOG%\\p4sync_cd.log 2>&1
p4 sync //depot/Development/scrooby/... >> %PATH_LOG%\\p4sync_cd.log 2>&1

call "c:\program files\microsoft visual studio\vc98\bin\vcvars32.bat"

REM ###
REM ### do the build
REM ###

echo Starting Nightbuild...
%PATH_TOOLS%\gnumake.exe --keep-going -f nightbuild.m all

%PATH_TOOLS%\cat %PATH_LOG%\build_pure3d_pc.log %PATH_LOG%\build_tools_pc.log %PATH_LOG%\build_pddi_pc.log %PATH_LOG%\build_radmath_pc.log %PATH_LOG%\build_scrooby_pc.log > %PATH_LOG%\build_pc.log
del %PATH_LOG%\build_tools_pc.log
del %PATH_LOG%\build_pure3d_pc.log
del %PATH_LOG%\build_pddi_pc.log
del %PATH_LOG%\build_radmath_pc.log
del %PATH_LOG%\build_scrooby_pc.log

%PATH_TOOLS%\cat %PATH_LOG%\build_pure3d_xbox.log %PATH_LOG%\build_radmath_xbox.log %PATH_LOG%\build_scrooby_xbox.log > %PATH_LOG%\build_xbox.log
del %PATH_LOG%\build_pure3d_xbox.log
del %PATH_LOG%\build_radmath_xbox.log
del %PATH_LOG%\build_scrooby_xbox.log

%PATH_TOOLS%\cat %PATH_LOG%\build_pure3d_ps2.log %PATH_LOG%\build_radmath_ps2.log %PATH_LOG%\build_scrooby_ps2.log > %PATH_LOG%\build_ps2.log
del %PATH_LOG%\build_pure3d_ps2.log
del %PATH_LOG%\build_radmath_ps2.log
del %PATH_LOG%\build_scrooby_ps2.log

%PATH_TOOLS%\cat %PATH_LOG%\build_pure3d_gc.log %PATH_LOG%\build_radmath_gc.log %PATH_LOG%\build_scrooby_gc.log > %PATH_LOG%\build_gc.log
del %PATH_LOG%\build_pure3d_gc.log
del %PATH_LOG%\build_radmath_gc.log
del %PATH_LOG%\build_scrooby_gc.log

%PATH_TOOLS%\cat %PATH_LOG%\build_coverapp_pc.log %PATH_LOG%\build_coverapp_xbox.log %PATH_LOG%\build_coverapp_ps2.log %PATH_LOG%\build_coverapp_gc.log > %PATH_LOG%\build_coverapp.log
del %PATH_LOG%\build_coverapp_pc.log
del %PATH_LOG%\build_coverapp_xbox.log
del %PATH_LOG%\build_coverapp_ps2.log
del %PATH_LOG%\build_coverapp_gc.log

%PATH_TOOLS%\cat %PATH_LOG%\build_viewer_pc.log %PATH_LOG%\build_viewer_xbox.log %PATH_LOG%\build_viewer_ps2.log %PATH_LOG%\build_viewer_gc.log > %PATH_LOG%\build_viewer.log
del %PATH_LOG%\build_viewer_pc.log
del %PATH_LOG%\build_viewer_xbox.log
del %PATH_LOG%\build_viewer_ps2.log
del %PATH_LOG%\build_viewer_gc.log

REM ###
REM ### get time of end of build
REM ###

%PATH_TOOLS%\cat %PATH_LOG%\p4_changes.log %PATH_LOG%\p4sync_cd.log >> %PATH_LOG%\build_summary.txt
date /t >> %PATH_LOG%\build_summary.txt
time /t >> %PATH_LOG%\build_summary.txt

REM do backpatch

echo DA - performing backpatching... > %PATH_LOG%\backpatch.log
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log
p4 -p RadFS3:1676 sync //depot/sdks/pure3d/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS3:1676 sync //depot/sdks/radmath/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS3:1676 sync //depot/sdks/Scrooby/... >> %PATH_LOG%\backpatch.log 2>&1
echo 	... INTEGRATION PREVIEW ... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS3:1676 integrate -i -n -b Pure3D_Integration_current //depot/sdks/... >> %PATH_LOG%\backpatch.log 2>&1
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log

echo MIRTH - performing backpatching... >> %PATH_LOG%\backpatch.log
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log
p4 -p RadFS1:1668 sync //depot/Mirth/libraries/Pure3D/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1668 sync //depot/Mirth/libraries/radmath/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1668 sync //depot/Mirth/libraries/scrooby/... >> %PATH_LOG%\backpatch.log 2>&1
echo 	... INTEGRATION PREVIEW ... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1668 integrate -i -n -b Pure3D_v16 //depot/Mirth/libraries/Pure3D/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1668 integrate -i -n -b Radmath_v16 //depot/Mirth/libraries/radmath/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1668 integrate -i -n -b Scrooby_v16 //depot/Mirth/libraries/scrooby/... >> %PATH_LOG%\backpatch.log 2>&1
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log

echo HULK - performing backpatching... >> %PATH_LOG%\backpatch.log
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log
p4 -p RadFS1:1671 sync //depot/hulk/sdks/pure3d/... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1671 sync //depot/hulk/sdks/radmath/... >> %PATH_LOG%\backpatch.log 2>&1
echo 	... INTEGRATION PREVIEW ... >> %PATH_LOG%\backpatch.log 2>&1
p4 -p RadFS1:1671 integrate -i -n -b pure3d_current //depot/hulk/sdks/pure3d/... >> %PATH_LOG%\backpatch.log 2>&1
date /t >> %PATH_LOG%\backpatch.log
time /t >> %PATH_LOG%\backpatch.log

REM ###
REM ### send summary to appropriate people
REM ###

set RECIPIENTS=-to:nbrooke
set ATTACHMENTS=-a:%PATH_LOG%\build_summary.txt -a:%PATH_LOG%\build_pc.log -a:%PATH_LOG%\build_xbox.log -a:%PATH_LOG%\build_ps2.log -a:%PATH_LOG%\build_gc.log -a:%PATH_LOG%\build_coverapp.log -a:%PATH_LOG%\build_viewer.log -a:%PATH_LOG%\backpatch.log
%PATH_TOOLS%\postie.exe -host:Radex %RECIPIENTS% %ATTACHMENTS% -from:NIGHTBUILD -s:"Nightbuild summary" -msg:"good morning!  note attached files"


echo Done.