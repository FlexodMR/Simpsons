//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _CollisionObject_HPP_
#define _CollisionObject_HPP_

#include <p3d/entity.hpp>
#include <p3d/loadmanager.hpp>
#include <p3d/anim/pose.hpp>
#include <p3d/drawable.hpp>
#include <radmath/radmath.hpp>
#include "simcommon/tarray.hpp"

class tCompositeDrawable;

namespace sim
{

class CollisionVolume;

class CollisionObject
    : public tEntity
{
public:
    CollisionObject(CollisionVolume* inCollisionVolume);
    CollisionObject(const CollisionObject* inCollisionObject);
  
    const rmt::Matrix& GetTransform(int objref);

    void SetPose(tPose* newPose) { mPose = newPose; };
    tPose* GetPose(void) {return mPose;};
    
    CollisionVolume* GetCollisionVolume()              { return mCollisionVolume; }
    
    void Moved(const rmt::Vector& dp);
    void Relocated();
    bool HasMoved()                              const { return mHasMoved; }
    bool HasRelocated()                          const { return mHasRelocated; }
    void SetHasMoved(bool in_val);
    void SetHasRelocated(bool in_val);
       
    void SetIsDynamic(bool b)                          { mIsDynamic = b; }
    bool IsDymamic()                             const { return mIsDynamic; }
    void Update();
    int  GetNumJoint()                           const { return mNumJoint; }

    rmt::Matrix* GetSceneGraphTransform(void)             { return mSceneGraphTransform; }
    void SetScenegraphTransform(rmt::Matrix* sgTransform) { mSceneGraphTransform = sgTransform; }
    
#ifdef TENTITY_USE_NAMES
    char mStringData[TENTITY_NAME_SIZE];
#endif
    tUID mStringDataUID;                   // public string/uid for the user
      
    class CollisionVolumeOwner
    {
    public:
        CollisionVolumeOwner() : mNumOwner(0), mOwnerList(NULL) {}
        ~CollisionVolumeOwner() { delete[] mOwnerList; }
        
        void SetNumOwnerList(int inNum)
        {
            delete[] mOwnerList;
            mVisible.Clear();
            mNumOwner = inNum;
            mOwnerList = new TArray<tUID>[mNumOwner];
            for (int i=0; i<mNumOwner; i++)
            {
                mVisible.NewElem() = true;
            }
        }
        CollisionVolumeOwner &operator= ( const CollisionVolumeOwner &inCollisionVolumeOwner );
        
        int mNumOwner;
        TArray<tUID>* mOwnerList;
        TArray<bool> mVisible;
    };
    
    class SelfCollision
    {
    public:
        SelfCollision()
            : mIndex1(0), mIndex2(0), mSelf1(0), mSelf2(0), 
            mCollisionVolume1(NULL), mCollisionVolume2(NULL)
        {
        }
        void Set(int inIndex1, int inIndex2, bool inSelf1, bool inSelf2)
        {
            mIndex1 = inIndex1;
            mIndex2 = inIndex2;
            mSelf1 = inSelf1;
            mSelf2 = inSelf2;
            P3DASSERT(mIndex1 != mIndex2);
        }
        
        ~SelfCollision() {}
        
        int mIndex1;
        int mIndex2;
        bool mSelf1;
        bool mSelf2;
        
        CollisionVolume* mCollisionVolume1;
        CollisionVolume* mCollisionVolume2;
    };
    
    void AddSelfCollision(int inIndex1, int inIndex2, bool inSelf1, bool inSelf2);
    
    TArray<SelfCollision>& GetSelfCollisionList() { return mSelfCollisionList; }
    
    virtual void SetVisibility(tCompositeDrawable* inCompositeDrawable);
    
    void SetDefaultArea(int inDefaultArea)       { mDefaultArea = inDefaultArea; }
    int GetDefaultArea()                   const { return mDefaultArea; }
    void SetIsStatic(bool inIsStatic);
    bool IsStatic()                        const { return mIsStatic; }
    void SetCollideWithStatic(bool inCollideWithStatic);
    bool CollideWithStatic()               const { return mCollideWithStatic; }
    
    protected:
        friend class SimulationLoader;
        friend class PSystGeomLoader;
        friend class CollisionObjectLoader;
        
        CollisionObject():
            mCollisionVolume(NULL),
            mNumJoint(0),
            mPose(NULL),
            mIsStatic(false),
            mCollideWithStatic(true),
            mDefaultArea(0),
            mHasMoved(true),
            mHasRelocated(true),
            mSceneGraphTransform(NULL)
        {}
        virtual ~CollisionObject();
        
        void SetCollisionVolume(CollisionVolume* inCollisionVolume);
        
        void SetNumJoint(int inNumJoint)                { mNumJoint = inNumJoint; }
        
        void SetSelfCollision(SelfCollision& inSelfColl);
        
        CollisionVolume*     mCollisionVolume;    // the collision volume hierarchy
        int                  mNumJoint;           // the number of joint
        tPose*               mPose;                 // for displaying hierarchical physics data structures
        
        TArray<SelfCollision> mSelfCollisionList;
        
        CollisionVolumeOwner mCollisionVolumeOwner;
        
        bool                 mIsStatic;           // true for static world object
        bool                 mCollideWithStatic;  // if false, object not static won't collide with static objects
        int                  mDefaultArea;        // can be use to direct object in specific area
        
    private:
        
        // an object is moved when using simstate->Settransform(newtransform, dt > 0)
        // a speed is extracted from the displacment.
        bool                 mHasMoved;           // indicate the object has moved
        
        // an object is relocated when using simstate->Settransform(newtransform)
        // NO speed is extracted from the displacment.
        bool                 mHasRelocated;       // indicated teh object has been relocated

        // World Matrix from the SceneGraph Tranform node
        rmt::Matrix*         mSceneGraphTransform;
        
        bool                 mIsDynamic; // hacked in to be able to give a different color in the viewer

        // the collision detector tries to estimated a number of frame within which two
        // moving object should not collide. If an object is relocated, this estimate is
        // reset.
        void UpdateVisibility(CollisionVolume* inVol, TArray<bool>& inVisible);
        
        CollisionObject& operator=(CollisionObject& inVolume) { P3DASSERT(false); return *this; }
        //CollisionObject(const CollisionObject& inCollisionObject) { P3DASSERT(false); }
};

//
//
//

class CollisionObjectDrawable
: public tDrawable
{
public:
    CollisionObjectDrawable(CollisionObject* inCollisonObject)
        : mCollisionObject(inCollisonObject) {}

    virtual void Display() {}

protected:
    virtual ~CollisionObjectDrawable() {}

    CollisionObject* mCollisionObject;

private:
    CollisionObjectDrawable& operator=(CollisionObjectDrawable& inVolume) { P3DASSERT(false); return *this; }
    CollisionObjectDrawable(const CollisionObjectDrawable& inCollisionObjectDrawable) { P3DASSERT(false); }
};

//
//
//

class CollisionObjectLoader
: public tSimpleChunkHandler
{
public:
    CollisionObjectLoader();
    ~CollisionObjectLoader() {}

    tEntity* LoadObject(tChunkFile* f, tEntityStore* store);
    CollisionVolume* LoadCollisionVolume(tChunkFile* f);
};

//
// the viewer only needs physics object as an indicator that the collision object is
// dynamic and need to be displayed using a different color.
//

class PhysicsObject
    : public tEntity
{
public:
    PhysicsObject() {}

protected:
    virtual ~PhysicsObject() {}

private:
    PhysicsObject& operator=(PhysicsObject& inPhysicsObject) { P3DASSERT(false); return *this; }
    PhysicsObject(const PhysicsObject& inPhysicsObject) { P3DASSERT(false); }
};


class PhysicsObjectLoader
: public tSimpleChunkHandler
{
public:
    PhysicsObjectLoader();
    ~PhysicsObjectLoader() {}

    tEntity* LoadObject(tChunkFile* f, tEntityStore* store);
};

} // sim

#endif // _CollisionObject_HPP_