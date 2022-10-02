/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.3.0";

/* History */

char* versioninfo[] = {
    "1.3.0   Better compensation for bad edges, merging composite drawables, exploded shadow volumes",
    "1.2.1   Slightly better debug output",
    "1.2.0   Properly merges primgroups and optimizes vertices",
    "1.1.0   Creates shadow from geometry.",
    "1.0.0   First version",
    NULL
};

