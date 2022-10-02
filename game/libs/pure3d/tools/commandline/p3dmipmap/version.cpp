/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.2.2";

/* History */

char* versioninfo[] = {
    "1.2.2   Added a Gamecube option in order to restrict illegal gamecube mipmap formats",
    "1.2.1   Added option to dither images when reducing bit depth",
    "1.2.0   Mipmaped level is controled by both -l flag and the minimum dimension of the hosted shader",
    "1.1.0   Updated to use new toollib which fixed a bug of generating PNG format always",
    "1.0.8   Updated to use new particle chunks",
    "1.0.7   Added -x flag to drop mipmap levels",
    "1.0.6   Added --bilinear flag, now defaults to trilinear",
    "1.0.5   Added -s flag to set mipmap on shaders",
    "1.0.4   Palettized with alpha support added",
    "1.0.3   Fixed for -i flag",
    "1.0.2   Updated for toollib 13.5",
    "1.0.1   Improved image loading",
    "1.0.0   First version",
    NULL
};


