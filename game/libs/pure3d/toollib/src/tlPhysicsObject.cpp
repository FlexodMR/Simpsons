//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#include "tlPhysicsObject.hpp"
#include "tlPhysicsObjectChunk.hpp"
#include "tlCollisionObject.hpp"
#include "tlSkeleton.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"

#include "chunkids.hpp"

const int PHYSICSOBJECT_VERSION = 1;


void ComputeICM(tlCollisionVolume* inCollisionVolume, tlPhysicsObject::Properties& inProperties, int index=0)
{
    float density = 1.0f;

    // first need to find the cm
    inProperties.mVolume = inCollisionVolume->Volume(index);
    if (inProperties.mVolume > 0)
    {
        inProperties.mCenterOfMass = inCollisionVolume->VR(index) / inProperties.mVolume;
        inProperties.mInertiaMatrix = inCollisionVolume->Inertia(index, inProperties.mCenterOfMass);
        ScaleMat(inProperties.mInertiaMatrix, inProperties.mVolume*density);
    }
}

void LoadFromPhysicsVectorChunk(tlPoint& p, tlPhysicsVectorChunk* c)
{
    assert(c);
    p.x = c->X();
    p.y = c->Y();
    p.z = c->Z();
}

tlPhysicsVectorChunk* NewPhysicsVectorChunk(tlPoint& p)
{
    tlPhysicsVectorChunk* v = new tlPhysicsVectorChunk;
    v->SetX(p.x);
    v->SetY(p.y);
    v->SetZ(p.z);
    return v;
}

void LoadFromPhysicsInertiaMatrixChunk(tlMatrix& m, tlPhysicsInertiaMatrixChunk* v)
{
    assert(v);
    m[0][0] = v->GetXX();
    m[0][1] = v->GetXY();
    m[0][2] = v->GetXZ();
    m[1][1] = v->GetYY();
    m[1][2] = v->GetYZ();
    m[2][2] = v->GetZZ();
    m[1][0] = m[0][1];
    m[2][0] = m[0][2];
    m[2][1] = m[1][2];
}

tlPhysicsInertiaMatrixChunk* NewPhysicsInertiaMatrixChunk(tlMatrix& m)
{
    tlPhysicsInertiaMatrixChunk* v = new tlPhysicsInertiaMatrixChunk;
    v->SetXX(m[0][0]);
    v->SetXY(m[0][1]);
    v->SetXZ(m[0][2]);
    v->SetYY(m[1][1]);
    v->SetYZ(m[1][2]);
    v->SetZZ(m[2][2]);
    return v;
}


//*****************************************************************************
// tlPhysicsObject
//*****************************************************************************
tlPhysicsObject::tlPhysicsObject()
: mNumJoints(0),
  mRestingSensitivity(1.0f),
  mJoints(NULL)
{
    mStringData.SetName("NoData");
}

tlPhysicsObject::tlPhysicsObject(tlDataChunk *ch)
: mNumJoints(0),
  mRestingSensitivity(1.0f),
  mJoints(NULL)
{
    LoadFromChunk(ch);
}

tlPhysicsObject::~tlPhysicsObject()
{
    delete[] mJoints;
}

void tlPhysicsObject::LoadFromChunk(tlDataChunk* ch)
{
    // in case LoadFromChunk is called many times in teh same tlPhysicsObject
    delete[] mJoints;
    mJoints = NULL;

    tlPhysicsObjectChunk* objectChunk = dynamic_cast<tlPhysicsObjectChunk*>(ch);
    assert(objectChunk);

    SetName(objectChunk->GetName());
    assert(objectChunk->GetVersion() == PHYSICSOBJECT_VERSION);
    mStringData.SetName(objectChunk->GetStringData());
    mNumJoints = objectChunk->GetNumJoints();
    mProperties.mVolume = objectChunk->GetVolume();
    mRestingSensitivity = objectChunk->GetRestingSensitivity();

    if (mNumJoints > 0)
        mJoints = new Joint[mNumJoints];

    for (int i=0;i<objectChunk->SubChunkCount();i++)
    {
        tlDataChunk* subch = objectChunk->GetSubChunk(i);
        switch( subch->ID() )
        {
        case Simulation::Physics::VECTOR:
        {
            LoadFromPhysicsVectorChunk(mProperties.mCenterOfMass, dynamic_cast<tlPhysicsVectorChunk*>(subch));
            break;
        }
        case Simulation::Physics::IMAT:
        {
            LoadFromPhysicsInertiaMatrixChunk(mProperties.mInertiaMatrix, dynamic_cast<tlPhysicsInertiaMatrixChunk*>(subch));
            break;
        }
        case Simulation::Physics::JOINT:
        {
            tlPhysicsJointChunk* jointChunk = dynamic_cast<tlPhysicsJointChunk*>(subch);
            assert(jointChunk);
            int index = jointChunk->GetIndex();
            mJoints[index].mProperties.mVolume = jointChunk->GetVolume();

            if (mJoints[index].mProperties.mVolume == 0)
                mJoints[index].mIsRoot = true;

            mJoints[index].mStiffness = jointChunk->GetStiffness();
            mJoints[index].mMaxAngle  = jointChunk->GetMaxAngle();
            mJoints[index].mMinAngle  = jointChunk->GetMinAngle();
            mJoints[index].mDOF       = jointChunk->GetDOF();

            for (int j=0;j<subch->SubChunkCount();j++)
            {
                tlDataChunk* subsubch = subch->GetSubChunk(j);
                switch( subsubch->ID() )
                {
                case Simulation::Physics::VECTOR:
                    LoadFromPhysicsVectorChunk(mJoints[index].mProperties.mCenterOfMass, dynamic_cast<tlPhysicsVectorChunk*>(subsubch));
                    break;
                case Simulation::Physics::IMAT:
                    LoadFromPhysicsInertiaMatrixChunk(mJoints[index].mProperties.mInertiaMatrix, dynamic_cast<tlPhysicsInertiaMatrixChunk*>(subsubch));
                    break;
                }
            }
            break;
        }
        default:
            break;
        }
    }
}

tlDataChunk *tlPhysicsObject::Chunk()
{
    if (mProperties.mVolume > 0)
    {
        tlPhysicsObjectChunk* objectChunk = new tlPhysicsObjectChunk;
        objectChunk->SetName(GetName());
        objectChunk->SetVersion(PHYSICSOBJECT_VERSION);
        objectChunk->SetStringData(mStringData.GetName());
        objectChunk->SetNumJoints(mNumJoints);
        objectChunk->SetVolume(mProperties.mVolume);
        objectChunk->SetRestingSensitivity(mRestingSensitivity);

        if (mJoints)
        {
            for (int i=0; i<mNumJoints; i++)
            {
                if (mJoints[i].mProperties.mVolume > 0 || mJoints[i].mIsRoot)
                {
                    tlPhysicsJointChunk* jointChunk = new tlPhysicsJointChunk;
                    jointChunk->SetIndex(i);
                    jointChunk->SetVolume(mJoints[i].mProperties.mVolume);
                    jointChunk->SetStiffness(mJoints[i].mStiffness);
                    jointChunk->SetMinAngle(mJoints[i].mMinAngle);
                    jointChunk->SetMaxAngle(mJoints[i].mMaxAngle);
                    jointChunk->SetDOF(mJoints[i].mDOF);
                    jointChunk->AppendSubChunk(NewPhysicsVectorChunk(mJoints[i].mProperties.mCenterOfMass));
                    jointChunk->AppendSubChunk(NewPhysicsInertiaMatrixChunk(mJoints[i].mProperties.mInertiaMatrix));
                    objectChunk->AppendSubChunk(jointChunk);
                }
            }
        }
        else
        {
            objectChunk->AppendSubChunk(NewPhysicsVectorChunk(mProperties.mCenterOfMass));
            objectChunk->AppendSubChunk(NewPhysicsInertiaMatrixChunk(mProperties.mInertiaMatrix));
        }
        return objectChunk;
    }
    else
    {
        return NULL;
    }
}

void tlPhysicsObject::SetPhysicsObject(tlSimDataHolder* inSimData, tlCollisionObject* inCollisionObject, tlSkeleton* inSkeleton)
{
    assert(inSimData || inCollisionObject);

    if (inSimData)
    {
        SetName(inSimData->GetName());
        mStringData.SetName(inSimData->mStringData.GetName());
        mRestingSensitivity = inSimData->mRigidBodyData.mRestingSensitivity;
    }
    else
    {
        SetName(inCollisionObject->GetName());
        mStringData.SetName(inCollisionObject->mStringData.GetName());
    }

    int numSimJoint = 0;

    if (inCollisionObject)
        mNumJoints = inCollisionObject->GetNumSubObject();

    if (mNumJoints > 0)
    {
        mJoints = new Joint[mNumJoints];

        if (inSimData)
        {
            for (int i=0; i<mNumJoints; i++)
            {
                tlPhysicsJointData* data = inSimData->PhysicsJointData(i);
                if (data)
                {
                    mJoints[i].mDOF =       data->mDOF;
                    mJoints[i].mStiffness = data->mStiff;
                    mJoints[i].mMaxAngle =  data->mMaxAngle;
                    mJoints[i].mMinAngle =  data->mMinAngle;
                    numSimJoint ++;
                }
            }

            //assert(numSimJoint > 0); it's ok, object behaves as an articulated rigid body

            //if (mJoints[0].mDOF > 0)
            //{
            //   printf("\nThe First joint in physics object must have DOF=0\n");
            //   printf("\nIt will be modified\n");
            //}
        }
    }

    if (inSkeleton && inSimData)
        BuildJointNotToUseList(inSimData, inSkeleton);

    if (inCollisionObject)
    {
        assert(inSimData == NULL || !inSimData->mRigidBodyData.mAllSet); // conflict...
        ComputeInertiaFromCollisionVolume(inCollisionObject);

        // Make sure there is only one root in the sim joints.
        // If there is more than one root, we'll have to export an additional joint
        if (mNumJoints > 0)
        {
            int parentIndex = -1;
            for (int i=0; i<mNumJoints; i++)
            {
                if (mJoints[i].mProperties.mVolume > 0)
                {
                    if (parentIndex == -1)
                        parentIndex = i;
                    else
                    {
                        assert(i > parentIndex);

                        while (!AreParented(inSkeleton, parentIndex, i))
                        {
                            assert (parentIndex > 0);
                            parentIndex = inSkeleton->GetJoint(parentIndex)->GetParent();
                        }
                    }
                }
            }
            if (mJoints[parentIndex].mProperties.mVolume == 0)
            {
                mJoints[parentIndex].mIsRoot = true;
            }
        }
    }
    else
    {
        assert(mNumJoints == 0 && inSimData->mRigidBodyData.mAllSet);
    }
}

void tlPhysicsObject::ComputeInertiaFromCollisionVolume(tlCollisionObject* inCollisionObject) // will also compute rcm
{
    assert(inCollisionObject && inCollisionObject->GetCollisionVolume());

    if (mNumJoints == 0)
    {
        ComputeICM( inCollisionObject->GetCollisionVolume(), mProperties, 0);
        // simpleInertia case?!?
    // 02 May 2002 - Disabled for Exporter release v16.15.
    // Please see Bryan Ewert to discuss alternatives.
    // 13 Jun 2002 - Re-enabled in Exporter release v18.0.
        assert(mProperties.mVolume > 0);
    }
    else
    {
        mProperties.mVolume = 0;
        for (int i=0; i<mNumJoints; i++)
        {
            if (!mJointNotToUseList.Contains(i))
            {
                ComputeICM(inCollisionObject->GetCollisionVolume(), mJoints[i].mProperties, i);
                mProperties.mVolume += mJoints[i].mProperties.mVolume;
            }
        }
    }
}

void tlPhysicsObject::BuildJointNotToUseList(tlSimDataHolder* inSimData, tlSkeleton* inSkeleton)
{
    // look in the simdata and identify joints reserved for the flexible joints
    for (int i=0; i<inSimData->mFlexibleJointData.GetSize(); i++)
    {
        tlFlexibleJointData* jdata = &inSimData->mFlexibleJointData[i];
        for (int j=0; j<jdata->mBranchList.GetSize(); j++)
        {
            int branch = jdata->mBranchList[j];
            mJointNotToUseList.Add(branch);

            for (int k=branch+1; k<mNumJoints; k++)
            {
                if (AreParented(inSkeleton, branch, k))
                {
                    mJointNotToUseList.Add(k);
                }
            }
        }
    }
}

bool tlPhysicsObject::AreParented(tlSkeleton* skel, int parent, int child)
{
    if (parent == child) // trivial case
        return true;

    bool ret = false;

    int testParent = child;
    while (testParent > parent)
    {
        testParent = skel->GetJoint(testParent)->GetParent();
        if (testParent == parent)
        {
            ret = true;
            break;
        }
    }

    return ret;
}

//*****************************************************************************
// tlPhysicsObjectLoader
//*****************************************************************************
tlPhysicsObjectLoader::tlPhysicsObjectLoader() :
    tlEntityLoader(Simulation::Physics::OBJECT)
{
}

tlEntity*
tlPhysicsObjectLoader::Load(tlDataChunk* chunk)
{
    return new tlPhysicsObject(chunk);
}
