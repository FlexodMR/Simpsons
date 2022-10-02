//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     25 June, 2002
// Modified:    25 June, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SCENEGRAPH_HPP_
#define __SCENEGRAPH_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include "InventoryEntity.hpp"

#include <stdio.h>  // NULL 

//===========================================================================
// Forward References
//===========================================================================

class tlScenegraph;
class tlScenegraphBranch;
class tlScenegraphNode;
class tlLightGroup;
class tlInventory;
class SceneNode;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CExporterScenegraph
{
// Constructor / Destructor
public:

public:
    static tlScenegraph*        CreateScenegraph( SceneNode* pNode, tlInventory* pInventory );
    static tlScenegraph*        CreateScenegraph( const char* name, SceneNode** ppNodes, int numNodes, tlInventory* pInventory );

protected:
    // No protected members.
    static bool                 BuildScenegraph( InventoryEntity<tlScenegraph*>* psgEntity, SceneNode** ppNodes, int numNodes, tlInventory* pInventory );
    static bool                 AddToScenegraph( InventoryEntity<tlScenegraph*>* psgEntity, tlScenegraphBranch* sgb, SceneNode* node, tlInventory* pInventory, bool transformOnly = false );

private:
     static SceneNode*          mScenegraphRoot;
     static tlLightGroup*       mScenegraphLightGroup;

//     static tlScenegraphNode*   mScenegraphNode;
    
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __SCENEGRAPH_HPP_
