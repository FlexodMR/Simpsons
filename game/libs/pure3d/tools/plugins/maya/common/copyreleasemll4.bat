copy /Y mel\*.mel c:\aw\maya4.0\scripts\others
attrib -r c:\aw\maya4.0\scripts\others\*.*

p4 edit ../../distribution/Maya4.0/scripts/others/...

copy /Y mel\*.mel ..\..\distribution\Maya4.0\scripts\others

p4 change
p4 revert -a ../../distribution/Maya4.0/scripts/others/...