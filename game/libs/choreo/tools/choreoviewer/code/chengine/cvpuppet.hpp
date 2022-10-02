/*
 * choreoviewer/chengine/cvpuppet.hpp
 */


#ifndef CHOREOVIEWER_CHENGINE_CVPUPPET_HPP
#define CHOREOVIEWER_CHENGINE_CVPUPPET_HPP


#include <chengine/input.hpp>
#include <p3d/p3dtypes.hpp>


class pddiShader;
class tContext;
class tDrawablePose;
class tPose;

namespace choreo
{
    class Bank;
    class Puppet;
    class Replay;
    class ReplayDriver;
    class Locomotion;
    class LocomotionDriver;
    class Animation;
    class AnimationDriver;
};

class CVContext;


//---------------------------------------------------------------------------
// class CVPuppet
//---------------------------------------------------------------------------

class CVPuppet
{
public:

    enum
    {
        MAX_ANIMATION_SLOTS = 6
    };

    CVPuppet(tContext* context);
    virtual ~CVPuppet();

    int GetModelCount() const;
    tDrawablePose* GetModel(int modelIndex) const;
    int GetModelIndex() const;
    bool SetModelIndex(int modelIndex);

    int GetRenderStyle() const
        { return m_RenderStyle; }
    void SetRenderStyle(int renderStyle)
        { m_RenderStyle = renderStyle; }

    bool IsRenderSkeletonEnabled() const
        { return m_IsRenderSkeletonEnabled; }
    void SetIsRenderSkeletonEnabled(bool renderSkel)
        { m_IsRenderSkeletonEnabled = renderSkel; }

    int GetBankCount() const;
    choreo::Bank* GetBank(int bankIndex) const;
    int GetBankIndex() const;
    bool SetBankIndex(int bankIndex);

    bool IsLegIKEnabled() const;
    bool SetIsLegIKEnabled(bool isEnabled);

    int GetLocomotionCount() const;
    choreo::Locomotion* GetLocomotion(int locoIndex) const;
    int GetLocomotionIndex() const;
    bool SetLocomotionIndex(int locoIndex);

    bool IsSteeringEnabled() const
        { return m_IsSteeringEnabled; }
    void SetIsSteeringEnabled(bool steering)
        { m_IsSteeringEnabled = steering; }

    int GetAttachPropCount() const;
    tDrawablePose* GetAttachProp(int propIndex) const;
    int GetAttachPropIndex() const;
    bool SetAttachPropIndex(int propIndex);

    int GetAttachJoint() const
        { return m_AttachJoint; }
    bool SetAttachJoint(int attachJoint);

    int GetAnimationCount() const;
    choreo::Animation* GetAnimation(int animIndex) const;
    int GetAnimationIndex(int animSlot) const;
    bool SetAnimationIndex(int animSlot, int animIndex);
    bool GetIsAnimationInterrupt(int animSlot) const;
    void SetIsAnimationInterrupt(int animSlot, bool interrupt);
    bool PlayAnimation(int animSlot);

    rmt::Vector GetCameraTarget() const;

    void Clear();
    void StopAllDrivers();

    void Advance(float deltaTime, CVContext* cvContext);
    void Display(CVContext* cvContext);
    void DisplayFootPhase(float bar_left, float bar_top);

    bool IsFootPhaseEnabled() const
        { return m_IsFootPhaseEnabled; }
    void SetIsFootPhaseEnabled(bool isEnabled)
        { m_IsFootPhaseEnabled = isEnabled; }

    float ReplayGetTimeBuffer() const;
    float ReplayGetPlaybackTime() const;
    void ReplaySetPlaybackTime(float playbackTime);
    bool ReplayIsRecording() const;
    void ReplaySetIsRecording(bool isRecording);
    bool ReplayIsPaused() const;
    void ReplaySetIsPaused(bool isPaused);

private:

    void PlayDrivers(tCamera* camera);

    void DrawBarDevice(rmt::Vector topLeft, float width, float height, tColour colour, bool add);

    tContext* m_Context;

    tDrawablePose* m_Model;
    int m_RenderStyle;
    bool m_IsRenderSkeletonEnabled;

    choreo::Bank* m_Bank;
    choreo::Puppet* m_Puppet;
    bool m_IsLegIKEnabled;

    choreo::Replay* m_Replay;
    choreo::ReplayDriver* m_ReplayDriver;
    bool m_ReplayPaused;
    bool m_IsRecording;

    int m_LocomotionListCount;
    choreo::Locomotion* m_LocomotionList[1024];
    choreo::Locomotion* m_Locomotion;
    choreo::LocomotionDriver* m_LocomotionDriver;
    bool m_IsSteeringEnabled;

    tDrawablePose* m_Prop;
    tPose* m_PropPose;
    int m_AttachJoint;

    int m_AnimationListCount;
    choreo::Animation* m_AnimationList[4096];
    choreo::Animation* m_Animations[MAX_ANIMATION_SLOTS];
    choreo::AnimationDriver* m_AnimationDrivers[MAX_ANIMATION_SLOTS];
    bool m_AnimationInterrupt[MAX_ANIMATION_SLOTS];
    bool m_PlayAnimationFlags[MAX_ANIMATION_SLOTS];

    Input m_Input;

    bool m_IsFootPhaseEnabled;

    pddiShader* m_Shader;
    pddiShader* m_AddShader;
};


#endif
