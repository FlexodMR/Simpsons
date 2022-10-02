//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlFlexibleJoint.hpp"
#include "tlFlexibleJointChunk.hpp"
#include "tlSkeleton.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"

#include "tlString.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <memory.h>

#include "chunkids.hpp"

const int FLEXIBLEJOINT_VERSION = 1;

#define ShortToBool(s) ((s)==0?false:true)

//*****************************************************************************
// tlFlexibleJoint
//*****************************************************************************
tlFlexibleJoint::tlFlexibleJoint()
{
}

tlFlexibleJoint::tlFlexibleJoint(tlDataChunk *ch)
{
    LoadFromChunk(ch);
}

tlFlexibleJoint::~tlFlexibleJoint()
{
}

void tlFlexibleJoint::LoadFromChunk(tlDataChunk* ch)
{
    tlFlexibleJointChunk* objectChunk = dynamic_cast<tlFlexibleJointChunk*>(ch);
    assert(objectChunk);

    SetName(objectChunk->GetName());
    assert(objectChunk->GetVersion() == FLEXIBLEJOINT_VERSION);

    for (int i=0;i<objectChunk->SubChunkCount();i++)
    {
        tlDataChunk* subch = objectChunk->GetSubChunk(i);
        switch( subch->ID() )
        {
        case Simulation::Flexible::JOINT_PARAMETERS:
            {
                tlFlexibleJointParametersChunk* pc = dynamic_cast<tlFlexibleJointParametersChunk*>(subch);
                assert(pc);
                tlFlexibleParametersData* data = &mFlexibleParametersData.NewElem();
                data->SetName(pc->GetName());
                data->mStretch1Dkf = pc->GetStretch1Dkf();
                data->mStretch1Dkd = pc->GetStretch1Dkd();
                data->mBend1Dkf = pc->GetBend1Dkf();
                data->mBend1Dkd = pc->GetBend1Dkd();
                data->mWind1DKf = pc->GetWind1DKf();
                data->mUseLambda = false;
            }
            break;
        case Simulation::Flexible::JOINT_LAMBDA:
            {
                tlFlexibleLambdaJointParamChunk* pc = dynamic_cast<tlFlexibleLambdaJointParamChunk*>(subch);
                assert(pc);
                tlFlexibleParametersData* data = &mFlexibleParametersData.NewElem();
                data->SetName(pc->GetName());
                data->mLambdaF = pc->GetLambdaF();
                data->mLambdaD = pc->GetLambdaD();
                data->mKappaF = pc->GetKappaF();
                data->mKappaD = pc->GetKappaD();
                data->mWind1DKf = pc->GetWind1DKf();
                data->mUseLambda = true;
            }
            break;
        case Simulation::Flexible::JOINT_DEFINITION:
            {
                tlFlexibleJointDefinitionChunk* jc = dynamic_cast<tlFlexibleJointDefinitionChunk*>(subch);
                tlFlexibleJointData* jdata = &mFlexibleJointData.NewElem();
                jdata->SetName(jc->GetName());
                jdata->mParameters.SetName(jc->GetParametersName());
                jdata->mRestingPoseParameters.SetName(jc->GetRestingPosParametersName());
                jdata->mConnectionParameters.SetName(jc->GetConnectionParametersName());

                jdata->mGravity = jc->GetGravity();
                jdata->mSimMethod = jc->GetSimMethod();
                jdata->mUseRestingPos = jc->GetUseRestingPos();
                jdata->mRestMethod = jc->GetRestMethod();
                jdata->mUpdateMethod = jc->GetUpdateMethod();
                jdata->mUseVirtualJoint = jc->GetUseVirtualJoint();
                jdata->mSolver = jc->GetSolver();
                jdata->mExternalDensityFactor = jc->GetExternalDensityFactor();

                int numConnection = jc->GetNumConnection();
                FlexibleJointConnectionData* conlist = jc->FlexibleJointConnection();
                int i;
                for (i=0; i<numConnection; i++)
                {
                    tlFlexJointConnection* connection = &jdata->mConnectionList.NewElem();
                    connection->mIndex1 = conlist[i].index1;
                    connection->mIndex2 = conlist[i].index2;
                    connection->mLength = conlist[i].length;
                    connection->mOnBranch = ShortToBool(conlist[i].onbranch);
                }
                unsigned long *indexList = jc->GetFlexibleJointIndex();
                int numIndex = jc->GetNumJointIndex();
                for (i=0; i<numIndex; i++)
                {
                    jdata->mIndexList.NewElem() = indexList[i];
                }
                indexList = jc->GetFlexibleFixJointIndex();
                numIndex = jc->GetNumFixJointIndex();
                for (i=0; i<numIndex; i++)
                {
                    jdata->mFixIndexList.NewElem() = indexList[i];
                }
                indexList = jc->GetEndOfBranchIndex();
                numIndex = jc->GetNumEndOfBranchIndex();
                for (i=0; i<numIndex; i++)
                {
                    jdata->mEndOfBranchList.NewElem() = indexList[i];
                }
            }
            break;
        default:
            break;
        }
    }
}

tlDataChunk* tlFlexibleJoint::Chunk()
{
    tlFlexibleJointChunk* objectChunk = new tlFlexibleJointChunk;

    assert(GetName());
    objectChunk->SetName(GetName());
    objectChunk->SetVersion(FLEXIBLEJOINT_VERSION);

    int i;

    for (i=0; i<mFlexibleParametersData.GetSize(); i++)
    {
        if (mFlexibleParametersData[i].mUseLambda)
        {
            tlFlexibleLambdaJointParamChunk* pc = new tlFlexibleLambdaJointParamChunk;
            assert(mFlexibleParametersData[i].GetName());
            pc->SetName(mFlexibleParametersData[i].GetName());
            pc->SetLambdaF(mFlexibleParametersData[i].mLambdaF);
            pc->SetLambdaD(mFlexibleParametersData[i].mLambdaD);
            pc->SetKappaF(mFlexibleParametersData[i].mKappaF);
            pc->SetKappaD(mFlexibleParametersData[i].mKappaD);
            pc->SetWind1DKf(mFlexibleParametersData[i].mWind1DKf);
            objectChunk->AppendSubChunk(pc);
        }
        else
        {
            tlFlexibleJointParametersChunk* pc = new tlFlexibleJointParametersChunk;
            assert(mFlexibleParametersData[i].GetName());
            pc->SetName(mFlexibleParametersData[i].GetName());
            pc->SetStretch1Dkf(mFlexibleParametersData[i].mStretch1Dkf);
            pc->SetStretch1Dkd(mFlexibleParametersData[i].mStretch1Dkd);
            pc->SetBend1Dkf(mFlexibleParametersData[i].mBend1Dkf);
            pc->SetBend1Dkd(mFlexibleParametersData[i].mBend1Dkd);
            pc->SetWind1DKf(mFlexibleParametersData[i].mWind1DKf);
            objectChunk->AppendSubChunk(pc);
        }
    }
    for (i=0; i<mFlexibleJointData.GetSize(); i++)
    {
        tlFlexibleJointData* jdata = &mFlexibleJointData[i];
        tlFlexibleJointDefinitionChunk* jc = new tlFlexibleJointDefinitionChunk;
        assert(jdata->GetName());
        jc->SetName(jdata->GetName());

        assert(jdata->mParameters.GetName());
        assert(jdata->mParameters.GetName());
        assert(jdata->mParameters.GetName());
        jc->SetParametersName(jdata->mParameters.GetName());
        jc->SetRestingPosParametersName(jdata->mRestingPoseParameters.GetName());
        jc->SetConnectionParametersName(jdata->mConnectionParameters.GetName());

        jc->SetGravity(jdata->mGravity);
        jc->SetSimMethod(jdata->mSimMethod);
        jc->SetUseRestingPos(jdata->mUseRestingPos);
        jc->SetRestMethod(jdata->mRestMethod);
        jc->SetUpdateMethod(jdata->mUpdateMethod);
        jc->SetUseVirtualJoint(jdata->mUseVirtualJoint);
        jc->SetSolver(jdata->mSolver);
        jc->SetExternalDensityFactor(jdata->mExternalDensityFactor);
  
        int numConnection = jdata->mConnectionList.GetSize();
        jc->SetNumConnection(numConnection);
        if (numConnection)
        {
            FlexibleJointConnectionData* connection = new FlexibleJointConnectionData[numConnection];
            for (int i=0; i<numConnection; i++)
            {
                connection[i].index1 = jdata->mConnectionList[i].mIndex1;
                connection[i].index2 = jdata->mConnectionList[i].mIndex2;
                connection[i].length = jdata->mConnectionList[i].mLength;
                connection[i].onbranch = jdata->mConnectionList[i].mOnBranch;
            }
            jc->SetFlexibleJointConnection(connection, numConnection);
        }

        int numHinge = jdata->mHingeList.GetSize();
        jc->SetNumHinge(numHinge);
        if (numHinge)
        {
            FlexibleJointHingeData* hinge = new FlexibleJointHingeData[numHinge];
            for (int i=0; i<numHinge; i++)
            {
                hinge[i].index1 = jdata->mHingeList[i].mIndex1;
                hinge[i].index2 = jdata->mHingeList[i].mIndex2;
                hinge[i].index3 = jdata->mHingeList[i].mIndex3;
            }
            jc->SetFlexibleJointHinge(hinge, numHinge);
        }

        jc->SetNumJointIndex(jdata->mIndexList.GetSize());
        if (jdata->mIndexList.GetSize() > 0)
        {
            jc->SetFlexibleJointIndex(&(jdata->mIndexList[0]), jdata->mIndexList.GetSize());
        }
        jc->SetNumFixJointIndex(jdata->mFixIndexList.GetSize());
        if (jdata->mFixIndexList.GetSize() > 0)
        {
            jc->SetFlexibleFixJointIndex(&(jdata->mFixIndexList[0]), jdata->mFixIndexList.GetSize());
        }
        jc->SetNumEndOfBranchIndex(jdata->mEndOfBranchList.GetSize());
        if (jdata->mEndOfBranchList.GetSize() > 0)
        {
            jc->SetEndOfBranchIndex(&(jdata->mEndOfBranchList[0]), jdata->mEndOfBranchList.GetSize());
        }
        objectChunk->AppendSubChunk(jc);
    }
    return objectChunk;
}

void tlFlexibleJoint::SetFromSimData(tlSkeleton* skel, tlSimDataHolder* data)
{
    SetName(data->GetName());
    mFlexibleParametersData = data->mFlexibleParametersData;
    mFlexibleJointData = data->mFlexibleJointData;


    int i;

    tlMatrix* worldJointRestPose = new tlMatrix[skel->GetNumJoints()];
    ComputeJointRestPose(skel, worldJointRestPose);

    // first look for non-valid definition
    for (i=mFlexibleJointData.GetSize()-1; i>=0; i--)
    {
        tlFlexibleJointData* jdata = &mFlexibleJointData[i];
        if (jdata->mBranchList.GetSize() == 0)
        {
            printf("Flexible definition %s of object %s had no branch, this definition will be ignored.\n", jdata->GetName(), GetName());
            mFlexibleJointData.RemoveAt(i);
        }
        else if (jdata->mParameters.GetName() == NULL) 
        {
            printf("Flexible definition %s of object %s no parameters defined.\n", jdata->GetName(), GetName());
            printf("Default parameters will be provided for now\n");
            jdata->mParameters.SetName("DefaultParameters");
        }
    }
    
    for (i=0; i<mFlexibleJointData.GetSize(); i++)
    {
        tlFlexibleJointData* jdata = &mFlexibleJointData[i];
        // look for basic definition conflicts
        int j;
        bool conflict = false;
        for (j=i+1; j<mFlexibleJointData.GetSize(); j++)
        {
            if (strcmp(jdata->GetName(), mFlexibleJointData[j].GetName()) == 0)
            {
                if (jdata->mBranchList.Contains(mFlexibleJointData[j].mBranchList[0]))
                {
                    printf("\nThe flexible joint definition %s for object %s seems to appears twice\n", jdata->GetName(), GetName());
                    printf("The second one will be ignored for now.\n");
                    break;
                }
                else
                {
                    char newName[256];
                    strcpy(newName, jdata->GetName());
                    strcat(newName, "2");
                    printf("\nThe flexible joint definition %s for object %s seems to appears twice\n", jdata->GetName(), GetName());
                    printf("The definition seems to be different so the second one will be renamed to %s for now.\n", newName);
                }
                break;
            }
        }
        if (conflict)
        {
            mFlexibleJointData.RemoveAt(j);
        }

        // make sure all the parameters names are correctly set, fix it if need
        if (jdata->mConnectionList.GetSize() > 0)
        {
            if (jdata->mConnectionParameters.GetName() == NULL)
            {
                printf("Flexible definition %s of object %s has connection but no connection parameters defined.\n", jdata->GetName(), GetName());
                jdata->mConnectionParameters.SetName(jdata->mParameters.GetName());
            }
        }
        else
        {
            jdata->mConnectionParameters.SetName("NoData");
        }

        if (jdata->mUseRestingPos)
        {
            if (jdata->mRestingPoseParameters.GetName() == NULL)
            {
                printf("Flexible definition %s of object %s has UseRestingPos enabled but no RestingPos parameters defined.\n", jdata->GetName(), GetName());
                jdata->mRestingPoseParameters.SetName(jdata->mParameters.GetName());
            }
        }
        else
        {
            jdata->mRestingPoseParameters.SetName("NoData");
        }

        bool found = false;
        bool foundUseRestingPos = false;
        bool foundConnection = false;
        for (j=0; j<mFlexibleParametersData.GetSize(); j++)
        {
            if (strcmp(jdata->mParameters.GetName(), mFlexibleParametersData[j].GetName()) == 0)
            {
                found = true;
            }
            if (strcmp(jdata->mParameters.GetName(), jdata->mConnectionParameters.GetName()) != 0)
            {
                if (strcmp(jdata->mConnectionParameters.GetName(), mFlexibleParametersData[j].GetName()) == 0)
                {
                    foundConnection = true;
                }
            }
            if (strcmp(jdata->mParameters.GetName(), jdata->mRestingPoseParameters.GetName()) != 0)
            {
                if (strcmp(jdata->mRestingPoseParameters.GetName(), mFlexibleParametersData[j].GetName()) == 0)
                {
                    foundUseRestingPos = true;
                }
            }
        }
        if (!found)
        {
            if (strcmp(jdata->mParameters.GetName(), "DefaultParameters") != 0)
            {
                printf("\nFlexible parameters %s declared in joint definition %s for object %s is not found\n", jdata->mParameters.GetName(), jdata->GetName(), GetName());
                printf("Default value will be provided for now\n");
            }
            mFlexibleParametersData.NewElem().SetName(jdata->mParameters.GetName());
        }
        if (!foundUseRestingPos && jdata->mUseRestingPos)
        {
            if (strcmp(jdata->mRestingPoseParameters.GetName(), "DefaultParameters") != 0)
            {
                printf("\nFlexible parameters %s declared in joint definition %s for object %s is not found\n", jdata->mRestingPoseParameters.GetName(), jdata->GetName(), GetName());
                printf("Default value will be provided for now\n");
            }
            mFlexibleParametersData.NewElem().SetName(jdata->mRestingPoseParameters.GetName());
        }
        if (!foundConnection && jdata->mConnectionList.GetSize() > 0)
        {
            if (strcmp(jdata->mConnectionParameters.GetName(), "DefaultParameters") != 0)
            {
                printf("\nFlexible parameters %s declared in joint definition %s for object %s is not found\n", jdata->mConnectionParameters.GetName(), jdata->GetName(), GetName());
                printf("Default value will be provided for now\n");
            }
            mFlexibleParametersData.NewElem().SetName(jdata->mConnectionParameters.GetName());
        }
    }

    // set the definitions mIndexList and complete the connections
    for (i=0; i<mFlexibleJointData.GetSize(); i++)
    {
        tlFlexibleJointData* jdata = &mFlexibleJointData[i];
        int j;
        for (j=0; j<jdata->mBranchList.GetSize(); j++)
        {
            int branchIndex = jdata->mBranchList[j];
            if (!jdata->mFixIndexList.Contains(branchIndex))
                jdata->mFixIndexList.NewElem() = branchIndex;

            int currentIndex = skel->GetNumJoints() - 1;
            int numChildren = 0;
            bool endOfBranchFound = false;

            while (currentIndex > branchIndex)
            {
                if (AreParented(skel, branchIndex, currentIndex))
                {
                    numChildren++;
                    assert(!jdata->mIndexList.Contains(currentIndex));
                    jdata->mIndexList.Add(currentIndex);

                    if (jdata->mAutomaticConnectionOnBranch)
                    {
                        int currentIndexParent = skel->GetJoint(currentIndex)->GetParent();
                        jdata->mConnectionList.NewElem().Set(currentIndexParent, currentIndex);
                    }
                    if (jdata->mAutomaticHingeOnBranch)
                    {
                        int currentIndexParent = skel->GetJoint(currentIndex)->GetParent();
                        int currentIndexParentParent = skel->GetJoint(currentIndexParent)->GetParent();

                        if (currentIndexParentParent >= branchIndex && currentIndexParent+1 == currentIndex && currentIndexParentParent+1 == currentIndexParent)
                        {
                            jdata->mHingeList.NewElem().Set(currentIndexParentParent, currentIndexParent, currentIndex);
                        }
                    }
                    if (!endOfBranchFound)
                    {
                        endOfBranchFound = true;
                        if (!jdata->mFixIndexList.Contains(currentIndex))
                        {
                            jdata->mEndOfBranchList.NewElem() = currentIndex;
                        }
                    }
                }
                currentIndex--;
            }
            if (numChildren == 0)
            {
                printf("Branch %s of Fexible joint definition %s of object %s is at the end of the branch\n", skel->GetJoint(branchIndex)->GetName(), jdata->GetName(), GetName());
                printf("The branch will be ignored\n");
                continue;
            }

            assert(!jdata->mIndexList.Contains(branchIndex));
            jdata->mIndexList.Add(branchIndex);

        }
        unsigned long numjoint = (unsigned long)skel->GetNumJoints();
        // remove duplicated connections and compute the connection len according to the rest pose
        for (j=0; j<jdata->mConnectionList.GetSize(); j++)
        {
            // we know that i1 < i2
            unsigned long i1 = jdata->mConnectionList[j].mIndex1;
            unsigned long i2 = jdata->mConnectionList[j].mIndex2;

            if (i1 >= numjoint || i2 >= numjoint)
                printf("\n Connection with joint index larger than skeleton number of joints has been deteected.\n");

            assert(i1 < numjoint && i2 < numjoint);
            
            for (int k=jdata->mConnectionList.GetSize()-1; k>j; k--)
            {
                if (   i1 == jdata->mConnectionList[k].mIndex1
                     && i2 == jdata->mConnectionList[k].mIndex2)
                {
                    jdata->mConnectionList.RemoveAt(k);
                }
            }
            tlPoint dp = worldJointRestPose[i1].GetRow(3) - worldJointRestPose[i2].GetRow(3);
            jdata->mConnectionList[j].mLength = dp.Length();
            jdata->mConnectionList[j].mOnBranch = skel->GetJoint(i2)->GetParent() == int(i1) ? true : false;
            
            if (!jdata->mIndexList.Contains(i1) || !jdata->mIndexList.Contains(i2))
            {
                printf("FlexJoint %s, definition %s, connection %d %d not valid. ABORTED!\n", GetName(), jdata->GetName(), i1, i2);
            }
            assert(jdata->mIndexList.Contains(i1));
            assert(jdata->mIndexList.Contains(i2));
        }
        // remove duplicated branches
        for (j=0; j<jdata->mHingeList.GetSize(); j++)
        {
            // we know that i1 < i2
            unsigned long i1 = jdata->mHingeList[j].mIndex1;
            unsigned long i2 = jdata->mHingeList[j].mIndex2;
            unsigned long i3 = jdata->mHingeList[j].mIndex3;
            
            if (i1 >= numjoint || i2 >= numjoint || i3 >= numjoint)
                printf("\n Hinge with joint index larger than skeleton number of joints has been deteected.\n");

            assert(i1 < numjoint && i2 < numjoint && i3 < numjoint);

            for (int k=jdata->mHingeList.GetSize()-1; k>j; k--)
            {
                if (   i1 == jdata->mHingeList[k].mIndex1
                     && i2 == jdata->mHingeList[k].mIndex2
                     && i3 == jdata->mHingeList[k].mIndex3)
                {
                    jdata->mHingeList.RemoveAt(k);
                }
            }
            if (!jdata->mIndexList.Contains(i1) || !jdata->mIndexList.Contains(i2) || !jdata->mIndexList.Contains(i3))
            {
                printf("FlexJoint %s, definition %s, branch %d %d %d not valid. ABORTED!\n", GetName(), jdata->GetName(), i1, i2, i3);
            }
            assert(jdata->mIndexList.Contains(i1));
            assert(jdata->mIndexList.Contains(i2));
            assert(jdata->mIndexList.Contains(i3));
        }

        // order the lists
        for (j=0; j<jdata->mIndexList.GetSize(); j++)
        {
            for (int k=0; k<j; k++)
            {
                if (jdata->mIndexList[j] < jdata->mIndexList[k])
                {
                    unsigned long tmp = jdata->mIndexList[j];
                    jdata->mIndexList.RemoveAt(j);
                    jdata->mIndexList.InsertAt(k, tmp);
                    break;
                }
            }
        }
        for (j=0; j<jdata->mFixIndexList.GetSize(); j++)
        {
            for (int k=0; k<j; k++)
            {
                if (jdata->mFixIndexList[j] < jdata->mFixIndexList[k])
                {
                    unsigned long tmp = jdata->mFixIndexList[j];
                    jdata->mFixIndexList.RemoveAt(j);
                    jdata->mFixIndexList.InsertAt(k, tmp);
                    break;
                }
            }
        }
        for (j=0; j<jdata->mEndOfBranchList.GetSize(); j++)
        {
            for (int k=0; k<j; k++)
            {
                if (jdata->mEndOfBranchList[j] < jdata->mEndOfBranchList[k])
                {
                    unsigned long tmp = jdata->mEndOfBranchList[j];
                    jdata->mEndOfBranchList.RemoveAt(j);
                    jdata->mEndOfBranchList.InsertAt(k, tmp);
                    break;
                }
            }
        }
        for (j=0; j<jdata->mConnectionList.GetSize(); j++)
        {
            for (int k=0; k<j; k++)
            {
                if (jdata->mConnectionList[j].mIndex1 < jdata->mConnectionList[k].mIndex1)
                {
                    tlFlexJointConnection tmp = jdata->mConnectionList[j];
                    jdata->mConnectionList.RemoveAt(j);
                    jdata->mConnectionList.InsertAt(k, tmp);
                    break;
                }
            }
        }
        for (j=0; j<jdata->mHingeList.GetSize(); j++)
        {
            for (int k=0; k<j; k++)
            {
                if (jdata->mHingeList[j].mIndex1 < jdata->mHingeList[k].mIndex1)
                {
                    tlFlexJointHinge tmp = jdata->mHingeList[j];
                    jdata->mHingeList.RemoveAt(j);
                    jdata->mHingeList.InsertAt(k, tmp);
                    break;
                }
            }
        }
    }

    // finally look for interference between different definitions
    for (i=0; i<mFlexibleJointData.GetSize(); i++)
    {
        tlFlexibleJointData* jdata = &mFlexibleJointData[i];
        for (int j=i+1; j<mFlexibleJointData.GetSize(); j++)
        {
            tlFlexibleJointData* jdata2 = &mFlexibleJointData[j];
            for (int k=0; k<jdata2->mIndexList.GetSize(); k++)
            {
                assert(!jdata->mIndexList.Contains(jdata2->mIndexList[k]));
            }
        }
    }
}

/* this would fail resolving a branch that sub-divided
int tlFlexibleJoint::FindEndOfBranch(tlSkeleton* skel, int branchIndex)
{
    for (int k=skel->GetNumJoints()-1; k>=branchIndex; k--)
    {
        if (AreParented(skel, branchIndex, k))
            return k;
    }
    return -1;
}
*/

bool tlFlexibleJoint::AreParented(tlSkeleton* skel, int parent, int child)
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

void tlFlexibleJoint::ComputeJointRestPose(tlSkeleton* skel, tlMatrix* worldJointRestPose)
{
    worldJointRestPose[0] = ((tlSkeletonJoint*)skel->GetJoint(0))->GetRestPose();
    int i;
    for(i=0; i<skel->GetNumJoints(); i++)
    {
        int parent = skel->GetJoint(i)->GetParent();
        worldJointRestPose[i] = ((tlSkeletonJoint*)skel->GetJoint(i))->GetRestPose();
        tlMatrix m = worldJointRestPose[i] * worldJointRestPose[parent];
        worldJointRestPose[i] = m;
    }

}

//*****************************************************************************
// tlFlexibleJointLoader
//*****************************************************************************
tlFlexibleJointLoader::tlFlexibleJointLoader() : 
    tlEntityLoader(Simulation::Flexible::JOINT)
{
}
tlEntity* 
tlFlexibleJointLoader::Load(tlDataChunk* chunk)
{
    return new tlFlexibleJoint(chunk);
}
