//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BILLBOARD_OBJECT_SHAPE_HPP_
#define _BILLBOARD_OBJECT_SHAPE_HPP_

#include <iostream.h>
#include <maya/MPxSurfaceShape.h>
#include <maya/MPxSurfaceShapeUI.h>
#include "billboardObjectConstants.hpp"

namespace P3DBillboardObject
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
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dBillboardQuadAttr
{
public:    
    short   cutOffMode;
};

class p3dBillboardQuadShape : public p3dBaseShape
{
public:
    p3dBillboardQuadShape();
    virtual ~p3dBillboardQuadShape(); 
   
    virtual void            postConstructor();
    virtual MStatus         compute( const MPlug& plug, MDataBlock& datablock );
    virtual MStatus         connectionMade ( const MPlug &plug, const MPlug &otherPlug, bool asSrc );
    static  void*           creator();
    static  MStatus         initialize();
    virtual bool            isBounded() const {return true;}
    virtual MBoundingBox    boundingBox() const; 
    virtual bool            getInternalValue( const MPlug&, MDataHandle& );
    virtual bool            setInternalValue( const MPlug&, const MDataHandle& );
    p3dBillboardQuadAttr*   getAttributes();    

    static MTypeId id;

private:
    p3dBillboardQuadAttr* attributes;

    // Attributes
    static MObject displaySize;
    static MObject billboardMode;
    static MObject shader;
    static MObject colour;
    static MObject red;
    static MObject green;
    static MObject blue;
    static MObject alpha;
    static MObject uv0;
    static MObject uv1;
    static MObject uv2;
    static MObject uv3;
    static MObject uvOffset;
    static MObject cutOffMode;
    static MObject uvOffsetAngleRange;
    static MObject sourceAngleRange;
    static MObject edgeAngleRange;
    static MObject zTest;
    static MObject zWrite;
    static MObject fog;
    static MObject distance;
    static MObject perspectiveScale;
    static MObject aDrawOrder;
};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class p3dBillboardQuadShapeUI : public p3dBaseShapeUI
{
public:
    p3dBillboardQuadShapeUI();
    virtual ~p3dBillboardQuadShapeUI(); 

    virtual void   getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & requests );
    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();
protected:
    void drawQuad(int drawMode) const;
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dBillboardQuadGroupShape : public p3dBaseShape
{
public:
    p3dBillboardQuadGroupShape();
    virtual ~p3dBillboardQuadGroupShape(); 

    virtual void            postConstructor();
    virtual MStatus         compute( const MPlug& plug, MDataBlock& datablock );
    virtual MStatus         connectionMade ( const MPlug &plug, const MPlug &otherPlug, bool asSrc );
    static  void*           creator();
    static  MStatus         initialize();
    virtual bool            isBounded() const {return true;}
    virtual MBoundingBox    boundingBox() const; 

    static MTypeId id;

    static void removeCallbacks( void );

private:
    // Attributes
    static MObject displaySize;
    static MObject shader;
    static MObject zTest;
    static MObject zWrite;
    static MObject fog;
    static MObject aDrawOrder;

    static MIntArray callbackIds;
};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class p3dBillboardQuadGroupShapeUI : public p3dBaseShapeUI
{
public:
    p3dBillboardQuadGroupShapeUI();
    virtual ~p3dBillboardQuadGroupShapeUI(); 

    virtual void   getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & requests );
    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();
protected:
    void drawQuadGroup(int drawMode) const;
};

};  //namespace P3DBillboardObject

#endif //_BILLBOARD_OBJECT_SHAPE_HPP_


