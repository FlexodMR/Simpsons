#ifndef LINUX
#pragma once
#endif
#ifndef _MPxSurfaceShape
#define _MPxSurfaceShape
//
// *****************************************************************************
//
// Copyright (C) 1997-2001 Alias|Wavefront Inc.
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
// CLASS:    MPxSurfaceShape
//
// *****************************************************************************
//
// CLASS DESCRIPTION (MPxSurfaceShape)
// 
//  MPxSurfaceShape is the parent class of all user defined shapes.
//  User defined shapes are dependency nodes (and DAG nodes) which contain
//  overridable drawing, selection, and component methods.
//
//  This class can be used to implement new kinds of shapes within maya that
//  can have selectable/manipulatable components and behave in a similar
//  manner to the default shapes in maya.
//
//  The UI dependent aspects of the shape should be implemented in a class
//  derived from MPxSurfaceShapeUI. This includes the drawing and interactive
//  selection of the shape and any components that the shape implements.
//
// *****************************************************************************

#if defined __cplusplus

// *****************************************************************************

// INCLUDED HEADER FILES


#include <maya/MStatus.h>
#include <maya/MTypes.h>
#include <maya/MObject.h>
#include <maya/MPxNode.h>
#include <maya/MBoundingBox.h>

// *****************************************************************************

// DECLARATIONS
 
class MDagPath;
class MSelectArgs;
class MSelectionList;
class MPointArray;
class MObjectArray;
class MSelectionMask;
class MAttributeSpecArray;
class MVectorArray;
class MDoubleArray;
class MPxGeometryIterator;

// *****************************************************************************

// CLASS DECLARATION (MPxSurfaceShape)

/// parent class of all user defined shapes
/**
*/
#ifdef _WIN32
#pragma warning(disable: 4522)
#endif // _WIN32

class OPENMAYA_EXPORT MPxSurfaceShape : public MPxNode  
{
public:
    ///
	MPxSurfaceShape();
    ///
	virtual ~MPxSurfaceShape();
	///                     
	virtual MPxNode::Type type() const;


	/////////////////////////////////////////////////////////////////////////
	// Methods to overload

	/// 
	virtual bool		    isBounded() const;
	///
	virtual MBoundingBox    boundingBox() const; 

	// Move tool support for components
	///
	virtual void		    transformUsing( const MMatrix& mat,
							    			const MObjectArray& componentList );

	///
	enum MVertexOffsetMode {
		/// move in normal direction
		kNormal,
		/// move in u tangent direction
		kUTangent,
		/// move in v tangent direction
		kVTangent,
		/// calculate u, v, and normal offsets
		kUVNTriad
	};
	///
	virtual bool			vertexOffsetDirection( MObject & component,
                                                   MVectorArray & direction,
                                                   MVertexOffsetMode mode,
												   bool normalize );
	///
	virtual void			componentToPlugs( MObject& component,
											  MSelectionList& selectionList
											) const;
	///
	virtual bool			match( const MSelectionMask & mask,
					    		   const MObjectArray& componentList ) const;

	///
	enum MatchResult {
		///
		kMatchOk,
		///
		kMatchNone,
		///
		kMatchTooMany,
		///
		kMatchInvalidName,
		///
		kMatchInvalidAttribute,
		///
		kMatchInvalidAttributeIndex,
		///
		kMatchInvalidAttributeRange,
		///
		kMatchInvalidAttributeDim
	};
	///
	virtual MatchResult		matchComponent( const MSelectionList& item,
											const MAttributeSpecArray& spec,
											MSelectionList& list );

	///
	virtual MObject			createFullVertexGroup() const;

	///
	virtual bool deleteComponents( const MObjectArray& componentList,
								   MDoubleArray& undoInfo );
	///
	virtual bool undeleteComponents( const MObjectArray& componentList,
									 MDoubleArray& undoInfo ); 

	///
	virtual MObject 		localShapeInAttr() const;
	///
	virtual MObject 		localShapeOutAttr() const;
	///
	virtual MObject 		worldShapeOutAttr() const;

	///
	virtual MObject			geometryData() const;

	///
	virtual void			closestPoint( const MPoint& toThisPoint,
										  MPoint& theClosestPoint,
										  double tolerance );
	///
	virtual bool			pointAtParm( const MPoint& atThisParm,
										  MPoint& evaluatedPoint );

	// Geometry iterator methods
	//
	virtual	MPxGeometryIterator *
							geometryIteratorSetup( MObjectArray&, MObject&,
												   bool forReadOnly = false );
	///
	virtual bool			acceptsGeometryIterator( bool  writeable=true );
	///
	virtual bool			acceptsGeometryIterator( MObject&, 
													 bool writeable=true,
													 bool forReadOnly = false);

	/////////////////////////////////////////////////////////////////////////

	///
	MObjectArray 			activeComponents() const;
	///
	bool					hasActiveComponents() const;

	///
	enum MChildChanged { 
		///
		kObjectChanged, 
		///
		kBoundingBoxChanged 
	};
	///
	void                    childChanged( MChildChanged = kObjectChanged );

	// Marking the object as renderable allows the shaders to be hooked up
	///
    bool                    isRenderable() const;
	///
	void			        setRenderable( bool );

	////////////////////////////////////////////////////////////////////////

    // Inherited attributes
	
	// If true, the object has history and the control point attribute
	// values are tweaks, not the actual values.
	///
	static MObject mHasHistoryOnCreate;

	/// Control points for the derived shapes
	static MObject mControlPoints;
		/// X value of a control point
		static MObject mControlValueX;
		/// Y value of a control point
		static MObject mControlValueY;
		/// Z value of a control point
		static MObject mControlValueZ;

	/// bounding box attribute
	static MObject nodeBoundingBox;
	    /// bounding box minimum point
	    static MObject nodeBoundingBoxMin;
	        /// X component of boundingBoxMin
	        static MObject nodeBoundingBoxMinX;
	        /// Y component of boundingBoxMin
	        static MObject nodeBoundingBoxMinY;
	        /// Z component of boundingBoxMin
	        static MObject nodeBoundingBoxMinZ;
	    ///  bounding box maximum point
	    static MObject nodeBoundingBoxMax;
	        /// X component of boundingBoxMax
	        static MObject nodeBoundingBoxMaxX;
	        /// Y component of boundingBoxMax
	        static MObject nodeBoundingBoxMaxY;
	        /// Z component of boundingBoxMax
	        static MObject nodeBoundingBoxMaxZ;
	    ///  bounding box size vector
	    static MObject nodeBoundingBoxSize;
	        /// X component of boundingBoxSize
	        static MObject nodeBoundingBoxSizeX;
	        /// Y component of boundingBoxSize
	        static MObject nodeBoundingBoxSizeY;
	        /// Z component of boundingBoxSize
	        static MObject nodeBoundingBoxSizeZ;
	/// object center attribute
	static MObject center;
	    /// X component of boundingBoxCenter
	    static MObject boundingBoxCenterX;
	    /// Y component of boundingBoxCenter
	    static MObject boundingBoxCenterY;
	    /// Z component of boundingBoxCenter
	    static MObject boundingBoxCenterZ;
	/// matrix attribute
	static MObject matrix;
	/// inverse matrix attribute
	static MObject inverseMatrix;
	/// world matrix attribute
	static MObject worldMatrix;
	/// inverse world matrix attribute
	static MObject worldInverseMatrix;
	/// parent matrix attribute
	static MObject parentMatrix;
	/// inverse parent matrix attribute
	static MObject parentInverseMatrix;
	/// visibility attribute
	static MObject visibility;
	/// intermediate object attribute
	static MObject intermediateObject;
	/// template attribute
	static MObject isTemplated;
	/// instances object group info attribute
	static MObject instObjGroups;
	    /// object groups attributes
	    static MObject objectGroups;
	        /// component in object groups attribute
	        static MObject objectGrpCompList;
	        /// group id attribute
	        static MObject objectGroupId;
	        /// group id attribute
	        static MObject objectGroupColor;
	/// controls choice of wireframe dormant object color 
	static MObject useObjectColor;
	/// the per object dormant wireframe color
	static MObject objectColor;

protected:
	  
private:
	static void				initialSetup();
	static const char*	    className();



};

#ifdef _WIN32
#pragma warning(default: 4522)
#endif // _WIN32

// *****************************************************************************
#endif /* __cplusplus */
#endif /* _MPxSurfaceShape */
