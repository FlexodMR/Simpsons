//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     25 June, 2002
//
// Component:   
//
// Description: This class is a wrapper for tlEntity* items. tlEntity's
//              are stored as an InventoryEntity to allow tracking as to
//              whether the tlEntity has been added to the Inventory.
//
//              It is possible that a tlEntity doesn't get stored into 
//              the Inventory due to optimization.  It is also a fact 
//              that multiple nodes may share a pointer to a single 
//              (tlEntity).  To be able to safely delete and NULL a 
//              (tlEntity*) I refer to the objects via a pointer to this 
//              object; thus nodes that share the (tlEntity*) can detect 
//              when it has become invalid, and other nodes sharing
//              same pointer will detect that it has disappeared.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __INVENTORYENTITY_HPP_
#define __INVENTORYENTITY_HPP_

//===========================================================================
// Nested Includes
//===========================================================================

#include <tlInventory.hpp>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

template
<class T> class InventoryEntity
{
public:
    InventoryEntity( T pEntity ) : mEntity( pEntity ), mbStored( false ) {}
    ~InventoryEntity() {};

    T                       Entity( void ) const { return mEntity; }
    bool                    Stored( void ) const { return mbStored; }
    void                    SetStored( bool bStored = true ) { mbStored = bStored; }

    void                    Store( tlInventory* pInventory ) { if ( pInventory->Store( mEntity ) != (-1) ) mbStored = true; }
    void                    DeleteEntity( void ) { delete mEntity; mEntity = NULL; mbStored = false; }

private:
    T                       mEntity;    
    bool                    mbStored;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __INVENTORYENTITY_HPP_
