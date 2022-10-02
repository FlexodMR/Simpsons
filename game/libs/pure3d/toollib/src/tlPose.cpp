/*===========================================================================
    tlPose.cpp
    created May 23, 2001
    Liberty Walker

    Copyright (c)2001 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "tlSkeleton.hpp"
#include "tlPose.hpp"

#include <stdio.h>
#include <string.h>

//
// New pose class so you can animate it in toolib
//
tlPose::tlPose(const tlSkeleton* sourceSkeleton) : joints()
{
    if(sourceSkeleton)
    {
        int numjoints = sourceSkeleton->GetNumJoints();
        
        //
        // Create joints
        //
        for(int i=0;i<numjoints;i++)
        {
            tlSkeletonJoint* sourceJoint = sourceSkeleton->GetJoint(i);
            if(sourceJoint)
            {
                tlPoseJoint* newJoint = new tlPoseJoint;

                newJoint->name        = strnew(sourceJoint->GetName());
                newJoint->parentIndex = sourceJoint->GetParent();
                newJoint->restPose    = sourceJoint->GetRestPose();
                newJoint->objectMatrix.IdentityMatrix();
                newJoint->worldMatrix.IdentityMatrix();

                joints.Append(newJoint);        
            }
            else
            {
                printf("Warning: There was no skeleton joint at index %d\n", i);
            }
        }
    }
    else
    {
        printf("Warning: There was no skeleton to construct this tlPose\n");
    }
}

void tlPose::Update(void)
{
    int nJoint = joints.Count();

    //
    // Do the first joint
    //
    joints[0]->worldMatrix = joints[0]->objectMatrix;

    for(int i=1; i < nJoint; i++)
    {
        joints[i]->ConcatMatrix( joints[ joints[i]->parentIndex ]->worldMatrix );
    }
}

tlPose::tlPoseJoint* 
tlPose::FindJoint(const char *jointname, int *index) const
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






