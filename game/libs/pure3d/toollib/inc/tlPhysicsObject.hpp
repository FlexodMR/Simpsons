//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#ifndef _TLPHYSICSOBJECT_HPP_
#define _TLPHYSICSOBJECT_HPP_

#include "tlEntity.hpp"
#include "tlTypes.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

#include "simdata.hpp"

class tlCollisionObject;
class tlSkeleton;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlPhysicsObject
//*****************************************************************************
class tlPhysicsObject : public tlEntity
{
public:
    tlPhysicsObject();
    tlPhysicsObject(tlDataChunk *ch);
    ~tlPhysicsObject();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk *Chunk();

    virtual void LoadFromChunk16(tlDataChunk* ch) { assert(false); }
    virtual tlDataChunk* Chunk16() { assert(false); return NULL; }

    void SetPhysicsObject(tlSimDataHolder* inSimData, tlCollisionObject* inCollisionObject=NULL, tlSkeleton* inSkeleton=NULL);
    void ComputeInertiaFromCollisionVolume(tlCollisionObject* inCollisionObject);

    class Properties
    {
    public:
        Properties() : mVolume(0) { mInertiaMatrix.Init(); mInertiaMatrix.element[0][0] = mInertiaMatrix.element[1][1] = mInertiaMatrix.element[2][2] = 0; }
        float          mVolume;
        tlPoint        mCenterOfMass;
        tlMatrix       mInertiaMatrix;
    };

    class Joint
    {
    public:
        Joint() : mDOF(0), mStiffness(0), mMinAngle(0), mMaxAngle(0), mIsRoot(false) {}
        Properties     mProperties;
        int            mDOF;
        float          mStiffness;
        float          mMaxAngle;
        float          mMinAngle;
        bool           mIsRoot;
    };                

    tlSimNameData     mStringData;
    Properties        mProperties;

    void SetRestingSensitivity(float f) { mRestingSensitivity = f; }
                            
protected:           
    int               mNumJoints;   
    float             mRestingSensitivity;
    Joint*            mJoints;
    TArray<int>       mJointNotToUseList;


    void BuildJointNotToUseList(tlSimDataHolder* inSimData, tlSkeleton* inSkeleton);
    bool AreParented(tlSkeleton* skel, int parent, int child);

private:
    tlPhysicsObject(const tlPhysicsObject&) { assert(false); /* todos...*/ }
    tlPhysicsObject& operator=(const tlPhysicsObject&) { assert(false); /* todos...*/ }
};

//*****************************************************************************
// tlPhysicsObjectLoader
//*****************************************************************************
class tlPhysicsObjectLoader : public tlEntityLoader
{
public:
    tlPhysicsObjectLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _TLPHYSICSOBJECT_HPP_
