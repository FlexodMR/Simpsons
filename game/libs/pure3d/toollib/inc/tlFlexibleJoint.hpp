//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _FLEXIBLEJOINT_HPP_
#define _FLEXIBLEJOINT_HPP_

#include "tlEntity.hpp"
#include "tlTypes.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

#include "simdata.hpp"

class tlDataChunk;
class tlInventory;

class tlSkeleton;

//*****************************************************************************
// tlFlexibleJoint
//*****************************************************************************
class tlFlexibleJoint : public tlEntity
{
public:
    tlFlexibleJoint();
    tlFlexibleJoint(tlDataChunk *ch);
    ~tlFlexibleJoint();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk *Chunk();

    virtual void LoadFromChunk16(tlDataChunk* ch)   { assert(false); }
    virtual tlDataChunk* Chunk16()                  { assert(false); return NULL; }

    TArray<tlFlexibleParametersData> mFlexibleParametersData;
    TArray<tlFlexibleJointData>      mFlexibleJointData;

    void SetFromSimData(tlSkeleton* skel, tlSimDataHolder* data);

protected:
    bool AreParented(tlSkeleton* skel, int parent, int child);
    int FindEndOfBranch(tlSkeleton* skel, int branchIndex);
    void ComputeJointRestPose(tlSkeleton* skel, tlMatrix* worldJointRestPose);
};

//*****************************************************************************
// tlFlexibleJointLoader
//*****************************************************************************
class tlFlexibleJointLoader : public tlEntityLoader
{
public:
    tlFlexibleJointLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _FLEXIBLEJOINT_HPP_
