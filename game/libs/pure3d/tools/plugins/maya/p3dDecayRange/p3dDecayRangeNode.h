#ifndef _p3dDecayRangeNode
#define _p3dDecayRangeNode
//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: p3dDecayRangeNode.h
//
// Dependency Graph Node: p3dDecayRange
//
// Author: Maya SDK Wizard
//

#include "p3dDecayRangeConstants.hpp"

#include <maya/MPxLocatorNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MTypeId.h>
#include <maya/MVector.h>
#include <maya/MColor.h>

const unsigned int P3DDECAYRANGE_MTYPEID = 0x04017B;

class p3dDecayRange : public MPxLocatorNode
{
public:
						        p3dDecayRange();
	virtual				        ~p3dDecayRange(); 

	virtual MStatus		        compute( const MPlug& plug, MDataBlock& data );
    virtual void                draw ( M3dView & view, const MDagPath & path, M3dView::DisplayStyle style, M3dView::DisplayStatus );
 
    virtual bool                isBounded () const;
    virtual MBoundingBox        boundingBox () const;

    virtual bool                getInternalValue( const MPlug& inPlug, MDataHandle& hInData );
    virtual bool                setInternalValue( const MPlug& outPlug, const MDataHandle& hOutData );

    virtual void                postConstructor( void );

	static  void*		        creator();
	static  MStatus		        initialize();

public:
	static	MTypeId		id;

    static MObject              aInWorldMatrix;

    static MObject              aDecayMode;
    
//    static MObject              aInnerSphere;
//    static MObject              aOuterSphere;

    static MObject              aInnerRadius;
    static MObject              aInnerRadiusX;
    static MObject              aInnerRadiusY;
    static MObject              aInnerRadiusZ;

    static MObject              aOuterRadius;
    static MObject              aOuterRadiusX;
    static MObject              aOuterRadiusY;
    static MObject              aOuterRadiusZ;

    static MObject              aRotateY;

protected:

private:
    MVector                     mScaleFactor;
    MPoint                      mPosition;
    MColor                      mInnerColour;
    MColor                      mOuterColour;
    
//    double                      mInnerSphere;
//    double                      mOuterSphere;
    MVector                     mInnerRadius;
    MVector                     mOuterRadius;
    double                      mRotateY;
};

#endif
