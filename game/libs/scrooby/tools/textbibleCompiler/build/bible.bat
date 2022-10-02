://============================================================================
://
:// BIBLE.BAT - A "simple" little batch file designed to update the text bible
://             following changes to the XLS file.
://
://============================================================================

@echo off


://============================================================================
:// Process the text bible
://============================================================================

echo Converting the text bibles...

rem ://process the overlay bible, and produce the output files mastero? and mastero.h
rem echo Processing Overlay bible
rem ..\tools\rtf2ldb /a /o:files /f:ovlbible.xls /m:21470000 /c:charmap.txt
rem cd files
rem if exist mastero? del mastero?
rem ren masterp? mastero?
rem if exist mastero.h del mastero.h
rem ren master.h mastero.h
rem cd ..

://process the overlay bible, and produce the output files mastero? and mastero.h
echo Processing text bible
..\tools\rtf2ldb /a /o:files /f:psxbible.xls /m:21470000 /c:charmap.txt
cd files
del masterp.h
ren master.h masterp.h
cd ..

echo Check for errors...
pause

echo Renaming compiled string files
attrib -r files\*.*
copy files\masterp? files\masterp?.lan /y
attrib -r ..\playable\psx\langh\*.*
copy files\*.lan ..\playable\psx\langh /y
del files\masterp?

echo Copying generated files to target locations...
rem this doesn't do anything yet
