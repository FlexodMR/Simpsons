/*===========================================================================
    File:: tlSkeleton.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSKELETON_HPP
#define _TLSKELETON_HPP

#include "tlEntity.hpp"
#include "tlTable.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

class tlSkeletonJoint;
class tlDataChunk;
class tlInventory;

//*****************************************************************************
// tlSkeleton
//*****************************************************************************
class tlSkeleton : public tlEntity
{
public:
    tlSkeleton();
    explicit tlSkeleton(tlDataChunk* ch);
    virtual ~tlSkeleton();

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16();

    tlSkeletonJoint* FindJoint(const char *jointname, int *index) const;
    tlSkeletonJoint* GetJoint(int index) const {return joints[index];}
    int GetNumJoints() const {return joints.Count();}

    // returns the index at which the joint was inserted
    int AddJoint(tlSkeletonJoint*);

    // Will remove a joint from a hierarchy, 
    // if fail_if_not_leaf is true, joints with children will NOT be removed.
    // if fail_if_not_leaf is false, joints with children will be removed, as will their children.
    // returns true if joint was removed
    enum JointRemovalStatus { Removed, NotFound, HasChildren };
    JointRemovalStatus RemoveJoint(const char *jointname, bool fail_if_not_leaf = true);
    JointRemovalStatus RemoveJoint(int index, bool fail_if_not_leaf = true);

    void Scale(float x, float y, float z); // Scales the rest pose translation component
    void Transform(tlMatrix &m); // Used by the exporter to scale the skeleton

    unsigned long GetVersion() { return version; }

    void  Sort(void);
    bool  IsSorted(void) const {return(sortedIndices?true:false);}
    int   GetSortedJointIndex(int oldIndex) const;
    void  ResolveMappedIndicies(void);

private:
    tlTable<tlSkeletonJoint*> joints;
    unsigned long version;

    //
    // Mapping information stored if a Sort operation was performed
    // Needed for referencing objects to remap themselves
    //
    int *sortedIndices;
};

//*****************************************************************************
// tlSkeletonJoint
//*****************************************************************************
class tlSkeletonJoint : public tlEntity
{
public:
    tlSkeletonJoint();
    explicit tlSkeletonJoint(tlDataChunk* ch);
    virtual ~tlSkeletonJoint();

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk* ch);
    tlDataChunk* Chunk16();

    // could use a few accessors here
    int GetParent() {return parent;}
    void SetParent(int p) {parent = p;}

    tlMatrix& GetRestPose() { return restPose; }
    void SetRestPose(tlMatrix& m) {restPose = m; }

    void Scale(float x, float y, float z); // Scales the rest pose translation component
    void Transform(tlMatrix &m); // Used by the expoorter to scale

    int GetDof()           const { return dof; }
    int GetFreeAxes()      const { return freeAxes; }
    int GetPrimaryAxis()   const { return primaryAxis; }
    int GetSecondaryAxix() const { return secondaryAxis; }
    int GetTwistAxis()     const { return twistAxis; }

    //
    // New mapping data
    //
    int   GetMappedJointIndex() const {return mappedJointIndex; }
    const char* GetMappedJointName(void){ return(mappedJointName);}
    float GetXAxisMap() const {return xAxisMap; }
    float GetYAxisMap() const {return yAxisMap; }
    float GetZAxisMap() const {return zAxisMap; }

    void SetMappedJointName(const char* name);
    void SetMappedJointIndex(int jointMap)  { mappedJointIndex = jointMap; }
    void SetXAxisMap(float x)  { xAxisMap = x; }
    void SetYAxisMap(float y)  { yAxisMap = y; }
    void SetZAxisMap(float z)  { zAxisMap = z; }

    //
    // New skeleton property to preserve bonelengths
    //
    bool GetPreserveBoneLengths() const {return(preserveBoneLengths);}
    void SetPreserveBoneLengths(bool preserve) { preserveBoneLengths = preserve; }

    //
    // These are for sorting
    //
    int   SortPriority(){return((endOffsetPriority)?(baseSortPriority+endOffsetPriority):jointIndex);}
    void  SetIndex(int index){jointIndex = index;}
    void  SetEndBasePriority(int priority){baseSortPriority = priority;}
    void  SetEndSortPriority(int endPriority){endOffsetPriority = endPriority;}

private:
    int     parent;


    // first attempt at filling these values in from a Maya skeleton
    // in Maya, we can fetch which axes in a joint allow rotation, and
    // the rotation order
    //
    // in the rotation order of the form {A B C} A is the axis down the joint,
    // pointing at the child, C is the axis perpendicular to both A and the axis from this
    // joint up to its parent.  B is the third axes by the right hand rule (recall, Maya
    // uses a RHC)

    // for our (Martin's) purposes, axes C will be called the primaryAxis, A the twistAxis
    // and B the secondaryAxis.
    
    // dof will be 0 - 3,
    // and the integer values 0,1,2 will correspond to x,y,z for values held by
    // primaryAxis, secondaryAxis and twistAxis

    // note: if these values were not touched by the exporter, they will default to 
    // -1.
    // also note: freeAxes is some bit field or something and is ignored for now

    int     dof;
    int     freeAxes;
    int     primaryAxis;
    int     secondaryAxis;
    int     twistAxis;

    tlMatrix restPose;

    //
    // New ToolLib Mirror code
    //

    char* mappedJointName;
    int   mappedJointIndex;
    float xAxisMap;
    float yAxisMap;
    float zAxisMap;

    //
    // New bool to preserve mirroring
    //
    bool preserveBoneLengths;

    //
    // These are for skeleton Sorting
    //
    int jointIndex;
    int baseSortPriority;
    int endOffsetPriority;

};

//*****************************************************************************
// tlSkeletonLoader
//*****************************************************************************
class tlSkeletonLoader : public tlEntityLoader
{
public:
    tlSkeletonLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

