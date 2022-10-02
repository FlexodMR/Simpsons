attrib -r c:\aw\maya4.0\scripts\others\*.*
attrib -r c:\aw\maya4.0\icons\*.*
attrib -r c:\aw\maya4.0\bin\plug-ins\*.*
copy /Y icons\*.bmp c:\aw\maya4.0\icons
copy /Y mel\*.mel c:\aw\maya4.0\scripts\others
copy /Y ..\..\plugins\maya\common\mel\*.mel c:\aw\maya4.0\scripts\others
copy /Y ToolsRelease\*.mll c:\aw\maya4.0\bin\plug-ins
attrib -r c:\aw\maya4.0\bin\plug-ins\*.*
attrib -r c:\aw\maya4.0\scripts\others\*.*
attrib -r c:\aw\maya4.0\icons\*.*

p4 edit ../../plugins/distribution/p3dMayaExporter/Maya4.0/...
p4 edit ../../plugins/distribution/Maya4.0/...
p4 edit ../../plugins/distribution/common/scripts/others/...

copy /Y ..\..\plugins\maya\common\mel\*.mel ..\..\plugins\distribution\common\scripts\others

copy /Y icons\*.bmp ..\..\plugins\distribution\p3dMayaExporter\maya4.0\icons
copy /Y mel\*.mel ..\..\plugins\distribution\p3dMayaExporter\maya4.0\scripts\others
copy /Y ToolsRelease\*.mll ..\..\plugins\distribution\p3dMayaExporter\maya4.0\bin\plug-ins
copy /Y ..\..\plugins\maya\common\mel\*.mel ..\..\plugins\distribution\p3dMayaExporter\maya4.0\scripts\others

copy /Y icons\*.bmp ..\..\plugins\distribution\Maya4.0\icons
copy /Y mel\*.mel ..\..\plugins\distribution\Maya4.0\scripts\others
copy /Y ToolsRelease\*.mll ..\..\plugins\distribution\Maya4.0\bin\plug-ins

p4 change
p4 revert -a ../../plugins/distribution/common/scripts/others/...
p4 revert -a ../../plugins/distribution/Maya4.0/...
p4 revert -a ../../plugins/distribution/p3dMayaExporter/Maya4.0/...
