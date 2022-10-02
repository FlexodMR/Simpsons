//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     October 30, 2001
//
// Component:   mayaDagSelection
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaDagSelection.hpp"
#include "../inc/mayaDagComponents.hpp"

#include <maya/MFnDagNode.h>
#include <maya/MItSelectionList.h>

#include <iostream>

#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaDagSelection::CMayaDagSelection()
:   m_filter( kNone ),
    m_numGroups( 0 ),
    m_numDags( 0 )
{
}

CMayaDagSelection::~CMayaDagSelection()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void CMayaDagSelection::Clear()
{
    unsigned int                index;

    // Must first delete all MDagPathArray objects allocated for table.
    for ( index = 0; index < m_numGroups; index++ )
    {
        delete m_dagTable[index];
    }

    // Now empty table and shrink.
    m_dagTable.ZeroCount();     // first set count to zero
    m_dagTable.Shrink();        // then shrink to zero items

    m_numGroups = 0;
    m_numDags = 0;
}

void CMayaDagSelection::Build( const MSelectionList& selList )
{
    Clear();

    MStatus                     status;
    MItSelectionList            itList( selList );
    for ( /* nothing */; !itList.isDone(); itList.next() )
    {
        MDagPath                dagPath;
        MObject                 component;

        itList.getDagPath( dagPath, component );

//        CMayaDagComponents*     pDagComponent = new CMayaDagComponents( dagPath, component );
//
//        m_dagTable.Append( pDagComponent );

        Add( dagPath, component, false );
    }
}

//===========================================================================
// CMayaDagSelection::HasDag
//===========================================================================
// Description: Determines if this object already has the specified DAG.
//
// Constraints: Note that it is looking for a specific DAG here, not
//              just an instance of the DAG.
//
// Parameters:  const MDagPath & dagPath: The DAG to match.
//
// Return:      (bool): TRUE if DAG is found; else FALSE.
//
//===========================================================================
bool CMayaDagSelection::HasDag( const MDagPath & dagPath )
{                                       
    bool                                hasDag = false;

    CMayaDagComponents*                 pDagComponents;
    int                                 group;

    for ( group = 0; !hasDag && ( group < m_dagTable.Count() ); group++ )
    {
        pDagComponents = m_dagTable[ group ];

        if ( pDagComponents->HasDag( dagPath ) )
        {
            hasDag = true;
            break;
        }
    }

    return hasDag;
}

//===========================================================================
// CMayaDagSelection::IsInstanceOf       (static)
//===========================================================================
// Description: Determines if the first specified DAG is an instance of
//              the second specified DAG.
//
// Constraints: 
//
// Parameters:  const MDagPath & dagInstance: Is this DAG an instance...
//              const MDagPath & dagOf: ...of this DAG?
//
// Return:      (bool): TRUE if DAG is an instance; else FALSE.
//
//===========================================================================
bool CMayaDagSelection::IsInstanceOf( const MDagPath & dagInstance, const MDagPath & dagOf )
{
    bool                                isInstance = false;

    MDagPathArray                       allDags;
    unsigned                            dag;

    MDagPath::getAllPathsTo( dagOf.node(), allDags );

    for ( dag = 0; dag < allDags.length(); dag++ )
    {
        if ( allDags[dag] == dagInstance )
        {
            isInstance = true;
            break;
        }
    }

    return isInstance;
}

//===========================================================================
// CMayaDagSelection::IsParentOf       (static)
//===========================================================================
// Description: Determines if the first specified DAG is a parent of
//              the second specified DAG.
//
// Constraints: 
//
// Parameters:  const MDagPath & dagParent: Is this DAG a parent...
//              const MDagPath & dagOf: ...of this DAG?
//
// Return:      (bool): TRUE if DAG is a parent; else FALSE.
//
//===========================================================================
//bool CMayaDagSelection::IsParentOf( const MDagPath & dagParent, const MDagPath & dagOf )
//{
//  bool                                isInstance = false;
//
//    // Trivial rejection
//    if ( dagParent == dagOf ) return false;
//
//    // To properly handle instances:
//    // If 'dagOf' is a Transform, then just pickWalk up to find 'dagParent'.
//    // if 'dagOf' is a Shape, must get all DAG paths and pickWalk up for each.
//
//  MDagPathArray                       allDags;
//  unsigned                            dag;
//
//    if ( dagOf.hasFn( MFn::kTransform ) )
//    {
//        allDags.append( dagOf );
//    }
//    else
//    {
//      MDagPath::getAllPathsTo( dagOf.node(), allDags );
//    }
//
//  for ( dag = 0; dag < allDags.length(); dag++ )
//  {
//        MDagPath                        dagPickWalk( allDags[dag] );
//
//        while ( allDags[dag].length() )
//        {
//            dagPickWalk.pop();
//            
//          if ( dagPickWalk == dagParent )
//          {
//              return true;
//          }
//        }
//  }
//
//  return isInstance;
//}

bool CMayaDagSelection::Add( const MDagPath & dagPath, bool replaceChild )
{
    return Add( dagPath, MObject::kNullObj, replaceChild );
}

//===========================================================================
// mayaDagSelectoin::Add
//===========================================================================
// Description: Adds the specified DAG path to this object.  The current
//              groups are evaluated to see if an "instance family" for
//              the DAG has already been added.  If so, the DAG is added
//              to that "instance group;" else, a new group is created.
//
// Constraints: 
//
// Parameters:  const MDagPath & obDagPath: The DAG to add.
//              bool replaceChild: If TRUE, then a DAG which is a parent of
//                  any DAG found in a group will replace that DAG within
//                  that group.  Default == FALSE.
//
// Return:      (bool): TRUE if added, else FALSE.
//
//===========================================================================
bool CMayaDagSelection::Add( const MDagPath & dagPath, MObject& component, bool replaceChild )
{
    // Trivial rejection
    if ( !dagPath.isValid() )
    {
        return false;
    }

    char dagName[_MAX_PATH];

    bool                                isAdded = false;
    bool                                hasGroup = false;

    MDagPath                            dagToAdd( dagPath );
    CMayaDagComponents*                 dagComponents = NULL;
    MDagPathArray                       dagArray;
    int                                 group;

    // Adjust DAG if Filter is specified.
    if ( ( m_filter == kTransformsOnly ) && ( !dagToAdd.hasFn( MFn::kTransform ) ) )
    {
        dagToAdd.pop();
    }

    if ( ( m_filter == kShapesOnly ) && ( dagToAdd.hasFn( MFn::kTransform ) ) )
    {
        dagToAdd.extendToShape();
    }

    // If DAG already exists, skip it.
    if ( HasDag( dagToAdd ) )
    {
        return false;
    }

    strcpy( dagName, dagToAdd.fullPathName().asChar() );

    if ( replaceChild )
    {  
        // If any existing Dags are children of dagToAdd, remove them.
        // Additionally, if any Dag is parent to dagToAdd, skip adding it.

        for ( group = 0; group < m_dagTable.Count(); group++ )
        {
            dagComponents = m_dagTable[group];
            dagComponents->GetDagArray( dagArray );

            unsigned int        index = dagArray.length();         // work backwards

            while( index-- )
            {  
                MFnDagNode      fnDagNode( dagToAdd );

                // A parent already exists?  Skip adding this one.
                if ( fnDagNode.isChildOf( dagArray[index].node() ) )
                {
                    return false;
                }

                // A child for this node exists?  Delete it.
                if ( fnDagNode.isParentOf( dagArray[index].node() ) )
                {
                    if ( dagComponents->RemoveDag( dagArray[index] ) )
                    {
                        --m_numDags;
                    }

                    // ** NOTE: This may result in an empty MDagPathArray group!
                    // This is by no means fatal, but eventually I should clean up after myself...
                }
            }
        }
    }

    // For each array of DAGs in list...
    // Check if item to add is included in the list of all paths for 
    // the first item in the array.  If yes, append to that array.
    for ( group = 0; group < m_dagTable.Count(); group++ )
    {
        dagComponents = m_dagTable[group];

        if ( dagComponents->IsInstanceOf( dagToAdd ) )
        {
            isAdded = dagComponents->AddToDag( dagToAdd, component );
            hasGroup = true;
            break;
        }
    }

    // If Instance "family" not found, start a new DagPathArray with this item
    if ( !hasGroup )
    {
        dagComponents = new CMayaDagComponents( dagToAdd, component );
        m_dagTable.Append( dagComponents );
        m_numGroups++;
        isAdded = true;
        hasGroup = true;
    }

    if ( isAdded ) m_numDags++;

    return isAdded;
}

//===========================================================================
// CMayaDagSelection::GetDags
//===========================================================================
// Description: Fills the provided array with all Dags from all Groups.
//
// Constraints: dagArray is cleared before populating.
//
// Parameters:  MDagPathArray & dagArray: Array to fill with the Dags.
//
// Return:      (int) Total number of Dags in array.
//
//===========================================================================
unsigned int CMayaDagSelection::GetDags( MDagPathArray & dagArray )
{
    unsigned int                        numDags = 0;

    dagArray.clear();

    CMayaDagComponents*                 pDagComponents;
    MDagPathArray                       dagTable;
    MDagPath                            dagPath;
    int                                 group;
    unsigned int                        dag = 0;
    
    char                                blah[256];

    for ( group = 0; group < m_dagTable.Count(); group++ )
    {
        pDagComponents = m_dagTable[group];
        pDagComponents->GetDagArray( dagTable );

        for ( dag = 0; dag < dagTable.length(); dag++ )
        {
            strcpy( blah, dagTable[dag].fullPathName().asChar() );

            dagArray.append( dagTable[dag] );
            numDags++;
        }
    }

    return numDags;
}
