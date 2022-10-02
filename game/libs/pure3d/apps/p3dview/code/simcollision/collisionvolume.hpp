//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _CollisionVolume_H_
#define _CollisionVolume_H_

#include <p3d/refcounted.hpp>
#include <radmath/radmath.hpp>
#include <simcommon/tlist.hpp>

namespace sim
{

class CollisionObject;
class CollisionVolume;

enum CollisionVolumeTypeEnum { CollisionVolumeType=0, SphereVolumeType, CylinderVolumeType, OBBoxVolumeType, WallVolumeType, BBoxVolumeType, MaxCollisionVolumeEnum };

// base class
class CollisionVolume
    : public tRefCounted
{
public:
    CollisionVolume();
    virtual ~CollisionVolume();
    
    rmt::Vector mPosition;              // reference position of the Volume
    rmt::Vector mBoxSize;               // mPosition and mBoxSize determine the BBox position and size
    float mSphereRadius;                // sphere radius
    bool mVisible;
    
    void SetCollisionObject(CollisionObject* inCollObject);
    inline CollisionObject* GetCollisionObject()    { return mCollisionObject; }
    void SetObjRefIndex(int i);
    void SetOwnerIndex(int i)                       { mOwnerIndex = i; }
    inline int ObjRefIndex()                  const { return mObjRefIndex; }
    
    inline bool Updated() const                     { return mUpdated; }
    inline CollisionVolumeTypeEnum Type()     const { return mType; }
    inline TList<CollisionVolume*>* SubVolumeList()   { return mSubVolumeList; }
    
    void AddSubVolume(CollisionVolume* point);
    bool RemoveSubVolume(CollisionVolume* el);
    inline void EmptySubVolume()                    { if (mSubVolumeList != NULL) mSubVolumeList->RemoveAll(); }
    bool HasSubVolume()                       const { return (mSubVolumeList == NULL || mSubVolumeList->GetSize() == 0) ? false : true; }
    
    // GetSubCollisionVolume returns a sub volume that has the input index. 
    // if self = false, it will return the bbox of that joint with possibly the other subjoints 
    // of the hierarchy below it.
    CollisionVolume*  GetSubCollisionVolume(int inObjRefIndex, bool inSelfOnly = true);
    
    CollisionVolume* Clone();
    
    virtual void UpdateScale(float a);              // update the value to the new scale factor
    virtual void UpdateBBox() {}                    // update the BBox
    virtual void UpdateAll();                       // complete update
    
    bool ContainsBB(CollisionVolume* el);           // mostly for debug to make sure a sub BB is smaller than the parent
    virtual bool IsBBIn(CollisionVolume* el, float precision = 0);
    
protected:
    friend class CollisionObject;
    
    void UpdateRot();
    void UpdatePos();
    virtual void SetRotation() {}
    virtual void SetClone(CollisionVolume* clone);
    
    CollisionVolumeTypeEnum mType;
    int mObjRefIndex;              // object reference index, if >= 0 refers to a joint
    int mOwnerIndex;               // owner reference index used, refer to one ownerlist item in the collisionobject, for composite drawable LOD purposes
    
    CollisionObject* mCollisionObject;
    TList<CollisionVolume*>* mSubVolumeList;
    
    bool mUpdated;
    rmt::Vector mDP; // relative position of the Volume and its parent object
    
private:
    CollisionVolume& operator=(CollisionVolume& inVolume) { P3DASSERT(false); return *this; }
    CollisionVolume(const CollisionVolume& inCollisionVolume) {}
};


// SphereVolume class
class SphereVolume
    : public CollisionVolume
{
    friend class CollisionVolume; // to have access to the protected constructor
    
public:
    SphereVolume(const rmt::Vector& p, float r = 1.0f);
    virtual ~SphereVolume();
    
    virtual void UpdateScale(float a);
    
    float GetRadius()                const { return mSphereRadius; }

protected:
    SphereVolume() {}
    virtual void SetClone(CollisionVolume* clone);
    
    float mSphereRadiusRef;         // sphere initial radius
};

// CylinderVolume class
class CylinderVolume
    : public CollisionVolume
{
    friend class CollisionVolume;    // to have access to the protected constructor
    
public:
    CylinderVolume(const rmt::Vector& center, const rmt::Vector& o, float len, float r, bool flatend = false);
    virtual ~CylinderVolume();
    
    virtual void UpdateScale(float a);
    virtual void UpdateBBox();
    
    rmt::Vector mAxis;               // cylinder's orientation 
    float mLength;                   // cylinder's half-length
    float mCylinderRadius;           // cylinder's radius
    
    bool mFlatEnd;
    
protected:
    CylinderVolume() {}
    virtual void SetRotation();
    virtual void SetClone(CollisionVolume* clone);
    
    rmt::Vector mAxisRef;              // cylinder's init orientation
    float mLengthRef;                  // cylinder's half-length
    float mCylinderRadiusRef;          // cylinder's initial radius
};

// OBBoxVolume class
//#define OBBoxStorePoints
class OBBoxVolume
    : public CollisionVolume
{
    friend class CollisionVolume;    // to have access to the protected constructor
    
public:
    OBBoxVolume(const rmt::Vector& center, const rmt::Vector& o0, const rmt::Vector& o1, const rmt::Vector& o2, float l0, float l1, float l2);
    virtual ~OBBoxVolume();
    
    virtual void UpdateScale(float a);
    virtual void UpdateBBox();
    
    float Projection(const rmt::Vector& axe) const;      // projection if the 3 axis
    float Projection(const rmt::Vector& axe, int i) const;// projection of 2 axis
    void Corner(rmt::Vector& n, int i) const;
    void Side(rmt::Vector& n, int i, int j) const;
    void Vertex(rmt::Vector& n, int i) const;
    
    rmt::Vector mAxis[3];   // orientation of the box
    float mLength[3];      // half length of the 3 cube's dimension
    
protected:
    OBBoxVolume() {}
    void SubCorner(rmt::Vector& n, int i) const;
    virtual void SetRotation();
    virtual void SetClone(CollisionVolume* clone);
    
    rmt::Vector mAxisRef[3];  // init orientation of the box
    float mLengthRef[3];     // init half length of the 3 cube's dimension
#ifdef OBBoxStorePoints
    rmt::Vector mC[4];
#endif
};

// WallVolume class
class WallVolume
    : public CollisionVolume
{
    friend class CollisionVolume; // to have access to the protected constructor
    
public:
    WallVolume(const rmt::Vector& p, const rmt::Vector& n);
    virtual ~WallVolume();
    
    virtual void UpdateBBox();
    virtual void UpdateScale(float a);
    
    rmt::Vector mNormal;
    
    //void SetDimension(const rmt::Vector& inPoints, int inNbPoints, bool inSymetrical = false);
    //rmt::Vector* mAxis;
    //float* mSize;
    //int mNbAxis;
    
protected:
    WallVolume();
    virtual void SetRotation();
    virtual void SetClone(CollisionVolume* clone);
    
    //bool mInfinite;
    //bool mSymetrical;
    
    rmt::Vector mNormalRef; // Wall normal, points toward the inside (where the colliding objects should be
    //rmt::Vector* mAxisRef;
};

// BBoxVolume class
class BBoxVolume 
    : public CollisionVolume
{
public:
    BBoxVolume();
    virtual ~BBoxVolume();
    
    virtual void UpdateBBox();
    
protected:
    void AddBox(rmt::Vector& vmax, rmt::Vector& vmin, CollisionVolume* el) const;
};

// the flatend option is not completely implemented. it works only with the infinite plane
// undef the following is not an option for now so the relevant code is simply commented out
//#define DETECT_COLL_ON_CYL_FLATEND

}  // sim

#endif // _CollisionVolume_H_
