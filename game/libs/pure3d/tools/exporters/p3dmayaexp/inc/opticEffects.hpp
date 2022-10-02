/*===========================================================================
    opticEffects.hpp
    created: Nov. 17, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _OPTICEFFECTS_HPP
#define _OPTICEFFECTS_HPP

#include <maya/MDagPath.h>

class tlLensFlareGroup;
class tlLensFlare;
class tlInventory;
class SceneNode; 

class LensFlareProcess
{
public:
    static tlLensFlareGroup* ExportLensFlareGroup(SceneNode* node, tlInventory* tlInv);
protected:
    static tlLensFlare* ExportLensFlare(SceneNode* node, tlInventory* tlInv, tlLensFlareGroup* group);
};


#endif // _OPTICEFFECTS_HPP

