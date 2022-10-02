/*
 * choreoinvlist/invliststore.cpp
 */


#include "invliststore.hpp"

#include <choreo/partition.hpp>
#include <choreo/rig.hpp>
#include <choreo/bank.hpp>
#include <choreo/utility.hpp>

#include <p3d/anim/animate.hpp>
#include <p3d/anim/skeleton.hpp>

#include <string.h>


//---------------------------------------------------------------------------
// class InvListAnimation
//---------------------------------------------------------------------------

class InvListAnimation: public tAnimation
{
public:

    InvListAnimation():
        tAnimation()
    {
        numFrames = 10.0f;
    }
};


//---------------------------------------------------------------------------
// class InvListStore
//---------------------------------------------------------------------------

InvListStore::InvListStore(FILE* outputFile)
{
    m_OutputFile = outputFile;

    m_FindClass[0] = '\0';
    m_FindName[0] = '\0';
}

InvListStore::~InvListStore()
{
}

void InvListStore::SetFindClass(const char* findClass)
{
    choreo::StrSet(m_FindClass, sizeof(m_FindClass), findClass);
}

void InvListStore::SetFindName(const char* findName)
{
    choreo::StrSet(m_FindName, sizeof(m_FindName), findName);
}

tSkeleton* InvListNewSkeleton()
{
    static const int jointCount = 1000;
    tSkeleton* skel = new tSkeleton(jointCount);

    for (int i = 1; i < jointCount; ++i)
    {
        skel->GetJoint(i)->parentIndex = (i - 1);
    }

    return skel;
}

choreo::Rig* InvListNewRig()
{
    choreo::Rig* rig = new choreo::Rig(InvListNewSkeleton(), 0);
    rig->SetJointIndex(choreo::RIG_JOINT_AI_ROOT, 0);

    return rig;
}

IRefCount* InvListStore::Find(radLoadInventory::SafeCastBase& c, tUID uid)
{
    fprintf(m_OutputFile, "\"%s\" \"%s\"\n", m_FindClass, m_FindName);
    fflush(m_OutputFile);

    tEntity* entity;

    if (strcmp(m_FindClass, "class tAnimation") == 0)
    {
        entity = new InvListAnimation;
    }
    else if (strcmp(m_FindClass, "class tSkeleton") == 0)
    {
        entity = InvListNewSkeleton();
    }
    else if (strcmp(m_FindClass, "class choreo::Rig") == 0)
    {
        entity = InvListNewRig();
    }
    else if (strcmp(m_FindClass, "class choreo::Bank") == 0)
    {
        entity = new choreo::Bank(InvListNewRig());
    }
    else if (strcmp(m_FindClass, "class choreo::Partition") == 0)
    {
        entity = new choreo::InclusivePartition(InvListNewRig(), 0);
    }
    else
    {
        entity = new tEntity;
    }

    entity->SetUID(uid);

    m_FindClass[0] = '\0';
    m_FindName[0] = '\0';

    return entity;
}

void InvListStore::Store(tEntity* obj)
{
    // do nothing
}


// End of file.
