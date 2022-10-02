copy /Y Debug4\*.mll c:\aw\maya4.5\bin\plug-ins
copy /Y mel\*.mel c:\aw\maya4.5\scripts\others
copy /Y icons\*.xpm c:\aw\maya4.5\icons
copy /Y ..\common\mel\*.mel  c:\aw\maya4.5\scripts\others

attrib -r c:\aw\maya4.5\bin\plug-ins\*.*
attrib -r c:\aw\maya4.5\scripts\others\*.*
attrib -r c:\aw\maya4.5\icons\*.*
