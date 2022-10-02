/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.5.0";

/* History */

char* versioninfo[] = {
    "1.5.0   Took off -a flag. However, the default will check the image's alpha value for setting alpha depth",
    "1.4.0   Added -a flag to look at image pixels for seting alpha depth",
    "1.3.3   By default if old texture's alpha depth is greater than 1, it is converted to DXT3",
    "1.3.2   Added support for new texture chunks",
    "1.3.1   The DXT1 created by this version has 1-bit alpha channel",
    "1.3.0   Fixed the bug of cleaning palettized flag",
    "1.2.0   Set the palettized flag to faulse for DXTn images",
    "1.1.0   Changed to use toollib to write DXTn images directly",
    "1.0.1   Updated to use new particle chunks",
    "1.0.0   First version",
    NULL
};


