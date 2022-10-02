//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "../inc/utility.hpp"

#include <maya/MFnDependencyNode.h>
#include <maya/MItMeshPolygon.h>

//===========================================================================
// findPolyColorPerVertex
//===========================================================================
// Description: This utility function traces the dependency graph from the 
//              specified DAG to find the first upstream 'polyColorPerVertex' 
//              node.
//
// Constraints: 
//
//  Parameters: const MDagPath& dag: The DAG from which to start the trace.
//              MStatus* pStatus: Pointer to hold the return status.
//
//      Return: (MObject): The 'polyColorPerVertex' node, if found.
//              (MStatus*): Will be kSuccess if a 'polyColorPerVertex' node
//                          was found; else will be kFailure.
//
//===========================================================================
MObject findPolyColorPerVertex( const MDagPath& dag, MStatus* pStatus )
{
    MObject                     pcpv;

    MStatus                     status;

    MItDependencyGraph          itGraph( dag.node(), 
                                         MFn::kPolyColorPerVertex, 
                                         MItDependencyGraph::kUpstream,
                                         MItDependencyGraph::kBreadthFirst,
                                         MItDependencyGraph::kNodeLevel,
                                         &status
                                    );


    if ( pStatus != NULL ) *pStatus = status;

    if ( status == MS::kSuccess )
    {
        pcpv = itGraph.thisNode();
    }

    return pcpv;
}

//===========================================================================
// faceRelativeVertexIndex
//===========================================================================
// Description: Returns the face-relative index for the specified 
//              object-relative face and vertex indices.
//
// Constraints: 
//
//  Parameters: const MDagPath& path: The mesh which owns the components.
//              int faceIndex: Zero-based object-relative index for face.
//              int vertexIndex: Zero-based object-relative index for vertex.
//
//      Return: (int): Zero-based face-relative index for vertex.
//
//===========================================================================
int faceRelativeVertexIndex( const MDagPath& path, int faceIndex, int vertexIndex )
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
