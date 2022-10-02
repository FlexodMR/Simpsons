@echo off
cls
echo ------------------------------------------------------------------------------
echo Foundation Technologies GCN - Scrooby build
echo ------------------------------------------------------------------------------
echo NOTE:
echo 1) Make sure you have DolphinSDK and CodeWarrior for Dolphin Installed
echo 2) Make sure Environment Variable are all set correctly.
echo    "BUILDTOOLS_ROOT" is where DolphinSDK Build tools is located
echo    "CWFOLDER" is where Metrowerks CodeWarrior for GCN is located
echo ------------------------------------------------------------------------------

if "%1" == "d" goto DEBUG
if "%1" == "r" goto RELEASE
if "%1" == "t" goto TUNE
goto ERROR:

:DEBUG
set CONFIG=DEBUG
goto MAKE

:RELEASE
set CONFIG=RELEASE
goto MAKE

:TUNE
set CONFIG=TUNE
goto MAKE

:MAKE
if "%2" == "clean" goto CLEAN
..\..\..\radbuild\GlobalTools\make -r
goto END

:CLEAN
..\..\..\radbuild\GlobalTools\make -r clean
goto END

:ERROR
echo Please specify option d\r\t [clean]

:END
echo ------------------------------------------------------------------------------
