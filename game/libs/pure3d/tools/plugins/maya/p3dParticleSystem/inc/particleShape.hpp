//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PARTICLE_SHAPE_HPP_
#define _PARTICLE_SHAPE_HPP_

#include <iostream.h>
#include <maya/MPxSurfaceShape.h>
#include <maya/MPxSurfaceShapeUI.h>
#include <maya/MDGMessage.h>
#include <GL/glu.h>
#include "particleConstants.hpp"

namespace P3DParticleSystem
{

class p3dBaseShape : public MPxSurfaceShape
{
public:
    p3dBaseShape() {}
    virtual ~p3dBaseShape() {} 

    virtual void postConstructor();
    virtual bool isBounded() const {return true;}
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

    virtual void getDrawRequests( const MDrawInfo & info, bool objectAndActiveOnly, MDrawRequestQueue & queue );
    virtual void getDrawRequestsWireframe( MDrawRequest&, const MDrawInfo& );
    virtual void getDrawRequestsShaded( MDrawRequest&, const MDrawInfo&, MDrawRequestQueue&, MDrawData& data );

protected:
    int lead_color;
    int active_color;
    int active_affected_color;
    int dormant_color;
    int hilite_color;
};

////////////////////////////////////////////////////////////////////
//
// Node class
//
class p3dEmitterBlendStateAttr
{
public:    
    short   particleType;
    short   generatorType;
    short   particleAngleType;
    short   infiniteLife;
};

class p3dEmitterBlendStateNode : public MPxNode
{
public:
    p3dEmitterBlendStateNode();
    virtual ~p3dEmitterBlendStateNode(); 

    virtual bool               getInternalValue( const MPlug&, MDataHandle& );
    virtual bool               setInternalValue( const MPlug&, const MDataHandle& );
    static  void*              creator();
    static  MStatus            initialize();
    p3dEmitterBlendStateAttr*  getAttributes();    

    static MTypeId id; 

private:
    p3dEmitterBlendStateAttr* attributes;
    static MObject parent;

    // Attributes
    static MObject particleType;
    static MObject generatorType;
    static MObject particleAngleType;

    // generator
    static MObject horizSpread;
    static MObject vertSpread;
    static MObject radialVar;
    static MObject length;
    static MObject height;
    static MObject width;

    // base emitter
    static MObject emissionRate;
    static MObject numParticles;
    static MObject infiniteLife;
    static MObject life;
    static MObject lifeVar;
    static MObject speed;
    static MObject speedVar;
    static MObject weight;
    static MObject weightVar;
    static MObject gravity;
    static MObject drag;

    // sprite emitter
    static MObject red;
    static MObject green;
    static MObject blue;
    static MObject colour;
    static MObject colourVar;
    static MObject alpha;
    static MObject alphaVar;
    static MObject size;
    static MObject sizeVar;
    static MObject spin;
    static MObject spinVar;
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dEmitterAttr
{
public:
    short   particleType;
    short   generatorType;
    short   particleAngleType;
    short   infiniteLife;
    short   textureAnimMode;
};

class p3dEmitterShape : public p3dBaseShape
{
public:
    p3dEmitterShape();
    virtual ~p3dEmitterShape(); 

    virtual void            postConstructor();
    virtual bool            getInternalValue( const MPlug&, MDataHandle& );
    virtual bool            setInternalValue( const MPlug&, const MDataHandle& );
    static void*            creator();
    static MStatus          initialize();
    virtual MBoundingBox    boundingBox() const; 
    p3dEmitterAttr*         getAttributes();

    static MTypeId id; 

    static void TagCallback( MObject& node, void* clientData );
    static MCallbackId tagCallbackId;

private:
    p3dEmitterAttr* attributes;
    static MObject parent;

    // Attributes
    static MObject displaySize;
    static MObject zTest;
    static MObject zWrite;
    static MObject fog;
    static MObject particleType;
    static MObject generatorType;
    static MObject particleAngleType;
    static MObject particleAngle;

    // generator
    static MObject horizSpread;
    static MObject vertSpread;
    static MObject radialVar;
    static MObject length;
    static MObject height;
    static MObject width;

    // base emitter
    static MObject emissionRate;
    static MObject maxNumParticles;
    static MObject numParticles;
    static MObject infiniteLife;
    static MObject life;
    static MObject lifeVar;
    static MObject speed;
    static MObject speedVar;
    static MObject speedOL;
    static MObject weight;
    static MObject weightVar;
    static MObject weightOL;
    static MObject gravity;
    static MObject drag;
    static MObject rotationalCohesion;
    static MObject translationalCohesion;

    // sprite emitter
    static MObject red;
    static MObject green;
    static MObject blue;
    static MObject colour;
    static MObject colourVar;
    static MObject redOL;
    static MObject greenOL;
    static MObject blueOL;
    static MObject colourOL;
    static MObject alpha;
    static MObject alphaVar;
    static MObject alphaOL;
    static MObject size;
    static MObject sizeVar;
    static MObject sizeOL;
    static MObject spin;
    static MObject spinVar;
    static MObject spinOL;
    static MObject textureAnimMode;
    static MObject texFrameRate;
    static MObject texFrameOL;
    static MObject numTexFrames;

    //attributes no longer used but must be maintained for old art
    static MObject particleMode;
    static MObject animTexture; 
    static MObject origSize;

};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class p3dEmitterShapeUI : public p3dBaseShapeUI
{
public:
    p3dEmitterShapeUI();
    virtual ~p3dEmitterShapeUI(); 

    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();

protected:
    void drawEmitter(int drawMode) const;

    GLUquadricObj* emitterObject;
};

/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class p3dPartSystemAttr
{
public:
    short   cycleAnim;
};

class p3dPartSystemShape : public p3dBaseShape
{
public:
    p3dPartSystemShape();
    virtual ~p3dPartSystemShape(); 

    virtual void            postConstructor();
    virtual bool            getInternalValue( const MPlug&, MDataHandle& );
    virtual bool            setInternalValue( const MPlug&, const MDataHandle& );
    static  void*           creator();
    static  MStatus         initialize();
    virtual MBoundingBox    boundingBox() const; 
    p3dPartSystemAttr*      getAttributes();

    static MTypeId id; 

    static MCallbackId tagCallbackId;

private:
    p3dPartSystemAttr* attributes;

    // Attributes
    static MObject numberOfInstances;
    static MObject numberOfAnimationFrames;
    static MObject numberOfOverLifeFrames;
    static MObject animationStartFrame;
    static MObject overLifeStartFrame;
    static MObject preloadFrames; 
    static MObject cycleAnimation;
    static MObject enableSorting;
    static MObject displaySize;

    // Old Attributes
    static MObject origSize;
};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class p3dPartSystemShapeUI : public p3dBaseShapeUI
{
public:
    p3dPartSystemShapeUI();
    virtual ~p3dPartSystemShapeUI(); 

    virtual void   draw( const MDrawRequest & request, M3dView & view ) const;
    virtual bool   select( MSelectInfo &selectInfo, MSelectionList &selectionList, MPointArray &worldSpaceSelectPts ) const;
    static  void * creator();

protected:
    void drawSystem(int drawMode) const;
};

};  //namespace P3DParticleSystem

#endif //_PARTICLE_SHAPE_HPP_


