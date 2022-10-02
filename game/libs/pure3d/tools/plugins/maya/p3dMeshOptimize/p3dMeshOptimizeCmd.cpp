//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     27 November, 2002
//
// Component:   p3dMeshOptimizeCmd.cpp
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

#include "p3dMeshOptimizeCmd.h"
#include "inc/meshInfo.hpp"
#include "inc/vertexInfo.hpp"

#include <maya/MArgDatabase.h>
#include <maya/MDagPathArray.h>
#include <maya/MItMeshVertex.h>
#include <maya/MItMeshEdge.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MGlobal.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

#ifdef RAD_DEBUG
    #define CMONITOR if ( true ) cout
#else
    #define CMONITOR if ( false ) cout
#endif

const double kCleanVertexAngleThreshold = 0.0001;

const float kMaximumUVRange = 8.0f;

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

bool IsCloseEnough( float A, float B )
{
    const double kEpsilon = 0.0001;

    return ( fabs( A - B ) < kEpsilon );
}

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dMeshOptimize::p3dMeshOptimize()
:   m_pDGModifierCleanup( NULL ),
    bCleanup( false ),
    m_bHasMaxUV( false ),
    m_maxUV( 0.0 ),
    m_bHasMaxArea( false ),
    m_maxArea( 0.0 )
{
}

p3dMeshOptimize::~p3dMeshOptimize()
{
    delete m_pDGModifierCleanup;
    m_modifierStack.Clear();
}

void* p3dMeshOptimize::creator()
{
	return new p3dMeshOptimize();
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


MStatus p3dMeshOptimize::doIt( const MArgList& args )
{
	MStatus status = MS::kSuccess;

    status = parseArgs( args );
    if ( status != MS::kSuccess ) return status;

    MGlobal::executeCommand( "waitCursor -state on;" );

    m_dagPaths.clear();

    MSelectionList              selList;
    MGlobal::getActiveSelectionList( selList );

    m_dagSelect.Build( selList );

    int                         prevIndex;
    unsigned int i;
    unsigned int numGroups = m_dagSelect.NumGroups();

    for ( i = 0; i < numGroups; i++ )
    {
        MIntArray               edgesToDelete;

        CMayaDagComponents*     dagComponents = NULL;

        dagComponents = m_dagSelect.Group( i );

        MIntArray               edges;
        unsigned int            numEdges;
        unsigned int            e;
        numEdges = dagComponents->GetEdgeIndices( edges );

        MDagPathArray           dagArray;
        dagComponents->GetDagArray( dagArray );

        m_dagPaths.append( dagArray[0] );

        CMeshInfo           meshInfo( dagArray[0], edges );

//        MItMeshEdge             itEdge( dagArray[0] );

        for ( e = 0; e < numEdges; e++ )
        {
            bool                bOKforMoveAndSew = false;

            CEdgeInfo*          pEdgeInfo = meshInfo.EdgeInfo( edges[e] );
            pEdgeInfo->Refresh();

            if ( pEdgeInfo->Boundary() )
            {
                CMONITOR << "Boundary edge.. ignoring." << endl;
                continue;
            }

            if ( !pEdgeInfo->FacesShareShader() ) 
            {
                CMONITOR << "Adjacent faces assigned differing shader.. ignoring." << endl;
                continue;
            }

            // If either of the connected faces have >4 vertices, skip it.
            int2                faceIndices;
            pEdgeInfo->GetFaceIndices( faceIndices );

            MItMeshPolygon      itPolygon( dagArray[0], MObject::kNullObj );
            itPolygon.setIndex( faceIndices[0], prevIndex );
            if ( itPolygon.polygonVertexCount() > 4 )
            {
                CMONITOR << "Face has >4 vertices.. ignoring." << endl;
                continue;
            }

            // Since we already know this is not a Boundary edge,
            // I'm going to assume that it will have two valid face indices.
            itPolygon.setIndex( faceIndices[1], prevIndex );
            if ( itPolygon.polygonVertexCount() > 4 ) 
            {
                CMONITOR << "Face has >4 vertices.. ignoring." << endl;
                continue;
            }


            // Are edge UVs oriented the same way?
            rmt::Vector         normalFaceA, normalFaceB;

            pEdgeInfo->GetFaceUVNormal( CEdgeInfo::kFaceA, normalFaceA );
            pEdgeInfo->GetFaceUVNormal( CEdgeInfo::kFaceB, normalFaceB );

//            CDEBUG << "|- Normal for FACE A: { " << normalFaceA.x << ", " << normalFaceA.y << " }" << endl;
//            CDEBUG << "|- Normal for FACE B: { " << normalFaceB.x << ", " << normalFaceB.y << " }" << endl;

            // The UVs must be going the _opposing_ directions from the selected edge for the merge to work.
            if ( ( normalFaceA.DotProduct( normalFaceB ) ) >= 0.0 )    // dot product
            {
                CMONITOR << "UV orientation differs.. ignoring." << endl;
                continue;
            }

            rmt::Vector2        uvSelectedEdgeFaceA[2];
            rmt::Vector2        uvSelectedEdgeFaceB[2];
            rmt::Vector2        uvOppositeEdgeFaceA[2];
            rmt::Vector2        uvOppositeEdgeFaceB[2];

            pEdgeInfo->GetUVs( CEdgeInfo::kSelectedEdgeFaceA, uvSelectedEdgeFaceA );
            pEdgeInfo->GetUVs( CEdgeInfo::kSelectedEdgeFaceB, uvSelectedEdgeFaceB );
            pEdgeInfo->GetUVs( CEdgeInfo::kOppositeEdgeFaceA, uvOppositeEdgeFaceA );
            pEdgeInfo->GetUVs( CEdgeInfo::kOppositeEdgeFaceB, uvOppositeEdgeFaceB );

            // If U values are equal AND the V vector is equivalent...
            float               vDeltaFaceA = uvSelectedEdgeFaceA[1].v - uvSelectedEdgeFaceA[0].v;
            float               vDeltaFaceB = uvSelectedEdgeFaceB[1].v - uvSelectedEdgeFaceB[0].v;
            float               uDeltaFaceA = uvSelectedEdgeFaceA[1].u - uvSelectedEdgeFaceA[0].u;
            float               uDeltaFaceB = uvSelectedEdgeFaceB[1].u - uvSelectedEdgeFaceB[0].u;

//            CDEBUG << "| ?? vDeltaFaceA: " << vDeltaFaceA << endl;
//            CDEBUG << "| ?? vDeltaFaceB: " << vDeltaFaceB << endl;
//            CDEBUG << "- ?? uDeltaFaceA: " << uDeltaFaceA << endl;
//            CDEBUG << "- ?? uDeltaFaceB: " << uDeltaFaceB << endl;

            float deltaU = 0.0f;
            float deltaV = 0.0f;

            if ( IsCloseEnough( uvSelectedEdgeFaceA[0].u, uvSelectedEdgeFaceB[0].u ) && 
                 IsCloseEnough( uvSelectedEdgeFaceA[1].u, uvSelectedEdgeFaceB[1].u ) &&
                 IsCloseEnough( vDeltaFaceB - vDeltaFaceA, 0.0F ) )
            {
                bOKforMoveAndSew = true;
                deltaV = uvSelectedEdgeFaceA[0].v - uvSelectedEdgeFaceB[0].v;
//
//                CDEBUG << "| V Shift FACE B [" << faceIndices[1] << "] to match A [" << faceIndices[0] << "] -> { " << uvSelectedEdgeFaceB[0].u + deltaU << ", " << uvSelectedEdgeFaceB[0].v + deltaV << " } " << endl;
            }
            // If V values are equal AND the U vector is equivalent...
            else
            if ( IsCloseEnough( uvSelectedEdgeFaceA[0].v, uvSelectedEdgeFaceB[0].v ) && 
                 IsCloseEnough( uvSelectedEdgeFaceA[1].v, uvSelectedEdgeFaceB[1].v ) &&
                 IsCloseEnough( uDeltaFaceB - uDeltaFaceA, 0.0F ) )
            {
                bOKforMoveAndSew = true;
                deltaU = uvSelectedEdgeFaceA[0].u - uvSelectedEdgeFaceB[0].u;
//
//                CDEBUG << "| U Shift FACE B [" << faceIndices[1] << "] to match A [" << faceIndices[0] << "] -> { " << uvSelectedEdgeFaceB[0].u + deltaU << ", " << uvSelectedEdgeFaceB[0].v + deltaV << " } " << endl;
            }

        // --------  Would this move the UVs outside the maximum range?  --------
        
            if ( m_bHasMaxUV && ( pEdgeInfo->MaxUVRange() > m_maxUV ) )
            {
                bOKforMoveAndSew = false;

                CMONITOR << "**************  UV would extend outside maximum range.. averting sew.  ********************" << endl;
            }

            if ( bOKforMoveAndSew )
            {
                MDGModifier* pDGModifier = m_modifierStack.DGModifier();
                if ( pDGModifier )
                {
                    edgesToDelete.append( pEdgeInfo->Index() );
                    pEdgeInfo->MoveAndSew( pDGModifier );
                }
            }
        }       // for ( numEdges )

        if ( edgesToDelete.length() > 0 )
        {
            MString command = "polyDelEdge";
            bool bExecute = false;

            for ( e = 0; e < edgesToDelete.length(); e++ )
            {
                CEdgeInfo*     pEdgeInfo = meshInfo.EdgeInfo( edgesToDelete[e] );
                bExecute = true;
                command += " " + pEdgeInfo->AsString();
            }

            if ( bExecute ) 
            {
                MDGModifier* pDGModifier = m_modifierStack.DGModifier();
                if ( pDGModifier )
                {
                    pDGModifier->commandToExecute( command );
                    pDGModifier->doIt();
                }
            }

            edgesToDelete.clear();

            bCleanup = true;    // Indicate that vertex cleanup is required.
        }
        
    }       // for ( numGroups )

    // Vertex cleanup must be deferred until after edge merging is completed.
    if ( bCleanup )
    {
        // A new MDGModifier is allocated for the vertex cleanup ONLY
        // only the first pass through redoIt(). Subsequent passes
        // use this same pointer, but do not repopulate it.
        m_pDGModifierCleanup = new MDGModifier;

        unsigned int d;
        for ( d = 0; d < m_dagPaths.length(); d++ )
        {
            CleanWingedVertices( m_dagPaths[d], m_pDGModifierCleanup );
        }

        m_pDGModifierCleanup->doIt();

        // After the first pass, do NOT repopulate the cleanup MDGModifier.
        // Just doIt().
        bCleanup = false;
    }

    MGlobal::executeCommand( "waitCursor -state off;" );

	return status;
}

MStatus p3dMeshOptimize::redoIt()
{
    MGlobal::executeCommand( "waitCursor -state on;" );

    m_modifierStack.Redo();

    if ( m_pDGModifierCleanup != NULL ) m_pDGModifierCleanup->doIt();

    MGlobal::executeCommand( "waitCursor -state off;" );

	return MS::kSuccess;
}

MStatus p3dMeshOptimize::undoIt()
{
    MGlobal::executeCommand( "waitCursor -state on;" );

    if ( m_pDGModifierCleanup != NULL ) m_pDGModifierCleanup->undoIt();

    // Note: I had originally tried deleting/NULLing the m_pDGModifierCleanup
    //       after undoIt(), reallocating and populating it on each redoIt()
    //       pass. However, Maya can't track this properly, and Redo fails.
    //       See notes in redoIt().

    m_modifierStack.Undo();

    MGlobal::executeCommand( "waitCursor -state off;" );

	return MS::kSuccess;
}

bool p3dMeshOptimize::isUndoable() const
{
	return true;
}

void p3dMeshOptimize::CleanWingedVertices( const MDagPath& dagPath, MDGModifier* pDGModifier ) const
{
    MItMeshVertex               itVertex( dagPath );

    MStringArray                deleteVertices;

    for ( /* nothing */; !itVertex.isDone(); itVertex.next() )
    {
        CVertexInfo             vertexInfo( dagPath, itVertex.index() );

        if ( vertexInfo.NumEdges() > 2 ) continue;

        if ( vertexInfo.Angle() < kCleanVertexAngleThreshold )
        {
            deleteVertices.append( vertexInfo.AsString() );
        }
    }

    if ( deleteVertices.length() > 0 )
    {
        MString command = "polyDelVertex";

        int v;
        for ( v = 0; v < deleteVertices.length(); v++ )
        {
            command += " " + deleteVertices[v];
        }

        pDGModifier->commandToExecute( command );
//        MGlobal::executeCommand( command );
    }

}

MSyntax p3dMeshOptimize::newSyntax( void )
{
    MSyntax     syntax;

    syntax.addFlag( kSyntaxMaxUV, kSyntaxMaxUVLong, MSyntax::kDouble );
    syntax.addFlag( kSyntaxMaxArea, kSyntaxMaxAreaLong, MSyntax::kDouble );

    return syntax;
}

MStatus p3dMeshOptimize::parseArgs( const MArgList & args )
{
	MStatus                     status = MS::kSuccess;

	MArgDatabase                argdata( syntax(), args, &status );
    if ( status != MS::kSuccess ) return status;

	if ( argdata.isFlagSet( kSyntaxMaxUV ) )
	{
        m_bHasMaxUV = true;
        argdata.getFlagArgument( kSyntaxMaxUV, 0, m_maxUV );
	}

	if ( argdata.isFlagSet( kSyntaxMaxArea ) )
	{
        m_bHasMaxArea = true;
        argdata.getFlagArgument( kSyntaxMaxArea, 0, m_maxArea );
	}

	return status;
}
