/*
 * choreoviewer/chengine/cvpuppet.cpp
 */


#include <chengine/cvpuppet.hpp>
#include <chengine/cvterrain.hpp>
#include <chcommon/interface.hpp>
#include <chengine/cvcontext.hpp>
#include <chengine/linebatcher.hpp>

#include <p3d/context.hpp>
#include <p3d/view.hpp>
#include <p3d/pointcamera.hpp>
#include <p3d/inventory.hpp>
#include <p3d/anim/skeleton.hpp>
#include <p3d/anim/drawablepose.hpp>

#include <poser/joint.hpp>

#include <choreo/bank.hpp>
#include <choreo/rig.hpp>
#include <choreo/puppet.hpp>
#include <choreo/utility.hpp>
#include <choreo/replay.hpp>

#include <string.h>
#include <stdlib.h>
#include <search.h>


//---------------------------------------------------------------------------
// class CVPuppet - implementation
//---------------------------------------------------------------------------

CVPuppet::CVPuppet(tContext* context):
    m_Context(context),

    m_Model(0),
    m_RenderStyle(0),
    m_IsRenderSkeletonEnabled(false),

    m_Bank(0),
    m_Puppet(0),
    m_IsLegIKEnabled(true),

    m_Replay(0),
    m_ReplayDriver(0),
    m_ReplayPaused(true),
    m_IsRecording(true),

    m_LocomotionListCount(0),
    m_Locomotion(0),
    m_LocomotionDriver(0),
    m_IsSteeringEnabled(true),

    m_Prop(0),
    m_PropPose(0),
    m_AttachJoint(0),

    m_AnimationListCount(0),

    m_IsFootPhaseEnabled(true)
{
    memset(m_LocomotionList, 0, sizeof(m_LocomotionList));
    memset(m_AnimationList, 0, sizeof(m_AnimationList));
    memset(m_Animations, 0, sizeof(m_Animations));
    memset(m_AnimationDrivers, 0, sizeof(m_AnimationDrivers));
    memset(m_AnimationInterrupt, 1, sizeof(m_AnimationInterrupt));
    memset(m_PlayAnimationFlags, 0, sizeof(m_PlayAnimationFlags));

    m_Shader = p3d::device->NewShader("simple");
	m_Shader->AddRef();
	m_Shader->SetInt(PDDI_SP_ISLIT, 0);

    m_AddShader = p3d::device->NewShader("simple");
    m_AddShader->AddRef();
    m_AddShader->SetInt(PDDI_SP_ISLIT, 0);
    m_AddShader->SetInt(PDDI_SP_BLENDMODE, 2);
}

CVPuppet::~CVPuppet()
{
    if (m_Puppet != 0)
    {
        m_Puppet->StopAllDrivers();
    }

    int i;
    for (i = (MAX_ANIMATION_SLOTS - 1); i >= 0; --i)
    {
        tRefCounted::Release(m_AnimationDrivers[i]);
        tRefCounted::Release(m_Animations[i]);
    }

    for (i = (m_AnimationListCount - 1); i >= 0; --i)
    {
        tRefCounted::Release(m_AnimationList[i]);
    }

    tRefCounted::Release(m_PropPose);
    tRefCounted::Release(m_Prop);

    tRefCounted::Release(m_LocomotionDriver);
    tRefCounted::Release(m_Locomotion);

    for (i = (m_LocomotionListCount - 1); i >= 0; --i)
    {
        tRefCounted::Release(m_LocomotionList[i]);
    }

    tRefCounted::Release(m_ReplayDriver);
    tRefCounted::Release(m_Replay);

    tRefCounted::Release(m_Puppet);
    tRefCounted::Release(m_Bank);
    tRefCounted::Release(m_Model);

    m_AddShader->Release();
    m_Shader->Release();
}

int CVPuppet::GetModelCount() const
{
    int modelCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        tDrawablePose* model = dynamic_cast<tDrawablePose*>(obj);
        if (model != 0)
        {
            ++modelCount;
        }

        obj = itor.Next();
    }

    return modelCount;
}

tDrawablePose* CVPuppet::GetModel(int modelIndex) const
{
    if (modelIndex < 0)
        return 0;

    int modelCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        tDrawablePose* model = dynamic_cast<tDrawablePose*>(obj);
        if (model != 0)
        {
            if (modelCount == modelIndex)
            {
                return model;
            }

            ++modelCount;
        }

        obj = itor.Next();
    }

    return 0;
}

int CVPuppet::GetModelIndex() const
{
    if (m_Model == 0)
        return -1;

    int modelCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        tDrawablePose* model = dynamic_cast<tDrawablePose*>(obj);
        if (model != 0)
        {
            if (model == m_Model)
            {
                return modelCount;
            }

            ++modelCount;
        }

        obj = itor.Next();
    }

    return -1;
}

bool CVPuppet::SetModelIndex(int modelIndex)
{
    tDrawablePose* model = GetModel(modelIndex);
    if (model == m_Model)
        return true;

    tRefCounted::Assign(m_Model, model);

    if (m_Model != 0)
    {
        rmt::Sphere sphere;
        m_Model->GetBoundingSphere(&sphere);

        float modelScale = 0.001f;
        while ((modelScale * 10.0f) < sphere.radius)
        {
            modelScale *= 10.0f;
        }
        g_CVContext->SetModelScale(modelScale);

        if (m_Bank != 0)
        {
            if (m_Bank->GetRig()->GetSkeleton() != m_Model->GetSkeleton())
            {
                int i;
                for (i = (MAX_ANIMATION_SLOTS - 1); i >= 0; --i)
                {
                    tRefCounted::Release(m_Animations[i]);
                }

                for (i = (m_AnimationListCount - 1); i >= 0; --i)
                {
                    tRefCounted::Release(m_AnimationList[i]);
                }
                m_AnimationListCount = 0;

                tRefCounted::Release(m_LocomotionDriver);
                tRefCounted::Release(m_Locomotion);

                for (i = (m_LocomotionListCount - 1); i >= 0; --i)
                {
                    tRefCounted::Release(m_LocomotionList[i]);
                }
                m_LocomotionListCount = 0;

                tRefCounted::Release(m_Puppet);
                tRefCounted::Release(m_Bank);
            }
        }
    }

    // for convenience, set default bank & loco & animations
    SetBankIndex(0);
    return true;
}

int CVPuppet::GetBankCount() const
{
    if (m_Model == 0)
        return 0;

    int bankCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        choreo::Bank* bank = dynamic_cast<choreo::Bank*>(obj);
        if (bank != 0)
        {
            if (bank->GetRig()->GetSkeleton() == m_Model->GetSkeleton())
            {
                ++bankCount;
            }
        }

        obj = itor.Next();
    }

    return bankCount;
}

choreo::Bank* CVPuppet::GetBank(int bankIndex) const
{
    if (m_Model == 0)
        return 0;
    if (bankIndex < 0)
        return 0;

    int bankCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        choreo::Bank* bank = dynamic_cast<choreo::Bank*>(obj);
        if (bank != 0)
        {
            if (bank->GetRig()->GetSkeleton() == m_Model->GetSkeleton())
            {
                if (bankCount == bankIndex)
                {
                    return bank;
                }

                ++bankCount;
            }
        }

        obj = itor.Next();
    }

    return 0;
}

int CVPuppet::GetBankIndex() const
{
    if (m_Model == 0)
        return -1;
    if (m_Bank == 0)
        return -1;

    int bankCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        choreo::Bank* bank = dynamic_cast<choreo::Bank*>(obj);
        if (bank != 0)
        {
            if (bank->GetRig()->GetSkeleton() == m_Model->GetSkeleton())
            {
                if (bank == m_Bank)
                {
                    return bankCount;
                }

                ++bankCount;
            }
        }

        obj = itor.Next();
    }

    return -1;
}

static int EntityCompare(const void* elem1, const void* elem2)
{
    tEntity* entity1 = *((tEntity**)elem1);
    const char* entity1Name = entity1->GetName();

    tEntity* entity2 = *((tEntity**)elem2);
    const char* entity2Name = entity2->GetName();

    return strcmp(entity1Name, entity2Name);
}

bool CVPuppet::SetBankIndex(int bankIndex)
{
    choreo::Bank* bank = GetBank(bankIndex);
    if (bank == m_Bank)
        return true;

    int i;
    for (i = MAX_ANIMATION_SLOTS - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_Animations[i]);
    }

    for (i = m_AnimationListCount - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_AnimationList[i]);
    }
    m_AnimationListCount = 0;

    tRefCounted::Release(m_LocomotionDriver);
    tRefCounted::Release(m_Locomotion);

    for (i = m_LocomotionListCount - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_LocomotionList[i]);
    }
    m_LocomotionListCount = 0;

    tRefCounted::Release(m_ReplayDriver);
    tRefCounted::Release(m_Replay);

    tRefCounted::Assign(m_Bank, bank);
    if (m_Bank == 0)
    {
        tRefCounted::Release(m_Puppet);
        return true;
    }

    choreo::Puppet* puppet = new choreo::Puppet(m_Bank->GetRig()->GetSkeleton()->NewPose(), m_Bank, true, 128, 128);
    tRefCounted::Assign(m_Puppet, puppet);
    SetIsLegIKEnabled(m_IsLegIKEnabled);

    m_Replay = new choreo::Replay(m_Bank->GetRig(), 1000);
    m_Replay->AddRef();

    m_ReplayDriver = m_Replay->NewReplayDriver();
    m_ReplayDriver->AddRef();

    // push replay
    m_Puppet->PlayDriver(m_ReplayDriver, -1.0f);

    // apply prop, if any
    if (m_PropPose != 0)
    {
        m_Puppet->AttachProp(m_AttachJoint, m_PropPose);
    }

    // get list of all available animations & locomotions
    choreo::BaseBank::RawIterator* itor = m_Bank->NewRawIterator();
	itor->AddRef();

    IRefCount* obj = itor->First();
    while (obj)
    {
        choreo::Locomotion* loco = dynamic_cast<choreo::Locomotion*>(obj);
        if (loco != 0)
        {
            if (m_LocomotionListCount < (sizeof(m_LocomotionList) / sizeof(m_LocomotionList[0])))
            {
                m_LocomotionList[m_LocomotionListCount] = loco;
                loco->AddRef();
                ++m_LocomotionListCount;
            }
        }
        else
        {
            choreo::Animation* anim = dynamic_cast<choreo::Animation*>(obj);
            if (anim != 0)
            {
                if (m_AnimationListCount < (sizeof(m_AnimationList) / sizeof(m_AnimationList[0])))
                {
                    m_AnimationList[m_AnimationListCount] = anim;
                    anim->AddRef();
                    const char* animName = anim->GetName();
                    ++m_AnimationListCount;
                }
            }
        }

        obj = itor->Next();
    }

	itor->Release();

    // sort loco list
    qsort(m_LocomotionList, m_LocomotionListCount, sizeof(choreo::Locomotion*), &EntityCompare);

    // sort anim list
    qsort(m_AnimationList, m_AnimationListCount, sizeof(choreo::Animation*), &EntityCompare);

    // for convenience, set default loco & animations
    SetLocomotionIndex(0);

    for (i = 0; i < MAX_ANIMATION_SLOTS; ++i)
    {
        SetAnimationIndex(i, i);
    }

    return true;
}

bool CVPuppet::IsLegIKEnabled() const
{
    return m_IsLegIKEnabled;
}

bool CVPuppet::SetIsLegIKEnabled(bool isEnabled)
{
    m_IsLegIKEnabled = isEnabled;

    if (m_Puppet != 0)
    {
        for (int i = 0; i < m_Puppet->GetLegCount(); ++i)
        {
            m_Puppet->SetIsLegIKEnabled(i, isEnabled);
        }
    }

    return true;
}

int CVPuppet::GetLocomotionCount() const
{
    return m_LocomotionListCount;
}

choreo::Locomotion* CVPuppet::GetLocomotion(int locoIndex) const
{
    if ((locoIndex < 0) || (locoIndex >= m_LocomotionListCount))
        return 0;

    return m_LocomotionList[locoIndex];
}

int CVPuppet::GetLocomotionIndex() const
{
    if (m_Locomotion == 0)
        return -1;

    for (int i = 0; i < m_LocomotionListCount; ++i)
    {
        if (m_Locomotion == m_LocomotionList[i])
            return i;
    }

    return -1;
}

bool CVPuppet::SetLocomotionIndex(int locoIndex)
{
    choreo::Locomotion* loco = GetLocomotion(locoIndex);
    if (loco == m_Locomotion)
        return true;

    tRefCounted::Assign(m_Locomotion, loco);
    if (m_Locomotion == 0)
    {
        tRefCounted::Release(m_LocomotionDriver);
        return true;
    }

    choreo::LocomotionDriver* locoDriver = m_Locomotion->NewLocomotionDriver();
    tRefCounted::Assign(m_LocomotionDriver, locoDriver);
    return true;
}

int CVPuppet::GetAttachPropCount() const
{
    return GetModelCount();
}

tDrawablePose* CVPuppet::GetAttachProp(int propIndex) const
{
    return GetModel(propIndex);
}

int CVPuppet::GetAttachPropIndex() const
{
    if (m_Prop == 0)
        return -1;

    int propCount = 0;

    tEntityTable::RawIterator itor(m_Context->GetInventory()->GetCurrentSection());

    IRefCount* obj = itor.First();
    while (obj)
    {
        tDrawablePose* prop = dynamic_cast<tDrawablePose*>(obj);
        if (prop != 0)
        {
            if (prop == m_Prop)
            {
                return propCount;
            }

            ++propCount;
        }

        obj = itor.Next();
    }

    return -1;
}

bool CVPuppet::SetAttachPropIndex(int propIndex)
{
    tDrawablePose* prop = GetAttachProp(propIndex);
    if (prop == m_Prop)
        return true;

    if (m_PropPose != 0)
    {
        if (m_Puppet != 0)
        {
            m_Puppet->RemoveAttachedProp(m_PropPose);
        }
    }

    tRefCounted::Assign(m_Prop, prop);

    if (m_Prop != 0)
    {
        tRefCounted::Assign(m_PropPose, m_Prop->GetPose()->GetSkeleton()->NewPose());

        if (m_Puppet != 0)
        {
            m_Puppet->AttachProp(m_AttachJoint, m_PropPose);
        }
    }

    return true;
}

bool CVPuppet::SetAttachJoint(int attachJoint)
{
    if (m_AttachJoint == attachJoint)
        return true;

    m_AttachJoint = attachJoint;

    if ((m_PropPose != 0) && (m_Puppet != 0))
    {
        m_Puppet->AttachProp(m_AttachJoint, m_PropPose);
    }

    return true;
}

int CVPuppet::GetAnimationCount() const
{
    return m_AnimationListCount;
}

choreo::Animation* CVPuppet::GetAnimation(int animIndex) const
{
    if ((animIndex < 0) || (animIndex >= m_AnimationListCount))
        return 0;

    return m_AnimationList[animIndex];
}

int CVPuppet::GetAnimationIndex(int animSlot) const
{
    if ((animSlot < 0) || (animSlot >= MAX_ANIMATION_SLOTS))
        return -1;
    if (m_Animations[animSlot] == 0)
        return -1;

    for (int i = 0; i < m_AnimationListCount; ++i)
    {
        if (m_Animations[animSlot] == m_AnimationList[i])
            return i;
    }

    return -1;
}

bool CVPuppet::SetAnimationIndex(int animSlot, int animIndex)
{
    if ((animSlot < 0) || (animSlot >= MAX_ANIMATION_SLOTS))
        return false;

    choreo::Animation* anim = GetAnimation(animIndex);

    if (anim != m_Animations[animSlot])
    {
        tRefCounted::Assign(m_Animations[animSlot], anim);
        tRefCounted::Release(m_AnimationDrivers[animSlot]);
    }

    return true;
}

bool CVPuppet::GetIsAnimationInterrupt(int animSlot) const
{
    if ((animSlot < 0) || (animSlot >= MAX_ANIMATION_SLOTS))
        return false;

    return m_AnimationInterrupt[animSlot];
}

void CVPuppet::SetIsAnimationInterrupt(int animSlot, bool interrupt)
{
    if ((animSlot < 0) || (animSlot >= MAX_ANIMATION_SLOTS))
        return;

    m_AnimationInterrupt[animSlot] = interrupt;
}

bool CVPuppet::PlayAnimation(int animSlot)
{
    if ((animSlot < 0) || (animSlot >= MAX_ANIMATION_SLOTS))
        return false;

    m_PlayAnimationFlags[animSlot] = true;
    return true;
}

rmt::Vector CVPuppet::GetCameraTarget() const
{
    if (m_Puppet != 0)
    {
        int aiRootIndex = m_Puppet->GetBank()->GetRig()->GetJointIndex(choreo::RIG_JOINT_AI_ROOT);
        int charRootIndex = m_Puppet->GetBank()->GetRig()->GetJointIndex(choreo::RIG_JOINT_CHARACTER_ROOT);
        if (charRootIndex >= 0)
        {
            rmt::Vector pos = m_Puppet->GetPose()->GetJoint(aiRootIndex)->GetWorldTranslation();
            tSkeleton::Joint* joint = m_Puppet->GetSkeleton()->GetJoint(charRootIndex);
            pos.y += joint->worldMatrix.Row(3).y;
            return pos;
        }
        else
        {
            return m_Puppet->GetPose()->GetJoint(aiRootIndex)->GetWorldTranslation();
        }
    }

    if (m_Model != 0)
    {
        return m_Model->GetPose()->GetJoint(0)->worldMatrix.Row(3);
    }

    return rmt::Vector(0,0,0);
}

void CVPuppet::Clear()
{
    int i;
    for (i = MAX_ANIMATION_SLOTS - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_AnimationDrivers[i]);
        tRefCounted::Release(m_Animations[i]);
    }

    for (i = m_AnimationListCount - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_AnimationList[i]);
    }
    m_AnimationListCount = 0;

    tRefCounted::Release(m_PropPose);
    tRefCounted::Release(m_Prop);

    tRefCounted::Release(m_LocomotionDriver);
    tRefCounted::Release(m_Locomotion);

    for (i = m_LocomotionListCount - 1; i >= 0; --i)
    {
        tRefCounted::Release(m_LocomotionList[i]);
    }
    m_LocomotionListCount = 0;

    tRefCounted::Release(m_ReplayDriver);
    tRefCounted::Release(m_Replay);

    tRefCounted::Release(m_Puppet);
    tRefCounted::Release(m_Bank);
    tRefCounted::Release(m_Model);
}

void CVPuppet::StopAllDrivers()
{
    if (m_Puppet == 0)
        return;
    m_Puppet->StopAllDrivers();
    m_Puppet->PlayDriver(m_ReplayDriver, -1.0f);
}

void CVPuppet::PlayDrivers(tCamera* camera)
{
    // query controllers
    rmt::Vector dir0, dir1;
    float buttons[MAX_ANIMATION_SLOTS];
    m_Input.Query(camera, dir0, dir1, buttons, MAX_ANIMATION_SLOTS);

    // do non-interrupting anims first
    bool animSlotUsed = false;
    int b;
    for (b = 0; b < MAX_ANIMATION_SLOTS; ++b)
    {
        if (m_Animations[b] == 0)
            continue;

        if (m_AnimationInterrupt[b])
        {
            // if it *is* an interrupting anim, keep track of who's using the anim slot
            if (!animSlotUsed && (m_Puppet->IsDriverPlaying(m_AnimationDrivers[b])))
            {
                animSlotUsed = true;
            }
            else if ((m_AnimationDrivers[b] != 0) && (!m_AnimationDrivers[b]->IsCyclic()))
            {
                tRefCounted::Release(m_AnimationDrivers[b]);
            }

            continue;
        }

        if ((buttons[b] < 0.5f) && (!m_PlayAnimationFlags[b]))
            continue;

        if (m_AnimationDrivers[b] == 0)
        {
            choreo::AnimationDriver* animDriver = m_Animations[b]->NewAnimationDriver();
            tRefCounted::Assign(m_AnimationDrivers[b], animDriver);
        }

        if (m_AnimationDrivers[b]->IsCyclic())
        {
            m_Puppet->PlayDriver(m_AnimationDrivers[b], 0.0f, false);
        }
        else if (!m_Puppet->IsDriverPlaying(m_AnimationDrivers[b]))
        {
            m_Puppet->PlayDriver(m_AnimationDrivers[b], -1.0f);
        }
    }

    if (!animSlotUsed)
    {
        for (b = 0; b < MAX_ANIMATION_SLOTS; ++b)
        {
            if (m_Animations[b] == 0)
                continue;

            if (!m_AnimationInterrupt[b])
                continue;

            if ((buttons[b] < 0.5f) && (!m_PlayAnimationFlags[b]))
                continue;

            if (m_AnimationDrivers[b] == 0)
            {
                choreo::AnimationDriver* animDriver = m_Animations[b]->NewAnimationDriver();
                tRefCounted::Assign(m_AnimationDrivers[b], animDriver);
            }

            if (m_AnimationDrivers[b]->IsCyclic())
            {
                m_Puppet->PlayDriver(m_AnimationDrivers[b], 0.0f, false);
            }
            else
            {
                m_Puppet->PlayDriver(m_AnimationDrivers[b], -1.0f);
            }
            return;
        }

        if (m_LocomotionDriver != 0)
        {
            float dir0Mag = dir0.Magnitude();
            float dir1Mag = dir1.Magnitude();

            if (rmt::Epsilon(dir0Mag, 0.0f))
            {
                m_LocomotionDriver->SetDesiredMotionAngle(choreo::GetWorldAngle(dir1.x, dir1.z));
            }
            else
            {
                m_LocomotionDriver->SetDesiredMotionAngle(choreo::GetWorldAngle(dir0.x, dir0.z));
            }

            // default facing angle
            m_LocomotionDriver->SetDesiredFacingAngle(m_Puppet->GetOrientation());

            if (m_IsSteeringEnabled)
            {
                if (!rmt::Epsilon(dir0Mag, 0.0f))
                {
                    m_LocomotionDriver->SetDesiredFacingAngle(m_LocomotionDriver->GetDesiredMotionAngle());
                }
                else if (!rmt::Epsilon(dir1Mag, 0.0f))
                {
                    m_LocomotionDriver->SetDesiredFacingAngle(choreo::GetWorldAngle(dir1.x, dir1.z));
                }
            }
            else
            {
                if (!rmt::Epsilon(dir1Mag, 0.0f))
                {
                    m_LocomotionDriver->SetDesiredFacingAngle(choreo::GetWorldAngle(dir1.x, dir1.z));
                }
            }

            static const float velocityScale = 1.0f;
            m_LocomotionDriver->SetDesiredVelocity(dir0Mag *
                                                   m_LocomotionDriver->GetActualAnimMaxVelocity() *
                                                   velocityScale);

            m_Puppet->PlayDriver(m_LocomotionDriver, 0.0f, false);
        }
    }
}

void CVPuppet::Advance(float deltaTime, CVContext* cvContext)
{
    if (m_Puppet == 0)
        return;

    PlayDrivers(cvContext->GetCamera());
    // clear play animation flags
    memset(m_PlayAnimationFlags, 0, sizeof(m_PlayAnimationFlags));

    if (!m_IsRecording)
    {
        if (m_ReplayPaused)
        {
            m_Puppet->AdvanceReplay(0.0f);
        }
        else
        {
            m_Puppet->AdvanceReplay(deltaTime);
        }

        m_Puppet->UpdateReplay();
    }
    else
    {
        m_Puppet->Advance(deltaTime);

        // update
        m_Puppet->UpdateBegin();
        m_Puppet->UpdateRoot();

        // ground testing
        rmt::Vector rayOrg = m_Puppet->GetPosition();
        rayOrg.y += 1000.0f;
        rmt::Vector rayDir(0,-1,0);
        rmt::Vector point, normal;
        if (cvContext->GetCVTerrain()->Intersect(rayOrg, rayDir, point, normal, true))
        {
            m_Puppet->SetGroundPoint(point);
        }
        else
        {
            rayOrg.y = 0.0f;
            m_Puppet->SetGroundPoint(rayOrg);
        }

        m_Puppet->UpdatePose();

        // foot ground testing
        for (int foot = 0; foot < m_Puppet->GetLegCount(); ++foot)
        {
            rayOrg = m_Puppet->GetFootPosition(foot);
            rayOrg.y += 1000.0f;

            if (!cvContext->GetCVTerrain()->Intersect(rayOrg, rayDir, point, normal))
            {
                point = rayOrg;
                point.y = 0.0f;
            }

            m_Puppet->SetFootGroundPoint(foot, point);
        }

        m_Puppet->UpdateEnd();
    }
}

void CVPuppet::DrawBarDevice(rmt::Vector topLeft, float width, float height, tColour colour, bool add)
{
    rmt::Vector quad[4] =
    {
        topLeft,
        rmt::Vector(topLeft.x + width - 1, topLeft.y, topLeft.z),
        rmt::Vector(topLeft.x + width - 1, topLeft.y + height - 1, topLeft.z),
        rmt::Vector(topLeft.x, topLeft.y + height - 1, topLeft.z)
    };

    for (int i = 0; i < 4; ++i)
    {
        rmt::Vector sa;
        p3d::context->DeviceToScreen(quad[i], &sa);
        rmt::Vector va;
        p3d::context->GetView()->ScreenToView(sa, &va);
        rmt::Vector a1, a2;
        p3d::context->GetView()->GetCamera()->ViewToWorld(va, &a1, &a2);
        rmt::Vector wa;
        wa.Add(a1, a2);
        wa.Scale(0.5f);
        quad[i] = wa;
    }

    pddiCompareMode cmpMode = p3d::pddi->GetZCompare();
    p3d::pddi->SetZCompare(PDDI_COMPARE_ALWAYS);

    pddiPrimStream* stream;
    stream = p3d::pddi->BeginPrims((add ? m_AddShader : m_Shader), PDDI_PRIM_TRISTRIP, PDDI_V_C, 5);

    stream->Vertex((pddiVector*)(quad), colour);
    stream->Vertex((pddiVector*)(quad + 1), colour);
    stream->Vertex((pddiVector*)(quad + 2), colour);
    stream->Vertex((pddiVector*)(quad + 3), colour);
    stream->Vertex((pddiVector*)(quad), colour);

    p3d::pddi->EndPrims(stream);

    p3d::pddi->SetZCompare(cmpMode);
}

void CVPuppet::Display(CVContext* cvContext)
{
    if (m_Model != 0)
    {
        if (m_IsRenderSkeletonEnabled)
        {
            cvContext->GetCVLineBatcher()->DrawPose(m_Puppet->GetP3DPose());
        }

        if (m_RenderStyle < 3)
        {
            pddiFillMode fillMode = p3d::pddi->GetFillMode();

            switch (m_RenderStyle)
            {
                case 0:
                    p3d::pddi->SetFillMode(PDDI_FILL_SOLID);
                    break;

                case 1:
                    p3d::pddi->SetFillMode(PDDI_FILL_WIRE);
                    break;

                case 2:
                    p3d::pddi->SetFillMode(PDDI_FILL_POINT);
                    break;
            }

            m_Model->Display(m_Puppet->GetP3DPose());

            p3d::pddi->SetFillMode(fillMode);
        }
    }

    if (m_Prop != 0)
    {
        if (m_IsRenderSkeletonEnabled)
        {
            cvContext->GetCVLineBatcher()->DrawPose(m_PropPose);
        }

        if (m_RenderStyle < 3)
        {
            pddiFillMode fillMode = p3d::pddi->GetFillMode();

            switch (m_RenderStyle)
            {
                case 0:
                    p3d::pddi->SetFillMode(PDDI_FILL_SOLID);
                    break;

                case 1:
                    p3d::pddi->SetFillMode(PDDI_FILL_WIRE);
                    break;

                case 2:
                    p3d::pddi->SetFillMode(PDDI_FILL_POINT);
                    break;
            }

            m_Prop->Display(m_PropPose);

            p3d::pddi->SetFillMode(fillMode);
        }
    }
}

void CVPuppet::DisplayFootPhase(float bar_left, float bar_top)
{
    if ((m_Puppet != 0) && (m_LocomotionDriver != 0) && (m_IsFootPhaseEnabled))
    {
        //static const float bar_top = 450;
        //static const float bar_left = 10;
        static const float bar_width = 200;
        static const float bar_height = 20;

        DrawBarDevice(rmt::Vector(bar_left, bar_top, 0), bar_width, bar_height, tColour(0,0,0), false);

        if (m_Puppet->GetBank()->GetRig()->GetLegCount() > 1)
        {
            if (m_LocomotionDriver->GetFootPlant(1) < m_LocomotionDriver->GetFootLift(1))
            {
                DrawBarDevice(rmt::Vector(bar_left + 1 + (m_LocomotionDriver->GetFootPlant(1) * (bar_width - 2)), bar_top + 1, 0), (m_LocomotionDriver->GetFootLift(1) - m_LocomotionDriver->GetFootPlant(1)) * (bar_width - 2), bar_height - 2, tColour(127,0,0), true);
            }
            else
            {
                DrawBarDevice(rmt::Vector(bar_left + 1 + (m_LocomotionDriver->GetFootPlant(1) * (bar_width - 2)), bar_top + 1, 0), (bar_width - 2) * (1 - m_LocomotionDriver->GetFootPlant(1)), (bar_height - 2), tColour(127,0,0), true);
                DrawBarDevice(rmt::Vector(bar_left + 1, bar_top + 1, 0), (bar_width - 2) * m_LocomotionDriver->GetFootLift(1), bar_height - 2, tColour(127,0,0), true);
            }
        }

        if (m_Puppet->GetBank()->GetRig()->GetLegCount() > 0)
        {
            if (m_LocomotionDriver->GetFootPlant(0) < m_LocomotionDriver->GetFootLift(0))
            {
                DrawBarDevice(rmt::Vector(bar_left + 1 + (m_LocomotionDriver->GetFootPlant(0) * (bar_width - 2)), bar_top + 1, 0), (m_LocomotionDriver->GetFootLift(0) - m_LocomotionDriver->GetFootPlant(0)) * (bar_width - 2), (bar_height - 2), tColour(0,0,127), true);
            }
            else
            {
                DrawBarDevice(rmt::Vector(bar_left + 1 + (m_LocomotionDriver->GetFootPlant(0) * (bar_width - 2)), bar_top + 1, 0), (bar_width - 2) * (1 - m_LocomotionDriver->GetFootPlant(0)), bar_height - 2, tColour(0,0,127), true);
                DrawBarDevice(rmt::Vector(bar_left + 1, bar_top + 1, 0), (bar_width - 2) * m_LocomotionDriver->GetFootLift(0), (bar_height - 2), tColour(0,0,127), true);
            }
        }

        DrawBarDevice(rmt::Vector(bar_left + 1 + (m_LocomotionDriver->GetPhase() * (bar_width - 2)), bar_top + 1, 0), 2, (bar_height - 2), tColour(255,255,255), false);
    }
}

float CVPuppet::ReplayGetTimeBuffer() const
{
    if (m_ReplayDriver == 0)
        return 0.0f;
    return m_ReplayDriver->GetRecordBufferTime();
}

float CVPuppet::ReplayGetPlaybackTime() const
{
    if (m_ReplayDriver == 0)
        return 0.0f;
    return m_ReplayDriver->GetPlaybackTime();
}

void CVPuppet::ReplaySetPlaybackTime(float playbackTime)
{
    if (m_ReplayDriver == 0)
        return;
    m_ReplayDriver->SetPlaybackTime(playbackTime);
}

bool CVPuppet::ReplayIsRecording() const
{
    if (m_ReplayDriver == 0)
        return true;
    return m_IsRecording;
}

void CVPuppet::ReplaySetIsRecording(bool isRecording)
{
    if (m_ReplayDriver == 0)
        return;
    m_IsRecording = isRecording;

    if (m_IsRecording)
    {
        m_ReplayPaused = true;
    }
}

bool CVPuppet::ReplayIsPaused() const
{
    if (m_ReplayDriver == 0)
        return true;
    return m_ReplayPaused;
}

void CVPuppet::ReplaySetIsPaused(bool isPaused)
{
    if (m_ReplayDriver == 0)
        return;
    m_ReplayPaused = isPaused;
}


//---------------------------------------------------------------------------
// CVPuppet - DLL interface
//---------------------------------------------------------------------------

int CV_CALLCONV CVPuppetGetModelCount()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetModelCount();
}

int CV_CALLCONV CVPuppetGetModel(int modelIndex, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    tDrawablePose* model = cvPuppet->GetModel(modelIndex);
    CVContext::GetEntityName(model, name, maxLen);

    return 0;
}

int CV_CALLCONV CVPuppetGetModelIndex()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetModelIndex();
}

int CV_CALLCONV CVPuppetSetModelIndex(int modelIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetModelIndex(modelIndex);
    return 0;
}

int CV_CALLCONV CVPuppetGetRenderStyle()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetRenderStyle();
}

int CV_CALLCONV CVPuppetSetRenderStyle(int renderStyle)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetRenderStyle(renderStyle);
    return 0;
}

int CV_CALLCONV CVPuppetGetRenderSkeleton()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->IsRenderSkeletonEnabled();
}

int CV_CALLCONV CVPuppetSetRenderSkeleton(int renderSkeleton)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetIsRenderSkeletonEnabled(renderSkeleton != 0);
    return 0;
}

int CV_CALLCONV CVPuppetGetBankCount()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetBankCount();
}

int CV_CALLCONV CVPuppetGetBank(int bankIndex, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    choreo::Bank* bank = cvPuppet->GetBank(bankIndex);
    CVContext::GetEntityName(bank, name, maxLen);

    return 0;
}

int CV_CALLCONV CVPuppetGetBankIndex()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetBankIndex();
}

int CV_CALLCONV CVPuppetSetBankIndex(int bankIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetBankIndex(bankIndex);
    return 0;
}

int CV_CALLCONV CVPuppetGetLocomotionCount()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetLocomotionCount();
}

int CV_CALLCONV CVPuppetGetLocomotion(int locoIndex, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    choreo::Locomotion* loco = cvPuppet->GetLocomotion(locoIndex);
    CVContext::GetEntityName(loco, name, maxLen);

    return 0;
}

int CV_CALLCONV CVPuppetGetLocomotionIndex()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetLocomotionIndex();
}

int CV_CALLCONV CVPuppetSetLocomotionIndex(int locoIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetLocomotionIndex(locoIndex);
    return 0;
}

int CV_CALLCONV CVPuppetGetSteering()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->IsSteeringEnabled();
}

int CV_CALLCONV CVPuppetSetSteering(int steering)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetIsSteeringEnabled(steering != 0);
    return 0;
}

int CV_CALLCONV CVPuppetGetAnimationCount()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetAnimationCount();
}

int CV_CALLCONV CVPuppetGetAnimation(int animIndex, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    choreo::Animation* anim = cvPuppet->GetAnimation(animIndex);
    CVContext::GetEntityName(anim, name, maxLen);

    return 0;
}

int CV_CALLCONV CVPuppetGetAnimationIndex(int animSlot)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetAnimationIndex(animSlot);
}

int CV_CALLCONV CVPuppetSetAnimationIndex(int animSlot, int animIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetAnimationIndex(animSlot, animIndex);
    return 0;
}

int CV_CALLCONV CVPuppetGetAnimationInterrupt(int animSlot)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetIsAnimationInterrupt(animSlot);
}

int CV_CALLCONV CVPuppetSetAnimationInterrupt(int animSlot, int interrupt)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetIsAnimationInterrupt(animSlot, (interrupt != 0));
    return 0;
}

int CV_CALLCONV CVPuppetPlayAnimation(int animSlot)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->PlayAnimation(animSlot);
}

int CV_CALLCONV CVPuppetStopAll()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->StopAllDrivers();
    return 0;
}

int CV_CALLCONV CVPuppetIsLegIKEnabled()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->IsLegIKEnabled();
}

int CV_CALLCONV CVPuppetSetIsLegIKEnabled(int isEnabled)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetIsLegIKEnabled(isEnabled != 0);
    return 1;
}

int CV_CALLCONV CVPuppetIsFootPhaseEnabled()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->IsFootPhaseEnabled();
}

int CV_CALLCONV CVPuppetSetIsFootPhaseEnabled(int isEnabled)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetIsFootPhaseEnabled(isEnabled != 0);
    return 1;
}

int CV_CALLCONV CVPuppetGetAttachPropCount()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetAttachPropCount();
}

int CV_CALLCONV CVPuppetGetAttachProp(int propIndex, char* name, int maxLen)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    tDrawablePose* prop = cvPuppet->GetAttachProp(propIndex);
    CVContext::GetEntityName(prop, name, maxLen);

    return 0;
}

int CV_CALLCONV CVPuppetGetAttachPropIndex()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetAttachPropIndex();
}

int CV_CALLCONV CVPuppetSetAttachPropIndex(int propIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetAttachPropIndex(propIndex);
    return 0;
}

int CV_CALLCONV CVPuppetGetAttachJoint()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->GetAttachJoint();
}

int CV_CALLCONV CVPuppetSetAttachJoint(int jointIndex)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->SetAttachJoint(jointIndex);
    return 0;
}

int CV_CALLCONV CVReplayGetBufferTime(float* bufferTime)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    *bufferTime = cvPuppet->ReplayGetTimeBuffer();
    return 0;
}

int CV_CALLCONV CVReplayGetPlaybackTime(float* playbackTime)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    *playbackTime = cvPuppet->ReplayGetPlaybackTime();
    return 0;
}

int CV_CALLCONV CVReplaySetPlaybackTime(float playbackTime)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->ReplaySetPlaybackTime(playbackTime);
    return 0;
}

int CV_CALLCONV CVReplayGetRecording()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->ReplayIsRecording();
}

int CV_CALLCONV CVReplaySetRecording(int isRecording)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->ReplaySetIsRecording(isRecording != 0);
    return 0;
}

int CV_CALLCONV CVReplayGetPause()
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    return cvPuppet->ReplayIsPaused();
}

int CV_CALLCONV CVReplaySetPause(int isPaused)
{
    if (g_CVContext == 0)
        return 0;
    CVPuppet* cvPuppet = g_CVContext->GetCVPuppet();
    if (cvPuppet == 0)
        return 0;

    cvPuppet->ReplaySetIsPaused(isPaused != 0);
    return 0;
}


// End of file.
