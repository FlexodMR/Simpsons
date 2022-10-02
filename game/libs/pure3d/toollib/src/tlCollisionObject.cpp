//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include "tlCollisionObject.hpp"
#include "tlCollisionObjectChunk.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlSkin.hpp"
#include "tlSkinVertex.hpp"
#include "tlSkeleton.hpp"
#include "tlVertex.hpp"

#include "tlString.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <memory.h>

#include "chunkids.hpp"

const int COLLISIONOBJECT_VERSION = 1;

//*****************************************************************************
// misc functions
//*****************************************************************************
void ScaleMat(tlMatrix& m, float f)
{
    for (int i=0; i<4; i++)
        for (int j=0; j<4; j++)
            m.element[i][j] *= f;
}

float VecNormalize(tlPoint& p)
{
    float l = p.Length();
    if (l>0.0f) p /= l;
    return l;
}

void LoadFromCollisionVectorChunk(tlPoint& p, tlCollisionVectorChunk* c)
{
    assert(c);
    p.x = c->X();
    p.y = c->Y();
    p.z = c->Z();
}

tlCollisionVectorChunk* NewCollisionVectorChunk(tlPoint& p)
{
    tlCollisionVectorChunk* v = new tlCollisionVectorChunk;
    v->SetX(p.x);
    v->SetY(p.y);
    v->SetZ(p.z);
    return v;
}

#ifndef PI
#define PI 3.141593f
#endif

#define VERY_SMALL   0.000000000001f
#define VERY_LARGE   100000000000.0f
#define RELA_SMALL   (VERY_SMALL * 1000.0f)
#define RELA_LARGE   (VERY_LARGE / 1000.0f)


//*****************************************************************************
// tlSelfCollision
//*****************************************************************************
tlSelfCollision* tlSelfCollision::LoadFromChunk(tlDataChunk* ch)
{
    tlSelfCollisionChunk* cch = dynamic_cast<tlSelfCollisionChunk*>(ch);
    assert(cch);

    int ind1 = cch->GetJointIndex1();
    int ind2 = cch->GetJointIndex2();
    bool self1 = ShortToBool(cch->GetSelfOnly1());
    bool self2 = ShortToBool(cch->GetSelfOnly2());
    tlSelfCollision* coll = new tlSelfCollision(ind1, ind2, self1, self2);
    return coll;
}

//*****************************************************************************
// tlCollisionVolumeOwnder
//*****************************************************************************
tlCollisionVolumeOwner* tlCollisionVolumeOwner::LoadFromChunk(tlDataChunk* ch)
{
    tlCollisionVolumeOwnerChunk* cch = dynamic_cast<tlCollisionVolumeOwnerChunk*>(ch);
    assert(cch);
    int numNames = cch->GetNumNames();

    tlCollisionVolumeOwner* owner = new tlCollisionVolumeOwner();

    for (int i=0;i<cch->SubChunkCount();i++)
    {
        assert(cch->GetSubChunk(i)->ID() == Simulation::Collision::OWNERNAME);
        owner->AddName(static_cast<tlCollisionVolumeOwnerNameChunk*>(cch->GetSubChunk(i))->GetName());
    }
    assert(numNames == owner->mNames.GetSize());
    return owner;
}

//*****************************************************************************
// tlCollisionObject
//*****************************************************************************
float tlCollisionObject::sCollElRatio = 1.0f;
float tlCollisionObject::sMinWeight = 0.5f;
int tlCollisionObject::sHierarchyDepth = 1;

tlCollisionObject::tlCollisionObject()
: mNumSubObject(0),
  mCollisionVolume(NULL),
  mStatic(false),
  mDefaultArea(0),
  mCanRoll(true),
  mCanSlide(true),
  mCanSpin(true),
  mCanBounce(true),
  mJointCollisionVolume(NULL)
{
    mStringData.SetName("NoData");
}

tlCollisionObject::tlCollisionObject(tlDataChunk *ch)
: mNumSubObject(0),
  mCollisionVolume(NULL),
  mJointCollisionVolume(NULL)
{
    LoadFromChunk(ch);
}

tlCollisionObject::~tlCollisionObject()
{
    int i;
    for(i=0;i<mOwnerList.GetSize();i++)
        delete mOwnerList[i];
    mOwnerList.RemoveAll();

    for(i=0;i<mSelfCollisionList.GetSize();i++)
        delete mSelfCollisionList[i];
    mSelfCollisionList.RemoveAll();

    delete mCollisionVolume;
}

void tlCollisionObject::LoadFromChunk(tlDataChunk* ch)
{
    tlCollisionObjectChunk* objectChunk = dynamic_cast<tlCollisionObjectChunk*>(ch);
    assert(objectChunk);

    SetName(objectChunk->GetName());
    assert(objectChunk->GetVersion() == COLLISIONOBJECT_VERSION);
    mStringData.SetName(objectChunk->GetStringData());
    SetNumSubObject(objectChunk->GetNumSubObject());
    int numOwner = objectChunk->GetNumOwner();

    for (int i=0;i<objectChunk->SubChunkCount();i++)
    {
        tlDataChunk* subch = objectChunk->GetSubChunk(i);
        switch( subch->ID() )
        {
        case Simulation::Collision::OWNER:
            mOwnerList.Add(tlCollisionVolumeOwner::LoadFromChunk(subch));
            break;
        case Simulation::Collision::SELFCOLLISION:
            mSelfCollisionList.Add(tlSelfCollision::LoadFromChunk(subch));
            break;
        case Simulation::Collision::VOLUME:
            mCollisionVolume = tlCollisionVolume::LoadFromChunk(subch);
            break;
        case Simulation::Collision::ATTRIBUTE:
            {
                tlCollisionObjectAttributeChunk* cch = dynamic_cast<tlCollisionObjectAttributeChunk*>(subch);
                assert(cch);
                SetStaticAttribute(ShortToBool(cch->GetStaticAttribute()));
                SetDefaultArea(cch->GetDefaultArea());
                SetCanSpin(ShortToBool(cch->GetCanSpin()));
                SetCanRoll(ShortToBool(cch->GetCanRoll()));
                SetCanSlide(ShortToBool(cch->GetCanSlide()));
                SetCanBounce(ShortToBool(cch->GetCanBounce()));
                unsigned int extraAttribute1 = cch->GetExtraAttribute1();
                unsigned int extraAttribute2 = cch->GetExtraAttribute2();
                unsigned int extraAttribute3 = cch->GetExtraAttribute3();
            }
            break;
        default:
            break;
        }
    }
    assert(numOwner == mOwnerList.GetSize());
}

tlDataChunk* tlCollisionObject::Chunk()
{
    assert(mCollisionVolume);

    tlCollisionObjectChunk* objectChunk = new tlCollisionObjectChunk;

    objectChunk->SetName(GetName());
    objectChunk->SetVersion(COLLISIONOBJECT_VERSION);
    objectChunk->SetStringData(mStringData.GetName());
    objectChunk->SetNumSubObject(mNumSubObject);
    objectChunk->SetNumOwner(mOwnerList.GetSize());

    int i;
    for (i=0; i<mOwnerList.GetSize(); i++)
    {
        tlCollisionVolumeOwnerChunk* cvo = new tlCollisionVolumeOwnerChunk;
        cvo->SetNumNames(mOwnerList[i]->mNames.GetSize());

        for (int j=0; j<mOwnerList[i]->mNames.GetSize(); j++)
        {
            tlCollisionVolumeOwnerNameChunk* name = new tlCollisionVolumeOwnerNameChunk;
            name->SetName(mOwnerList[i]->mNames[j]);
            cvo->AppendSubChunk(name);
        }
        objectChunk->AppendSubChunk(cvo);
    }

    for (i=0; i<mSelfCollisionList.GetSize(); i++)
    {
        tlSelfCollisionChunk* scc = new tlSelfCollisionChunk;
        scc->SetJointIndex1(mSelfCollisionList[i]->mJointIndex1);
        scc->SetJointIndex2(mSelfCollisionList[i]->mJointIndex2);
        scc->SetSelfOnly1(mSelfCollisionList[i]->mSelfOnly1);
        scc->SetSelfOnly2(mSelfCollisionList[i]->mSelfOnly2);
        objectChunk->AppendSubChunk(scc);
    }
    objectChunk->AppendSubChunk(mCollisionVolume->Chunk());


    tlCollisionObjectAttributeChunk* coa = new tlCollisionObjectAttributeChunk;
    coa->SetDefaultArea(GetDefaultArea());
    coa->SetStaticAttribute(GetStaticAttribute());
    coa->SetCanSpin(GetCanSpin());
    coa->SetCanRoll(GetCanRoll());
    coa->SetCanSlide(GetCanSlide());
    coa->SetCanBounce(GetCanBounce());
    unsigned int extraAttribute1 = 0; coa->SetExtraAttribute1(extraAttribute1);
    unsigned int extraAttribute2 = 0; coa->SetExtraAttribute2(extraAttribute2);
    unsigned int extraAttribute3 = 0; coa->SetExtraAttribute3(extraAttribute3);
    objectChunk->AppendSubChunk(coa);

    return objectChunk;
}

void tlCollisionObject::AddOwnerName(int inOwner, const char* inName)
{
    assert(inOwner < mOwnerList.GetSize());
    mOwnerList[inOwner]->AddName(inName);
}

TList<tlCollisionVolumeOwner*>& tlCollisionObject::GetOwnerList()
{
    return mOwnerList;
}

void tlCollisionObject::SetNumOwner(int inNumOwner)
{
    assert (mOwnerList.GetSize() == 0);

    for (int i=0; i<inNumOwner; i++)
    {
        tlCollisionVolumeOwner* newowner = new tlCollisionVolumeOwner;
        mOwnerList.Add(newowner);
    }
}

int tlCollisionObject::GetOwnerIndex(const char* meshName) const
{
    for(int i=0; i<mOwnerList.GetSize(); i++)
    {
        for(int j=0; j<mOwnerList[i]->mNames.GetSize(); j++)
        {
            const char* ownerName = mOwnerList[i]->mNames[j];

            if(strcmp(meshName, ownerName) == 0)
            {
                return(i);
            }
        }
    }

    return(-1);
}

void tlCollisionObject::SubCleanUnusedOwners(tlCollisionVolume* inVolume, int* list)
{
    // 02 May 2002 - Disabled for Exporter release v16.15, and replaced by if() wrapper.
    // Please see Bryan Ewert to discuss alternatives.
    // 13 Jun 2002 - Re-enabled in Exporter release v18.0.
    assert(inVolume->mOwnerIndex >= 0);
    if ( inVolume->mOwnerIndex >= 0 )
    {
        list[inVolume->mOwnerIndex]++;
    }

    for (int i=0; i<inVolume->SubVolume().GetSize(); i++)
        SubCleanUnusedOwners(inVolume->SubVolume()[i], list);
}

void tlCollisionObject::SubCleanUnusedOwners2(tlCollisionVolume* inVolume, int* list)
{
    inVolume->mOwnerIndex = list[inVolume->mOwnerIndex];
    assert(inVolume->mOwnerIndex >= 0);
    for (int i=0; i<inVolume->SubVolume().GetSize(); i++)
        SubCleanUnusedOwners2(inVolume->SubVolume()[i], list);
}

void tlCollisionObject::CleanUnusedOwners()
{
    if (mOwnerList.GetSize() > 0 && mCollisionVolume)
    {
        int *list = new int[mOwnerList.GetSize()];
        memset(list, 0, sizeof(int)*mOwnerList.GetSize());

        SubCleanUnusedOwners(mCollisionVolume, list);
        // now list[i] contains the amount of volume referring to owner i

        TList<tlCollisionVolumeOwner*> newOwnerList;

        int i;
        for (i=0; i<mOwnerList.GetSize(); i++)
        {
            if (list[i] > 0)
            {
                newOwnerList.Add(mOwnerList[i]); // transform the owner names in the new list
                mOwnerList.SetAt(i, NULL);
                list[i] = newOwnerList.GetSize() - 1; // re-use the list to store to new owner index
            }
            else
                list[i] = -1; // re-use the list to store to new owner index
        }
        SubCleanUnusedOwners2(mCollisionVolume, list);

        for (i=0; i<mOwnerList.GetSize(); i++)
        {
            if (mOwnerList[i])
                delete mOwnerList[i];
        }
        mOwnerList = newOwnerList;
        newOwnerList.RemoveAll();

        delete[] list;
    }
}

void tlCollisionObject::AddSelfCollision(int inJoint1, int inJoint2, bool inSelfOnly1, bool inSelfOnly2)
{
    tlSelfCollision* sc = new tlSelfCollision(inJoint1, inJoint2, inSelfOnly1, inSelfOnly2);
    mSelfCollisionList.Add(sc);
}

void tlCollisionObject::FitPrimGroupMesh(tlPrimGroupMesh* pg, tlSimDataHolder* inData, bool hollow)
{
    CollisionVolumeTypeEnum type = CollisionVolumeTypeEnum(inData->mCollisionJointData[0].mType);

    SetName(pg->GetName());

    mCollisionVolume = FitPrimGroupMeshCollisionVolume(pg, inData, type, hollow);

    if (inData)
    {
        LoadCollisionData(inData);
    }
}

void tlCollisionObject::FitCompositeDrawable(tlSkeleton* skel, tlCompositeDrawable* comp, tlSimDataHolder* inData)
{
    int currentOwnerIndex = 0;

    SetName(comp->GetName());
    mNumSubObject = skel->GetNumJoints();

    tlMatrix* worldJointRestPose = new tlMatrix[mNumSubObject];
    ComputeJointRestPose(skel, worldJointRestPose);

    mJointCollisionVolume = new ptlCollisionVolume[mNumSubObject];
    memset(mJointCollisionVolume, 0, mNumSubObject*sizeof(ptlCollisionVolume));

    tlCompositeDrawable::Iterator iterator(comp);
    iterator.First();
    while(!iterator.IsDone())
    {
        tlCompositeDrawableItem* curItem = iterator.CurrentItem();
        tlCompositeDrawableSkin* curSkinItem = dynamic_cast<tlCompositeDrawableSkin*>(curItem);
        if (curSkinItem)
        {
            tlSkin* skin = curSkinItem->GetSkinPtr();
            ptlCollisionVolume* jointLocalCollisionVolume = new ptlCollisionVolume[mNumSubObject];
            memset(jointLocalCollisionVolume, 0, mNumSubObject*sizeof(ptlCollisionVolume));
            if (FitSkinCollisionVolume(jointLocalCollisionVolume, skin, worldJointRestPose, inData, currentOwnerIndex+1))
            {
                tlCollisionVolumeOwner* newOwner = new tlCollisionVolumeOwner;
                newOwner->AddName(skin->GetName());
                mOwnerList.Add(newOwner);
                currentOwnerIndex++;

                for (int i=0; i<mNumSubObject; i++)
                {
                    if (jointLocalCollisionVolume[i])
                    {
                        if (mJointCollisionVolume[i] == NULL)
                        {
                            mJointCollisionVolume[i] = jointLocalCollisionVolume[i];
                        }
                        else
                        {
                            MergeCollisionVolume(mJointCollisionVolume[i], jointLocalCollisionVolume[i]);
                        }
                    }
                }
                delete []jointLocalCollisionVolume;
            }
        }
        tlCompositeDrawableProp* curPropItem = dynamic_cast<tlCompositeDrawableProp*>(curItem);
        if (curPropItem)
        {
            tlPrimGroupMesh* mesh = dynamic_cast<tlPrimGroupMesh*>(curPropItem->GetPropPtr());
            if (mesh)
            {
                int jointIndex = curPropItem->GetSkeletonJointID();
                bool skipProp = false;

                CollisionVolumeTypeEnum type = CapsuleVolumeType; // default type for character
                if (inData)
                {
                    tlCollisionJointData* data = inData->CollisionData(jointIndex);
                    if (data)
                    {
                        type = CollisionVolumeTypeEnum(data->mType);
                    }
                    else
                    {
                        skipProp = true;
                    }
                }
                if (!skipProp)
                {
                    tlCollisionVolume* propVolume = FitPrimGroupMeshCollisionVolume(mesh, inData, type);
                    if (propVolume)
                    {
                        propVolume->SetOwnerIndex(currentOwnerIndex++);
                        propVolume->SetObjRefIndex(curPropItem->GetSkeletonJointID());
                        tlCollisionVolumeOwner* newOwner = new tlCollisionVolumeOwner;
                        newOwner->AddName(mesh->GetName());
                        mOwnerList.Add(newOwner);
                        if (mJointCollisionVolume[jointIndex] == NULL)
                        {
                            mJointCollisionVolume[jointIndex] = propVolume;
                        }
                        else
                        {
                            MergeCollisionVolume(mJointCollisionVolume[jointIndex], propVolume);
                        }
                    }
                }
            }
        }
        iterator.Next();
    }
    assert(mOwnerList.GetSize() == currentOwnerIndex && currentOwnerIndex > 0);

    BuildHierarchy(mJointCollisionVolume, skel);

    assert(mCollisionVolume);

    if (inData)
    {
        LoadCollisionData(inData);
    }

    delete[] worldJointRestPose;
    delete[] mJointCollisionVolume;
    mJointCollisionVolume = NULL;
}

void tlCollisionObject::FitSkin(tlSkeleton* skel, tlSkin* skin, tlSimDataHolder* inData)
{
    SetName(skin->GetName());
    mNumSubObject = skel->GetNumJoints();

    tlMatrix* worldJointRestPose = new tlMatrix[mNumSubObject];
    ComputeJointRestPose(skel, worldJointRestPose);

    mJointCollisionVolume = new ptlCollisionVolume[mNumSubObject];
    memset(mJointCollisionVolume, 0, mNumSubObject*sizeof(ptlCollisionVolume));

    FitSkinCollisionVolume(mJointCollisionVolume, skin, worldJointRestPose, inData);

    BuildHierarchy(mJointCollisionVolume, skel);

    assert(mCollisionVolume);

    if (inData)
    {
        LoadCollisionData(inData);
    }

    delete[] worldJointRestPose;
    delete[] mJointCollisionVolume;
    mJointCollisionVolume = NULL;
}

tlCollisionVolume* tlCollisionObject::FitPrimGroupMeshCollisionVolume(tlPrimGroupMesh* pg, tlSimDataHolder* inData, CollisionVolumeTypeEnum type, bool hollow)
{
    tlPoint* lv = new tlPoint[pg->NumVertices()];

    for (int i=0; i<pg->NumVertices(); i++)
    {
        lv[i] = pg->GetVertex(i)->GetCoord();
    }

    tlCollisionVolume* v = FitCollVolume(lv, pg->NumVertices(), type, sHierarchyDepth, hollow);

    if (v != NULL)
    {
        v->SetObjRefIndex(0);
    }
    delete[] lv;

    return v;
}

bool tlCollisionObject::FitSkinCollisionVolume(ptlCollisionVolume* jointCollisionVolume, tlSkin* skin, tlMatrix* worldJointRestPose, tlSimDataHolder* inData, int ownerIndex)
{
    TArray<int> *skinVerticesPerJointIndex;
    skinVerticesPerJointIndex = new TArray<int>[mNumSubObject];
    CumulateSkinVerticesPerJointIndex(skinVerticesPerJointIndex, skin);
    bool volumeCreated = false;

    for(int i=0; i<mNumSubObject; i++)
    {
        bool skipJoint = false;
        CollisionVolumeTypeEnum type = CapsuleVolumeType; // default type for character

        if (inData)
        {
            tlCollisionJointData* data = inData->CollisionData(i);
            if (data)
            {
                type = CollisionVolumeTypeEnum(data->mType);
            }
            else
            {
                skipJoint = true;
            }
        }

        if (!skipJoint)
        {
            if (skinVerticesPerJointIndex[i].GetSize() > MINCOUNTFORCOLLISIONVOLUMEFIT)
            {
                tlPoint* lv = new tlPoint[skinVerticesPerJointIndex[i].GetSize()];
                for (int j=0; j<skinVerticesPerJointIndex[i].GetSize(); j++)
                {
                    lv[j] = skin->GetVertex(skinVerticesPerJointIndex[i][j])->GetCoord();
                }
                // we want the collision volume in the joint space, not the restPose space.
                tlMatrix invRestPose = Inverse(worldJointRestPose[i]);
                invRestPose.TransformPointList(skinVerticesPerJointIndex[i].GetSize(), lv);

                jointCollisionVolume[i] = FitCollVolume(lv, skinVerticesPerJointIndex[i].GetSize(), type, sHierarchyDepth, false);
                delete[] lv;

                if (jointCollisionVolume[i] != NULL)
                {
                    jointCollisionVolume[i]->SetObjRefIndex(i);
                    jointCollisionVolume[i]->SetOwnerIndex(ownerIndex);
                    volumeCreated = true;
                }
            }
        }
    }
    delete[] skinVerticesPerJointIndex;
    return volumeCreated;
}

void tlCollisionObject::ComputeJointRestPose(tlSkeleton* skel, tlMatrix* worldJointRestPose)
{
    worldJointRestPose[0] = ((tlSkeletonJoint*)skel->GetJoint(0))->GetRestPose();
    int i;
    for(i=0; i<mNumSubObject; i++)
    {
        int parent = skel->GetJoint(i)->GetParent();
        worldJointRestPose[i] = ((tlSkeletonJoint*)skel->GetJoint(i))->GetRestPose();
        tlMatrix m = worldJointRestPose[i] * worldJointRestPose[parent];
        worldJointRestPose[i] = m;
    }

}

void tlCollisionObject::CumulateSkinVerticesPerJointIndex(TArray<int> *skinVerticesPerJointIndex, tlSkin* skin)
{
    for(int i=0; i<skin->NumVertices(); i++)
    {
        tlSkinVertex* v = (tlSkinVertex*)skin->GetVertex(i);
        for (int j=0; j<v->NumJointWeights(); j++)
        {
            tlBoneWeightingData wd = v->GetJointWeight(j);
            if (wd.weight > sMinWeight)
                skinVerticesPerJointIndex[wd.jointindex].Add(i);
        }
    }
}

void tlCollisionObject::GetExtensions(tlPoint& pmin, tlPoint& pmax) const
{
    if (mCollisionVolume)
    {
        bool first = true;
        mCollisionVolume->AddExtensions(pmin, pmax, first);
    }
    else
    {
        pmin.Init();
        pmax.Init();
    }
}

void tlCollisionObject::LoadCollisionData(tlSimDataHolder* inData)
{
    for (int i=0; i<inData->mSelfCollisionData.GetSize(); i++)
    {
        tlSelfCollisionJointData sd = inData->mSelfCollisionData[i];
        AddSelfCollision(sd.mIndex1, sd.mIndex2, sd.mSelfOnly1, sd.mSelfOnly2);
    }
    mStringData.SetName(inData->mStringData.GetName());

    mDefaultArea = inData->mCollisionObjectAttribute.mDefaultArea;
    mStatic = inData->mCollisionObjectAttribute.mStatic;
    mCanSpin = inData->mCollisionObjectAttribute.mCanSpin;
    mCanRoll = inData->mCollisionObjectAttribute.mCanRoll;
    mCanSlide = inData->mCollisionObjectAttribute.mCanSlide;
    mCanBounce = inData->mCollisionObjectAttribute.mCanBounce;
}

void tlCollisionObject::MergeCollisionVolume(ptlCollisionVolume& parentVolume, ptlCollisionVolume childVolume)
{
    if (parentVolume->Type() != BBoxVolumeType || static_cast<tlBBoxVolume*>(parentVolume)->mBuildExternally)
    {
        tlBBoxVolume* newVolume = new tlBBoxVolume;
        newVolume->SetObjRefIndex(parentVolume->ObjRefIndex());
        newVolume->AddSubVolume(parentVolume);
        parentVolume = newVolume;
    }
    parentVolume->AddSubVolume(childVolume);
}

void tlCollisionObject::BuildHierarchy(ptlCollisionVolume* jointCollisionVolume, tlSkeleton* skel)
{
    for(int i=mNumSubObject-1; i>=0; i--)
    {
        if (jointCollisionVolume[i])
        {
            int parent = skel->GetJoint(i)->GetParent();
            while (jointCollisionVolume[parent] == NULL && parent > 0)
            {
                parent = skel->GetJoint(parent)->GetParent();
            }
            if (jointCollisionVolume[parent] == NULL || ( parent == i ) )
            {
                // no parent with collision volume
                assert(parent == 0);

                if (mCollisionVolume == NULL)
                {
                    mCollisionVolume = jointCollisionVolume[i];
                }
                // have to merge two independent branches
                else if (mCollisionVolume->ObjRefIndex() < jointCollisionVolume[i]->ObjRefIndex())
                {
                     MergeCollisionVolume(mCollisionVolume, jointCollisionVolume[i]);
                }
                else
                {
                     MergeCollisionVolume(jointCollisionVolume[i], mCollisionVolume);
                     mCollisionVolume = jointCollisionVolume[i];
                }
            }
            else
            {
                MergeCollisionVolume(jointCollisionVolume[parent], jointCollisionVolume[i]);
            }
        }
    }
}

void tlCollisionObject::AddCollisionVolume(tlCollisionVolume* inCollisionVolume)
{
    int index = inCollisionVolume->ObjRefIndex();

    if (mNumSubObject == 0)
    {
        assert(index == 0);
        if (mCollisionVolume == NULL)
        {
            mCollisionVolume = inCollisionVolume;
        }
        else
        {
            MergeCollisionVolume(mCollisionVolume, inCollisionVolume);
        }
    }
    else
    {
        assert(index < mNumSubObject);

        if (mJointCollisionVolume == NULL)
        {
            mJointCollisionVolume = new ptlCollisionVolume[mNumSubObject];
            memset(mJointCollisionVolume, 0, mNumSubObject*sizeof(ptlCollisionVolume));
        }
        if (mJointCollisionVolume[index] == NULL)
        {
            mJointCollisionVolume[index] = inCollisionVolume;
        }
        else
        {
            MergeCollisionVolume(mJointCollisionVolume[index], inCollisionVolume);
        }
    }
}

void tlCollisionObject::EndAddCollisionVolume(tlSkeleton* inSkeleton)
{
    if (inSkeleton)
    {
        assert(mNumSubObject == inSkeleton->GetNumJoints());
        assert(mCollisionVolume == NULL);

        BuildHierarchy(mJointCollisionVolume, inSkeleton);
        assert(mCollisionVolume);

        delete[] mJointCollisionVolume;
        mJointCollisionVolume = NULL;

        CleanUnusedOwners();
    }
    else
    {
        assert(mNumSubObject == 0);
    }
}

void tlCollisionObject::FixCollisionVolume(tlSkeleton* inSkeleton)
{
    tlCollisionVolume* oldCollisionVolume = mCollisionVolume;
    mCollisionVolume = NULL;
    AddExtractedVolume(oldCollisionVolume);
    EndAddCollisionVolume(inSkeleton);
}

void tlCollisionObject::AddExtractedVolume(tlCollisionVolume* inCollisionVolume)
{
    if (inCollisionVolume->Type() != BBoxVolumeType)
    {
        AddCollisionVolume(inCollisionVolume);
    }
    for (int i=0; i<inCollisionVolume->SubVolume().GetSize(); i++)
        AddExtractedVolume(inCollisionVolume->SubVolume()[i]);
}

//*****************************************************************************
// tlCollisionVolume
//*****************************************************************************
tlCollisionVolume* tlCollisionVolume::LoadFromChunk(tlDataChunk* ch)
{
    tlCollisionVolumeChunk* cch = dynamic_cast<tlCollisionVolumeChunk* >(ch);
    assert( cch != NULL );

    tlCollisionVolume* collVolume = NULL;

    switch(cch->GetSubChunk(0)->ID())
    {
    case Simulation::Collision::SPHERE:
        collVolume = new tlSphereVolume(cch);
        break;
    case Simulation::Collision::CYLINDER:
        collVolume = new tlCylinderVolume(cch);
        break;
    case Simulation::Collision::OBBOX:
        collVolume = new tlOBBoxVolume(cch);
        break;
    case Simulation::Collision::WALL:
        collVolume = new tlWallVolume(cch);
        break;
    case Simulation::Collision::BBOX:
        collVolume = new tlBBoxVolume(cch);
        break;
    default:
        assert(false);
        break;
    }
    return collVolume;
}

tlCollisionVolume::tlCollisionVolume()
: mOwnerIndex(0),
  mObjRefIndex(0)
{
    mPosition.Init();
}

tlCollisionVolume::tlCollisionVolume(tlCollisionVolumeChunk* cch)
: mOwnerIndex(0),
  mObjRefIndex(0)
{
    mPosition.Init();

    mObjRefIndex = cch->ObjectReferenceIndex();
    mOwnerIndex = cch->OwnerIndex();

    LoadSubCollisionVolume(cch);
}

tlCollisionVolume::~tlCollisionVolume()
{
    for (int i=0; i<mSubVolumeList.GetSize(); i++)
    {
        delete mSubVolumeList[i];
    }
    mSubVolumeList.RemoveAll();
}

tlDataChunk* tlCollisionVolume::Chunk()
{
    tlCollisionVolumeChunk* ch = new tlCollisionVolumeChunk;

    ch->SetObjectReferenceIndex(mObjRefIndex);
    ch->SetOwnerIndex(mOwnerIndex);
    ch->SetNumSubVolume(mSubVolumeList.GetSize());

    for (int i=0; i<mSubVolumeList.GetSize(); i++)
        ch->AppendSubChunk(mSubVolumeList[i]->Chunk());

    return (tlDataChunk*) ch;
}

void tlCollisionVolume::LoadSubCollisionVolume(tlDataChunk* cch)
{
    for(int i=1;i<cch->SubChunkCount();i++)
    {
        tlDataChunk* sub = cch->GetSubChunk(i);
        AddSubVolume(tlCollisionVolume::LoadFromChunk(sub));
    }
}

void tlCollisionVolume::EmptySubVolume()
{
    mSubVolumeList.RemoveAll();
}

void tlCollisionVolume::AddSubVolume(tlCollisionVolume* el)
{
    assert(el != NULL);

    mSubVolumeList.Add(el);
}

void tlCollisionVolume::AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const
{
    for (int i=0; i<mSubVolumeList.GetSize(); i++)
    {
        mSubVolumeList[i]->AddExtensions(pmin, pmax, first);
    }
}

// this call should be used carefully since it could erease Hierarhcy information
void tlCollisionVolume::SetObjRefIndex(int index)
{
    mObjRefIndex = index;
    for (int i=0; i<mSubVolumeList.GetSize(); i++)
    {
        mSubVolumeList[i]->SetObjRefIndex(index);
    }
}

void tlCollisionVolume::SetOwnerIndex(int index)
{
    mOwnerIndex = index;
    for (int i=0; i<mSubVolumeList.GetSize(); i++)
    {
        mSubVolumeList[i]->SetOwnerIndex(index);
    }
}

void tlCollisionVolume::Scale(float sx, float sy, float sz)
{
    assert(false);
}

tlMatrix tlCollisionVolume::Inertia(int inIndex, const tlPoint& cm)
{
    tlMatrix i0 = Identity();
    i0.element[0][0] = i0.element[1][1] = i0.element[2][2] = 0;

    if (mSubVolumeList.GetSize() > 0)
    {
        for (int i=0; i<mSubVolumeList.GetSize(); i++)
        {
            tlMatrix m;
            m = mSubVolumeList[i]->Inertia(inIndex, cm);
            for (int j=0; j<3; j++)
                for (int k=0; k<3; k++)
                    i0.element[j][k] += m.element[j][k];
        }
    }
    else if (mObjRefIndex == inIndex)
    {
        InertiaSelf(i0);
        tlPoint dp = mPosition - cm;
        i0.element[0][0] += Sqr(dp.y) + Sqr(dp.z);
        i0.element[0][1] -= dp.x * dp.y;
        i0.element[0][2] -= dp.x * dp.z;
        i0.element[1][1] += Sqr(dp.x) + Sqr(dp.z);
        i0.element[1][2] -= dp.y * dp.z;
        i0.element[2][2] += Sqr(dp.x) + Sqr(dp.y);
        i0.element[1][0] = i0.element[0][1];
        i0.element[2][0] = i0.element[0][2];
        i0.element[2][1] = i0.element[1][2];
    }
    return i0;
}

float tlCollisionVolume::Volume(int inIndex)
{
    float v = 0;
    if (mSubVolumeList.GetSize() > 0)
    {
        for (int i=0; i<mSubVolumeList.GetSize(); i++)
        {
            v += mSubVolumeList[i]->Volume(inIndex);
        }
    }
    else if (mObjRefIndex == inIndex)
    {
        v = VolumeSelf();
    }
    return v;
}

tlPoint tlCollisionVolume::VR(int inIndex)
{
    tlPoint vr(0, 0, 0);
    if (mSubVolumeList.GetSize() > 0)
    {
        for (int i=0; i<mSubVolumeList.GetSize(); i++)
        {
            vr += mSubVolumeList[i]->VR(inIndex);
        }
    }
    else if (mObjRefIndex == inIndex)
    {
        vr = VolumeSelf() * mPosition;
    }
    return vr;
}

//*****************************************************************************
// tlSphereVolume
//*****************************************************************************
tlSphereVolume::tlSphereVolume(const tlPoint& p, float r)
{
    mType = SphereVolumeType;
    mSphereRadius = r;
    mPosition = p;
}

tlSphereVolume::tlSphereVolume(tlCollisionVolumeChunk* cch)
: tlCollisionVolume(cch)
{
    mType = SphereVolumeType;
    tlSphereVolumeChunk* wch = dynamic_cast<tlSphereVolumeChunk*>(cch->GetSubChunk(0));
    assert(wch != NULL);
    LoadFromCollisionVectorChunk(mPosition, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(0)));
    mSphereRadius = wch->SphereRadius();
}

tlSphereVolume::~tlSphereVolume()
{
}

void tlSphereVolume::AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const
{
    if (first)
    {
        pmin = pmax = mPosition;
        first = false;
    }

    pmin.x = MIN(pmin.x, mPosition.x - mSphereRadius);
    pmin.y = MIN(pmin.y, mPosition.y - mSphereRadius);
    pmin.z = MIN(pmin.z, mPosition.z - mSphereRadius);
    pmax.x = MAX(pmax.x, mPosition.x + mSphereRadius);
    pmax.y = MAX(pmax.y, mPosition.y + mSphereRadius);
    pmax.z = MAX(pmax.z, mPosition.z + mSphereRadius);

    tlCollisionVolume::AddExtensions(pmin, pmax, first);
}

void tlSphereVolume::InertiaSelf(tlMatrix& m)
{
    m = Identity();
    float f = 2.0f / 5.0f * Sqr(mSphereRadius);
    m.element[0][0] = m.element[1][1] = m.element[2][2] = f;
}

tlDataChunk* tlSphereVolume::Chunk()
{
    tlDataChunk* cch = tlCollisionVolume::Chunk();

    tlSphereVolumeChunk* ch = new tlSphereVolumeChunk;
    ch->SetSphereRadius(mSphereRadius);
    ch->AppendSubChunk(NewCollisionVectorChunk(mPosition));

    cch->InsertSubChunk(ch, 0);
    return cch;
}

float tlSphereVolume::VolumeSelf() const
{
    return (4.0f/3.0f) * PI * mSphereRadius * mSphereRadius * mSphereRadius;
}

void tlSphereVolume::Scale(float sx, float sy, float sz)
{
    tlCollisionVolume::Scale(sx, sy, sz);
}

//*****************************************************************************
// tlCylinderVolume
//*****************************************************************************
tlCylinderVolume::tlCylinderVolume(tlPoint& centre, const tlPoint& o, float len, float r, bool inFlatEnd)
: mAxis(o),
  mLength(len),
  mCylinderRadius(r),
  mFlatEnd(inFlatEnd)
{
    mType = CylinderVolumeType;
    mPosition = centre;
}

tlCylinderVolume::tlCylinderVolume(tlCollisionVolumeChunk* cch)
: tlCollisionVolume(cch)
{
    mType = CylinderVolumeType;
    tlCylinderVolumeChunk* wch = dynamic_cast<tlCylinderVolumeChunk*>(cch->GetSubChunk(0));
    assert(wch != NULL);
    LoadFromCollisionVectorChunk(mPosition, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(0)));
    LoadFromCollisionVectorChunk(mAxis, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(1)));
    mLength = wch->Length();
    mFlatEnd = wch->FlatEnd() == 0 ? false : true;
    mCylinderRadius = wch->CylinderRadius();
}

tlCylinderVolume::~tlCylinderVolume()
{
}

tlDataChunk* tlCylinderVolume::Chunk()
{
    tlDataChunk* cch = tlCollisionVolume::Chunk();

    // replace the very short capsule with a sphere
    if (!mFlatEnd && mLength < 0.05f * mCylinderRadius)
    {
        tlSphereVolumeChunk* ch = new tlSphereVolumeChunk;
        ch->SetSphereRadius(mCylinderRadius);
        ch->AppendSubChunk(NewCollisionVectorChunk(mPosition));
        cch->InsertSubChunk(ch, 0);
    }
    else
    {
        tlCylinderVolumeChunk* ch = new tlCylinderVolumeChunk;
        ch->SetCylinderRadius(mCylinderRadius);
        ch->SetLength(mLength);
        ch->SetFlatEnd(mFlatEnd);
        ch->AppendSubChunk(NewCollisionVectorChunk(mPosition));
        ch->AppendSubChunk(NewCollisionVectorChunk(mAxis));
        cch->InsertSubChunk(ch, 0);
    }

    return cch;
}

float tlCylinderVolume::VolumeSelf() const
{
    //return 2.0f * PI * mCylinderRadius * mLength + (4.0f/3.0f) * PI * mCylinderRadius * mCylinderRadius * mCylinderRadius;
    if (mFlatEnd)
        return 2.0f * PI * mCylinderRadius * mCylinderRadius * mLength;
    else
      return 2.0f * PI * mCylinderRadius * (mLength * mCylinderRadius + (2.0f/3.0f) * mCylinderRadius * mCylinderRadius);
}

void tlCylinderVolume::AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const
{
    if (first)
    {
        pmin = pmax = mPosition;
        first = false;
    }

    if( mFlatEnd )
    {
        tlPoint p1;
        tlPoint p2;
        tlPoint px; px.x = 1.0f;
        tlPoint py; py.y = 1.0f;
        tlPoint pz; pz.z = 1.0f;

        if (Fabs(mAxis.x) < 0.98f) // to avoid noise
        {
            p1 = CrossProd(CrossProd(px, mAxis), mAxis);
            p1 = Normalize(p1);
        }
        else
        {
            p1.x = 0;
        }
        pmin.x = MIN(pmin.x, mPosition.x - ((mLength * Fabs(mAxis.x) + mCylinderRadius * Fabs(p1.x))));
        pmax.x = MAX(pmax.x, mPosition.x + ((mLength * Fabs(mAxis.x) + mCylinderRadius * Fabs(p1.x))));

        if (Fabs(mAxis.y) < 0.98f)
        {
            p1 = CrossProd(CrossProd(py, mAxis), mAxis);
            p1 = Normalize(p1);
        }
        else
        {
            p1.y = 0;
        }
        pmin.y = MIN(pmin.y, mPosition.y - ((mLength * Fabs(mAxis.y) + mCylinderRadius * Fabs(p1.y))));
        pmax.y = MAX(pmax.y, mPosition.y + ((mLength * Fabs(mAxis.y) + mCylinderRadius * Fabs(p1.y))));

        if (Fabs(mAxis.z) < 0.98f)
        {
            p1 = CrossProd(CrossProd(pz, mAxis), mAxis);
            p1 = Normalize(p1);
        }
        else
        {
            p1.z = 0;
        }
        pmin.z = MIN(pmin.z, mPosition.z - ((mLength * Fabs(mAxis.z) + mCylinderRadius * Fabs(p1.z))));
        pmax.z = MAX(pmax.z, mPosition.z + ((mLength * Fabs(mAxis.z) + mCylinderRadius * Fabs(p1.z))));
    }
    else
    {
        pmin.x = MIN(pmin.x, mPosition.x - ((mLength * Fabs(mAxis.x) + mCylinderRadius)));
        pmin.y = MIN(pmin.y, mPosition.y - ((mLength * Fabs(mAxis.y) + mCylinderRadius)));
        pmin.z = MIN(pmin.z, mPosition.z - ((mLength * Fabs(mAxis.z) + mCylinderRadius)));
        pmax.x = MAX(pmax.x, mPosition.x + ((mLength * Fabs(mAxis.x) + mCylinderRadius)));
        pmax.y = MAX(pmax.y, mPosition.y + ((mLength * Fabs(mAxis.y) + mCylinderRadius)));
        pmax.z = MAX(pmax.z, mPosition.z + ((mLength * Fabs(mAxis.z) + mCylinderRadius)));
    }
    tlCollisionVolume::AddExtensions(pmin, pmax, first);
}

void tlCylinderVolume::InertiaSelf(tlMatrix& m)
{
    m = Identity();
    float h;

    if (mFlatEnd)
        h = 2.0f * mLength;
    else
        h = 2.0f * (mLength + mCylinderRadius*2.0f/3.0f); // approx. of an height to include the capsule's half spheres

    // first set m as if the cyl orientation was along x
    m.element[0][0] = Sqr(mCylinderRadius) / 2.0f;
    m.element[1][1] = m.element[2][2] = (Sqr(h) + 3.0f * Sqr(mCylinderRadius)) / 12.0f;
    //
    tlPoint x(1, 0, 0);
    tlPoint O2, O3;
    O2 = CrossProd(x, mAxis);
    if (VecNormalize(O2) < VERY_SMALL) return; // axis already oriented along x
    O3 = CrossProd(mAxis, O2);
    VecNormalize(O3); // mAxis, O2 and O3 form an ortho basis to transform m
    tlMatrix r(mAxis.x, mAxis.y, mAxis.z, 0, O2.x, O2.y, O2.z, 0, O3.x, O3.y, O3.z, 0, 0, 0, 0, 1.0f);
    m = m*r;
    r = Inverse(r);
    m = r*m;
}

void tlCylinderVolume::Scale(float sx, float sy, float sz)
{
    tlCollisionVolume::Scale(sx, sy, sz);
}

//*****************************************************************************
// tlOBBoxVolume
//*****************************************************************************
tlOBBoxVolume::tlOBBoxVolume(tlPoint& center, tlPoint& o0, tlPoint& o1, tlPoint& o2, float l0, float l1, float l2)
{
    mType = OBBoxVolumeType;
    mPosition = center;

    mLength[0] = l0;
    mLength[1] = l1;
    mLength[2] = l2;

    mAxis[0] = o0;
    mAxis[1] = o1;
    mAxis[2] = o2;

}

tlOBBoxVolume::tlOBBoxVolume(tlCollisionVolumeChunk* cch)
: tlCollisionVolume(cch)
{
    mType = OBBoxVolumeType;
    tlOBBoxVolumeChunk* wch = dynamic_cast<tlOBBoxVolumeChunk*>(cch->GetSubChunk(0));
    assert(wch != NULL);
    LoadFromCollisionVectorChunk(mPosition, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(0)));
    LoadFromCollisionVectorChunk(mAxis[0], dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(1)));
    LoadFromCollisionVectorChunk(mAxis[1], dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(2)));
    LoadFromCollisionVectorChunk(mAxis[2], dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(3)));
    mLength[0] = wch->Length1();
    mLength[1] = wch->Length2();
    mLength[2] = wch->Length3();
}

tlOBBoxVolume::~tlOBBoxVolume()
{
}

tlDataChunk* tlOBBoxVolume::Chunk()
{
    tlDataChunk* cch = tlCollisionVolume::Chunk();

    tlOBBoxVolumeChunk* ch = new tlOBBoxVolumeChunk;
    ch->SetLength1(mLength[0]);
    ch->SetLength2(mLength[1]);
    ch->SetLength3(mLength[2]);

    ch->AppendSubChunk(NewCollisionVectorChunk(mPosition));
    ch->AppendSubChunk(NewCollisionVectorChunk(mAxis[0]));
    ch->AppendSubChunk(NewCollisionVectorChunk(mAxis[1]));
    ch->AppendSubChunk(NewCollisionVectorChunk(mAxis[2]));

    cch->InsertSubChunk(ch, 0);

    return cch;
}

float tlOBBoxVolume::VolumeSelf() const
{
    return 8.0f * mLength[0] * mLength[1] * mLength[2];
}

void tlOBBoxVolume::InertiaSelf(tlMatrix& m)
{
    m = Identity();
    // first set m as if the axis were oriented along xyz
    m.element[0][0] = (Sqr(mLength[1]) + Sqr(mLength[2])) / 3.0f;
    m.element[1][1] = (Sqr(mLength[0]) + Sqr(mLength[2])) / 3.0f;
    m.element[2][2] = (Sqr(mLength[0]) + Sqr(mLength[1])) / 3.0f;
    //
    tlMatrix r(mAxis[0].x, mAxis[0].y, mAxis[0].z, 0, mAxis[1].x, mAxis[1].y, mAxis[1].z, 0, mAxis[2].x, mAxis[2].y, mAxis[2].z, 0, 0, 0, 0, 1.0f);
    m = m*r;
    r = Inverse(r);
    m = r*m;
}

void tlOBBoxVolume::AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const
{
    if (first)
    {
        pmin = pmax = mPosition;
        first = false;
    }

    pmin.x = MIN(pmin.x, mPosition.x - (mLength[0] * Fabs(mAxis[0].x) + mLength[1] * Fabs(mAxis[1].x) + mLength[2] * Fabs(mAxis[2].x)));
    pmin.y = MIN(pmin.y, mPosition.y - (mLength[0] * Fabs(mAxis[0].y) + mLength[1] * Fabs(mAxis[1].y) + mLength[2] * Fabs(mAxis[2].y)));
    pmin.z = MIN(pmin.z, mPosition.z - (mLength[0] * Fabs(mAxis[0].z) + mLength[1] * Fabs(mAxis[1].z) + mLength[2] * Fabs(mAxis[2].z)));
    pmax.x = MAX(pmax.x, mPosition.x + (mLength[0] * Fabs(mAxis[0].x) + mLength[1] * Fabs(mAxis[1].x) + mLength[2] * Fabs(mAxis[2].x)));
    pmax.y = MAX(pmax.y, mPosition.y + (mLength[0] * Fabs(mAxis[0].y) + mLength[1] * Fabs(mAxis[1].y) + mLength[2] * Fabs(mAxis[2].y)));
    pmax.z = MAX(pmax.z, mPosition.z + (mLength[0] * Fabs(mAxis[0].z) + mLength[1] * Fabs(mAxis[1].z) + mLength[2] * Fabs(mAxis[2].z)));
    tlCollisionVolume::AddExtensions(pmin, pmax, first);
}

//*****************************************************************************
// tlWallVolume
//*****************************************************************************
tlWallVolume::tlWallVolume(const tlPoint& p, const tlPoint& n)
: mNormal(n)
{
    mType = WallVolumeType;
    mPosition = p;
    VecNormalize(mNormal);
}

tlWallVolume::tlWallVolume(tlCollisionVolumeChunk* cch)
: tlCollisionVolume(cch)
{
    mType = WallVolumeType;
    tlWallVolumeChunk* wch = dynamic_cast<tlWallVolumeChunk*>(cch->GetSubChunk(0));
    assert(wch != NULL);
    LoadFromCollisionVectorChunk(mPosition, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(0)));
    LoadFromCollisionVectorChunk(mNormal, dynamic_cast<tlCollisionVectorChunk*> (wch->GetSubChunk(1)));
}

tlWallVolume::~tlWallVolume()
{
}

tlDataChunk* tlWallVolume::Chunk()
{
    tlDataChunk* cch = tlCollisionVolume::Chunk();

    tlWallVolumeChunk* ch = new tlWallVolumeChunk;
    ch->AppendSubChunk(NewCollisionVectorChunk(mPosition));
    ch->AppendSubChunk(NewCollisionVectorChunk(mNormal));

    cch->InsertSubChunk(ch, 0);
    return cch;
}

float tlWallVolume::VolumeSelf() const
{
    return 0.0f;
}

void tlWallVolume::AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const
{
    // this method doesn't make too much sens for an infinite plane.
    if (first)
    {
        pmin = pmax = mPosition;
        first = false;
    }

    tlPoint p, q = mNormal;
    q.x +=1;
    q.y -=1;
    q.z +=1; // q, a vector not parallel to the normal
    p = CrossProd(q, mNormal);
    q = CrossProd(p, mNormal);
    p = Normalize(p);
    q = Normalize(q); // p and q two perp vector in the plane
    float v = 1000000.0f; // something large, this is an infinite plane.

    pmin.x = MIN(pmin.x, mPosition.x - ((v * Fabs(p.x) + v * Fabs(q.x))));
    pmin.y = MIN(pmin.y, mPosition.y - ((v * Fabs(p.y) + v * Fabs(q.y))));
    pmin.z = MIN(pmin.z, mPosition.z - ((v * Fabs(p.z) + v * Fabs(q.z))));
    pmax.x = MAX(pmax.x, mPosition.x + ((v * Fabs(p.x) + v * Fabs(q.x))));
    pmax.y = MAX(pmax.y, mPosition.y + ((v * Fabs(p.y) + v * Fabs(q.y))));
    pmax.z = MAX(pmax.z, mPosition.z + ((v * Fabs(p.z) + v * Fabs(q.z))));
    tlCollisionVolume::AddExtensions(pmin, pmax, first);
}

//*****************************************************************************
// tlBBoxVolume
//*****************************************************************************
tlBBoxVolume::tlBBoxVolume()
{
    mType = BBoxVolumeType;
    mBuildExternally = false;
}

tlBBoxVolume::tlBBoxVolume(tlCollisionVolumeChunk* cch)
: tlCollisionVolume(cch)
{
    mType = BBoxVolumeType;
}

tlBBoxVolume::~tlBBoxVolume()
{
}

tlDataChunk* tlBBoxVolume::Chunk()
{
    tlDataChunk* cch = tlCollisionVolume::Chunk();

    tlBBoxVolumeChunk* ch = new tlBBoxVolumeChunk;

    cch->InsertSubChunk(ch, 0);
    return cch;
}

float tlBBoxVolume::VolumeSelf() const
{
    return 0;
}



//*****************************************************************************
// the covar stuff
//*****************************************************************************
// with this defined, all intermediate bounding volume will be BBox wich are resized only
// from their sub volumes. Only the deepest level will have real oriented bounding volumes
// ruled by the geometry transformationsThis means that any detextion made at an intermediate
// level will be made on BBox wich is quick but inacurate. This setting could be added to the
// tool if needed.
#define OptimizeBoundingVolume

template <class TYPE>
inline TYPE Average(TYPE a, TYPE b)
{
    return (a + b) / 2.0f;
}
template <class TYPE>
inline TYPE HDiff(TYPE a, TYPE b)
{
    return (a - b) / 2.0f;
}

// compute the approximate center of the list of vertices
void ComputeMean(tlPoint* lv, int count, tlPoint& center);

// orthogonalize the 3 vector base giving priority the the longest one
bool PhOrthogonalizeBase(tlPoint* cov);

// divide the vertices array lv into its upper and lower part relatively to the given axe
void SubDividePoints(tlPoint* lv, int count, tlPoint& center, tlPoint& axe, float axem, tlPoint* lv1, int& count1, tlPoint* lv2, int& count2, bool hollow);

// using the max values in the 3 directions, the best collVolume fit is created and returned
tlCollisionVolume* BestBoundingFit(tlPoint& center, tlPoint* cov, float* mx, tlPoint* lv, int count, CollisionVolumeTypeEnum type);
tlCollisionVolume* SubBestBoundingFit(tlPoint& center, tlPoint& r1, tlPoint& r2, tlPoint& r3, float max1, float max2, float max3, tlPoint* lv, int count, CollisionVolumeTypeEnum type);


// simply create a wall positioned at the object center and with a normal pointing toward the positive smallest axis
tlCollisionVolume* FitWall(tlPoint* lv, int count)
{
    tlPoint center;
    tlPoint cov[3];

    ComputeCovariance(lv, count, cov, center);

    float l1, l2, l3;
    l1 = DotProd(cov[0], cov[0]);
    l2 = DotProd(cov[1], cov[1]);
    l3 = DotProd(cov[2], cov[2]);

    tlPoint n;

    if (l1 <= l2 && l1 <= l3)
    {
        n = CrossProd(cov[1], cov[2]);
    }
    else if (l2 <= l1 && l2 <= l3)
    {
        n = CrossProd(cov[0], cov[2]);
    }
    else
    {
        n = CrossProd(cov[0], cov[1]);
    }
    l1 = VecNormalize(n);
    assert(l1 > VERY_SMALL);
    l1 = (Fabs(n.x) >= Fabs(n.y) && Fabs(n.x) >= Fabs(n.z) ? n.x : (Fabs(n.y) >= Fabs(n.x) && Fabs(n.y) >= Fabs(n.z) ? n.y : n.z));
    if (l1 < 0) n *= -1.0f;
    return (tlCollisionVolume*) (new tlWallVolume(center, n));
}

tlCollisionVolume* FitCollVolume(tlPoint* lv, int count, CollisionVolumeTypeEnum type, int howdeep, bool hollow)
{
    if (type == WallVolumeType)
    {
        return FitWall(lv, count);
    }

    tlPoint center;
    tlPoint cov[3];


    ComputeCovariance(lv, count, cov, center);

    // if cannot orthogonalize the base, cannot fit a CollVolume, return NULL
    if (!PhOrthogonalizeBase(cov))
        return NULL;

    tlPoint r;

    float mx[3];
    float mn[3];
    float a;
    mx[0] = mx[1] = mx[2] = 0.0f;
    mn[0] = mn[1] = mn[2] = 0.0f;

    // get the box extension
    int i;
    for (i=0; i < count; i++)
    {
        r = lv[i] -  center;
        for (int j=0; j<3; j++)
        {
            a = DotProd(r, cov[j]);
            mx[j] = MAX(mx[j], a);
            mn[j] = MIN(mn[j], a);
        }
    }

    // readjust the center and the size
    for (i=0; i < 3; i++)
    {
        center = center + Average(mx[i], mn[i]) * cov[i];
        mx[i] = HDiff(mx[i], mn[i]);
    }

    tlCollisionVolume* el;

    if (howdeep > 1 && count > 2*MINCOUNTFORCOLLISIONVOLUMEFIT)
    {
        int count1 = 0, count2 = 0;
        tlPoint *lv1 = new tlPoint[count];
        tlPoint *lv2 = new tlPoint[count];

        if (mx[0] >= mx[1] && mx[0] >= mx[2]) i = 0;
        else if (mx[1] >= mx[0] && mx[1] >= mx[2]) i = 1;
        else i = 2;
        SubDividePoints(lv, count, center, cov[i], mx[i], lv1, count1, lv2, count2, hollow);

        if (count1 > MINCOUNTFORCOLLISIONVOLUMEFIT && count2 > MINCOUNTFORCOLLISIONVOLUMEFIT)
        {
            tlCollisionVolume* el1 = FitCollVolume(lv1, count1, type, howdeep - 1, hollow);
            tlCollisionVolume* el2 = NULL;
            if (el1 != NULL)
            {
                el2 = FitCollVolume(lv2, count2, type, howdeep - 1, hollow);
            }

            if (el1 != NULL && el2 != NULL)
            {
                #ifdef OptimizeBoundingVolume
                el = new tlBBoxVolume();
                #else
                el = BestBoundingFit(center, cov, mx, lv, count, type);
                assert(el->ContainsBB(el1) && el->ContainsBB(el2));
                #endif
                el->AddSubVolume(el1);
                el->AddSubVolume(el2);
            }
            else
            {
                if (el1 != NULL)
                    delete el1;
                if (el2 != NULL)
                    delete el2;
                el = BestBoundingFit(center, cov, mx, lv, count, type);
            }
        }
        else
        {
            el = BestBoundingFit(center, cov, mx, lv, count, type);
        }
        delete[] lv1;
        delete[] lv2;
    }
    else
    {
        el = BestBoundingFit(center, cov, mx, lv, count, type);
    }
    return el;
}

void SubDividePoints(tlPoint* lv, int count, tlPoint& center, tlPoint& axe, float axem, tlPoint* lv1, int& count1, tlPoint* lv2, int& count2, bool hollow)
{
    tlPoint r, *v, *vc = NULL;
    float a, ac = axem;

    for (int i=0; i < count; i++)
    {
        v = &lv[i];
        r = *v - center;
        a = DotProd(r, axe);

        if (Fabs(a) <= ac)
        {
            vc = v;
            ac = float(Fabs(a));
        }

        if (a >= 0)
        {
            lv1[count1++] = *v;
        }
        else
        {
            lv2[count2++] = *v;
        }
    }

    // need a common point between these two sets of points. vc intent to be the
    // most central point. If this point is not central enough, we'll use center
    // instead.
    if (hollow)
    {
        vc = NULL;
    }
    else if ((ac > axem / 2.0f) || vc == NULL)
    {
        vc = &center;
    }
    if (vc != NULL)
    {
        lv1[count1++] = *vc;
        lv2[count2++] = *vc;
    }
}

void ComputeCovariance( tlPoint* lv,
                        int count,
                        tlPoint* cov,
                        tlPoint& center)
{
    ComputeMean(lv, count, center);

    cov[0].x = cov[0].y = cov[0].z = 0;
    cov[1].x = cov[1].y = cov[1].z = 0;
    cov[2].x = cov[2].y = cov[2].z = 0;
    tlPoint r;

    // this calcul is as accurate as the vertices are homogeneously
    // spread over the object
    for (int i=0; i < count; i++)
    {
        r = lv[i] - center;
        cov[0].x += r.x * r.x;
        cov[0].y += r.x * r.y;
        cov[0].z += r.x * r.z;
        cov[1].y += r.y * r.y;
        cov[1].z += r.y * r.z;
        cov[2].z += r.z * r.z;
    }
    cov[1].x = cov[0].y;
    cov[2].x = cov[0].z;
    cov[2].y = cov[1].z;
}


void ComputeMean(tlPoint* lv, int count, tlPoint& center)
{
    center.x = center.y = center.z = 0;

    for (int i=0; i < count; i++)
    {
        center += lv[i];
    }
    center /= float(count);
}

// make sure the 3 vector are orthogonal, the weight a vector has on
// the base orientation is relative to its size.
bool PhOrthogonalizeBase(tlPoint* cov)
{
    float l1, l2, l3;

    l1 = VecNormalize(cov[0]);
    l2 = VecNormalize(cov[1]);
    l3 = VecNormalize(cov[2]);
    if (l1 <= VERY_SMALL)
    {
        return (false); // NULL dim in box
    }

    if (l2 <= VERY_SMALL)
    {
        return (false); // NULL dim in box
    }

    if (l3 <= VERY_SMALL)
    {
        return (false); // NULL dim in box
    }

    tlPoint *v1, *v2, *v3;
    if (l1 == l2 && l1 == l3)
    {
        v1 = &cov[0]; v2 = &cov[1]; v3 = &cov[2];
    }
    else
    {
        v1 = (l1 >= l2 && l1 >= l3 ? &cov[0] : (l2 >= l1 && l2 >= l3 ? &cov[1] : &cov[2]));
        v3 = (l1 <= l2 && l1 <= l3 ? &cov[0] : (l2 <= l1 && l2 <= l3 ? &cov[1] : &cov[2]));
        assert(v1 != v3);
        v2 = (v1 != &cov[0] && v3 != &cov[0] ? &cov[0] : (v1 != &cov[1] && v3 != &cov[1] ? &cov[1] : &cov[2]));
    }
    tlPoint tmp;
    tmp = CrossProd(*v1, *v2);
    if (VecNormalize(tmp) == 0)
    {
        *v2 = CrossProd(*v1, *v3);
        if (VecNormalize(*v2) == 0)
            return (false);
        *v3 = CrossProd(*v1, *v2);
    }
    else
    {
        *v3 = tmp;
        *v2 = CrossProd(*v1, *v3);
    }

#ifdef DEBUG
    l1 = *v1 % *v2;
    l2 = *v2 % *v3;
    l3 = *v1 % *v3;
    if (Fabs(l1)<VERY_SMALL && Fabs(l2)<VERY_SMALL && Fabs(l3)<VERY_SMALL)
        return false;
#endif
    return true;
}

const float FIT_DEV_RATIO = 0.05f;
const float FIT_MDEV_RATIO = 0.25f;
const float FIT_LEN_RATIO = 1.0f;

float GetDeviation(float val, float average)
{
    return float(Fabs(val - average) / MAX(val, average));
}

tlCollisionVolume* BestBoundingFit(tlPoint& center,
                            tlPoint* cov,
                            float* mx,
                            tlPoint* lv,
                            int count,
                            CollisionVolumeTypeEnum type)
{
    if (mx[0] >= mx[1] && mx[0] >= mx[2])
        return SubBestBoundingFit(center, cov[0], cov[1], cov[2], mx[0], mx[1], mx[2], lv, count, type);
    else if (mx[1] >= mx[0] && mx[1] >= mx[2])
        return SubBestBoundingFit(center, cov[1], cov[0], cov[2], mx[1], mx[0], mx[2], lv, count, type);
    else
        return SubBestBoundingFit(center, cov[2], cov[0], cov[1], mx[2], mx[0], mx[1], lv, count, type);
}

tlCollisionVolume* SubBestBoundingFit(tlPoint& center,
                            tlPoint& rmax,
                            tlPoint& r2,
                            tlPoint& r3,
                            float maxm,
                            float max2,
                            float max3,
                            tlPoint* lv,
                            int count,
                            CollisionVolumeTypeEnum type)
{
/*
    float av;

    av = (max1 + max2 + max3) / RMTOREAL(3.0);
    if (GetDeviation(max1, av) <= FIT_DEV_VALUE && GetDeviation(max1, av) <= FIT_DEV_VALUE && GetDeviation(max1, av) <= FIT_DEV_VALUE)
    {
        // sphere could be a good choice instead of square box... should do more testing there since
        // their collision behavior is very different
        // Would need to compare square box and sphere fit to know wich one is better.
    }
*/
    //test for the capsule. the capsule would be align with rmax
    //the radius would be MAX(max2, max3)
    //the half length of the cylindrical part / radius = ratio
    //the longer the ratio is, the more acceptable it is to accept deviation between max2 and max3
    float ratio = MIN(maxm / MAX(max3, max2) - 1.0f, (FIT_MDEV_RATIO / FIT_DEV_RATIO));
    float dev = GetDeviation(max2, max3);

    if (type == CapsuleVolumeType || (type == BestFit && ratio > 1.0f && dev <= FIT_DEV_RATIO * ratio))
    {
        float radius = 0;//MAX(max2, max3); // this may be pretty bad here... should do ...
        tlPoint r;
        for (int i=0; i < count; i++)
        {
            r = lv[i] - center; // from center to vertex
            r = r - (DotProd(r, rmax) * rmax); // from axe to vertex
            radius = MAX(radius, DotProd(r, r)); // max square distance between axe and vertices
        }
        radius = float(sqrt(radius));
        float len = maxm - radius;
        if (len > 0.1f * radius)
        {
            return new tlCylinderVolume(center, rmax, len * tlCollisionObject::sCollElRatio, radius * tlCollisionObject::sCollElRatio, false);
        }
        else
        {
            return new tlSphereVolume(center, radius * tlCollisionObject::sCollElRatio);
        }
    }
    // this is for a short cylinder with large radius
    else if (ratio < 0.05f && (type == CylinderVolumeType || type == BestFit))
    {
        float radius = maxm;
        tlPoint orientation;
        float len;
        if (max2 > max3)
        {
            orientation = r3;
            len = max3;
        }
        else
        {
            orientation = r2;
            len = max2;
        }
        return new tlCylinderVolume(center, rmax, len * tlCollisionObject::sCollElRatio, radius * tlCollisionObject::sCollElRatio, true);
    }
    // this is for a long thin cylinder
    else if (type == CylinderVolumeType || (type == BestFit && ratio < 1.0f && dev <= FIT_DEV_RATIO * ratio))
    {
        float radius = 0;//MAX(max3, max3); // this may be pretty bad here... should do ...
        tlPoint r;
        for (int i=0; i < count; i++)
        {
            r = lv[i] - center; // from center to vertex
            r = r - (DotProd(r, rmax) * rmax); // from axe to vertex
            radius = MAX(radius, DotProd(r, r)); // max square distance between axe and vertices
        }
        float len = maxm;
        radius = float(sqrt(radius));
        return new tlCylinderVolume(center, rmax, len * tlCollisionObject::sCollElRatio, radius * tlCollisionObject::sCollElRatio, true);
    }
    else if (type == OBBoxVolumeType || (type == BestFit))
    {
        return new tlOBBoxVolume(center, rmax, r2, r3, maxm * tlCollisionObject::sCollElRatio, max2 * tlCollisionObject::sCollElRatio, max3 * tlCollisionObject::sCollElRatio);
    }
    else //if (type == SphereVolumeType)
    {
        //float maxtot = (float)sqrt(Sqr(maxm)+Sqr(max2)+Sqr(max3));
        //return new tlSphereVolume(center, maxtot * tlCollisionObject::sCollElRatio);
        return new tlSphereVolume(center, maxm * tlCollisionObject::sCollElRatio);
    }
}

//*****************************************************************************
// tlCollisionObjectLoader
//*****************************************************************************
tlCollisionObjectLoader::tlCollisionObjectLoader() :
    tlEntityLoader(Simulation::Collision::OBJECT)
{
}

tlEntity*
tlCollisionObjectLoader::Load(tlDataChunk* chunk)
{
    return new tlCollisionObject(chunk);
}
