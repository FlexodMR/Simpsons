//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ANIMATED_OBJECT_SHAPE_HPP_
#define _ANIMATED_OBJECT_SHAPE_HPP_

#include <iostream.h>
#include <maya/MPxSurfaceShape.h>
#include <maya/MPxSurfaceShapeUI.h>
#include <GL/glu.h>
#include "animatedObjectConstants.hpp"

namespace P3DAnimatedObject
{

class p3dBaseShape : public MPxSurfaceShape
{
public:
    p3dBaseShape() {}
    virtual ~p3dBaseShape() {} 
};

class p3dBaseShapeUI : public MPxSurfaceShapeUI
{
public:
    p3dBaseShapeUI()
        {
            lead_color = 18;  //green
            active_color = 15; //white
            active_affected_color = 8; //purple
            dormant_color = 4; //blue
            hilite_color = 17; //pale blue
            enable_texturing = true;
        }
    virtual ~p3dBaseShapeUI() {}

    virtual void   getDrawRequestsWireframe( MDrawRequest&, const MDrawInfo& );
    virtual void   getDrawRequestsShaded(    MDrawRequest&, const MDrawInfo&, MDrawRequestQueue&, MDrawData& data );

protected:
    int lead_color;
    int active_color;
    int active_affected_color;
    int dormant_color;
    int hilite_color;
    bool enable_texturing;
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dAnimatedObjectShape : public p3dBaseShape
{
public:
    p3dAnimatedObjectShape();
    virtual ~p3dAnimatedObjectShape(); 

    virtual void            postConstructor();
    virtual MStatus         compute( const MPlug& plug, MDataBlock& datablock );
    static  void*           creator();
    static  MStatus         initialize();
    virtual bool            isBounded() const {return true;}
    virtual MBoundingBox    boundingBox() const; 

    static MTypeId id;

private:
    // Attributes
    static MObject displaySize;
    static MObject factoryName;
    static MObject currentAnimation;
    static MObject frameOffset;
};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class p3dAnimatedObjectShapeUI : public p3dBaseShapeUI
{
public:
    p3dAnimatedObjectShapeUI();
    virtual ~p3dAnimatedObjectShapeUI(); 

    virtual void   getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & requests );
    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();
protected:
    void drawAnimatedObject(int drawMode) const;

    GLUquadricObj* animatedObject;
};

};  //namespace P3DAnimatedObject

#endif //_ANIMATED_OBJECT_SHAPE_HPP_


