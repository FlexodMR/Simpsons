/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.4.0.0";

/* History */

char* versioninfo[] = {
   "1.0.0.0   Initial release for Pure3D v16",
   "1.1.0.0   Release coinciding to Pure3D Maya Exporter v16.14",
   "1.2.0.0   Release coinciding to Pure3D Maya Exporter v16.15",
   "1.3.0.0   Release coinciding to Pure3D Maya Exporter v17.0",
   "1.4.0.0   Uses cout instead of cerr (the latter won't pipe)",
   NULL
};
