@echo off
REM
REM p3dimage test suite
REM by Mike Perzel
REM
REM should be run when major changes to p3dimage are done.
REM 
REM usage : test.bat [d]
REM         if d is specified, then it will use the debug build
REM         otherwise it will use the release build
REM
set P3DRULE="..\bin\p3drule.exe"
if "%1" == "d" goto debug
set P3DIMAGE="..\bin\p3dimage.exe"
goto start
:debug
REM
REM Use the debug build
REM
set P3DIMAGE="debug\p3dimage.exe"
:start
REM
REM Get rid of the evidence....
REM
mkdir tests\tmp
del /q tests\tmp\*.*
REM
echo Build the Sprite Tests....
REM
echo    - Basic sprites
%P3DIMAGE% -S -i tests\src\0Alpha_255.png -o tests\tmp\spr_0Alpha_255.p3d
%P3DIMAGE% -S -i tests\src\1Alpha_255.png -o tests\tmp\spr_1Alpha_255.p3d
%P3DIMAGE% -S -i tests\src\8Alpha_255.png -o tests\tmp\spr_8Alpha_255.p3d
echo    - Small sprites
%P3DIMAGE% -S -i tests\src\1x1.png -o tests\tmp\spr_1x1.p3d
%P3DIMAGE% -S -i tests\src\small.png -o tests\tmp\spr_small.p3d
%P3DRULE% -r tests\rule\smallsprite.txt tests\tmp\spr_1x1.p3d tests\tmp\spr_small.p3d
echo    - Power of two sized sprites
%P3DIMAGE% -S -i tests\src\0Alpha.png -o tests\tmp\spr_0Alpha.p3d
%P3DRULE% -r tests\rule\pow2sprite.txt tests\tmp\spr_0Alpha.p3d
REM
REM
echo Build the Texture Tests...
REM
echo    - Basic textures
%P3DIMAGE% -i tests\src\0Alpha.png -o tests\tmp\tex_0Alpha.p3d
%P3DIMAGE% -i tests\src\1Alpha.png -o tests\tmp\tex_1Alpha.p3d
%P3DIMAGE% -i tests\src\8Alpha.png -o tests\tmp\tex_8Alpha.p3d
echo    - DXTn Auto formatting
%P3DIMAGE% -f 9 tests\tmp\tex_0Alpha.p3d -o tests\tmp\tex_0Alpha_DXTn.p3d
%P3DIMAGE% -f 9 tests\tmp\tex_1Alpha.p3d -o tests\tmp\tex_1Alpha_DXTn.p3d
%P3DIMAGE% -f 9 tests\tmp\tex_8Alpha.p3d -o tests\tmp\tex_8Alpha_DXTn.p3d
%P3DRULE% -r tests\rule\DXTn.txt tests\tmp\tex_0Alpha_DXTn.p3d tests\tmp\tex_1Alpha_DXTn.p3d tests\tmp\tex_8Alpha_DXTn.p3d
