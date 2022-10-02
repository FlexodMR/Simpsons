/*===========================================================================

  File:: version.cpp

  Copyright (c) 2002 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.0.4";

/* History */

char* versioninfo[] = {
   "1.0.4   Bug fix: p3dpack did not maintain the previous chunk order.  Finish fix of tracker #824.",
   "1.0.3   Bug fix: p3dpack crashes on some p3dfiles when not using the -v option.  Tracker #824.",
   "1.0.2   Add -Q option to query for underused textures.  Add -N option to take no action (use as preview).",
   "1.0.1   More accurate checking of texture usage.  Correct a crash bug on some UV sets.",
   "1.0.0   First version",
   NULL
};

