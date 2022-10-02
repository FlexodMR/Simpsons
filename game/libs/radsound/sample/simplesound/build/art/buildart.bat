@echo off

ECHO Create the .rsd files
ECHO .
ECHO This tool takes any .wav files it finds in the source directory (-s dirname),
ECHO processes them and places them into the appropriate platform specific directories
ECHO (ex. -wt dirname is the windows target directory).
ECHO In the case of the xbox, this tool will copy the files from \bin\xbox\ to x:\simplesound\
ECHO .

..\..\..\..\tools\bin\wavtorsdr -s . -wt ..\..\bin\win -xt ..\..\bin\xbox -pt ..\..\bin\ps2cd -gt ..\..\bin\gcncd -checkdate -gcadpcm

ECHO Copying to xbox...

xbcp /r /d /y /f /t ..\..\bin\xbox\*.* xE:\simplesound\

ECHO Copying .irx files to ps2 ...
md ..\..\bin\ps2cd\irx
xcopy /E /Y /D /I ..\..\..\..\..\radsound\bin\radsound.irx ..\..\bin\ps2cd\irx
xcopy /E /Y /D /I \usr\local\sce\iop\modules\*.* ..\..\bin\ps2cd\irx

xcopy /E /Y /D /I /R ..\..\bin\gcncd\*.* d:\defroot\

ECHO Done.

