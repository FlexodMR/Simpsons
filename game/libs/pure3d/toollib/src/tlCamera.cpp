/*===========================================================================
    File:: tlCamera.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlCamera.hpp"

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlCameraChunk16.hpp"
#include "tlString.hpp"

#include <stdlib.h>

//*****************************************************************************
// tlCamera
//*****************************************************************************
tlCamera::tlCamera()
{

    mVersion     = 2;
    mFOV         = 0.5F;
    mAspectRatio = 4.0F / 3.0F;
    mNearClip    = 0.1F;
    mFarClip     = 1000.0F;
    mPosition    = tlPoint(0.0F, 0.0F, 0.0F);
    mLook        = tlPoint(0.0F, 0.0F, 1.0F);
    mUp          = tlPoint(0.0F, 1.0F, 0.0F);

}


tlCamera::~tlCamera()
{
}


tlCamera::tlCamera(tlDataChunk* ch)
{
    mVersion     = 2;
    mFOV         = 0.5F;
    mAspectRatio = 4.0F / 3.0F;
    mNearClip    = 0.1F;
    mFarClip     = 1000.0F;
    mPosition    = tlPoint(0.0F, 0.0F, 0.0F);
    mLook        = tlPoint(0.0F, 0.0F, 1.0F);
    mUp          = tlPoint(0.0F, 1.0F, 0.0F);

    LoadFromChunk16(ch);
}


void tlCamera::LoadFromChunk16(tlDataChunk* ch)
{
    assert(ch->ID() == P3D_CAMERA);
    tlCameraChunk16* lch = dynamic_cast<tlCameraChunk16*>(ch);
    assert(lch);

    assert(mVersion == lch->GetVersion());

    SetName(lch->GetName());

    mFOV         = lch->GetFOV();
    mAspectRatio = lch->GetAspectRatio();
    mNearClip    = lch->GetNearClip();
    mFarClip     = lch->GetFarClip();

    mPosition.x = lch->GetPositionX();
    mPosition.y = lch->GetPositionY();
    mPosition.z = lch->GetPositionZ();

    mLook.x = lch->GetLookX();
    mLook.y = lch->GetLookY();
    mLook.z = lch->GetLookZ();

    mUp.x = lch->GetUpX();
    mUp.y = lch->GetUpY();
    mUp.z = lch->GetUpZ();

}


tlDataChunk *tlCamera::Chunk16(void)
{

    tlCameraChunk16 *cc = new tlCameraChunk16;

    cc->SetName(GetName());
    cc->SetVersion(mVersion);

    cc->SetFOV(mFOV);
    cc->SetAspectRatio(mAspectRatio);
    cc->SetNearClip(mNearClip);
    cc->SetFarClip(mFarClip);

    cc->SetPositionX(mPosition.x);
    cc->SetPositionY(mPosition.y);
    cc->SetPositionZ(mPosition.z);

    cc->SetLookX(mLook.x);
    cc->SetLookY(mLook.y);
    cc->SetLookZ(mLook.z);

    cc->SetUpX(mUp.x);
    cc->SetUpY(mUp.y);
    cc->SetUpZ(mUp.z);

    return cc;
}


void tlCamera::Translate(float x,float y, float z)
{
    mPosition.x += x;
    mPosition.y += y;
    mPosition.z += z;
}


void tlCamera::RotateX(float rot)
{
    tlMatrix temp = ::RotateX(rot);

    mLook = mLook * temp;
    mUp   = mUp * temp;
}


void tlCamera::RotateY(float rot)
{
    tlMatrix temp = ::RotateY(rot);

    mLook = mLook * temp;
    mUp   = mUp * temp;
}


void tlCamera::RotateZ(float rot)
{
    tlMatrix temp = ::RotateZ(rot);

    mLook = mLook * temp;
    mUp   = mUp * temp;
}


void tlCamera::Transform(tlMatrix& mat)
{
    mLook = mLook * mat;
    mUp   = mUp   * mat;
}


void tlCamera::Scale(float s)
{
    mPosition.x *= s;
    mPosition.y *= s;
    mPosition.z *= s;
    
    mNearClip *= s;
    mFarClip *= s;
}

//*****************************************************************************
// tlCameraLoader
//*****************************************************************************
tlCameraLoader::tlCameraLoader() : 
    tlEntityLoader(P3D_CAMERA)
{
}

tlEntity*
tlCameraLoader::Load(tlDataChunk* chunk)
{
    return new tlCamera(chunk);
}

