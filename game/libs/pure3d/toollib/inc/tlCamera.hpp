/*===========================================================================
    File:: tlCamera.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

    Implements a 2 point camera

===========================================================================*/

#ifndef _TLCAMERA_HPP
#define _TLCAMERA_HPP


#include "tlMatrix.hpp"
#include "tlPoint.hpp"
#include "tlTable.hpp"
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"

class tlCameraChunk16;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlCamera
//*****************************************************************************
class tlCamera : public tlEntity
{
public:
    tlCamera();
    ~tlCamera();

    tlCamera(tlDataChunk* ch);

    virtual void LoadFromChunk16(tlDataChunk* ch);
    virtual tlDataChunk *Chunk16(void);

    void Translate(float x, float y, float z);

    unsigned long Version(void)      { return mVersion; }
    void SetVersion(unsigned long v) { mVersion = v; }

    // These operators work on the look & up vectors
    void RotateX(float rot);
    void RotateY(float rot);
    void RotateZ(float rot);
    void Transform(tlMatrix& mat);
    void Scale(float s);

    // accessors
    inline float FOV(void)         { return mFOV; }
    inline float AspectRatio(void) { return mAspectRatio; }
    inline float NearClip(void)    { return mNearClip; }
    inline float FarClip(void)     { return mFarClip; }

    inline tlPoint  Position(void) { return mPosition; }
    inline tlPoint  Look(void)     { return mLook; }
    inline tlPoint  Up(void)       { return mUp; }
                                                
    inline void SetFOV(float fov)            { mFOV = fov; }
    inline void SetAspectRatio(float aspect) { mAspectRatio = aspect; }
    inline void SetNearClip(float n)         { mNearClip = n; }
    inline void SetFarClip(float f)          { mFarClip  = f; }

    inline void SetPosition(tlPoint &newPosition) { mPosition = newPosition; }
    inline void SetLook(tlPoint &newLook)         { mLook = newLook; }
    inline void SetUp(tlPoint &newUp)             { mUp = newUp; }

private:
    unsigned long mVersion;
    float         mFOV;
    float         mAspectRatio;
    float         mNearClip;
    float         mFarClip;
    tlPoint       mPosition;
    tlPoint       mLook;
    tlPoint       mUp;

};

//*****************************************************************************
// tlCameraLoader
//*****************************************************************************
class tlCameraLoader : public tlEntityLoader
{
public:
    tlCameraLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

