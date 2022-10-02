copy /Y scripts\*.mel c:\aw\maya4.0\scripts\others
copy /Y icons\*.bmp c:\aw\maya4.0\icons
copy /Y Debug4\*.mll c:\aw\maya4.0\bin\plug-ins
copy /Y ..\common\mel\*.mel  c:\aw\maya4.0\scripts\others

attrib -r c:\aw\maya4.0\scripts\others\*.*
attrib -r c:\aw\maya4.0\icons\*.*
attrib -r c:\aw\maya4.0\bin\plug-ins\*.*
