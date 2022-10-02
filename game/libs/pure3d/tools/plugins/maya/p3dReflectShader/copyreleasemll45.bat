copy /Y Release4\*.mll c:\aw\maya4.5\bin\plug-ins
copy /Y mel\*.mel c:\aw\maya4.5\scripts\others
copy /Y icons\*.xpm c:\aw\maya4.5\icons
copy /Y ..\common\mel\*.mel c:\aw\maya4.5\scripts\others

attrib -r c:\aw\maya4.5\bin\plug-ins\*.*
attrib -r c:\aw\maya4.5\scripts\others\*.*
attrib -r c:\aw\maya4.5\icons\*.*

p4 edit ../../distribution/p3dReflectShader/Maya4.5/...
p4 edit ../../distribution/Maya4.5/...

copy /Y Release4\*.mll ..\..\distribution\p3dReflectShader\maya4.5\bin\plug-ins
copy /Y mel\*.mel ..\..\distribution\p3dReflectShader\maya4.5\scripts\others
copy /Y icons\*.xpm ..\..\distribution\p3dReflectShader\maya4.5\icons
copy /Y ..\common\mel\*.mel ..\..\distribution\p3dReflectShader\maya4.5\bin\plug-ins

copy /Y Release4\*.mll ..\..\distribution\Maya4.5\bin\plug-ins
copy /Y mel\*.mel ..\..\distribution\Maya4.5\scripts\others
copy /Y icons\*.bmp ..\..\distribution\Maya4.5\icons
copy /Y ..\common\mel\*.mel ..\..\distribution\Maya4.5\scripts\others

p4 change
p4 revert -a ../../distribution/p3dReflectShader/Maya4.5/...
p4 revert -a ../../distribution/Maya4.5/...
