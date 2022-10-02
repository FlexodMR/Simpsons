/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.2.4";

/* History */

char* versioninfo[] = {
	"1.2.4   Skip all deformed skin for optimization",
    "1.2.3   Skip all vertex animated geometry for processing",
    "1.2.2   Changed default splitting threshhold to 16 vertices",
    "1.2.2   Weights are stripped out of one bone prim groups",
    "1.2.1   Added warning when tristripping/de-index is destroyed",
    "1.2.0   Fix a crashing bug",
    "1.1.0   Add threshold to -b, -t, -s option",
    "1.0.9   Buf fix where offsets were getting destroyed",
    "1.0.8   Added splitting based on offsets",
    "1.0.7   Updated to use new particle chunks",
    "1.0.6   Bug fix with deformers and -b option",
    "1.0.5   Patched to support deformers",
    "1.0.4   Added vertex count capping",
    "1.0.3   Fixed problem with multiple runs",
    "1.0.2   Fixed problem with tristripped meshes",
    "1.0.1   Combine, rebuild, and remove weight chunks",
    "1.0.0   First version",
    NULL
};


