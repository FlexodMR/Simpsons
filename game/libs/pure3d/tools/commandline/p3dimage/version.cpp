/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.4.0";

/* History */

char* versioninfo[] = {
	"1.4.0   Add ntsc_fix.",
    "1.3.3   Bug fix: Sprites were incrorrectly being split a second time.  Tracker #1301",
    "1.3.2   Discard higher mip maps if main image is reduced with -r option.",
    "1.3.1   Bypass DXTN conversion on mipmapped images having alpha depth greater than one.",
    "1.3.0   Bug fix: Memory addresses were being written out in DDS header.  Tracker #1286",
    "1.2.10  Add Image Format to items reported in -Q/--query mode.",
    "1.2.9   Deprecate the -p option, write using ps2-format.  Use the tool p3dps2 instead.",
    "1.2.8   Add -I option write out results to the input image rather than P3D file.",
    "1.2.7   Bug fix: p3dImage would sometimes not mark correctly if it had alpha.  Tracker #759",
    "1.2.6   Auto detect input file format.  Fail gracefully if format is unknown.  Tracker #746",
    "1.2.5   Fix a bug that causes different mipmap levels in different DXTn format when converting to DXTn",
    "1.2.4   Fix crash when loading compressed BMP. Add -Query flag.",
    "1.2.3   Add additional check for palettized bmp images with invalid header data.  Tracker #747.",
    "1.2.2   Bug fix: Adjustments to saturation, contrast, and lightness incorrectly modified alpha.  Tracker #745.",
    "1.2.1   Bug fix: The alpha marker was being removed from palettized images with alpha.  Tracker #743.",
    "1.2.0   Moved the functionality of convert2dxtn into p3dimage, and moved all of it's parameters",
    "1.1.6   Added -T option to ignore named textures ( accompanies -t which includes named textures )",
    "1.1.5   Added Photoshop 6.0 equivalent brightness, contrast, hue, saturation and lightness adjustments",
    "1.1.4   Added option to dither images when reducing bit depth",
    "1.1.3   Add blur filter option, -F, which blurs using a specified blur radius",
    "1.1.2   Bug Fixes",
    "1.1.1   Added support for Gamecube specific formatting",
    "1.1.0   Added support for sprites and DXTN compressed sprites",
    "1.0.11  Added -g flag for gamma correction",
    "1.0.10  Added -c and -N flags for NTSC hot colours",
    "1.0.9   Strip the path off the texture name",
    "1.0.8   Added -r flag to reduce solid colour textures",
    "1.0.7   Added support for reading new texture chunks",
    "1.0.6   Added support for writing new texture chunks",
    "1.0.5   Added -u flag, and changed the default -b behaviour",
    "1.0.4   Updated to use new particle chunks",
    "1.0.3   Now works with multiple inputs and one output",
    "1.0.2   Bug fixes",
    "1.0.1   Added -a option",
    "1.0.0   First version",
    NULL
};


