//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     29 November, 2002
//
// Component:   vertexInfo.cpp -> p3dMeshOptimize Maya plug-in
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

#include "../inc/vertexInfo.hpp"

#include <maya/MItMeshVertex.h>
#include <maya/MItMeshEdge.h>

#include <math.h>       // fabs()

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CVertexInfo::CVertexInfo( const MDagPath& dagPath, int index, MStatus* pStatus )
:   m_index( -1 ),
    m_numEdgeIndices( 0 ),
    m_angle( 0.0F )
{
    Initialize( dagPath, index, pStatus );
}

CVertexInfo::~CVertexInfo()
{
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

void CVertexInfo::Initialize( const MDagPath& dagPath, int index, MStatus* pStatus )
{
    MStatus                     status;

    MDagPath                    copyDag( dagPath );
    int                         prevIndex;

    MItMeshVertex               itVertex( copyDag, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        m_index = index;
        status = itVertex.setIndex( index, prevIndex );
        if ( status == MS::kSuccess )
        {
            m_dagPath = dagPath;

            itVertex.getConnectedEdges( m_edgeIndices );
            m_numEdgeIndices = m_edgeIndices.length();

            m_point = itVertex.position( MSpace::kObject );

            CalculateEdgeAngle();
        }
    }

    if ( pStatus != NULL ) *pStatus = status;

    return;
}

void CVertexInfo::CalculateEdgeAngle( void )
{
    m_angle = 0.0F;

    if ( m_numEdgeIndices < 2 ) return;

    MItMeshEdge                 itEdge( m_dagPath );
    int prevIndex;

    itEdge.setIndex( m_edgeIndices[0], prevIndex );
    MVector center0 = itEdge.center( MSpace::kObject ) - m_point;

    itEdge.setIndex( m_edgeIndices[1], prevIndex );
    MVector center1 = itEdge.center( MSpace::kObject ) - m_point;

    m_angle = fabs( 1.0 - fabs( center0.normal() * center1.normal() ) );     // dot product;

}

MString CVertexInfo::AsString(void) const
{
    MString asString = m_dagPath.fullPathName() + ".vtx[";
    asString += m_index;
    asString += "]";
    return asString;
}
