/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "2.0.9";

/* History */

char* versioninfo[] = {
    "2.0.9   Made tristripping works for vertex animation",
    "2.0.8   Made cross-primgroup merging not default, change option to enable it",
    "2.0.7   Integrate changes from Penthouse for adding -e switch",
    "2.0.6   Updated toollib to check for zero-length tristrips",
    "2.0.5   Fixed bug with deindexing and deformers",
    "2.0.4   Fixed bug with non-indexed primitives",
    "2.0.3   Updated to use new particle chunks",
    "2.0.2   Fixed bug with co-incident triangles",
    "2.0.1   Discard irregular primitives without tristripping them",
    "2.0.0   Improved tristripping and Debug mode",
    "1.0.5   Read/writes v14 mesh and skin formats",
    "1.0.4   Updated for toollib 13.5",
    "1.0.3   Made primgroup deindexing faster",
    "1.0.2   Added deindexing of vertex offset anims",
    "1.0.1   Added deindexing of deform skins",
    "1.0.0   First version",
    NULL
};


