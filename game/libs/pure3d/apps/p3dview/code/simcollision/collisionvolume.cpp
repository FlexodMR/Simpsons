//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include "simcollision/collisionvolume.hpp"

#include "simcommon/simmath.hpp"
#include "simcollision/collisionobject.hpp"

using namespace RadicalMathLibrary;

namespace sim
{

CollisionVolume::CollisionVolume()
    : mSphereRadius(1.0f), // default
    mVisible(true),
    mType(CollisionVolumeType),
    mObjRefIndex(-1),
    mOwnerIndex(-1),
    mCollisionObject(NULL),
    mSubVolumeList(NULL),
    mUpdated(false)
{
    mPosition.Set(0, 0, 0);
    mBoxSize.Set(0, 0, 0);
    mDP.Set(0, 0, 0);
}

CollisionVolume::~CollisionVolume()
{
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            mSubVolumeList->GetAt(i)->Release();
        }
        mSubVolumeList->RemoveAll();
        delete mSubVolumeList;
    }
}

CollisionVolume* CollisionVolume::GetSubCollisionVolume(int inObjRefIndex, bool inSelfOnly)
{
    CollisionVolume* ret = NULL;
    
    if (mObjRefIndex <= inObjRefIndex)
    {
        if ((mType != BBoxVolumeType || !inSelfOnly) && mObjRefIndex == inObjRefIndex)
        {
            ret = this;
        }
        if (!ret && mSubVolumeList)
        {
            for (int i=0; i<mSubVolumeList->GetSize(); i++)
            {
                CollisionVolume* cv = mSubVolumeList->GetAt(i);
                if (cv->mObjRefIndex == inObjRefIndex && cv->Type() != BBoxVolumeType)
                {
                    ret = cv;
                    break;
                }
                else
                {
                    cv = cv->GetSubCollisionVolume(inObjRefIndex, inSelfOnly);
                    if (cv)
                    {
                        ret = cv;
                        break;
                    }
                }
            }
        }
    }
    return ret;
}

CollisionVolume* CollisionVolume::Clone()
{
    CollisionVolume* clone = NULL;
    
    switch (mType)
    {
    case CollisionVolumeType:
        P3DASSERT(false); // this type is not valid
        break;
    case SphereVolumeType:
        clone = new SphereVolume;
        break;
    case CylinderVolumeType:
        clone = new CylinderVolume;
        break;
    case OBBoxVolumeType:
        clone = new OBBoxVolume;
        break;
    case WallVolumeType:
        clone = new WallVolume;
        break;
    case BBoxVolumeType:
        clone = new BBoxVolume;
        break;
    case MaxCollisionVolumeEnum: // save a warning
    default:
        break;
    }
    
    if (clone)
    {
        SetClone(clone);
    }
    return clone;
}

void CollisionVolume::SetClone(CollisionVolume* clone)
{
    clone->mPosition = mPosition;
    clone->mBoxSize = mBoxSize;
    clone->mSphereRadius = mSphereRadius;
    clone->mVisible = mVisible;
    clone->mType = mType;
    clone->mObjRefIndex = mObjRefIndex;
    clone->mOwnerIndex = mOwnerIndex;
    clone->mDP = mDP;
    
    if (mSubVolumeList != NULL)
    {
        clone->mSubVolumeList = new TList<CollisionVolume*>;
        
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            CollisionVolume* subClone = mSubVolumeList->GetAt(i)->Clone();
            P3DASSERT(subClone);
            clone->mSubVolumeList->Add(subClone);
        }
    }
}

void CollisionVolume::UpdateAll()
{
    UpdatePos();
    UpdateRot();
    UpdateBBox();
}

void CollisionVolume::UpdatePos()
{  
    if (mCollisionObject != NULL)
    {
        mUpdated = false; // orientation not updated
        
        if (mType != BBoxVolumeType)
            mCollisionObject->GetTransform(mObjRefIndex).Transform(mDP, &mPosition);
    }
    else
    {
        mUpdated = true;
    }
    
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            mSubVolumeList->GetAt(i)->UpdatePos();
        }
    }
}

void CollisionVolume::UpdateRot()
{  
    if (mCollisionObject != NULL)
    {
        SetRotation();
    }
    
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            mSubVolumeList->GetAt(i)->UpdateRot();
        }
    }
}

void CollisionVolume::UpdateScale(float a)
{
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
            mSubVolumeList->GetAt(i)->UpdateScale(a);
    }
}

void CollisionVolume::AddSubVolume(CollisionVolume* inEl)
{
    P3DASSERT(inEl != NULL);
    P3DASSERT(inEl != this);
    P3DASSERTMSG(mType == BBoxVolumeType, "CollisionVolume::AddSubVolume", "Only BBoxVolumeType supports this feature");
    P3DASSERT(inEl->mObjRefIndex >= mObjRefIndex);
    bool added = false;
    
    if (mSubVolumeList == NULL)
    {
        mSubVolumeList = new TList<CollisionVolume*>;
    }
    else if (mSubVolumeList->Contains(inEl))
    {
        added = true;
    }
    if (!added)
    {
        mSubVolumeList->Add(inEl);
        inEl->AddRef();
        inEl->SetCollisionObject(mCollisionObject);
    }
}

bool CollisionVolume::RemoveSubVolume(CollisionVolume* el)
{
    P3DASSERT(el != NULL);
    
    if (mSubVolumeList == NULL)
        return false;
    
    bool ret = false;
    if (mSubVolumeList->Contains(el))
    {
        mSubVolumeList->Remove(el);
        el->Release();
        ret = true;
    }
    else
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            ret = mSubVolumeList->GetAt(i)->RemoveSubVolume(el);
        }
    }
    return ret;
}

void CollisionVolume::SetCollisionObject(CollisionObject* obj)
{
    if (mCollisionObject == obj)
        return;
    
    mCollisionObject = obj;
    
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            mSubVolumeList->GetAt(i)->SetCollisionObject(mCollisionObject);
        }
    }
}

void CollisionVolume::SetObjRefIndex(int ref)
{
    mObjRefIndex = ref;
    if (mSubVolumeList != NULL)
    {
        for (int i=0; i<mSubVolumeList->GetSize(); i++)
        {
            mSubVolumeList->GetAt(i)->SetObjRefIndex(ref);
        }
    }
}

// return true if interference
static inline bool SubIsBBIn(CollisionVolume* thisEl, CollisionVolume* el, float precision)
{
    if (Fabs(el->mPosition.x - thisEl->mPosition.x) > thisEl->mBoxSize.x + el->mBoxSize.x + precision) return false;
    if (Fabs(el->mPosition.z - thisEl->mPosition.z) > thisEl->mBoxSize.z + el->mBoxSize.z + precision) return false;
    if (Fabs(el->mPosition.y - thisEl->mPosition.y) > thisEl->mBoxSize.y + el->mBoxSize.y + precision) return false;
    
    return true;
}

// this and el might be only pre-updated, they will be updated only if necessary
bool CollisionVolume::IsBBIn(CollisionVolume* el, float precision)
{
    if (!mUpdated)
    {
        UpdateAll();
    }
    if (!el->mUpdated)
    {
        el->UpdateAll();
    }
    
    bool in = SubIsBBIn(this, el, precision);
    
    return in;
}

// mostly for debug to make sure a sub BB is smaller than the parent
bool CollisionVolume::ContainsBB(CollisionVolume* el)
{
    return mBoxSize.DotProduct(mBoxSize) > el->mBoxSize.DotProduct(el->mBoxSize);
}

//
// SphereVolume class
//

SphereVolume::SphereVolume(const Vector& pos, float rad)
: CollisionVolume()
{
    mType = SphereVolumeType;
    mPosition = pos;
    mDP = mPosition;
    mSphereRadiusRef = rad;
    mSphereRadius = rad;
    mBoxSize.x = mSphereRadius;
    mBoxSize.y = mSphereRadius;
    mBoxSize.z = mSphereRadius;
}

SphereVolume::~SphereVolume()
{
}

void SphereVolume::SetClone(CollisionVolume* clone)
{
    CollisionVolume::SetClone(clone);
    ((SphereVolume*)clone)->mSphereRadiusRef = mSphereRadiusRef;
}

void SphereVolume::UpdateScale(float a)
{  
    CollisionVolume::UpdateScale(a);
    mSphereRadius = mSphereRadiusRef * a;
    mBoxSize.x = mSphereRadius;
    mBoxSize.y = mSphereRadius;
    mBoxSize.z = mSphereRadius;
}

//
// CylinderVolume class
//

CylinderVolume::CylinderVolume(const Vector& centre, const Vector& o, float len, float r, bool flatend)
: CollisionVolume(),
mAxis(o),
mLength(len),
mCylinderRadius(r),
mFlatEnd(flatend),
mAxisRef(o),
mLengthRef(len),
mCylinderRadiusRef(r)
{
    mType = CylinderVolumeType;
    mPosition = centre;
    mDP = mPosition;
    
    if (mFlatEnd)
        mSphereRadius = Sqrt(Sqr(mLength) + Sqr(mCylinderRadius));
    else
        mSphereRadius = mLength + mCylinderRadius;
}

CylinderVolume::~CylinderVolume()
{
}

void CylinderVolume::SetClone(CollisionVolume* clone)
{
    CollisionVolume::SetClone(clone);
    CylinderVolume* volume = ((CylinderVolume*)clone);
    volume->mAxis = mAxis;
    volume->mLength = mLength;
    volume->mCylinderRadius = mCylinderRadius;
    volume->mFlatEnd = mFlatEnd;
    volume->mAxisRef = mAxisRef;
    volume->mLengthRef = mLengthRef;
    volume->mCylinderRadiusRef = mCylinderRadiusRef;
}

void CylinderVolume::UpdateScale(float a)
{  
    mLength = mLengthRef * a;
    mCylinderRadius = mCylinderRadiusRef * a;
    mAxisRef.Normalize();
    mAxisRef.Scale(Inverse(a));
    
    if (mFlatEnd)
        mSphereRadius = Sqrt(Sqr(mLength) + Sqr(mCylinderRadius));
    else
        mSphereRadius = mLength + mCylinderRadius;
    
    CollisionVolume::UpdateScale(a);
}

void CylinderVolume::SetRotation()
{  
    mUpdated = true;
    
    // the rotate method will also scale if the GetTransform contains scaling
    mCollisionObject->GetTransform(mObjRefIndex).RotateVector(mAxisRef, &mAxis);
}

void CylinderVolume::UpdateBBox()
{
    if( mFlatEnd )
    { 
        const Matrix mat = mCollisionObject->GetTransform(mObjRefIndex);
        mBoxSize.x = mCylinderRadiusRef * Fabs(mat.m[0][0]) + mLengthRef * Fabs(mat.m[0][1]) + mCylinderRadiusRef * Fabs(mat.m[0][2]);
        mBoxSize.y = mCylinderRadiusRef * Fabs(mat.m[1][0]) + mLengthRef * Fabs(mat.m[1][1]) + mCylinderRadiusRef * Fabs(mat.m[1][2]);
        mBoxSize.z = mCylinderRadiusRef * Fabs(mat.m[2][0]) + mLengthRef * Fabs(mat.m[2][1]) + mCylinderRadiusRef * Fabs(mat.m[2][2]);
    }
    else
    {
        mBoxSize.x = mLength * Fabs(mAxis.x) + mCylinderRadius;
        mBoxSize.y = mLength * Fabs(mAxis.y) + mCylinderRadius;
        mBoxSize.z = mLength * Fabs(mAxis.z) + mCylinderRadius;
    }
}

// OBBoxVolume class
OBBoxVolume::OBBoxVolume(const Vector& center, const Vector& o0, const Vector& o1, const Vector& o2, float l0, float l1, float l2)
: CollisionVolume()
{
    mType = OBBoxVolumeType;
    mPosition = center;
    mDP = mPosition;
    
    mLengthRef[0] = mLength[0] = l0;
    mLengthRef[1] = mLength[1] = l1;
    mLengthRef[2] = mLength[2] = l2;
    
    mSphereRadius = Sqrt(Sqr(l0) + Sqr(l1) + Sqr(l2));
    
    mAxisRef[0] = o0;
    mAxisRef[1] = o1;
    mAxisRef[2] = o2;
    
    mAxis[0] = mAxisRef[0];
    mAxis[1] = mAxisRef[1];
    mAxis[2] = mAxisRef[2];
    
#ifdef OBBoxStorePoints
    for (int i=0; i<4; i++)
        SubCorner(mC[i], i); 
#endif
}

OBBoxVolume::~OBBoxVolume()
{
}

void OBBoxVolume::SetClone(CollisionVolume* clone)
{
    CollisionVolume::SetClone(clone);
    OBBoxVolume* volume = ((OBBoxVolume*)clone);
    for (int i=0; i<3; i++)
    {
        volume->mAxis[i] = mAxis[i];
        volume->mAxisRef[i] = mAxisRef[i];
        volume->mLength[i] = mLength[i];
        volume->mLengthRef[i] = mLengthRef[i];
    }
    
#ifdef OBBoxStorePoints
    volume->mC[0] = mC[0];
    volume->mC[1] = mC[1];
    volume->mC[2] = mC[2];
    volume->mC[3] = mC[3];
#endif
}

void OBBoxVolume::UpdateScale(float a)
{  
    float inva = Inverse(a);
    
    for (int i=0; i<3; i++)
    {
        mLength[i] = mLengthRef[i] * a;
        mAxisRef[i].Normalize();
        mAxisRef[i].Scale(inva);
    }
    
    mSphereRadius = Sqrt(Sqr(mLength[0]) + Sqr(mLength[1]) + Sqr(mLength[2]));
    
    CollisionVolume::UpdateScale(a);
}

void OBBoxVolume::SetRotation()
{  
    mUpdated = true;
    const Matrix m = mCollisionObject->GetTransform(mObjRefIndex);
    
    m.RotateVector(mAxisRef[0], &mAxis[0]);
    m.RotateVector(mAxisRef[1], &mAxis[1]);
    m.RotateVector(mAxisRef[2], &mAxis[2]);
    
#ifdef OBBoxStorePoints 
    for (int i=0; i<4; i++)
        SubCorner(mC[i], i); 
#endif
}

void OBBoxVolume::UpdateBBox()
{
    mBoxSize.x = mLength[0] * Fabs(mAxis[0].x) + mLength[1] * Fabs(mAxis[1].x) + mLength[2] * Fabs(mAxis[2].x);
    mBoxSize.y = mLength[0] * Fabs(mAxis[0].y) + mLength[1] * Fabs(mAxis[1].y) + mLength[2] * Fabs(mAxis[2].y);
    mBoxSize.z = mLength[0] * Fabs(mAxis[0].z) + mLength[1] * Fabs(mAxis[1].z) + mLength[2] * Fabs(mAxis[2].z);
}

float OBBoxVolume::Projection(const Vector& axe) const
{
    return     mLength[0] * Fabs(axe.DotProduct(mAxis[0]))
        + mLength[1] * Fabs(axe.DotProduct(mAxis[1]))
        + mLength[2] * Fabs(axe.DotProduct(mAxis[2]));
}

float OBBoxVolume::Projection(const Vector& axe, int i) const
{
    float sum = 0;
    if (i != 0) sum += mLength[0] * Fabs(axe.DotProduct(mAxis[0]));
    if (i != 1) sum += mLength[1] * Fabs(axe.DotProduct(mAxis[1]));
    if (i != 2) sum += mLength[2] * Fabs(axe.DotProduct(mAxis[2]));
    return sum;
}

void OBBoxVolume::SubCorner(Vector& n, int i) const
{
    float a, b, c;
    float sgn = (i>3 ? -1.0f : 1.0f);
    
    a = sgn * mLength[0];
    b = sgn * mLength[1];
    c = sgn * mLength[2];
    
    if (i>1)          b = b * -1.0f;
    if (i==1 || i==3) c = c * -1.0f;
    
    n.x = a * mAxis[0].x + b * mAxis[1].x + c * mAxis[2].x;
    n.y = a * mAxis[0].y + b * mAxis[1].y + c * mAxis[2].y;
    n.z = a * mAxis[0].z + b * mAxis[1].z + c * mAxis[2].z;
}

void OBBoxVolume::Corner(Vector& n, int i) const
{
#ifdef OBBoxStorePoints
    if (i < 4)
        n = mC[i];
    else
        n.Scale(-1.0f, mC[i]);
#else
    SubCorner(n, i);
#endif
}

void OBBoxVolume::Vertex(Vector& n, int i) const
{
    Corner(n, i);
    n.Add(mPosition);
}

void OBBoxVolume::Side(Vector& n, int i, int j) const
{
    P3DASSERT(i<3);
    int ni = NXTI(i);
    int nni = NXTI(ni);
    float sgn = (j==0 ? mLength[ni] : -mLength[ni]);
    
    n.x = sgn * mAxis[ni].x + mLength[nni] * mAxis[nni].x;
    n.y = sgn * mAxis[ni].y + mLength[nni] * mAxis[nni].y;
    n.z = sgn * mAxis[ni].z + mLength[nni] * mAxis[nni].z;
}


// WallVolume class
WallVolume::WallVolume(const Vector& p, const Vector& n)
: CollisionVolume(),
mNormal(n)
{
    mType = WallVolumeType;
    mPosition = p;
    mDP = mPosition;
    mNormal.Normalize();
    mNormalRef = mNormal;
}

WallVolume::WallVolume()
: CollisionVolume()
{
    mType = WallVolumeType;
    mPosition.Set(0, 0, 0);
    mNormal.Set(0, 1.0f, 0);
    mNormalRef = mNormal;
}

WallVolume::~WallVolume()
{
}

void WallVolume::SetClone(CollisionVolume* clone)
{
    CollisionVolume::SetClone(clone);
    WallVolume* volume = ((WallVolume*)clone);
    volume->mNormal = mNormal;
    volume->mNormalRef = mNormalRef;
}

void WallVolume::UpdateBBox()
{
    // if wall perp to an axe, its projection on this axe is 0
    mBoxSize.x = (1.0f - Fabs(mNormal.x) < RELA_SMALL ? 0.0f : RELA_LARGE);
    mBoxSize.y = (1.0f - Fabs(mNormal.y) < RELA_SMALL ? 0.0f : RELA_LARGE);
    mBoxSize.z = (1.0f - Fabs(mNormal.z) < RELA_SMALL ? 0.0f : RELA_LARGE);
}

void WallVolume::UpdateScale(float a)
{  
    
    mNormalRef.Normalize();
    mNormalRef.Scale(Inverse(a));
    
    CollisionVolume::UpdateScale(a);
}

void WallVolume::SetRotation()
{  
    mUpdated = true;
    mCollisionObject->GetTransform(mObjRefIndex).RotateVector(mNormalRef, &mNormal);
}
//
//
//

// BBoxVolume class
BBoxVolume::BBoxVolume()
: CollisionVolume()
{
    mType = BBoxVolumeType;
    mBoxSize.Set(1.0f,  1.0f,  1.0f);
    mSphereRadius = 0;
}

BBoxVolume::~BBoxVolume()
{
}

void BBoxVolume::UpdateBBox()
{
    mUpdated = true;
    
    if (mSubVolumeList != NULL && mSubVolumeList->GetSize() > 0)
    {
        Vector vmax, vmin;
        
        // get any leaf pos
        CollisionVolume* el = (*mSubVolumeList)[0];
        el->UpdateBBox();
        vmax.Add(el->mPosition, el->mBoxSize);
        vmin.Sub(el->mPosition, el->mBoxSize);
        
        for (int i=1; i<mSubVolumeList->GetSize(); i++)
        {
            el = mSubVolumeList->GetAt(i);
            el->UpdateBBox();
            AddBox(vmax, vmin, el);
        }
        mPosition.Add(vmax, vmin);
        mPosition.Scale(0.5f);
        mBoxSize.Sub(vmax, vmin);
        mBoxSize.Scale(0.5f);
        
        // compute mSphereRadius only for the bbox at the top of the hierarchy
        if (mCollisionObject && mCollisionObject->GetCollisionVolume() == this)
        {
            mSphereRadius = 1.732f * Max(mBoxSize.x, Max(mBoxSize.y, mBoxSize.z)); // sqrt(3)*longest edge, worst case
        }
    }
}

void BBoxVolume::AddBox(Vector& vmax, Vector& vmin, CollisionVolume* el) const
{
    vmax.x = Max(vmax.x, el->mPosition.x + el->mBoxSize.x);
    vmin.x = Min(vmin.x, el->mPosition.x - el->mBoxSize.x);
    
    vmax.y = Max(vmax.y, el->mPosition.y + el->mBoxSize.y);
    vmin.y = Min(vmin.y, el->mPosition.y - el->mBoxSize.y);
    
    vmax.z = Max(vmax.z, el->mPosition.z + el->mBoxSize.z);
    vmin.z = Min(vmin.z, el->mPosition.z - el->mBoxSize.z);
}

/*

//
// the computation of the cm, inertia and volume was moved in tollib but with 
// PhComposite we have to bring it back to the run time but its use will be
// minimal.
//

void ComputeICM(const CollisionVolume* collVol, SymMatrix& i0, Vector& cm, float& vol, float density)
{
   // first need to find the cm
   vol = collVol->Volume();
   if (vol > 0)
   {
      cm.Scale(1.0f/vol, collVol->VR());
      i0 = collVol->Inertia(cm);
      i0.Scale(vol*density);
   }
}

float CollisionVolume::Volume() const
{
   float v = 0;
   if (mSubVolumeList != NULL)
   {
      for (int i=0; i<mSubVolumeList->GetSize(); i++)
      {
         v += (*mSubVolumeList)[i]->Volume();
      }
   }
   else
   {
      v = VolumeSelf();
   }
   return v;
}

Vector CollisionVolume::VR() const
{
   Vector vr(0, 0, 0);
   if (mSubVolumeList != NULL)
   {
      for (int i=0; i<mSubVolumeList->GetSize(); i++)
      {
         if ((*mSubVolumeList)[i]->mObjRefIndex == mObjRefIndex)
         {
            vr.Add((*mSubVolumeList)[i]->VR());
         }
      }
   }
   else
   {
      vr.Scale(VolumeSelf(), mPosition); 
   }
   return vr;
}

SymMatrix CollisionVolume::Inertia(const Vector& cm) const
{
   SymMatrix i0;
   i0.Zero();

   if (mSubVolumeList != NULL)
   {
      for (int i=0; i<mSubVolumeList->GetSize(); i++)
      {
         if ((*mSubVolumeList)[i]->mObjRefIndex == mObjRefIndex)
         {
            i0.Add((*mSubVolumeList)[i]->Inertia(cm));
         }
      }
   }
   else
   {
      InertiaSelf(i0);
      Vector dp;
      dp.Sub(mPosition, cm);
      i0.xx += Sqr(dp.y) + Sqr(dp.z);
      i0.xy -= dp.x * dp.y;
      i0.xz -= dp.x * dp.z;
      i0.yy += Sqr(dp.x) + Sqr(dp.z);
      i0.yz -= dp.y * dp.z;
      i0.zz += Sqr(dp.x) + Sqr(dp.y);
   }
   return i0;
}

float SphereVolume::VolumeSelf() const
{
   return (4.0f/3.0f) * PI * mSphereRadius * mSphereRadius * mSphereRadius;
}

float CylinderVolume::VolumeSelf() const
{
   if (mFlatEnd)
      return PI_2 * mCylinderRadius * mCylinderRadius * mLength;
   else
      return PI_2 * mCylinderRadius * (mLength + (2.0f/3.0f) * mCylinderRadius * mCylinderRadius);
}

float OBBoxVolume::VolumeSelf() const
{
   return 8.0f * mLength[0] * mLength[1] * mLength[2];
}

void SphereVolume::InertiaSelf(SymMatrix& m) const
{
   m.Identity();
   float f = 2.0f / 5.0f * Sqr(mSphereRadius);
   m.xx = m.yy = m.zz = f;
}

void CylinderVolume::InertiaSelf(SymMatrix& m) const
{
   m.Identity();
   float h;

   if (mFlatEnd)
      h = 2.0f * mLength;
   else
      h = 2.0f * (mLength + mCylinderRadius*2.0f/3.0f); // approx. of an height to include the capsule's half spheres
   
   // first set m as if the cyl orientation was along x
   m.xx = Sqr(mCylinderRadius) / 2.0f;
   m.yy = m.zz = (Sqr(h) + 3.0f * Sqr(mCylinderRadius)) / 12.0f;
   //
   Vector x(1.0f, 0, 0);
   Vector O2, O3;
   O2.CrossProduct(x, mAxis);
   
   if (O2.NormalizeSafe() < VERY_SMALL) 
      return; // axis already oriented along x
   
   O3.CrossProduct(mAxis, O2); 
   O3.Normalize(); // mAxis, O2 and O3 form an ortho basis to transform m
   Matrix r;
   r.Identity();
   r.Row(0) = mAxis;
   r.Row(1) = O2;
   r.Row(2) = O3;

   m.TransformSelf(r);
}

void OBBoxVolume::InertiaSelf(SymMatrix& m) const
{
   m.Identity();
   // first set m as if the axis were oriented along xyz
   m.xx = (Sqr(mLength[1]) + Sqr(mLength[2])) / 3.0f;
   m.yy = (Sqr(mLength[0]) + Sqr(mLength[2])) / 3.0f;
   m.zz = (Sqr(mLength[0]) + Sqr(mLength[1])) / 3.0f;
   //
   Matrix r;
   r.Identity();
   r.Row(0) = mAxis[0];
   r.Row(1) = mAxis[1];
   r.Row(2) = mAxis[2];

   m.TransformSelf(r);
}
*/

} // sim

