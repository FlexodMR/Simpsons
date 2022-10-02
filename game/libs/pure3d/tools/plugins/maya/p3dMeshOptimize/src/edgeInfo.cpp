//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     28 November, 2002
// Modified:    28 November, 2002
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
//===========================================================================
// Includes
//===========================================================================

#include "../inc/edgeInfo.hpp"

#include <maya/MItMeshEdge.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MIntArray.h>
#include <maya/MObjectArray.h>
#include <maya/MFnMesh.h>

#include <math.h>       // fabs()

#include <bewert_debug.h>
#include <iomanip.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

int faceRelativeVertexIndex( MDagPath& path, int faceIndex, int vertexIndex )
{
    int face_relative_index = -1;

    MStatus                     status;
    MItMeshPolygon              itPoly( path, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        int b;

        status = itPoly.setIndex( faceIndex, b );
        if ( status == MS::kSuccess )
        {
            for (b = 0; b < itPoly.polygonVertexCount(); b++)
            {
                if (itPoly.vertexIndex(b) == vertexIndex)
                {
                    face_relative_index = b;
                    break;
                }
            }
        }
    }

    return face_relative_index;
}

//===========================================================================
// Constructor / Destructor
//===========================================================================


CEdgeInfo::CEdgeInfo()
:   m_index( -1 ),
    m_numAdjacentFaces( 0 ),
    m_bBoundaryEdge( false ),
    m_maxUVRange( 0.0f ),
    m_area( 0.0f )
{
    m_vertexIndices[0] = -1;
    m_vertexIndices[1] = -1;

    m_adjacentFaces[0] = -1;
    m_adjacentFaces[1] = -1;

    m_oppositeEdges[0] = -1;
    m_oppositeEdges[1] = -1;

    // Four pairs of UVs:
    //
    //  +-----+  - The edge opposite the selected edge on Face A. [2,3]
    //  +  A  +
    //  +     +  / The selected edge on Face A. [0,1]
    //  +=====+
    //  +     +  \ The selected edge on Face B. [4,5]
    //  +  B  +
    //  +-----+  - The edge opposite the selected edge on Face B. [6,7]

    unsigned int i;
    for ( i = 0; i < kEdgeInfoNumUVs; i++ )
    {
        m_pUVs[i].Set( 0.0f, 0.0f );
    }
}

CEdgeInfo::CEdgeInfo( MDagPath& dagPath, int index, MStatus* pStatus )
:   m_index( -1 ),
    m_numAdjacentFaces( 0 ),
    m_bBoundaryEdge( false ),
    m_maxUVRange( 0.0f ),
    m_area( 0.0f )
{
    MStatus                     status;

    m_vertexIndices[0] = -1;
    m_vertexIndices[1] = -1;

    m_adjacentFaces[0] = -1;
    m_adjacentFaces[1] = -1;

    m_oppositeEdges[0] = -1;
    m_oppositeEdges[1] = -1;

    // Four pairs of UVs:
    //
    //  +-----+  - The edge opposite the selected edge on Face A. [2,3]
    //  +  A  +
    //  +     +  / The selected edge on Face A. [0,1]
    //  +=====+
    //  +     +  \ The selected edge on Face B. [4,5]
    //  +  B  +
    //  +-----+  - The edge opposite the selected edge on Face B. [6,7]

    unsigned int i;
    for ( i = 0; i < kEdgeInfoNumUVs; i++ )
    {
        m_pUVs[i].Set( 0.0f, 0.0f );
    }

    status = Initialize( dagPath, index );

    if ( pStatus != NULL ) ( *pStatus = status );
}

CEdgeInfo::~CEdgeInfo()
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

MStatus CEdgeInfo::Initialize( MDagPath& dagPath, int index )
{
    MStatus                     status;

    MItMeshEdge                 itEdge( dagPath, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        int                     prevIndex;

        status = itEdge.setIndex( index, prevIndex );
        if ( status == MS::kSuccess )
        {
            m_dagPath.set( dagPath );
            m_index = index;

            m_bBoundaryEdge = itEdge.onBoundary();

            m_vertexIndices[0] = itEdge.index( 0 );
            m_vertexIndices[1] = itEdge.index( 1 );

            MIntArray               connectedFaces;
            itEdge.numConnectedFaces( m_numAdjacentFaces );
            itEdge.getConnectedFaces( connectedFaces );

            m_adjacentFaces[0] = connectedFaces[0];
            m_adjacentFaces[1] = ( ( m_numAdjacentFaces > 1 ) ? connectedFaces[1] : (-1) );

            CalculateOppositeEdges();

        // ----  Get UVs from edge  --------

            status = Refresh();

//            CDEBUG << "\tUVs of edge on Face A: { " << m_pUVs[0].u << ", " << m_pUVs[0].v << " } { " << m_pUVs[1].u << ", " << m_pUVs[1].v << " }" << endl;
//            CDEBUG << "\t\tUVs of opposite edge on Face A: { " << m_pUVs[2].u << ", " << m_pUVs[2].v << " } { " << m_pUVs[3].u << ", " << m_pUVs[3].v << " }" << endl;
//
//            if ( m_numAdjacentFaces > 1 )
//            {
//                CDEBUG << "\tUVs of edge on Face B: { " << m_pUVs[4].u << ", " << m_pUVs[4].v << " } { " << m_pUVs[5].u << ", " << m_pUVs[5].v << " }" << endl;
//                CDEBUG << "\t\tUVs of opposite edge on Face B: { " << m_pUVs[6].u << ", " << m_pUVs[6].v << " } { " << m_pUVs[7].u << ", " << m_pUVs[7].v << " }" << endl;
//            }

        }
           
    }

    return status;
}

MStatus CEdgeInfo::Refresh( void )
{
    MStatus                     status;

    // The selected edge on Face A.
    status = GetEdgeUV( m_index, m_adjacentFaces[0], &m_pUVs[0] );
    if ( status != MS::kSuccess ) return status;

    // The edge opposite the selected edge on Face A.
    status = GetEdgeUV( m_oppositeEdges[0], m_adjacentFaces[0], &m_pUVs[2] );
    if ( status != MS::kSuccess ) return status;

    if ( m_numAdjacentFaces > 1 )
    {
        // The selected edge on Face B.
        status = GetEdgeUV( m_index, m_adjacentFaces[1], &m_pUVs[4] );
        if ( status != MS::kSuccess ) return status;

        // The edge opposite the selected edge on Face B.
        status = GetEdgeUV( m_oppositeEdges[1], m_adjacentFaces[1], &m_pUVs[6] );
        if ( status != MS::kSuccess ) return status;
    }

    float minU = 0.0f;
    float maxU = 0.0f;
    float minV = 0.0f;
    float maxV = 0.0f;

    // Track the value for the "bottom-left" corner
    float bottomLeftU = 0.0f;
    float bottomLeftV = 0.0f;

    m_area = 0.0f;

    MItMeshPolygon              itPolygon( m_dagPath, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        MFloatArray             u, v;
        double                  area;
        unsigned int            i;
        int                     prevIndex;

        itPolygon.setIndex( m_adjacentFaces[0], prevIndex );
        itPolygon.getArea( area );
        m_area += area;
        itPolygon.getUVs( u, v );

        if ( u.length() > 0 )
        {
            minU = u[0];
            maxU = u[0];
            minV = v[0];
            maxV = v[0];

            bottomLeftU = u[0];
            bottomLeftV = v[0];

            for ( i = 1; i < u.length(); i++ )
            {
                minU = __min( minU, u[i] );
                maxU = __max( maxU, u[i] );
                minV = __min( minV, v[i] );
                maxV = __max( maxV, v[i] );

                bottomLeftU = min( bottomLeftU, u[i] );
                bottomLeftV = min( bottomLeftV, v[i] );
            }

            if ( m_numAdjacentFaces > 1 )
            {
                itPolygon.setIndex( m_adjacentFaces[1], prevIndex );
                itPolygon.getArea( area );
                m_area += area;
                itPolygon.getUVs( u, v );

                for ( i = 0; i < u.length(); i++ )
                {
                    minU = __min( minU, u[i] );
                    maxU = __max( maxU, u[i] );
                    minV = __min( minV, v[i] );
                    maxV = __max( maxV, v[i] );

                    bottomLeftU = min( bottomLeftU, u[i] );
                    bottomLeftV = min( bottomLeftV, v[i] );
                }
            }
        }
    }

    m_maxUVRange = static_cast<float>( __max( fabs( bottomLeftU ) + fabs( maxV - minV ), fabs( bottomLeftV ) + fabs( maxU - minU ) ) );

    return MS::kSuccess;
}

MStatus CEdgeInfo::GetEdgeUV( int index, int faceIndex, rmt::Vector2* pUV )
{
    MStatus                     status;

    MFnMesh                     fnMesh( m_dagPath, &status );
    if ( status == MS::kSuccess )
    {
        int                     localIndex = 0;

        MStringArray            uvSetNames;
        fnMesh.getUVSetNames( uvSetNames );
      
        int2                    edgeVertices;
        int                     e;
        fnMesh.getEdgeVertices( index, edgeVertices );
          
        for ( e = 0; e < 2; e++ )
        {
            localIndex = faceRelativeVertexIndex( m_dagPath, faceIndex, edgeVertices[e] );

            if ( localIndex >= 0 )
            {
                fnMesh.getPolygonUV( faceIndex, localIndex, pUV[e].u, pUV[e].v );
            }
        }
    }

//    CDEBUG << "Get Edge UVs for .edgeFace[" << index << "][" << faceIndex << "] -> { " << uv[0].u << ", " << uv[0].v << " } { " << uv[1].u << ", " << uv[1].v << " }" << endl;

    return status;    
}

MStatus CEdgeInfo::CalculateOppositeEdges( void )
{
    if ( ( !m_dagPath.isValid() ) || ( m_index < 0 ) ) return MS::kFailure;

    MStatus                     status;

    MItMeshEdge                 itEdge( m_dagPath, MObject::kNullObj, &status );
    if ( status == MS::kSuccess )
    {
        int                     prevIndex;
        itEdge.setIndex( m_index, prevIndex );

        MVector                 edgeNormal( itEdge.point(1) - itEdge.point(0) );
        edgeNormal.normalize();

        MIntArray               connectedEdges;
        int                     numConnectedEdges;
        itEdge.numConnectedEdges( numConnectedEdges );
        itEdge.getConnectedEdges( connectedEdges );

        MIntArray               connectedFaces;
        int                     numConnectedFaces;
        int                     f;
        itEdge.numConnectedFaces( numConnectedFaces );
        itEdge.getConnectedFaces( connectedFaces );

        MItMeshPolygon          itPolygon( m_dagPath );

        // Get edge list from each polygon
        MIntArray               faceEdges;
        int                     numEdges;
        int                     edge;

        for ( f = 0; f < numConnectedFaces; f++ )
        {
            itPolygon.setIndex( connectedFaces[f], prevIndex );

            itPolygon.getEdges( faceEdges );
            numEdges = faceEdges.length();
        
            double maxDot = 0.0;
            int oppositeEdge = -1;

            for ( edge = 0; edge < numEdges; edge++ )
            {
                if ( faceEdges[edge] == m_index ) continue; // skip this edge

                itEdge.setIndex( faceEdges[edge], prevIndex );

                MVector             otherEdgeNormal( itEdge.point(1) - itEdge.point(0) );
                otherEdgeNormal.normalize();

                // The edge that generates a dot product closest to (1) is our opposite edge
                double dot = fabs( edgeNormal * otherEdgeNormal );

                if ( dot > maxDot )
                {
                    maxDot = dot;
                    oppositeEdge = faceEdges[edge];
                }
            }

//            CDEBUG << "For face #" << connectedFaces[f] << " the edge opposite to edge #" << m_index << " is: ";
            if ( oppositeEdge >= 0 )
            {
                m_oppositeEdges[f] = oppositeEdge;
//                CDEBUG << oppositeEdge;
            }
//            else
//            {
//                CDEBUG << "UNDEFINED";
//            }
//            CDEBUG << endl;
        }
    }

    return status;
}

bool CEdgeInfo::FacesShareShader( void )
{
    bool bShareShader = true;

    if ( m_numAdjacentFaces < 2 ) return false;

    MStatus                     status;

    int localIndex;
    int prevIndex;

    MFnMesh                     fnMesh( m_dagPath, &status );
    if ( status == MS::kSuccess )
    {
        MObjectArray            shaders;
        MIntArray               shaderIndices;

        try
        {
            fnMesh.getConnectedShaders( m_dagPath.instanceNumber(), shaders, shaderIndices );
        }
        catch ( ... )
        {
            return false;
        }

        MFnDependencyNode       fnShader0( shaders[shaderIndices[m_adjacentFaces[0]]] );
        MFnDependencyNode       fnShader1( shaders[shaderIndices[m_adjacentFaces[1]]] );

        if ( fnShader0.name() != fnShader1.name() ) 
        {
            bShareShader = false;
        }

        if ( bShareShader )     // don't bother if it's already unequal
        {
            // Now get the vertex colours on each side of the edge.. they must match, too.
            MColorArray                 vfColors;
            fnMesh.getFaceVertexColors( vfColors );

            // Colors on Face A
            int colorIndex[4];

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[0], m_vertexIndices[0] );
            fnMesh.getFaceVertexColorIndex( m_adjacentFaces[0], localIndex, colorIndex[0] );

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[0], m_vertexIndices[1] );
            fnMesh.getFaceVertexColorIndex( m_adjacentFaces[0], localIndex, colorIndex[1] );

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[1], m_vertexIndices[0] );
            fnMesh.getFaceVertexColorIndex( m_adjacentFaces[1], localIndex, colorIndex[2] );

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[1], m_vertexIndices[1] );
            fnMesh.getFaceVertexColorIndex( m_adjacentFaces[1], localIndex, colorIndex[3] );

            bShareShader = ( ( vfColors[colorIndex[0]] == vfColors[colorIndex[2]] ) && ( vfColors[colorIndex[1]] == vfColors[colorIndex[3]] ) );
        }

        if ( bShareShader )     // don't bother if it's already unequal
        {
            MFloatVectorArray                   vfNormals;
            fnMesh.getNormals( vfNormals );

            int normalIndex[4];

            MItMeshPolygon      itPolygon( m_dagPath );

            itPolygon.setIndex( m_adjacentFaces[0], prevIndex );
            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[0], m_vertexIndices[0] );
            normalIndex[0] = itPolygon.normalIndex( localIndex );

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[0], m_vertexIndices[1] );
            normalIndex[1] = itPolygon.normalIndex( localIndex );

            itPolygon.setIndex( m_adjacentFaces[1], prevIndex );
            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[1], m_vertexIndices[0] );
            normalIndex[2] = itPolygon.normalIndex( localIndex );

            localIndex = faceRelativeVertexIndex( m_dagPath, m_adjacentFaces[1], m_vertexIndices[1] );
            normalIndex[3] = itPolygon.normalIndex( localIndex );

//            CDEBUG << "Face A Normal: " << vfNormals[normalIndex[0]] << ", " << vfNormals[normalIndex[1]] << endl;
//            CDEBUG << "Face B Normal: " << vfNormals[normalIndex[2]] << ", " << vfNormals[normalIndex[3]] << endl;

            bShareShader = ( ( vfNormals[normalIndex[0]].isEquivalent( vfNormals[normalIndex[2]] ) ) && ( vfNormals[normalIndex[1]].isEquivalent( vfNormals[normalIndex[3]] ) ) );
        }
    }

    return bShareShader;
}

bool CEdgeInfo::GetUVs( EdgeInfoUvEnum kEdgeFace, rmt::Vector2* pUV )
{
    if ( kEdgeFace > kSelectedEdgeFaceB && m_numAdjacentFaces < 2 ) return false;

    pUV[0] = m_pUVs[ kEdgeFace * 2 ];
    pUV[1] = m_pUVs[ kEdgeFace * 2 + 1 ];

    return true;
}

bool CEdgeInfo::GetFaceUVNormal( EdgeInfoFaceEnum kFace, rmt::Vector& normal )  // Uses only X,Y of vector
{
    if ( kFace == kFaceB && m_numAdjacentFaces < 2 ) return false;

    int o = 2;  // oppositeEdgeIndex
    int s = 0;  // selectedEdgeIndex

    if ( kFace == kFaceB )
    {
        o = 6;
        s = 4;
    }

    int offset = kFace * 2;

    // Vector is difference of ( midpoint OppositeEdge minus midpoint SelectedEdge )
    normal.x = ( ( m_pUVs[o].u + m_pUVs[o+1].u ) / 2.0F ) - ( ( m_pUVs[s].u + m_pUVs[s+1].u ) / 2.0F );
    normal.y = ( ( m_pUVs[o].v + m_pUVs[o+1].v ) / 2.0F ) - ( ( m_pUVs[s].v + m_pUVs[s+1].v ) / 2.0F );
    normal.z = 0.0;

    normal.Normalize();

    return true;
}

float CEdgeInfo::MaxUV( bool bAbsolute ) const
{
    float maxUV = 0.0f;

    unsigned int uv;
    for ( uv = 0; uv < kEdgeInfoNumUVs; uv++ )
    {
        if ( bAbsolute )
        {
            {
                maxUV = __max( maxUV, static_cast<float>( fabs( m_pUVs[uv].u ) ) );
                maxUV = __max( maxUV, static_cast<float>( fabs( m_pUVs[uv].v ) ) );
            }
        }
        else
        {
            maxUV = __max( maxUV, static_cast<float>( m_pUVs[uv].u ) );
            maxUV = __max( maxUV, static_cast<float>( m_pUVs[uv].v ) );
        }
    }

    return maxUV;
}

MString CEdgeInfo::AsString( void ) const
{
    MString asString = m_dagPath.fullPathName() + ".e[";
    asString += m_index;
    asString += "]";
    return asString;
}

MStatus CEdgeInfo::MoveAndSew( MDGModifier* pDGModifier )
{
    MStatus                     status;

    MString command = "polyMapSewMove " + AsString() + ";";

    pDGModifier->commandToExecute( command );
    status = pDGModifier->doIt();
    if ( status != MS::kSuccess ) return status;

    status = Refresh();

    return status;
}
