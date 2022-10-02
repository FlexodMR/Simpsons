rem Alex Kew
rem Mid April, 2002
rem 
rem Create a .p3d mipmap file from a texture
rem The "mipmap.bmp" file is located in the scenes directory due to the "p3dmipmap.exe" tool and
rem its naming of the textures within the .p3d file using the commandline options.  For example,
rem if the command were:  p3dmipmap -i "..\sourceimages\mipmap.bmp" -o ..., then the texture name
rem within the pure3d file would also be named "..\sourceimages\mipmap.bmp", which the coverage
rem test won't be able to find.

p3dmipmap -i "mipmap.bmp" -o "..\..\..\buildArt\mipmap\mipmap.p3d"

goto end

:end
