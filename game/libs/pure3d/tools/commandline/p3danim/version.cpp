//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include "version.hpp"

char* version = "3.0.8";

/* History */

char* versioninfo[] = {
    "3.0.8   Added functionality to set frame ranges on animations",
    "3.0.7   No longer dependent on MSVC++ debug libraries",
    "3.0.6   Added compressed quaternions as well as memory image sizing to particles",
    "3.0.5   Added compressed quaternions as well as memory image sizing",
    "3.0.4   Updated tolerance fields",
    "3.0.3   Modified for rewritten tl*KeyList classes",
    "3.0.2   Updated to use new particle chunks",
    "3.0.1   Added --euler-fix-file flag",
    "3.0.0   Cleanup for V12",
    "2.4.3   Fiddling with --swap-parity --interactive (Don't ask)",
    "2.4.2   Fixed bug with -P flag",
    "2.4.1   Fixed bug with -c flag",
    "2.4.0   Added support for scaling time on texture animations",
    "2.3.2   Added more verbose output with -v",
    "2.3.1   Changed to load meshes and STrees before animations",
    "2.3.0   Added mesh position optimization error metric",
    "2.2.0   Upgraded to V11 animations",
    "2.1.4   Added --static-rotation and --static-translation flags",
    "2.1.3   Added --phase-shift flag, shift animation to start at given frame",
    "2.1.2   Fixed bug in memory cleanup, (use delete[] rather than delete)",
    "2.1.1   Added --keep-precision flag",
    "2.1.0   Added handling for high precision angles",
    "2.0.2   Added --new-opt flag for Wilkin's new optimization algorithm",
    "2.0.1   Fixed crash bug when not using scripting",
    "2.0.0   Added perl scripting",
    "1.1.15  New frontend code",
    "1.1.14  Added -j flag for joint optimization",
    "1.1.13  Only report -k matches with verbosity > 1",
    "1.1.12  Allow multiple -k flags",
    "1.1.11  Added -k flag for more flexibility in removing joint keys with -s -x -y",
    "1.1.10  Fixed serious bug with -x and -y flags (Stay away from v1.1.9)",
    "1.1.9   Added -x and -y flags for removing rot/trans information",
    "1.1.8   Changed version 9 anim file format",
    "1.1.7   Updated version 9 anim code",
    "1.1.6   Fixed usage message, and added code for version 9 anims",
    "1.1.5   Added -f flag for truncating translation values to ints",
    "1.1.4   Added -e flag for translation epsilon",
    "1.1.3   New rotation optimization test",
    "1.1.2   Changed epsilon for translation equality testing to 0.00005",
    "1.1.1   fixed some optimization bugs",
    "1.1.0   made p3danim the toollib sample program",
    "1.0.9   Fixed bug with command lines longer than 256 characters",
    "1.0.8   Option -z to sort joints by name",
    "1.0.7   Fixed * bug",
    "1.0.6   Remove scale keyframes with -s",
    "1.0.5   Optimize out keyframes with tolerance",
    "1.0.4   Added simple optimization with -o flag",
    "1.0.3   Renamed to p3danim and added heirarchy rename (-r) flag",
    "1.0.2   Fixed exit status",
    "1.0.1   Fixed bug with setting maxframe",
    "1.0.0   First version",
    NULL
};

