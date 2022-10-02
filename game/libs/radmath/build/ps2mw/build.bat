@echo off
cls
echo ------------------------------------------------------------------------------
echo radmath GCN - radmath build
echo ------------------------------------------------------------------------------
echo NOTE:
echo      1) make sure \usr\local\sce path is in the current drive
echo      2) make sure PS2 MetroWerk is installed correctly.
echo ------------------------------------------------------------------------------


rem ### Use this to chain commands together ###
set WHENDONE=END

rem ### Use this to signal cleaning ###
set DOCLEAN=false

if "%1" == "d" goto DEBUG
if "%1" == "r" goto RELEASE
if "%1" == "t" goto TUNE
if "%1" == "all" goto ALL
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

:ALL
:ALL_DEBUG
set WHENDONE=ALL_RELEASE
goto DEBUG
:ALL_RELEASE
set WHENDONE=ALL_TUNE
goto RELEASE
:ALL_TUNE
set WHENDONE=END
goto TUNE
goto ERROR

:MAKE
if "%2" == "clean" goto CLEAN
..\..\..\radbuild\GlobalTools\make.exe -r
goto %WHENDONE%

:CLEAN
set DOCLEAN=true
..\..\..\radbuild\GlobalTools\make.exe -r clean
set DOCLEAN=false
goto %WHENDONE%

:ERROR
echo Please specify option all\d\r\t [clean]

:END
echo ------------------------------------------------------------------------------
