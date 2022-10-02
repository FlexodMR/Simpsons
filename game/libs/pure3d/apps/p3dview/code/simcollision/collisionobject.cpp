//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <simcollision/collisionobject.hpp>
#include <simcollision/collisionvolume.hpp>
#include <p3d/anim/compositedrawable.hpp>
#include <p3d/anim/pose.hpp>
#include <p3d/inventory.hpp>

// for the loader
#include <p3d/chunkfile.hpp>
#include <p3d/file.hpp>
#include <p3d/utility.hpp>
#include <constants/chunkids.hpp>
#include <string.h>

using namespace RadicalMathLibrary;

namespace sim
{

CollisionObject::CollisionObject(CollisionVolume* inCollisionVolume)
    : mCollisionVolume(NULL),
    mNumJoint(0),
    mPose(NULL),
    mIsStatic(false),
    mCollideWithStatic(true),
    mDefaultArea(0),
    mHasMoved(true),
    mHasRelocated(true),
    mSceneGraphTransform(NULL)
    //mPossibleCollisionEvents(cCollisionAnalyserPossibleEventAll)
{
    P3DASSERT(inCollisionVolume != NULL);
    
    SetCollisionVolume(inCollisionVolume);
}

CollisionObject::CollisionObject(const CollisionObject* inCollisionObject)
    : mCollisionVolume(NULL),
    mNumJoint(0),
    mPose(NULL),
    mIsStatic(false),
    mCollideWithStatic(true),
    mDefaultArea(0),
    mHasMoved(true),
    mHasRelocated(true),
    mSceneGraphTransform(NULL)
    //mPossibleCollisionEvents(cCollisionAnalyserPossibleEventAll)
{
    P3DASSERT(inCollisionObject != NULL);
    
    SetCollisionVolume(inCollisionObject->mCollisionVolume->Clone());
    mIsStatic = inCollisionObject->mIsStatic;
    mIsDynamic = inCollisionObject->mIsDynamic;
}

CollisionObject::~CollisionObject()
{
    if (mCollisionVolume)
        mCollisionVolume->Release();
    
    //if (mPhysicsProperties)
    //    mPhysicsProperties->Release();
}

void CollisionObject::SetIsStatic(bool inIsStatic)
{
    mIsStatic = inIsStatic; 
}

void CollisionObject::SetCollideWithStatic(bool inCollideWithStatic)
{
    mCollideWithStatic = inCollideWithStatic;
}

/*
void CollisionObject::SetPhysicsProperties(PhysicsProperties* inProperties)
{
    if (mPhysicsProperties)
        mPhysicsProperties->Release();
    
    mPhysicsProperties = inProperties;
    mPhysicsProperties->AddRef();
}
*/

void CollisionObject::SetCollisionVolume(CollisionVolume* inCollisionVolume)
{
    P3DASSERT(inCollisionVolume != NULL);
    
    if (mCollisionVolume)
        mCollisionVolume->Release();
    
    mCollisionVolume = inCollisionVolume;
    mCollisionVolume->AddRef();
    
    mCollisionVolume->SetCollisionObject(this);
    mHasMoved = true;
    
    for (int i=0; i<mSelfCollisionList.GetSize(); i++)
        SetSelfCollision(mSelfCollisionList[i]);
}

void CollisionObject::Moved(const rmt::Vector& dp)
{
    SetHasMoved(true);
    mHasMoved = true;
    mCollisionVolume->mPosition.Add(dp);
}

void CollisionObject::SetHasMoved(bool in_val)
{
    P3DASSERT(in_val == false || mIsStatic == false); 
    mHasMoved=in_val; 
    if (in_val)
        mCollisionVolume->mUpdated = false;
}

void CollisionObject::SetHasRelocated(bool in_val)
{
    mHasRelocated = in_val; 
    if (in_val) 
        mCollisionVolume->mUpdated = false; 
}

void CollisionObject::Relocated()
{
    mHasMoved = true;
    mHasRelocated = true;
    mCollisionVolume->mUpdated = false;
}

void CollisionObject::Update()
{
    if (mHasMoved || mHasRelocated)
    {
        mCollisionVolume->UpdateAll();
    }
}

void CollisionObject::SetVisibility(tCompositeDrawable* inCompositeDrawable)
{
    if (mCollisionVolumeOwner.mNumOwner > 0)
    {
        bool needUpdate = false;
        for (int i=0; i<mCollisionVolumeOwner.mNumOwner; i++)
        {
            bool ownerVis = false;
            for (int j=0; j<mCollisionVolumeOwner.mOwnerList[i].GetSize(); j++)
            {
                if (inCompositeDrawable->FindNode(mCollisionVolumeOwner.mOwnerList[i][j])->IsVisible())
                    ownerVis = true;
            }
            if (ownerVis != mCollisionVolumeOwner.mVisible[i])
            {
                mCollisionVolumeOwner.mVisible[i] = ownerVis;
                needUpdate = true;
            }
        }
        if (needUpdate)
        {
            UpdateVisibility(mCollisionVolume, mCollisionVolumeOwner.mVisible);
        }
    }
}

void CollisionObject::UpdateVisibility(CollisionVolume* inVol, TArray<bool>& inVisible)
{
    inVol->mVisible = inVisible[inVol->mOwnerIndex];
    if (inVol->HasSubVolume())
    {
        for (int i=0; i<inVol->SubVolumeList()->GetSize(); i++)
        {
            UpdateVisibility(inVol->SubVolumeList()->GetAt(i), inVisible);
        }
    }
}

void CollisionObject::AddSelfCollision(int inIndex1, int inIndex2, bool inSelf1, bool inSelf2)
{
    SelfCollision& sc = mSelfCollisionList.NewElem();
    sc.Set(inIndex1, inIndex2, inSelf1, inSelf2);
    if (mCollisionVolume)
    {
        SetSelfCollision(sc);
    }
}

void CollisionObject::SetSelfCollision(SelfCollision& inSelfColl)
{
    inSelfColl.mCollisionVolume1 = mCollisionVolume->GetSubCollisionVolume(inSelfColl.mIndex1, inSelfColl.mSelf1);
    inSelfColl.mCollisionVolume2 = mCollisionVolume->GetSubCollisionVolume(inSelfColl.mIndex2, inSelfColl.mSelf2);
    P3DASSERT(inSelfColl.mCollisionVolume1 && inSelfColl.mCollisionVolume2);
}



//
//
//

CollisionObject::CollisionVolumeOwner &CollisionObject::CollisionVolumeOwner::operator= ( const CollisionObject::CollisionVolumeOwner &inCollisionVolumeOwner )
{
    mNumOwner = inCollisionVolumeOwner.mNumOwner;
    if (mNumOwner > 0)
    {
        mOwnerList = new TArray<tUID>[mNumOwner];
        
        for (int i=0; i<mNumOwner; i++)
        {
            mOwnerList[i] = inCollisionVolumeOwner.mOwnerList[i];
        }
        mVisible = inCollisionVolumeOwner.mVisible;
    }
    return *this;
}


const rmt::Matrix& CollisionObject::GetTransform(int objref)
{
    return mPose->GetJoint(objref)->worldMatrix;
}

//
// CollisionObjectLoader class
//

static const int COLLISIONOBJECT_VERSION = 1;

void LoadVectorFromCollisionVectorChunk(tChunkFile* file, Vector& v)
{
    file->BeginChunk();
    v.x = file->GetFloat();
    v.y = file->GetFloat();
    v.z = file->GetFloat();
    file->EndChunk();
}


CollisionObjectLoader::CollisionObjectLoader()
    : tSimpleChunkHandler(Simulation::Collision::OBJECT)
{
}

tEntity* CollisionObjectLoader::LoadObject(tChunkFile* f, tEntityStore* store)
{ 
    char name[255], stringData[255];
    f->GetPString(name);

    CollisionObject* newCollisionObject = new CollisionObject;
    newCollisionObject->SetName(name);
    
    int version = f->GetLong();
    P3DASSERT(version == COLLISIONOBJECT_VERSION);
    
    f->GetPString(stringData);
    
#ifdef TENTITY_USE_NAMES
    strncpy(newCollisionObject->mStringData, stringData, TENTITY_NAME_SIZE);
#endif
    newCollisionObject->mStringDataUID = tEntity::MakeUID(stringData);
    
    int nbSubObject = f->GetLong();
    newCollisionObject->SetNumJoint(nbSubObject);

    if (nbSubObject == 0) // can't find the pose for animated ones...
    {
        tDrawable* drawable = p3d::find<tDrawable>(name);
    
        if (!drawable) // create one so that the collision volume can be displayed... ;-)
        {
            CollisionObjectDrawable* collDrawable = new CollisionObjectDrawable(newCollisionObject);
            collDrawable->SetName(name);
            store->Store(collDrawable);
        }
    }
    
    
    int currentOwner = 0;
    int numOwner = f->GetLong();
    if (numOwner > 0)
        newCollisionObject->mCollisionVolumeOwner.SetNumOwnerList(numOwner);
    
    while(f->ChunksRemaining())
    {      
        f->BeginChunk();
        switch(f->GetCurrentID())
        {
        case Simulation::Collision::OWNER:
            {
                int numNames = f->GetLong();
                if (numNames > 0)
                {
                    while(f->ChunksRemaining())
                    {
                        f->BeginChunk();
                        switch(f->GetCurrentID())
                        {
                        case Simulation::Collision::OWNERNAME:
                            {
                                char newName[256];
                                f->GetPString(newName);
                                newCollisionObject->mCollisionVolumeOwner.mOwnerList[currentOwner].NewElem() = tEntity::MakeUID(newName);
                                break;
                            }
                        default:
                            P3DASSERT(false); // should not get here
                            break;
                        }
                        f->EndChunk();
                    }
                    P3DASSERT(newCollisionObject->mCollisionVolumeOwner.mOwnerList[currentOwner].GetSize() == numNames);
                }
                currentOwner++;
                break;
            }
        case Simulation::Collision::SELFCOLLISION:
            {
                int index1 = f->GetLong();
                int index2 = f->GetLong();
                bool self1  = f->GetUWord() == 0 ? false : true;
                bool self2  = f->GetUWord() == 0 ? false : true;
                newCollisionObject->AddSelfCollision(index1, index2, self1, self2);
                break;
            }
        case Simulation::Collision::VOLUME:
            {
                CollisionVolume* collisionVolume = LoadCollisionVolume(f);
                P3DASSERT(collisionVolume);
                newCollisionObject->SetCollisionVolume(collisionVolume);
                break;
            }
        case Simulation::Collision::ATTRIBUTE:
            {
                newCollisionObject->mIsStatic = f->GetUWord() == 0 ? false : true;
                newCollisionObject->mDefaultArea = f->GetLong();
                bool canRoll = f->GetUWord() == 0 ? false : true;
                bool canSlide = f->GetUWord() == 0 ? false : true;
                bool canSpin = f->GetUWord() == 0 ? false : true;
                bool canBounce = f->GetUWord() == 0 ? false : true;
                unsigned int extraAttribute1 = f->GetLong();
                unsigned int extraAttribute2 = f->GetLong();
                unsigned int extraAttribute3 = f->GetLong();
                
                /*
                CollisionAnalyserPossibleEvent possibleEvent = cCollisionAnalyserPossibleEventAll;
                if (!canRoll)
                    possibleEvent -= cCollisionAnalyserPossibleEventRolling;
                if (!canSlide)
                    possibleEvent -= cCollisionAnalyserPossibleEventSliding;
                if (!canSpin)
                    possibleEvent -= cCollisionAnalyserPossibleEventSpinning;
                if (!canBounce)
                    possibleEvent -= cCollisionAnalyserPossibleEventBouncing;
                
                newCollisionObject->SetPossibleCollisionEvents(possibleEvent);
                */
                
                break;
            }
        }
        f->EndChunk();
    }
    P3DASSERT(newCollisionObject->GetCollisionVolume() != NULL);
    P3DASSERT(currentOwner == numOwner);
    
    return newCollisionObject;
}

CollisionVolume* CollisionObjectLoader::LoadCollisionVolume(tChunkFile* file)
{
    int objrefIndex   = file->GetLong();
    int ownerIndex    = file->GetLong();
    int numSubVolume  = file->GetLong();
    
    CollisionVolume* newCollisionVolume = NULL;
    
    file->BeginChunk();
    switch(file->GetCurrentID())
    {
    case Simulation::Collision::SPHERE:
        {
            float radius = file->GetFloat();
            Vector p;
            LoadVectorFromCollisionVectorChunk(file, p);
            newCollisionVolume = (CollisionVolume*) new SphereVolume(p, radius);
            break;
        }
    case Simulation::Collision::CYLINDER:
        {
            float radius = file->GetFloat();
            float length = file->GetFloat();
            bool flatEnd = file->GetUWord() == 0 ? false : true;
            Vector p, o;
            LoadVectorFromCollisionVectorChunk(file, p);
            LoadVectorFromCollisionVectorChunk(file, o);
            newCollisionVolume = (CollisionVolume*) new CylinderVolume(p, o, length, radius, flatEnd);
            break;
        }
    case Simulation::Collision::OBBOX:
        {
            float l0 = file->GetFloat();
            float l1 = file->GetFloat();
            float l2 = file->GetFloat();
            Vector p, o0, o1, o2;
            LoadVectorFromCollisionVectorChunk(file, p);
            LoadVectorFromCollisionVectorChunk(file, o0);
            LoadVectorFromCollisionVectorChunk(file, o1);
            LoadVectorFromCollisionVectorChunk(file, o2);
            newCollisionVolume = (CollisionVolume*) new OBBoxVolume(p, o0, o1, o2, l0, l1, l2);
            break;
        }
    case Simulation::Collision::WALL:
        {
            Vector p, n;
            LoadVectorFromCollisionVectorChunk(file, p);
            LoadVectorFromCollisionVectorChunk(file, n);
            newCollisionVolume = (CollisionVolume*) new WallVolume(p, n);
            break;
        }
    case Simulation::Collision::BBOX:
        {
            newCollisionVolume = (CollisionVolume*) new BBoxVolume();
            int dum = file->GetLong();
            break;
        }
        
    default:
        P3DASSERT(false);
        break;
    }
    file->EndChunk();
    
    newCollisionVolume->SetObjRefIndex(objrefIndex);
    newCollisionVolume->SetOwnerIndex(ownerIndex);
    
    for( int i=0; i<numSubVolume; i++)
    {
        file->BeginChunk();
        CollisionVolume* newSubCollisionVolume = LoadCollisionVolume(file);
        file->EndChunk();
        newCollisionVolume->AddSubVolume(newSubCollisionVolume);
    }
    P3DASSERT(newCollisionVolume);
    
    if (numSubVolume)
    {
        P3DASSERT(newCollisionVolume->SubVolumeList()->GetSize() == numSubVolume);
    }
    return newCollisionVolume;
}

//
//
//

PhysicsObjectLoader::PhysicsObjectLoader()
    : tSimpleChunkHandler(Simulation::Physics::OBJECT)
{
}

tEntity* PhysicsObjectLoader::LoadObject(tChunkFile* f, tEntityStore* store)
{ 
    char name[255];
    PhysicsObject* newPhysicsObject = new PhysicsObject;
    
    f->GetPString(name);
    newPhysicsObject->SetName(name);

    return newPhysicsObject;
}

} // sim

