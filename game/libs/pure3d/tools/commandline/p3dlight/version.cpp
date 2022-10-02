/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.5.5";

/* History */

char* versioninfo[] = {
   "1.5.5   Bug fixes: 1) Sample density had wrong default.  2) Geo missing shaders could crash p3dlight.", 
   "1.5.4   Add -N option to not delete normals.  Required for multi-pass prelighting.", 
   "1.5.3   Incorporate multi cbvs in p3dlight.  Add -T option to specify target CBV set.",
   "1.5.2   Bug fix: Don't compute texture with -L option if no suitable geo is available.  Tracker #826.",
   "1.5.1   Bug fix: Some lightmap boundaries using -L option were inccorrect colour.  Tracker #828.",
   "1.5.0   New option -f to force the prelight mode (cbv or lightmap).  Tracker #822.",
   "1.4.9   New option -Y to add a new history chunk only if change was actually made.  Tracker #823.",
   "1.4.8   Bug fix: Ambient contribution not correct with -c -r options.  Tracker #821.",
   "1.4.7   Bug fix: Projected lightmaps created textures extending over some non-lightmapped geo.  Tracker #814.",
   "1.4.6   Implement rotation of decay rages with lightmaps.",
   "1.4.5   Correct boundary inaccuracies in projected lightmap.",
   "1.4.4   Remove dependency of -L on -l.  Ensure lightmap names are unique.",
   "1.4.3   Lightmaps and CBV prelighting now are affected by diffuse material colour.",
   "1.4.2   Maintain Maya CBV values if so requested by the shader.",
   "1.4.1   Landscape lightmaps generated for shaders w/o texture now works properly",
   "1.4.0   Add -L to lightmap onto a single texture using axis-alligned projection.",
   "1.3.7   Remove deprecated option, -b.  Use -l to lightmap and/or -c to light cbv.",
   "1.3.6   Bug fix: tlPrimGroupMesh IsInAPlane() used some bad indices.  Tracker #733",
   "1.3.5   Removing lights removes light group. Can remove lights based on pattern", 
   "1.3.4   Bug fix - some composite drawable mesh chunks are deleted.  (Tracker #693)", 
   "1.3.3   Add -k and -K options to include and exclude lights.  (Tracker #689)", 
   "1.3.2   Speed through files that don't have the matching geometry specified in -g. (Tracker #541)",
   "1.3.1   Add -G option to specify geometry to ignore",
   "1.3.0   Bug fix - slow shadow casting with cbv lighting (-r)",
   "1.2.9   Bug fix - cbv lit objects crash program",
   "1.2.8   Added option to create dithered 4 and 8 bit images",
   "1.2.7   Bug fix - sometimes filter is called twice",
   "1.2.6   Do not prelight prim groups marked as dynamically lit",
   "1.2.5   Use a single lightmap for planar primgroup meshes with multiple shaders",
   "1.2.4   Replace filter option, -f, with -F, which blurs using a specified blur radius",
   "1.2.3   Fix misaligned textures.  Save texture's image name",
   "1.2.2   Fix a bug that does a wrong plane side check",
   "1.2.1   Speed optimizations when using photon map",
   "1.2.0   Using BSP tree to speed up ray-triangle intersection",
   "1.1.4   Remove normal and append color for all lightmapped meshes",
   "1.1.3   Add ability to use photon maps",
   "1.1.2   Fix a bug that skips merging grime and light map",
   "1.1.1   Switch -u works to unlit all shaders and to take normals from all meshes",
   "1.1.0   Optimize shadow testing for CBV color",
   "1.0.9   Fix a bug that loses ray/trimesh intersection",
   "1.0.8   Add filter to smooth shadow",
   "1.0.7   Add -b, -s, and -i switches; Add falloff to spot lights",
   "1.0.6   Merge grime map with light map if -m is specified",
   "1.0.5   Support testing shadow block if -r is specified",
   "1.0.4   Turn off shadow for directional light and fix bugs of cbv coloring ",
   "1.0.3   Optimized and bugs fixes",
   "1.0.2   Added light mapping",
   "1.0.1   Added shader processing, ray casting",
   "1.0.0   First version",
   NULL
};

