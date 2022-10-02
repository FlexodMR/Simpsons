copy /Y *.mel c:\aw\maya4.0\scripts\others
attrib -r c:\aw\maya4.0\scripts\others\*.*

p4 edit ../plugins/distribution/Maya4.0/scripts/others/...

copy /Y *.mel ..\plugins\distribution\Maya4.0\scripts\others

p4 change
p4 revert -a ../plugins/distribution/Maya4.0/scripts/others/...