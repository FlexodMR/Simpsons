/*===========================================================================

  File:: version.cpp

  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include "version.hpp"

char* version = "1.3.5";

/* History */
char
* versioninfo[] = {
    "1.3.5   Useless parameters removed from shaders",
    "1.3.4   Allow MODULATE2 blend mode to be converted to SUBMODULATEALPHA the same as MODUALTE",
    "1.3.3   Don't memory-image stream-rendered geometries",
    "1.3.2   Optimizing by rotate a texture by half PI if its height is greater than width",
    "1.3.1   Improved shader optimisation code",
    "1.3.0   Add option to control level of sub-modulate-alpha blending (Tracker #675)",
    "1.2.11  Memory images are no longer too dark",
    "1.2.10  Added optimise-shaders (-s) option",
    "1.2.9   Bug fix for memory imaged skins",
    "1.2.8   Uses version 17.4 memory image format",
    "1.2.7   Bug fix 24 bit images not handled correctly in tlTexture::PrepareForAlphaBlend",
    "1.2.6   Bug fix - incorrect texture width",
    "1.2.5   Don't memory image skin",
    "1.2.4   Improve  merging by adding texture filter",
    "1.2.3   Merge the grime map with light map for all layered-lightmapped primtives",
    "1.2.2   Use Base texture if available to guide sub-modulate-alpha blending",
    "1.2.1   Fix bug with texture processing for sub-modulate-alpha blending", 
    "1.2.0   Prepare the light map or grime map for alpha blending to simulate modulate blending mode for ps2",
    "1.1.9   Convert the light map texture of light-map shader to grayscale and append it to alpha channel",
    "1.1.8   Convert the top texture of layered shader to grayscale and attach it to alpha channel",
    "1.1.7   Switch uv channel and top/bottom texture of layered shaders for ps2",
    "1.1.6   Deindex and remove normal list from primtive group binded to layered shader",
    "1.1.5   Add support for modulate texture blendmode for layered shader",
    "1.1.4   Remove extra UV channels from broken art",
    "1.1.3   Temporarily removed support for memory imaged skins",
    "1.1.2   Fixed bug with one bone skins",
    "1.1.1   Fixed bug with texture rotation",
    "1.1.0   Many new features (compression, one bone skins, UV removal)",
    "1.0.2   Fixed bug with multiple input files",
    "1.0.1   Fixed bug with upsidedown textures",
    "1.0.0   First version",
    NULL
};

