copy /Y Release4\*.mll c:\aw\maya4.0\bin\plug-ins
copy /Y mel\*.mel c:\aw\maya4.0\scripts\others
copy /Y ..\common\mel\*.mel c:\aw\maya4.0\scripts\others

attrib -r c:\aw\maya4.0\bin\plug-ins\*.*
attrib -r c:\aw\maya4.0\scripts\others\*.*

p4 edit ../../distribution/p3dCSPRShader/Maya4.0/...
p4 edit ../../distribution/Maya4.0/...

copy /Y Release4\*.mll ..\..\distribution\p3dCSPRShader\maya4.0\bin\plug-ins
copy /Y mel\*.mel ..\..\distribution\p3dCSPRShader\maya4.0\scripts\others
copy /Y ..\common\mel\*.mel ..\..\distribution\p3dCSPRShader\maya4.0\scripts\others

copy /Y Release4\*.mll ..\..\distribution\Maya4.0\bin\plug-ins
copy /Y mel\*.mel ..\..\distribution\Maya4.0\scripts\others
copy /Y ..\common\mel\*.mel ..\..\distribution\Maya4.0\scripts\others

p4 change
p4 revert -a ../../distribution/p3dCSPRShader/Maya4.0/...
p4 revert -a ../../distribution/Maya4.0/...
