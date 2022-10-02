"flex++bison++\flex++.exe" schema.l
"flex++bison++\bison++.exe" schema.y
cl construct.cpp schema.tab.c /o schemaparse.exe