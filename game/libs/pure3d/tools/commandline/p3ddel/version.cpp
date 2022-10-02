//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include "version.hpp"

char* version = "3.3.0";

/* History */

char* versioninfo[] = {
	"3.3.0  Added -e option, changing -D, -d, and -k behaviour.\n"
    "3.2.1  Added -c and -C flags for Composite Drawables",
    "3.2.0  Updated Object type flags (eg -g) to work with V14 art",
    "3.1.2  Updated to use new particle chunks",
    "3.1.1  Rebuild to use new particle chunks",
    "3.1.0  Added -E option, changing the -D behaviour",
    "3.0.0  Fixed problems with -D option and v14 art",
    "2.1.1  Updated for toollib 13.5",
    "2.1.0  Fixed bug with PSX textures",
    "2.0.2  Added -D option, removes duplicate chunks from a p3d file",
    "2.0.1  Minor frontend changes",
    "2.0.0  Complete rewrite using toollib and Jeeves frontend",
    "1.0.9  Upgraded to use new tFile methods",
    "1.0.8  Fixed more problems with wildcards",
    "1.0.7  Fixed problems with wildcards on network drives",
    "1.0.6  Happily gives error message if no input filenames match wildcard",
    "1.0.5  Full pathnames now supported in input filename",
    "1.0.4  Changed to keep file ID.",
    "1.0.3  Added wildcards for filename.",
    "1.0.2  Fixed errors in usage message",
    "1.0.1  Added -k (keep) and -d (delete) options.  See -h for more details.",
    "1.0.0  First version",
    NULL
};

