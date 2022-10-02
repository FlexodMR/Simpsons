@echo off
cls
echo ------------------------------------------------------------------------------
echo  PS2 - Scrooby build
echo ------------------------------------------------------------------------------
echo NOTE:
echo 1) Edit the PS2.bat from Foundationtech to point to your working drive 
echo 2) Run the PS2.bat to ensure the Environment Variables are set correctly.
echo ------------------------------------------------------------------------------
set DOCLEAN=false
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
make -r
goto END

:CLEAN
set DOCLEAN=true
make -r clean
goto END

:ERROR
echo Please specify option d\r\t [clean]

:END
echo ------------------------------------------------------------------------------
