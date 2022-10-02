#ifndef LINUX
#pragma once
#endif
#ifndef _MFnSubd
#define _MFnSubd
//
// *****************************************************************************
//
// Copyright (C) 1999-2001 Alias|Wavefront Inc.
//
// These coded instructions, statements and computer programs contain
// unpublished information proprietary to Alias|Wavefront Inc. and are 
// protected by Canadian and US federal copyright laws. They may not be 
// disclosed to third parties or copied or duplicated, in whole or in part, 
// without prior written consent of Alias|Wavefront Inc.
//
// Unpublished-rights reserved under the Copyright Laws of the United States.
//
// *****************************************************************************
//
// CLASS:    MFnSubd
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MFnSubd)
//
//	Function set for hierarchical Catmull-Clark subdivision surfaces.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES

#include <maya/MFnDagNode.h>

// *****************************************************************************

// DECLARATIONS

class MUint64Array;
class MObjectArray;
class MDoubleArray;
class MVectorArray;
class MPointArray;
class MIntArray;
class MVector;
class MPoint;


// Default tolerance
#define kMFnSubdTolerance 1.0e-3

// Point equivalent tolerance
#define kMFnSubdPointTolerance 1.0e-10

// *****************************************************************************

// CLASS DECLARATION (MFnSubd)

/// Subdivision surface function set
/**

*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYA_EXPORT MFnSubd : public MFnDagNode 
{
	declareDagMFn(MFnSubd, MFnDagNode);

public: 
    ///
    MObject createBaseMesh( bool reverseNormal,
							int numVertices, int numPolygons,
							const MPointArray& vertexArray,
							const MIntArray& polygonCounts,
							const MIntArray& polygonConnects,
							MObject parentOrOwner = MObject::kNullObj,
							MStatus* ReturnStatus = NULL );

	///
	MObject		copy( const MObject& source,
					  MObject parentOrOwner = MObject::kNullObj,
					  MStatus* ReturnStatus = NULL );
public:
	// Manual creation:

	///
	int		 vertexBaseMeshAdd( double x, double y, double z,
									MStatus* ReturnStatus = NULL );
	///
	MUint64		 polygonBaseMeshAdd( int vertexCount,
									 const int vertexIds[],
									 MStatus* ReturnStatus = NULL );
	///
	MUint64		 polygonBaseMeshAddWithUVs( int vertexCount,
											const int vertexIds[],
											const double uValues[],
											const double vValues[],
											MStatus* ReturnStatus = NULL );
public:
	///
	int		editsPending( MStatus* ReturnStatus = NULL ) const;
	///
	void		editsUpdateAll( MStatus* ReturnStatus = NULL );

public:
	///
	int		levelMaxCurrent( MStatus* ReturnStatus = NULL ) const;
	///
	int		levelMaxAllowed( MStatus* ReturnStatus = NULL ) const;
	///
	void		levelFullySubdivideTo( int level,
									   MStatus* ReturnStatus = NULL );
    ///
	int        vertexCount( int level = 0,
							 MStatus* ReturnStatus = NULL) const;
public:
	///
	MUint64		vertexIdFromBaseVertexIndex( int baseVertexIndex,
										 MStatus* ReturnStatus = NULL) const;
	///
	int		vertexBaseIndexFromVertexId( MUint64 vertexId,
										 MStatus* ReturnStatus = NULL) const;

	///
	MStatus		vertexEditsGetAllNonBase( MUint64Array& vertexIds,
										  MVectorArray& edits ) const;
	///
	MStatus		vertexEditsSetAllNonBase( const MUint64Array& vertexIds,
										  const MVectorArray& edits );
	///
	MStatus		vertexEditsClearAllNonBase();

	///
	MStatus		vertexPositionGet( MUint64 vertId, MPoint& position,
							MSpace::Space space = MSpace::kObject)const;
	///
	MStatus		vertexEditGet( MUint64 vertId, MVector& edit ) const;
	///
	MStatus		vertexPositionGetNoEdit( MUint64 vertId, MPoint& position,
							MSpace::Space space = MSpace::kObject )const;
	///
	MStatus		vertexPositionSet( MUint64 vertId, const MPoint& position,
								   bool updateEdits,
								   MSpace::Space space = MSpace::kObject );
	///
	MStatus		vertexEditSet( MUint64 vertId, const MVector& edit,
							   bool updateEdits );
	///
	MStatus 	vertexBaseMeshGet( MPointArray& positions,
								MSpace::Space space = MSpace::kObject ) const;
	///
	MStatus 	vertexBaseMeshSet( const MPointArray& positions,
								MSpace::Space space = MSpace::kObject );
	///
	MStatus 	vertexBaseMeshGetWithId( MPointArray& positions,
									 MUint64Array& vertexIds,
								MSpace::Space space = MSpace::kObject ) const;
	///
	MStatus 	vertexBaseMeshSetWithId( const MPointArray& positions,
										 const MUint64Array& vertexIds,
								MSpace::Space space = MSpace::kObject );
	///
	int		vertexValence( MUint64 vertId,
							   MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		vertexNormal( MUint64 vertId, MVector& normal ) const;
	///
	MStatus		vertexAdjacentVertices( MUint64 vertId,
										MUint64Array& vertList ) const;
	///
	MStatus		vertexIncidentEdges( MUint64 vertId,
									 MUint64Array& edgeList ) const;
	///
	MStatus		vertexIncidentPolygons( MUint64 vertId,
										MUint64Array& polyList ) const;
	///
	bool		vertexIsBoundary( MUint64 vertId,
								  MStatus* ReturnStatus = NULL ) const;
	///
	bool		vertexIsValid( MUint64 vertId,
							   MStatus* ReturnStatus = NULL ) const;
	///
	bool		vertexIsCreased( MUint64 vertId,
								 MStatus* ReturnStatus = NULL ) const;
	///
	bool		vertexCreaseRelevant( MUint64 vertId,
									  MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		vertexSetCrease( MUint64 vertId, bool creased ) const;
	///
	MStatus		vertexChildren( MUint64 vertId, MUint64Array& children ) const;

public:
	///
	MStatus		creasesGetAll( MUint64Array& vertexIds,
							   MUint64Array& edgeIds ) const;
	///
	MStatus		creasesSetAll( const MUint64Array& vertexIds,
							   const MUint64Array& edgeIds );
	///
	MStatus		creasesClearAll() const;
	///
	MStatus		updateAllEditsAndCreases();

public:
    ///
	int        edgeCount( int level = 0,
						   MStatus* ReturnStatus = NULL ) const;
	///
	MUint64		edgeBetween( MUint64 vertex1, MUint64 vertex2,
							 MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		edgeVertices( MUint64 edge, MUint64& v1, MUint64& v2 ) const;
	///
	MStatus		edgeAdjacentPolygon( MUint64 edge, MUint64Array& polys ) const;
	///
	bool		edgeIsBoundary( MUint64 edge,
								MStatus* ReturnStatus = NULL ) const;
	///
	bool		edgeIsValid( MUint64 edgeId,
							 MStatus* ReturnStatus = NULL  ) const;
	///
	bool		edgeIsCreased( MUint64 edgeId,
							   MStatus* ReturnStatus = NULL  ) const;
	///
	bool		edgeCreaseRelevant( MUint64 edgeId,
									MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		edgeSetCrease( MUint64 edgeId, bool creased ) const;
	///
	MStatus		edgeChildren( MUint64 edgeId, MUint64Array& children ) const;

public:
    ///
	int        polygonCount( int level = 0,
							  MStatus* ReturnStatus = NULL ) const;
    ///
	int        polygonCountMaxWithGivenBaseMesh( int level = 1,
								MStatus* ReturnStatus = NULL ) const;
	///
	int		polygonVertexCount( MUint64 polyId,
									MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		polygonVertices( MUint64 polyId,
								 MUint64Array& vertIds ) const;
	///
	int		polygonEdgeCount( MUint64 polyId,
								  MStatus* ReturnStatus = NULL ) const;
	///
	MStatus		polygonEdges( MUint64 polyId,
							  MUint64Array& edgeIds ) const;
	///
	MStatus		polygonChildren( MUint64 polyId, MUint64Array& children ) const;
	///
	MStatus		polygonSubdivide( MUint64 polyId );

	///
	MStatus		polygonSetUseUVs( MUint64 polyId, bool useThem );
	///
	bool		polygonHasVertexUVs( MUint64 polyId,
									 MStatus* ReturnStatus = NULL );
	///
	MStatus		polygonGetVertexUVs( MUint64 polyId,
									 MDoubleArray& uValues,
									 MDoubleArray& vValues ) const;
	///
	MStatus		polygonSetVertexUVs( MUint64 polyId,
									 const MDoubleArray& uValues,
									 const MDoubleArray& vValues );
	///
	MStatus		polygonGetCenterUV( MUint64 polyId,
									double& u, double& v ) const;

public:
	MStatus		evaluatePosition( MUint64 polyId, double u, double v,
								 bool uvNormalized, MPoint& ) const;
	MStatus		evaluateNormal( MUint64 polyId, double u, double v,
								 bool uvNormalized, MVector& nrml ) const;
	MStatus		evaluatePositionAndNormal( MUint64 polyId, double u, double v,
										   bool uvNormalized,
										   MPoint& pos, MVector& nrml ) const;

	bool		getCubicSpline( MUint64 polyId, MPoint vertices[16],
								MStatus* ReturnStatus = NULL );

public:
	///
	MStatus		getConnectedSetsAndMembers( unsigned instanceNumber,
											MObjectArray & sets,
											MObjectArray & comps,
											bool renderableSetsOnly ) const;
	///
    MStatus getConnectedShaders( unsigned instanceNumber,
									 MObjectArray & shaders,
									 MUint64Array & faces,
									 MIntArray & indices ) const;
	///
	MObject tesselate(  bool uniform, int depth, int sample,
						MObject parentOrOwner = MObject::kNullObj,
						MStatus * ReturnStatus = NULL );

    ///
	MStatus updateSubdSurface(); 

public:
	///
	MStatus		 vertexBaseMeshAddWithIndex( double x, double y, double z,
											 int index );

protected:  
	virtual bool objectChanged( MFn::Type tp, MStatus* ReturnStatus );

private:
	void *f_subdRef;

};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MFnSubd */
