|*******************************************************|
| See ClientTemplates/usagenotes.txt for more info      |
|*******************************************************|


|*******************************************************|
| To make and build the GameCube Nintendo (GCN) library |
|*******************************************************|
1) Make sure you have installed DolphinSDK1.0 & Metrowerks CodeWarrior.

2) Make sure Environment Variable are all set correctly:
	- "BUILDTOOLS_ROOT" is where DolphinSDK1.0 Build tools is located.
	- "CWFOLDER" refers to the path where CodeWarrior for Embedded PowerPC was installed.

3) Create a radxxxx\lib directory to store the library file.

4) Create a radxxxx\src directory to store your source files.

5) Create a radxxxx\inc directory to store your include files.

6) Create a radxxxx\build\gcn to store your makefile stuffs.

7) Make a copy of radcore\build\gcn\*.* to your radxxxx\build\gcn.

8) Make following changes to your makefile stuffs
	i.   Edit build.bat to read "Foundation Technologies GCN - Radxxxx build".
	ii.  Edit files.txt to include your SOURCEFILES.  Make sure your ROOTDIR point to Foundationtech directory.
	iii. Rename radcore.m to radxxxx.m and make necessary changes inside this file.  This is needed by your executable program to build this particular 
library.

3)  Type "build [d/r/t/f] [clean]" (w/o the quotes) to run your build option.  Make sure you are in your build directory (ie. radxxxx\build\gcn).

Note: DO NOT edit Foundationtech\RadBuild\config.gcn or Foundationtech\RadBuild\makefile


|**************************************************|
| To make and build the PlayStation2 (PS2) library |
|**************************************************|

1) Make sure you copied the sce folder to your *:/usr/local/ directory.

2) Edit the PS2.bat inside *:/Foundationtech/ to point to your working drive (where sce is located).

3) Run this batch file to ensure the Environment Variables are set correctly.

4) Create a radxxxx\lib directory to store the library file.

5) Create a radxxxx\src directory to store your source files.

6) Create a radxxxx\inc directory to store your include files.

7) Create a radxxxx\build\ps2ee to store your makefile stuffs.

8) Make a copy of radcore\build\ps2ee\*.* to your radxxxx\build\ps2ee.

9) Make following changes to your makefile stuffs
	i.   Edit build.bat to read "Foundation Technologies PS2 - Radxxxx build".
	ii.  Edit files.txt to include your SOURCEFILES.  Make sure your ROOTDIR point to Foundationtech directory.
	iii. Rename radcore.m to radxxxx.m and make necessary changes inside this file.  This is needed by your executable program to build this particular 
library.

10) Type "build [d/r/f] [clean]" (w/o the quotes) to run your build option.  Make sure you are in your build directory (ie. radxxxx\build\ps2ee).

Note: DO NOT edit Foundationtech\RadBuild\config.ps2 or Foundationtech\RadBuild\makefile


|****************************************************|
| To make and  build a sample program (gcn or ps2ee) |
|****************************************************|

1) Make sure you copied the sce folder to your *:/usr/local/ directory.

2) Edit the PS2.bat inside *:/Foundationtech/ to point to your working drive (where sce is located).

3) Run this batch file to ensure the Environment Variables are set correctly.

4) Create a radxxxx\sample\sample_program_name\bin directory to store the executable file.

5) Create a radxxxx\sample\sample_program_name\src directory to store your source files.

6) Create a radxxxx\sample_program_name\build\platform_name to store your makefile stuffs.

8) Make a copy of radcore\controller\build\ps2ee\*.* to your radxxxx\sample_program_name\build\platform_name (platform_name = gcn or ps2ee).

7) Make following changes to your makefile stuffs
	i.   Edit build.bat to read "Foundation Technologies PS2 - sample_program_name Sample Program".
	ii.  Edit files.txt to include your SOURCEFILES.  Make sure your ROOTDIR point to Foundationtech directory.
	iii. Edit makefile to include all necessary *.m associated with your source files.

8) Type "build [d/r/f]" (w/o the quotes) to run your build option.  Make sure you are in your sample program build directory (i.e. 
radxxxx\sample_program_name\build\platform_name).

Note: DO NOT edit Foundationtech\RadBuild\config.ps2 Foundationtech\RadBuild\config.ps2mw or Foundationtech\RadBuild\makefile





