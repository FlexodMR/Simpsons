cd ..\bin
cl ..\code\bin2h\bin2h.c
cl ..\code\info\info.cpp advapi32.lib
del *.obj

