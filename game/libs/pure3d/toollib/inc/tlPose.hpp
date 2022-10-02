/*===========================================================================
    tlPose.hpp
    created May 23, 2001
    Liberty Walker

    Copyright (c)2001 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _TLPOSE_HPP
#define _TLPOSE_HPP

//
// This is a helper class that effectively allows you to
// animate this pose in toolLib... and examine the 
// data
//
#include "tlString.hpp"
class tlSkeleton;
class tlPoseJoint;

class tlPose
{
public:
    tlPose(const tlSkeleton* sourceSkeleton);
    ~tlPose(){}

    class tlPoseJoint
    {
    public:
        tlPoseJoint():name(0),parentIndex(-1){}
        ~tlPoseJoint(){if(name){strdelete(name);}}

        const char* GetName(){return name;}

        tlMatrix objectMatrix;
        tlMatrix worldMatrix;

        void ConcatMatrix(const tlMatrix& m) { worldMatrix = objectMatrix * m; }
        void FillRestPose(void){objectMatrix = restPose;}

    private:
        char*    name;
        int      parentIndex;
        tlMatrix restPose;

        friend class tlPose;
    };

    tlPose::tlPoseJoint* FindJoint(const char *jointname, int *index) const;
    tlPose::tlPoseJoint* GetJoint(int index) const {return joints[index];}
    int GetNumJoints() const {return joints.Count();}

    void Update(void);

private:
    tlPose();
    
    tlTable<tlPoseJoint*> joints;

};

#endif

