copy /Y Debug4\*.mll c:\aw\maya4.0\bin\plug-ins
copy /Y mel\*.mel c:\aw\maya4.0\scripts\others
copy /Y icons\*.bmp c:\aw\maya4.0\icons
copy /Y ..\common\mel\*.mel  c:\aw\maya4.0\scripts\others

attrib -r c:\aw\maya4.0\bin\plug-ins\*.*
attrib -r c:\aw\maya4.0\scripts\others\*.*
attrib -r c:\aw\maya4.0\icons\*.*
