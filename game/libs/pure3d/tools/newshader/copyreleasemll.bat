copy /Y Release\*.mll c:\aw\maya3.0\bin\plug-ins
copy /Y mel\*.mel c:\aw\maya3.0\scripts\others
attrib -r c:\aw\maya3.0\bin\plug-ins\*.*
attrib -r c:\aw\maya3.0\scripts\others\*.*

copy /Y Release\*.mll ..\..\distribution\%NAME%\maya3.0\bin\plug-ins
copy /Y mel\*.mel ..\..\distribution\%NAME%\maya3.0\scripts\others
