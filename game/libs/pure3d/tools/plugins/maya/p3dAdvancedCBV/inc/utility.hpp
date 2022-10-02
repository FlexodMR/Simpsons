//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <maya/MStatus.h>
#include <maya/MDagPath.h>
#include <maya/MString.h>
#include <maya/MItDependencyGraph.h>

MObject findPolyColorPerVertex( const MDagPath& dag, MStatus* pStatus = NULL );
int faceRelativeVertexIndex( const MDagPath& path, int faceIndex, int vertexIndex );
