/*===========================================================================
    billboardObject.hpp
    created: Nov. 17, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _BILLBOARDOBJECT_HPP
#define _BILLBOARDOBJECT_HPP

#include <maya/MDagPath.h>

#include "tlChannel.hpp"
#include "tlTable.hpp"

class SceneNode;
class tlInventory;
class tlBillboardQuad;
class tlBillboardQuadGroup;

class BillboardObjectProcess
{
public:
    static tlBillboardQuadGroup* ExportQuad(SceneNode* node, tlInventory* tlInv, tlBillboardQuadGroup* group = NULL);
    static tlBillboardQuadGroup* ExportQuadGroup(SceneNode* node, tlInventory* tlInv);
};

#endif // _BILLBOARDOBJECT_HPP

