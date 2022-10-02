/*===========================================================================
    tlPARTICLE.hpp
    created June 15, 2000
    Kevin Voon

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifndef _TLPARTICLE_HPP
#define _TLPARTICLE_HPP

#include "tlEntity.hpp"
#include "tlFourCC.hpp"
#include "tlMatrix.hpp"
#include "tlPoint.hpp"
#include "tlString.hpp"
#include "tlShader.hpp"
#include "tlTable.hpp"
#include "tlAnimation.hpp"
#include "tlChannel.hpp"
#include "tlLoadManager.hpp"

class tlParticleSystemFactory;
class tlParticleSystem;
class tlParticle;
class tlBaseEmitterFactory;
class tlSpriteEmitterFactory;
class tlDrawableEmitterFactory;
class tlParticleAnimation;
class tlBaseParticleAnimGroup;
class tlSpriteParticleAnimGroup;
class tlDrawableParticleAnimGroup;
class tlEmitterAnimation;
class tlBaseEmitterAnimGroup;
class tlSpriteEmitterAnimGroup;
class tlDrawableEmitterAnimGroup;
class tlGeneratorAnimation;
class tlBaseGeneratorAnimGroup;
class tlSpriteGeneratorAnimGroup;
class tlDrawableGeneratorAnimGroup;

//*****************************************************************************
// tlParticleSystemFactory
//*****************************************************************************
class tlParticleSystemFactory : public tlEntity
{
public:
    tlParticleSystemFactory();
    tlParticleSystemFactory(tlDataChunk* ch);
    virtual ~tlParticleSystemFactory();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                   { assert(0); }
    tlDataChunk* Chunk16()                                  { assert(0); return NULL; }

    int GetNumEmitters() const                                              { return emitters.Count(); }
    void AddEmitterFactory(const tlBaseEmitterFactory& emitter);
    void AddEmitterFactoryPtr(tlBaseEmitterFactory* emitter)                { if (emitter) emitters.Append(emitter); }
    const tlBaseEmitterFactory& GetEmitterFactory(int emitterNum) const     { return *emitters[emitterNum]; }
    tlBaseEmitterFactory* GetEmitterFactoryPtr(int emitterNum) const        { return emitters[emitterNum]; }

    float GetFrameRate() const                              { return frameRate; }
    void SetFrameRate (float rate)                          { if(rate>0.0f) frameRate = rate; }

    unsigned int GetNumAnimFrames() const                   { return numAnimFrames; }
    void SetNumAnimFrames(unsigned int frame)               { numAnimFrames=frame;}

    unsigned int GetNumOLFrames() const                     { return numOLFrames; }
    void SetNumOLFrames(unsigned int frame)                 { numOLFrames=frame;}

    bool GetCycleAnim() const                               { return cycleAnim; }
    void SetCycleAnim(bool enabled)                         { cycleAnim=enabled; }

    bool GetEnableSorting() const                           { return enableSorting; }
    void SetEnableSorting(bool enabled)                     { enableSorting=enabled; }
   
    unsigned GetMaxInstances() const                        { return maxInstances; }
    void SetMaxInstances(unsigned max)                      { maxInstances=max; }

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    tlParticleSystem* CreateParticleSystem(const char* name);

protected:
    float frameRate;
    unsigned int numAnimFrames;
    unsigned int numOLFrames;
    bool cycleAnim;
    bool enableSorting;
    unsigned maxInstances;
    tlTable<tlBaseEmitterFactory*> emitters;
};

//*****************************************************************************
// tlParticleSystem
//*****************************************************************************
class tlParticleSystem : public tlEntity
{
public:
    tlParticleSystem();
    tlParticleSystem(tlDataChunk* ch);
    virtual ~tlParticleSystem();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)   { assert(0); }
    tlDataChunk* Chunk16()                  { assert(0); return NULL; }

    void SetFactoryName(const char* fname)  { strdelete(factoryName); if (fname) factoryName = strnew(fname); }
    const char* GetFactoryName() const      { return factoryName; }

//    virtual void PreloadParticles(float frame, const tlMatrix& localMatrix);
//    void RemoveParticles();

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    friend class tlParticleSystemFactory;

protected:
    char*                       factoryName;
    tlParticleSystemFactory*    factoryPtr;
//    tlTable<tlParticleArray*>   particleArrays;
};

//*****************************************************************************
// tlBaseEmitter
//*****************************************************************************
class tlBaseEmitterFactory : public tlEntity
{
public:
    tlBaseEmitterFactory();
    tlBaseEmitterFactory(const tlBaseEmitterFactory& emitter);
    tlBaseEmitterFactory(tlDataChunk* ch);
    virtual ~tlBaseEmitterFactory();

    virtual tlBaseEmitterFactory* Clone() const;

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    tlFourCC GetParticleType() const                            { return particleType; }
    tlFourCC GetGeneratorType() const                           { return generatorType; }
    
    void SetZTest(bool enable)                                  { zTest = enable; }
    bool GetZTest() const                                       { return zTest; }

    void SetZWrite(bool enable)                                 { zWrite = enable; }
    bool GetZWrite() const                                      { return zWrite; }

    void SetFog(bool enable)                                    { fog = enable; }
    bool GetFog() const                                         { return fog; }

    void SetMaxParticles(unsigned int max)                      { maxParticles = max; }
    unsigned int GetMaxParticles() const                        { return maxParticles; }

    void SetInfiniteLife(bool infinite)                         { infiniteLife = infinite; }
    bool GetInfiniteLife() const                                { return infiniteLife; }

    void SetRotationalCohesion(float r)                         { rotationalCohesion = (r>0.0f) ? ((r < 1.0f) ? r : 1.0f) : 0.0f; }
    float GetRotationalCohesion()                               { return rotationalCohesion; }

    void SetTranslationalCohesion(float t)                      { translationalCohesion = (t>0.0f) ? ((t < 1.0f) ? t : 1.0f) : 0.0f; }
    float GetTranslationalCohesion()                            { return translationalCohesion; }

    tlParticleAnimation* CreateParticleAnimation();
    tlParticleAnimation* GetParticleAnimation() const;
    void DeleteParticleAnimation();

    tlEmitterAnimation* CreateEmitterAnimation();
    tlEmitterAnimation* GetEmitterAnimation() const;
    void DeleteEmitterAnimation();

    tlGeneratorAnimation* CreateGeneratorAnimation(const tlFourCC& type);
    tlGeneratorAnimation* GetGeneratorAnimation() const;
    void DeleteGeneratorAnimation();

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    friend class tlParticleSystemFactory;
    friend class tlParticleSystem;

protected:
    tlFourCC                particleType;
    tlFourCC                generatorType;
    bool                    zTest;
    bool                    zWrite;
    bool                    fog;
    unsigned int            maxParticles;
    bool                    infiniteLife;
    float                   rotationalCohesion;
    float                   translationalCohesion;
    tlParticleAnimation*    particleAnim;
    tlEmitterAnimation*     emitterAnim;
    tlGeneratorAnimation*   generatorAnim;
};

//*****************************************************************************
// tlSpriteEmitter
//*****************************************************************************
class tlSpriteEmitterFactory : public tlBaseEmitterFactory
{
public:
    tlSpriteEmitterFactory();
    tlSpriteEmitterFactory(const tlSpriteEmitterFactory& emitter);
    tlSpriteEmitterFactory(tlDataChunk* ch);
    virtual ~tlSpriteEmitterFactory();

    virtual tlBaseEmitterFactory* Clone() const;

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void SetShaderName(const char* s)                           { strdelete(shaderName); shaderName = strnew(s); }
    const char* GetShaderName()                                 { return shaderName; }

    void SetAngleMode(const tlFourCC& mode)                     { angleMode = mode; }
    tlFourCC GetAngleMode() const                               { return angleMode; }

    void SetAngle(float a)                                      { angle = a; }
    float GetAngle() const                                      { return angle; }
    
    void SetTextureAnimMode(const tlFourCC& mode)               { textureAnimMode = mode; }
    tlFourCC GetTextureAnimMode() const                         { return textureAnimMode; }

    void SetTextureFrameRate(unsigned int rate)                 { textureFrameRate = rate; }
    unsigned int GetTextureFrameRate() const                    { return textureFrameRate; }

    void SetNumTextureFrames(unsigned int num)                  { numTextureFrames = num; }
    unsigned int GetNumTextureFrames() const                    { return numTextureFrames; }

    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    friend class tlParticleSystemFactory;
    friend class tlParticleSystem;

protected:
    char*           shaderName;
    tlShader*       shaderPtr;
    tlFourCC        angleMode;
    float           angle;
    tlFourCC        textureAnimMode;
    unsigned int    textureFrameRate;
    unsigned int    numTextureFrames;
};

//*****************************************************************************
// tlDrawableEmitter
//*****************************************************************************
class tlDrawableEmitterFactory : public tlBaseEmitterFactory
{
public:
    tlDrawableEmitterFactory();
    tlDrawableEmitterFactory(const tlDrawableEmitterFactory& emitter);
    tlDrawableEmitterFactory(tlDataChunk* ch);
    virtual ~tlDrawableEmitterFactory();

    virtual tlBaseEmitterFactory* Clone() const;

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void SetDrawableName(const char* s)                         { strdelete(drawableName); drawableName = strnew(s); }
    const char* GetDrawableName()                               { return drawableName; }

    void SetAngleMode(const tlFourCC& mode)                     { angleMode = mode; }
    tlFourCC GetAngleMode() const                               { return angleMode; }

    void SetAngle(float a)                                      { angle = a; }
    float GetAngle() const                                      { return angle; }
    
    void ResolveReferences(tlInventory* inv);
    void MarkReferences(int m);
    bool FindReferenceMark(int m);

    friend class tlParticleSystemFactory;
    friend class tlParticleSystem;

protected:
    char*       drawableName;
    tlEntity*   drawablePtr;
    tlFourCC    angleMode;
    float       angle;
};

//*****************************************************************************
// tlParticleAnimation
//*****************************************************************************
class tlParticleAnimation : public tlAnimation
{
public:
    tlParticleAnimation();
    tlParticleAnimation(tlDataChunk* ch);
    virtual ~tlParticleAnimation();

    tlAnimation* Clone() const;

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    tlBaseParticleAnimGroup* SetOverLifeAnimation(const tlBaseParticleAnimGroup& anim);
    tlBaseParticleAnimGroup* GetOverLifeAnimation();
    void DeleteOverLifeAnimation();
};

//*****************************************************************************
// tlBaseParticleAnimGroup
//*****************************************************************************
class tlBaseParticleAnimGroup : public tlAnimationGroup
{
public:
    tlBaseParticleAnimGroup();
    tlBaseParticleAnimGroup(tlDataChunk* ch);
    virtual ~tlBaseParticleAnimGroup();

    tlAnimationGroup* Clone() const;

    virtual void CreateStandardChannels(int numKeys);
    
    void CreateSpeedOverLifeChannel(int numKeys);
    void CreateWeightOverLifeChannel(int numKeys);

    void SetSpeedOverLifeChannel(const tlFloat1Channel& channel);
    void SetWeightOverLifeChannel(const tlFloat1Channel& channel);

    tlFloat1Channel* GetSpeedOverLifeChannel();
    tlFloat1Channel* GetWeightOverLifeChannel();

    void DeleteSpeedOverLifeChannel();
    void DeleteWeightOverLifeChannel();
};

//*****************************************************************************
// tlSpriteParticleAnimGroup
//*****************************************************************************
class tlSpriteParticleAnimGroup : public tlBaseParticleAnimGroup
{
public:
    tlSpriteParticleAnimGroup();
    tlSpriteParticleAnimGroup(tlDataChunk* ch);
    ~tlSpriteParticleAnimGroup();

    tlAnimationGroup* Clone() const;

    virtual void CreateStandardChannels(int numKeys);
    
    void CreateTextureOverLifeChannel(int numKeys);
    void CreateColourOverLifeChannel(int numKeys);
    void CreateAlphaOverLifeChannel(int numKeys);
    void CreateSizeOverLifeChannel(int numKeys);
    void CreateSpinOverLifeChannel(int numKeys);

    void SetTextureOverLifeChannel(const tlIntChannel& channel);
    void SetColourOverLifeChannel(const tlColourChannel& channel);
    void SetAlphaOverLifeChannel(const tlIntChannel& channel);
    void SetSizeOverLifeChannel(const tlFloat1Channel& channel);
    void SetSpinOverLifeChannel(const tlFloat1Channel& channel);

    tlIntChannel*    GetTextureOverLifeChannel();
    tlColourChannel* GetColourOverLifeChannel();
    tlIntChannel*    GetAlphaOverLifeChannel();
    tlFloat1Channel* GetSizeOverLifeChannel();
    tlFloat1Channel* GetSpinOverLifeChannel();

    void DeleteTextureOverLifeChannel();
    void DeleteColourOverLifeChannel();
    void DeleteAlphaOverLifeChannel();
    void DeleteSizeOverLifeChannel();
    void DeleteSpinOverLifeChannel();
};

//*****************************************************************************
// tlDrawableParticleAnimGroup
//*****************************************************************************
class tlDrawableParticleAnimGroup : public tlBaseParticleAnimGroup
{
public:
    tlDrawableParticleAnimGroup();
    tlDrawableParticleAnimGroup(tlDataChunk* ch);
    virtual ~tlDrawableParticleAnimGroup();

    tlAnimationGroup* Clone() const;
};

//*****************************************************************************
// tlEmitterAnimation
//*****************************************************************************
class tlEmitterAnimation : public tlAnimation
{
public:
    tlEmitterAnimation();
    tlEmitterAnimation(tlDataChunk* ch);
    virtual ~tlEmitterAnimation();

    tlAnimation* Clone() const;

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    int GetNumBlendStates();
    tlBaseEmitterAnimGroup* AddBlendState(const tlBaseEmitterAnimGroup& state);
    tlBaseEmitterAnimGroup* SetBlendState(int stateNum, const tlBaseEmitterAnimGroup& state);
    tlBaseEmitterAnimGroup* GetBlendState(int stateNum);
    void DeleteBlendState(int stateNum);
};

//*****************************************************************************
// tlBaseEmitterAnimGroup
//*****************************************************************************
class tlBaseEmitterAnimGroup : public tlAnimationGroup
{
public:
    tlBaseEmitterAnimGroup();
    tlBaseEmitterAnimGroup(tlDataChunk* ch);
    virtual ~tlBaseEmitterAnimGroup();

    tlAnimationGroup* Clone() const;

    virtual void CreateStandardChannels(int numKeys);
    
    void CreateVisibilityChannel(int numKeys);
    void CreateEmissionRateChannel(int numKeys);
    void CreateNumParticlesChannel(int numKeys);
    void CreateTranslationChannel(int numKeys);
    void CreateRotationChannel(int numKeys);
    void CreateLifeChannel(int numKeys);
    void CreateLifeVarChannel(int numKeys);
    void CreateSpeedChannel(int numKeys);
    void CreateSpeedVarChannel(int numKeys);
    void CreateWeightChannel(int numKeys);
    void CreateWeightVarChannel(int numKeys);
    void CreateGravityChannel(int numKeys);
    void CreateDragChannel(int numKeys);

    void SetVisibilityChannel(const tlBoolChannel& channel);
    void SetEmissionRateChannel(const tlFloat1Channel& channel);
    void SetNumParticlesChannel(const tlIntChannel& channel);
    void SetTranslationChannel(const tlVectorChannel& channel);
    void SetRotationChannel(const tlQuaternionChannel& channel);
    void SetLifeChannel(const tlFloat1Channel& channel);
    void SetLifeVarChannel(const tlFloat1Channel& channel);
    void SetSpeedChannel(const tlFloat1Channel& channel);
    void SetSpeedVarChannel(const tlFloat1Channel& channel);
    void SetWeightChannel(const tlFloat1Channel& channel);
    void SetWeightVarChannel(const tlFloat1Channel& channel);
    void SetGravityChannel(const tlFloat1Channel& channel);
    void SetDragChannel(const tlFloat1Channel& channel);

    tlBoolChannel* GetVisibilityChannel();
    tlFloat1Channel* GetEmissionRateChannel();
    tlIntChannel* GetNumParticlesChannel();
    tlVectorChannel* GetTranslationChannel();
    tlQuaternionChannel* GetRotationChannel();
    tlFloat1Channel* GetLifeChannel();
    tlFloat1Channel* GetLifeVarChannel();
    tlFloat1Channel* GetSpeedChannel();
    tlFloat1Channel* GetSpeedVarChannel();
    tlFloat1Channel* GetWeightChannel();
    tlFloat1Channel* GetWeightVarChannel();
    tlFloat1Channel* GetGravityChannel();
    tlFloat1Channel* GetDragChannel();

    void DeleteVisibilityChannel();
    void DeleteEmissionRateChannel();
    void DeleteNumParticlesChannel();
    void DeleteTranslationChannel();
    void DeleteRotationChannel();
    void DeleteLifeChannel();
    void DeleteLifeVarChannel();
    void DeleteSpeedChannel();
    void DeleteSpeedVarChannel();
    void DeleteWeightChannel();
    void DeleteWeightVarChannel();
    void DeleteGravityChannel();
    void DeleteDragChannel();
};

//*****************************************************************************
// tlSpriteEmitterAnimGroup
//*****************************************************************************
class tlSpriteEmitterAnimGroup : public tlBaseEmitterAnimGroup
{
public:
    tlSpriteEmitterAnimGroup();
    tlSpriteEmitterAnimGroup(tlDataChunk* ch);
    virtual ~tlSpriteEmitterAnimGroup();

    tlAnimationGroup* Clone() const;

    //neccessary to unhide the base class colour channel functions
#ifdef WIN32
    using tlBaseEmitterAnimGroup::CreateColourChannel;
    using tlBaseEmitterAnimGroup::SetColourChannel;
    using tlBaseEmitterAnimGroup::GetColourChannel;
    using tlBaseEmitterAnimGroup::DeleteColourChannel;
#else
    void CreateColourChannel(const tlFourCC& code, int numKeys) 
    {
        tlAnimationGroup::CreateColourChannel(code, numKeys); 
    }
    
    void SetColourChannel(const tlFourCC& code, const tlColourChannel* channel)
    {
        tlAnimationGroup::SetColourChannel(code, channel); 
    }
    
    tlColourChannel* GetColourChannel(const tlFourCC& code)
    {
        return tlAnimationGroup::GetColourChannel(code); 
    }
    
    void DeleteColourChannel(const tlFourCC& code)
    {
        tlAnimationGroup::DeleteColourChannel(code); 
    }
#endif

    virtual void CreateStandardChannels(int numKeys);
    
    void CreateColourChannel(int numKeys);
    void CreateColourVarChannel(int numKeys);
    void CreateAlphaChannel(int numKeys);
    void CreateAlphaVarChannel(int numKeys);
    void CreateSizeChannel(int numKeys);
    void CreateSizeVarChannel(int numKeys);
    void CreateSpinChannel(int numKeys);
    void CreateSpinVarChannel(int numKeys);

    void SetColourChannel(const tlColourChannel& channel);
    void SetColourVarChannel(const tlIntChannel& channel);
    void SetAlphaChannel(const tlIntChannel& channel);
    void SetAlphaVarChannel(const tlIntChannel& channel);
    void SetSizeChannel(const tlFloat1Channel& channel);
    void SetSizeVarChannel(const tlFloat1Channel& channel);
    void SetSpinChannel(const tlFloat1Channel& channel);
    void SetSpinVarChannel(const tlFloat1Channel& channel);

    tlColourChannel* GetColourChannel();
    tlIntChannel*    GetColourVarChannel();
    tlIntChannel*    GetAlphaChannel();
    tlIntChannel*    GetAlphaVarChannel();
    tlFloat1Channel* GetSizeChannel();
    tlFloat1Channel* GetSizeVarChannel();
    tlFloat1Channel* GetSpinChannel();
    tlFloat1Channel* GetSpinVarChannel();

    void DeleteColourChannel();
    void DeleteColourVarChannel();
    void DeleteAlphaChannel();
    void DeleteAlphaVarChannel();
    void DeleteSizeChannel();
    void DeleteSizeVarChannel();
    void DeleteSpinChannel();
    void DeleteSpinVarChannel();
};

//*****************************************************************************
// tlDrawableEmitterAnimGroup
//*****************************************************************************
class tlDrawableEmitterAnimGroup : public tlBaseEmitterAnimGroup
{
public:
    tlDrawableEmitterAnimGroup();
    tlDrawableEmitterAnimGroup(tlDataChunk* ch);
    virtual ~tlDrawableEmitterAnimGroup();

    tlAnimationGroup* Clone() const;
};

//*****************************************************************************
// tlGeneratorAnimation
//*****************************************************************************
class tlGeneratorAnimation : public tlAnimation
{
public:
    tlGeneratorAnimation();
    tlGeneratorAnimation(tlDataChunk* ch);
    virtual ~tlGeneratorAnimation();

    tlAnimation* Clone() const;

    virtual void LoadFromChunk(tlDataChunk* ch);
    virtual tlDataChunk* Chunk();

    int GetNumBlendStates();
    tlBaseGeneratorAnimGroup* AddBlendState(const tlBaseGeneratorAnimGroup& state);
    tlBaseGeneratorAnimGroup* SetBlendState(int stateNum, const tlBaseGeneratorAnimGroup& state);
    tlBaseGeneratorAnimGroup* GetBlendState(int stateNum);
    void DeleteBlendState(int stateNum);
};

//*****************************************************************************
// tlBaseGeneratorAnimGroup
//*****************************************************************************
class tlBaseGeneratorAnimGroup : public tlAnimationGroup
{
public:
    tlBaseGeneratorAnimGroup();
    tlBaseGeneratorAnimGroup(tlDataChunk* ch);
    ~tlBaseGeneratorAnimGroup();

    tlAnimationGroup* Clone() const;

    virtual void CreateStandardChannels(int numKeys);
};

//*****************************************************************************
// tlPointGeneratorAnimGroup
//*****************************************************************************
class tlPointGeneratorAnimGroup : public tlBaseGeneratorAnimGroup
{
public:
    tlPointGeneratorAnimGroup();
    tlPointGeneratorAnimGroup(tlDataChunk* ch);
    virtual ~tlPointGeneratorAnimGroup();

    tlAnimationGroup* Clone() const;

    void CreateStandardChannels(int numKeys);
    
    void CreateHorizSpreadChannel(int numKeys);
    void CreateVertSpreadChannel(int numKeys);
    void CreateRadialVarChannel(int numKeys);

    void SetHorizSpreadChannel(const tlFloat1Channel& channel);
    void SetVertSpreadChannel(const tlFloat1Channel& channel);
    void SetRadialVarChannel(const tlFloat1Channel& channel);

    tlFloat1Channel* GetHorizSpreadChannel();
    tlFloat1Channel* GetVertSpreadChannel();
    tlFloat1Channel* GetRadialVarChannel();

    void DeleteHorizSpreadChannel();
    void DeleteVertSpreadChannel();
    void DeleteRadialVarChannel();
};

//*****************************************************************************
// tlPlaneGeneratorAnimGroup
//*****************************************************************************
class tlPlaneGeneratorAnimGroup : public tlBaseGeneratorAnimGroup
{
public:
    tlPlaneGeneratorAnimGroup();
    tlPlaneGeneratorAnimGroup(tlDataChunk* ch);
    virtual ~tlPlaneGeneratorAnimGroup();

    tlAnimationGroup* Clone() const;

    void CreateStandardChannels(int numKeys);
    
    void CreateHorizSpreadChannel(int numKeys);
    void CreateVertSpreadChannel(int numKeys);
    void CreateRadialVarChannel(int numKeys);
    void CreateWidthChannel(int numKeys);
    void CreateHeightChannel(int numKeys);

    void SetHorizSpreadChannel(const tlFloat1Channel& channel);
    void SetVertSpreadChannel(const tlFloat1Channel& channel);
    void SetRadialVarChannel(const tlFloat1Channel& channel);
    void SetWidthChannel(const tlFloat1Channel& channel);
    void SetHeightChannel(const tlFloat1Channel& channel);

    tlFloat1Channel* GetHorizSpreadChannel();
    tlFloat1Channel* GetVertSpreadChannel();
    tlFloat1Channel* GetRadialVarChannel();
    tlFloat1Channel* GetWidthChannel();
    tlFloat1Channel* GetHeightChannel();

    void DeleteHorizSpreadChannel();
    void DeleteVertSpreadChannel();
    void DeleteRadialVarChannel();
    void DeleteWidthChannel();
    void DeleteHeightChannel();
};

//*****************************************************************************
// tlSphereGeneratorAnimGroup
//*****************************************************************************
class tlSphereGeneratorAnimGroup : public tlBaseGeneratorAnimGroup
{
public:
    tlSphereGeneratorAnimGroup();
    tlSphereGeneratorAnimGroup(tlDataChunk* ch);
    virtual ~tlSphereGeneratorAnimGroup();

    tlAnimationGroup* Clone() const;

    void CreateStandardChannels(int numKeys);
    
    void CreateRadialVarChannel(int numKeys);
    void CreateRadiusChannel(int numKeys);

    void SetRadialVarChannel(const tlFloat1Channel& channel);
    void SetRadiusChannel(const tlFloat1Channel& channel);

    tlFloat1Channel* GetRadialVarChannel();
    tlFloat1Channel* GetRadiusChannel();

    void DeleteRadialVarChannel();
    void DeleteRadiusChannel();
};

//*****************************************************************************
// tlEmitterFactoryLoader
//*****************************************************************************
class tlEmitterFactoryLoader
{
public:
    tlBaseEmitterFactory* LoadEmitterFactory(tlDataChunk* chunk);
};

//*****************************************************************************
// tlParticleSystemFactoryLoader
//*****************************************************************************
class tlParticleSystemFactoryLoader : public tlEntityLoader
{
public:
    tlParticleSystemFactoryLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

//*****************************************************************************
// tlParticleSystemLoader
//*****************************************************************************
class tlParticleSystemLoader : public tlEntityLoader
{
public:
    tlParticleSystemLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _TLPARTICLE_HPP


