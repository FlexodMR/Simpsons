//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     October 30, 2001
//
// Component:   mayaDagSelection
//
// Description: Maintains "instance families" for DAGs which are instances of each other.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYADAGSELECTION_H  
#define __MAYADAGSELECTION_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "mayaDagComponents.hpp"

#include <maya/MDagPath.h>
#include <maya/MDagPathArray.h>
#include <maya/MSelectionList.h>

#include <tlTable.hpp>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: Storage class for DAGs.  Maintains "instance families" for
//              DAGs which are instances of each other.
//
// Constraints:
//
//===========================================================================

class CMayaDagSelection
{
public:

    enum FilterEnum
    {
        kNone,
        kTransformsOnly,
        kShapesOnly,
    };

    void                                Build( const MSelectionList& selList );

    void                                SetFilter( FilterEnum kFilter );    // inline

    bool                                Add( const MDagPath & obDagPath, bool replaceChild = false );
    bool                                Add( const MDagPath & obDagPath, MObject& component, bool replaceChild = false );
    CMayaDagComponents*                 Group( unsigned int index );    // inline
    unsigned int                        GetDags( MDagPathArray & dagArray );
    unsigned int                        NumGroups( void ) const;        // inline
    unsigned int                        NumDags( void ) const;          // inline

    static bool                         IsInstanceOf( const MDagPath & dagInstance, const MDagPath & dagOf );
//    static bool                         IsParentOf( const MDagPath & dagParent, const MDagPath & dagOf );

    void                                Clear();

// Constructor / Destructor
public:
    CMayaDagSelection();
    ~CMayaDagSelection();

protected:
    // No protected members.

private:
    tlTable<CMayaDagComponents *>       m_dagTable;     // Array of MDagPathArrays, each a family of "instances"

    FilterEnum                          m_filter;

    unsigned int                        m_numGroups;
    unsigned int                        m_numDags;

    bool                                HasDag( const MDagPath & obDagPath );

};

//===========================================================================
// Inlines
//===========================================================================

//===========================================================================
// CMayaDagSelection::SetFilter
//===========================================================================
// Description: Sets the Filter for the DAG inclusion.
//
//              kNone = All DAGs are added without prejudice.
//              kTransformsOnly = Shape DAGs will be 'pop'ped back to their Transform before adding.
//              kShapesOnly = Transform DAGs will be extended to their Shapes before adding.
//
// Constraints: 
//
// Parameters:  Filter filter: The Filter mode
//
// Return:        (void) 
//
//===========================================================================
inline
void CMayaDagSelection::SetFilter( FilterEnum filter )
{
    m_filter = filter;
}

//===========================================================================
// CMayaDagSelection::GetGroup
//===========================================================================
// Description: Returns the pointer to the MDagPathArray object at
//              the specified index.
//
// Constraints: 
//
// Parameters:  const int index: Zero-based index to item in array.
//
// Return:         
//
//===========================================================================
inline
CMayaDagComponents* CMayaDagSelection::Group( unsigned int index )
{
    if ( ( index < 0 ) || ( index > m_numGroups ) )
    {
        return NULL;
    }

    return m_dagTable[ index ];
}

//===========================================================================
// CMayaDagSelection::NumGroups
//===========================================================================
// Description: Returns the number of groups, or "instance families"
//              currently in this object.  Each group will contain the
//              primary or "original" DAG node and any of its instances.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int) The number of groups.
//
// Note:        A lone DAG in a group may be an "instance" in Maya.  On its
//              own there is no need to make any distinction for a single DAG
//              as an instance.  Only when a second "instanced" DAG is added
//              to a group does this become important.
//===========================================================================
inline
unsigned int CMayaDagSelection::NumGroups( void ) const
{
    return m_numGroups;
}

//===========================================================================
// CMayaDagSelection::NumDags
//===========================================================================
// Description: Returns the total number of DAGs in all groups or
//              "instance families" currently in this object.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (unsigned int) The total number of DAGs.
//
//===========================================================================
inline
unsigned int CMayaDagSelection::NumDags( void ) const
{
    return m_numDags;
}

#endif // __MAYADAGSELECTION_H  
