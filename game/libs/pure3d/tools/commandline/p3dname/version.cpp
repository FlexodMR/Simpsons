//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include "version.hpp"

char* version = "1.0.19";

/* History */

char* versioninfo[] = {
    "1.0.19  Updated to use new particle chunks",
    "1.0.18  Fixed bug with --material-as-texture flag and -G",
    "1.0.17  Added --material-as-texture flag to set material names",
    "1.0.16  Added -F flag for fonts",
    "1.0.15  Added -u flag to fix name collisions",
    "1.0.14  Fixed bug with conversion to lowercase",
    "1.0.13  Added -l flag for converting names to lowercase",
    "1.0.12  Added -E flag for MTree geometry references",
    "1.0.11  Added -G into usage message",
    "1.0.10  Added -R flag for animation hierarchy references",
    "1.0.9   Added -G flag for geometry material references",
    "1.0.8   Added -r flag for material texture references",
    "1.0.7   Added -S flag for STree geometry references",
    "1.0.6   Updated for new textures and materials",
    "1.0.5   Updated for new transform animations and STrees",
    "1.0.4   Added -m flag for only processing MTrees",
    "1.0.3   Fixed stupid bug with animations",
    "1.0.2   Added handling for animations",
    "1.0.1   Added handling for geometries",
    "1.0.0   First version",
    NULL
};

