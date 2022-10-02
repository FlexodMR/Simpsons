//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BOUNDINGSHAPEUI_HPP_
#define _BOUNDINGSHAPEUI_HPP_

#include <maya/MPxSurfaceShapeUI.h>
#include "boundingConstants.hpp"

namespace P3DBoundingVolume
{

class p3dBaseShapeUI : public MPxSurfaceShapeUI
{
public:
    p3dBaseShapeUI() {}
    virtual ~p3dBaseShapeUI() {}

    virtual void   getDrawRequestsWireframe( MDrawRequest&, const MDrawInfo& );
    virtual void   getDrawRequestsShaded(    MDrawRequest&, const MDrawInfo&, MDrawRequestQueue&, MDrawData& data );

protected:
    
    void DrawBox(float halfWidth, float halfHeight, float halfLength, long glDrawType = GL_POLYGON) const;

};


class p3dBoundVolShapeUI : public p3dBaseShapeUI
{
public:
    p3dBoundVolShapeUI();
    virtual ~p3dBoundVolShapeUI(); 

    virtual void   getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & requests );
    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();

private:
    bool selectByDrawBuffer( MSelectInfo &selectInfo ) const;

    //
    // All of these routines require that the view
    // and all other OpenGl contexts are setup...
    //
    void DrawBoundingVolume(const p3dBoundVolAttr* attributes, DrawMode drawMode) const;

    void DrawBox(     const p3dBoundVolAttr* attributes, DrawMode drawMode) const;
    void DrawSphere(  const p3dBoundVolAttr* attributes, DrawMode drawMode) const;
    void DrawCylinder(const p3dBoundVolAttr* attributes, DrawMode drawMode) const;
    void DrawCapsule( const p3dBoundVolAttr* attributes, DrawMode drawMode) const;
    void DrawPlane(   const p3dBoundVolAttr* attributes, DrawMode drawMode) const;

};

class p3dBoundNodeShapeUI : public p3dBaseShapeUI
{
public:
    p3dBoundNodeShapeUI();
    virtual ~p3dBoundNodeShapeUI(); 

    virtual void   getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & requests );
    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();
};


}; // end namespace P3DBoundingVolume

#endif //_BOUNDINGSHAPEUI_HPP_
