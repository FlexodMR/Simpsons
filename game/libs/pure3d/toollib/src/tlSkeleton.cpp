/*===========================================================================
    File:: tlSkeleton.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlSkeleton.hpp"
#include <assert.h>
#include <string.h>
#include <stdio.h>

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlTypes.hpp"
#include "tlSkeletonChunk16.hpp"
#include "tlMatrix.hpp"
#include "tlString.hpp"


int CompareSort( const void *elem1, const void *elem2 )
{
    tlSkeletonJoint* joint1 = *(tlSkeletonJoint**)(elem1);
    tlSkeletonJoint* joint2 = *(tlSkeletonJoint**)(elem2);


    if(joint1 && joint2)
    {
        //
        // Sort with the biggest last
        //
        int diff = joint1->SortPriority() - joint2->SortPriority();
        
        return(diff);
    }
    else
    {
        return(0);
    } 
} 


//*****************************************************************************
// tlSkeleton
//*****************************************************************************
void tlSkeleton::Sort(void)
{
    //
    // Other objects such as tlSkins referance this structure...
    // it's safer to sort only once.
    //
    if(sortedIndices != 0)
    {
        assert( 0 && "Only safe to sort tlSkeleton once returning from call");
        return;
    }

    //
    // Remember who your Parents were
    //
    char** oldNames = new char*[joints.Count()];
    char** oldParentNames = new char*[joints.Count()];
    sortedIndices = new int[joints.Count()];
    
    int i;

    assert(oldParentNames && oldNames && sortedIndices && "couldn't allocate array");

    for(i = 0; i<joints.Count(); i++)
    {
        // This is need to know where the 
        // end of the list is for sorting to the back
        joints[i]->SetEndBasePriority(joints.Count());
        oldNames[i] = strnew(joints[i]->GetName());
        oldParentNames[i] = strnew(joints[joints[i]->GetParent()]->GetName());

    }
    joints.Sort(CompareSort);

    //
    // After the sort need to find you parents new home
    //
    for(i = 0; i<joints.Count(); i++)
    {
        int newIndex;
        int newParentIndex;

        FindJoint(oldNames[i], &newIndex);      
        FindJoint(oldParentNames[i], &newParentIndex);      

        joints[newIndex]->SetParent(newParentIndex);
        sortedIndices[i] = newIndex;
    }

    for(i = 0; i<joints.Count(); i++)
    {
        //
        // Deleting strings
        //
        strdelete(oldNames[i]);
        strdelete(oldParentNames[i]);
    }

    delete oldNames;
    delete oldParentNames;
}


tlSkeleton::tlSkeleton() : 
        joints(),
        version(0),
        sortedIndices(0)
{
}  

tlSkeleton::tlSkeleton(tlDataChunk* ch) :
        joints(),
        version(0),
        sortedIndices(0)
{
    LoadFromChunk16(ch);
}

tlSkeleton::~tlSkeleton()
{
    for(int i = 0; i < joints.Count() ; i++)
    {
        delete joints[i];
    }

    delete(sortedIndices);
}

tlDataChunk* 
tlSkeleton::Chunk16()
{
    tlSkeletonChunk16* result = new tlSkeletonChunk16;
    result->SetName(GetName());
    result->SetNumJoints(joints.Count());
    result->SetVersion(version);
    
    //
    // make sure that the mapping is correct
    //
    ResolveMappedIndicies();

    for(int i = 0; i < joints.Count(); i++)
    {
        result->AppendSubChunk(joints[i]->Chunk16());
    }

    return result;
}

void
tlSkeleton::LoadFromChunk16(tlDataChunk* ch)
{
    tlSkeletonChunk16* skeletonch = dynamic_cast<tlSkeletonChunk16*>(ch);
    assert(skeletonch);

    SetName(skeletonch->Name());
    version = skeletonch->Version();

    for( int i = 0 ; i < skeletonch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = skeletonch->GetSubChunk(i);
        switch(subch->ID())
        {
            case P3D_SKELETON_JOINT:
            {
                tlSkeletonJoint* jnt = new tlSkeletonJoint(subch);
                joints.Append(jnt);
                break;
            }
            default:
                break;
        }
    }
}


tlSkeletonJoint* 
tlSkeleton::FindJoint(const char *jointname, int *index) const
{
    if (index != NULL) *index = -1;
    if (jointname == NULL) return NULL;

    int a;
    for (a = 0; a < joints.Count(); a++)
    {
        if (!strcmp(joints[a]->GetName(), jointname))
        {
            if (index != NULL) *index = a;
            return joints[a];
        }
    } 

    return NULL;
}

int tlSkeleton::AddJoint(tlSkeletonJoint* joint)
{
    int position = joints.Append(joint); 
    joint->SetIndex(position); // init priority with initial position
    return position;
}

void
tlSkeleton::Scale(float x, float y, float z)
{
    int count = joints.Count();
    for(int i = 0; i < count ; i++)
    {
        joints[i]->Scale(x,y,z);
    }
}


void
tlSkeleton::Transform(tlMatrix &m)
{
    int count = joints.Count();
    for(int i = 0; i < count ; i++)
    {
        joints[i]->Transform(m);
    }
}


tlSkeleton::JointRemovalStatus 
tlSkeleton::RemoveJoint(const char *jointname, bool fail_if_not_leaf)
{
    if (jointname == NULL) return NotFound;

    int index;
    tlSkeletonJoint *joint = FindJoint(jointname, &index);
    if (joint == NULL) return NotFound;

    return RemoveJoint(index, fail_if_not_leaf);
}

tlSkeleton::JointRemovalStatus 
tlSkeleton::RemoveJoint(int index, bool fail_if_not_leaf)
{
    if ((index < 0)||(index>joints.Count())) return NotFound;

    int a;
    for (a = index + 1; a < joints.Count(); a++)
    {
        if (joints[a]->GetParent() == index) 
        {
            if (fail_if_not_leaf) return HasChildren;
            else
            {
                RemoveJoint(a, false);
                a = index; // start looking all over again
                continue;
            }
        }
    }   

    joints.Delete(index, 1);
    return Removed;
}

int tlSkeleton::GetSortedJointIndex(int oldIndex) const
{
    if(sortedIndices == 0)
    {
        //
        // Skeleton not sorted
        //
        return(oldIndex);
    }
    else
    {
        if( (oldIndex>=0) && (oldIndex<joints.Count()))
        {
            return(sortedIndices[oldIndex]);
        }
        else
        {
            printf("Warning: Trying to access a joint index out or range returning the passed joint index\n");
            return(oldIndex);
        }
    }
}

void tlSkeleton::ResolveMappedIndicies(void)
{
    int a;

    for (a = 0; a < joints.Count(); a++)
    {
        int mappedIndex = -1;
        const char* mappedJointName = joints[a]->GetMappedJointName();

        if(mappedJointName)
        {
            if(FindJoint(mappedJointName, &mappedIndex))
            {
                joints[a]->SetMappedJointIndex(mappedIndex);
            }
            else
            {
                printf("Warning: Mirror mapping might not work, mapped joint:%s \
                          cannot be found for joint:%s defaulting to the same joint\n", 
                          mappedJointName, joints[a]->GetName());
                joints[a]->SetMappedJointIndex(a);
            }
        }
        else
        {
            //
            // This handles the case where there is no 
            // mappedJointName but the joints were 
            // specified explicitly
            //
            if(joints[a]->GetMappedJointIndex() == -1)
            {
                printf("Warning: Mirror mapping might not work, joint:%s \
                          has mapped joint index of -1 defaulting to the same joint\n", 
                          joints[a]->GetName());
                joints[a]->SetMappedJointIndex(a);

            }
        }
    }
}
 
//*****************************************************************************
// tlSkeletonJoint
//*****************************************************************************
tlSkeletonJoint::tlSkeletonJoint() :
        parent(0),
        dof(-1),
        freeAxes(-1),
        primaryAxis(-1),
        secondaryAxis(-1),
        twistAxis(-1),
        mappedJointName(0),
        mappedJointIndex(0),
        xAxisMap(1.0),
        yAxisMap(1.0),
        zAxisMap(1.0),
        preserveBoneLengths(false),
        jointIndex(0),
        baseSortPriority(0),
        endOffsetPriority(0)
{
    restPose.Init();
}

tlSkeletonJoint::tlSkeletonJoint(tlDataChunk* ch) :
        parent(0),
        dof(-1),
        freeAxes(-1),
        primaryAxis(-1),
        secondaryAxis(-1),
        twistAxis(-1),
        mappedJointName(0),
        mappedJointIndex(0),
        xAxisMap(1.0),
        yAxisMap(1.0),
        zAxisMap(1.0),
        preserveBoneLengths(false),
        jointIndex(0),
        baseSortPriority(0),
        endOffsetPriority(0)
{
    LoadFromChunk16(ch);
}

tlSkeletonJoint::~tlSkeletonJoint()
{
    if(mappedJointName)
    {
        strdelete(mappedJointName);
        mappedJointName = 0;
    }
}

tlDataChunk* 
tlSkeletonJoint::Chunk16()
{
    tlSkeletonJointChunk16* result = new tlSkeletonJointChunk16;
    result->SetName(GetName());
    
    result->SetParent(parent);
    result->SetDOF(dof);
    result->SetFreeAxes(freeAxes);
    result->SetPrimaryAxis(primaryAxis);
    result->SetSecondaryAxis(secondaryAxis);
    result->SetTwistAxis(twistAxis);

    result->SetRestPose(restPose);

    //
    // Need a subchunk for the mirror map
    //
    tlSkeletonJointMirrorMapChunk16* subChuck = new tlSkeletonJointMirrorMapChunk16;
    subChuck->SetMappedJointIndex(mappedJointIndex);
    subChuck->SetXAxisMap(xAxisMap);
    subChuck->SetYAxisMap(yAxisMap);
    subChuck->SetZAxisMap(zAxisMap);

    result->AppendSubChunk(subChuck);

    //
    // New sub chuck for preserving the file format
    //
    tlSkeletonJointBonePreserveChunk16* subChuck2 = new tlSkeletonJointBonePreserveChunk16;
    subChuck2->SetPreserveBoneLengths(preserveBoneLengths);
    result->AppendSubChunk(subChuck2);

    return result;
}

void
tlSkeletonJoint::LoadFromChunk16(tlDataChunk* ch)
{
    tlSkeletonJointChunk16* jointch = dynamic_cast<tlSkeletonJointChunk16*>(ch);
    assert(jointch);
    
    SetName(jointch->GetName());
    
    parent = jointch->GetParent();
    dof = jointch->GetDOF();
    freeAxes = jointch->GetFreeAxes();
    primaryAxis = jointch->GetPrimaryAxis();
    secondaryAxis = jointch->GetSecondaryAxis();
    twistAxis = jointch->GetTwistAxis();

    restPose = jointch->GetRestPose();

    //
    // Do SubChunks
    //
    for( int i = 0 ; i < jointch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = jointch->GetSubChunk(i);
        switch(subch->ID())
        {
            case P3D_SKELETON_JOINT_MIRROR_MAP:
            {
                tlSkeletonJointMirrorMapChunk16* mirJointCh = dynamic_cast<tlSkeletonJointMirrorMapChunk16*>(subch);
                assert(mirJointCh);

                mappedJointIndex = mirJointCh->GetMappedJointIndex();
                xAxisMap = mirJointCh->GetXAxisMap();
                yAxisMap = mirJointCh->GetYAxisMap();
                zAxisMap = mirJointCh->GetZAxisMap();

                break;
            }
            case P3D_SKELETON_JOINT_FIX_FLAG:
            {
                tlSkeletonJointBonePreserveChunk16* jointBone = dynamic_cast<tlSkeletonJointBonePreserveChunk16*>(subch);
                assert(jointBone);
                
                preserveBoneLengths = jointBone->GetPreserveBoneLengths()?true:false;
        
                break;
            }
            default:
                break;
        }
    }



}

void
tlSkeletonJoint::Scale(float x, float y, float z)
{
    restPose[3][0] *= x;
    restPose[3][1] *= y;
    restPose[3][2] *= z;
}

void             
tlSkeletonJoint::Transform(tlMatrix &m)
{
    tlPoint t = restPose.GetRow(3);
    tlPoint r = t * m;
    restPose.SetRow(3, r);
}

void             
tlSkeletonJoint::SetMappedJointName(const char* name)
{
    if(mappedJointName)
    {
        strdelete(mappedJointName);
    }

    mappedJointName = strnew(name);
}

//*****************************************************************************
// tlSkeletonLoader
//*****************************************************************************
tlSkeletonLoader::tlSkeletonLoader() : 
tlEntityLoader(P3D_SKELETON)
{            
}

tlEntity*
tlSkeletonLoader::Load(tlDataChunk* chunk)
{
    return new tlSkeleton(chunk);
}
