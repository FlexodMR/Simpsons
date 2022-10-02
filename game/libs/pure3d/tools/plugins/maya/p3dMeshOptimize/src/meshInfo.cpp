//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     03 December, 2002

// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/meshInfo.hpp"

#include <maya/MItMeshEdge.h>
#include <maya/MFnMesh.h>
#include <maya/MFloatArray.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMeshInfo::CMeshInfo( MDagPath& dagPath, const MIntArray& edgeIndices, MStatus* pStatus )
:   m_numEdgeInfo( 0 ),
    m_pEdgeInfo( NULL )
{
    MStatus                     status;

    status = Initialize( dagPath, edgeIndices );

    if ( pStatus != NULL ) *pStatus = status;
}

CMeshInfo::~CMeshInfo()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void CMeshInfo::Clear( void )
{
    delete [] m_pEdgeInfo;
    m_pEdgeInfo = NULL;
}

MStatus CMeshInfo::Initialize( MDagPath& dagPath, const MIntArray& edgeIndices )
{
    MStatus                     status;

    Clear();
    unsigned int                e;
    int                         prevIndex;

    m_pEdgeInfo = new CEdgeInfo [ edgeIndices.length() ];
    m_numEdgeInfo = edgeIndices.length();

    MItMeshEdge                 itEdge( dagPath, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        for ( e = 0; e < edgeIndices.length(); e++ )
        {
            status = itEdge.setIndex( edgeIndices[e], prevIndex );
            if ( status == MS::kSuccess )
            {
                m_pEdgeInfo[e].Initialize( dagPath, edgeIndices[e] );
            }
        }
    }

    return status;    
}

CEdgeInfo* CMeshInfo::EdgeInfo( int edge ) const
{
    CEdgeInfo*  pEdgeInfo = NULL;

    unsigned int e = m_numEdgeInfo;
    while ( e-- )
    {
        if ( m_pEdgeInfo[e].Index() == edge )
        {
            pEdgeInfo = &m_pEdgeInfo[e];
            break;
        }
    }

    return pEdgeInfo;
}
