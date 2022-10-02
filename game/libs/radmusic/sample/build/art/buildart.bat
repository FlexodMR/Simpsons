xcopy /Y /D /I ..\..\..\..\radsound\tools\bin\wavtorsd.dll ..\..\..\..\radmusic\tools\bin\
xcopy /Y /D /I ..\..\..\..\radsound\tools\bin\encvag.dll ..\..\..\..\radmusic\tools\bin\

..\..\..\..\radmusic\tools\bin\rmcompiler -s ..\..\art\sample.txt -xt ..\..\bin\xboxcd\art\sample.rms -checkdate -silent
..\..\..\..\radmusic\tools\bin\rmcompiler -s ..\..\art\sample.txt -gt ..\..\bin\gcncd\art\sample.rms -checkdate -silent
..\..\..\..\radmusic\tools\bin\rmcompiler -s ..\..\art\sample.txt -pt ..\..\bin\ps2cd\art\sample.rms -checkdate -silent
..\..\..\..\radmusic\tools\bin\rmcompiler -s ..\..\art\sample.txt -wt ..\..\bin\pccd\art\sample.rms -checkdate -silent
md ..\..\bin\ps2cd\irx
xcopy /E /Y /D /I ..\..\..\..\radsound\bin\radsound.irx ..\..\bin\ps2cd\irx
xcopy /E /Y /D /I \usr\local\sce\iop\modules\*.* ..\..\bin\ps2cd\irx

md ..\..\bin\xbox\img
xcopy /E /Y /D ..\..\..\..\radsound\bin\rsdeffects.bin ..\..\bin\xboxcd\img\
xbcp /r /d /y /f /t ..\..\bin\xboxcd\*.* xE:\radmusicsample\
xcopy /E /Y /D ..\..\bin\gcncd\*.* D:\radmusic\
