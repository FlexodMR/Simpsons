//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef __TL_ANIMATION_HPP__
#define __TL_ANIMATION_HPP__

#include "atenum.hpp"
#include "tlEntity.hpp"
#include "tlLoadManager.hpp"
#include "tlFourCC.hpp"
#include "tlChannel.hpp"
#include "tlTable.hpp"
#include "tlStringTable.hpp"
#include <assert.h>

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include <map>

//*****************************************************************************************************************
// NOTES:
//      - Memory sizing does not take into account event, string and entity channels!
//      - Compressed quaternions not yet supported in toollib!
//*****************************************************************************************************************

//*****************************************************************************************************************
// Runtime Animation Sizes (used for memory image sizing)
//      0 - PC
//      1 - PS2
//      2 - XBOX
//      3 - GC
//*****************************************************************************************************************
const int ANIM_SIZES[] = { 52, 52, 52, 52 };

//*****************************************************************************************************************
// Runtime Animation Group Sizes (used for memory image sizing) note these should be 32bit aligned (ie 4 bytes)
//      0 - PC
//      1 - PS2
//      2 - XBOX
//      3 - GC
//*****************************************************************************************************************
const int ANIM_GROUP_SIZES[] = { 40, 40, 40, 40 };

//*****************************************************************************************************************
// Default optimization tolerances
//*****************************************************************************************************************
const float DEFAULT_ANIMATION_TOLERANCE         = 0.0f;
const float DEFAULT_INT_ANIMATION_TOLERANCE     = 0.0f;
const float DEFAULT_FLOAT_ANIMATION_TOLERANCE   = 0.01f;
const float DEFAULT_VECTOR_ANIMATION_TOLERANCE  = 0.001f;
const float DEFAULT_QUAT_ANIMATION_TOLERANCE    = RadicalMathLibrary::PI / 3600.0f;  // 0.05º
const float DEFAULT_COLOUR_ANIMATION_TOLERANCE  = 0.05f;

class tlAnimationTolerances
{
public:
    tlAnimationTolerances()
        :   mbUsePeakDetection( false ),
            mIntTolerance( DEFAULT_INT_ANIMATION_TOLERANCE ),
            mFloatTolerance( DEFAULT_FLOAT_ANIMATION_TOLERANCE ),
            mVectorTolerance( DEFAULT_VECTOR_ANIMATION_TOLERANCE ),
            mQuatTolerance( DEFAULT_QUAT_ANIMATION_TOLERANCE ),
            mColourTolerance( DEFAULT_COLOUR_ANIMATION_TOLERANCE )
        {};
    ~tlAnimationTolerances()
        {};

public:
    void                        SetUsePeakDetection( bool bUsePeakDetection )       { mbUsePeakDetection = bUsePeakDetection; }
    bool                        UsePeakDetection( void ) const                      { return mbUsePeakDetection; }

    void                        SetIntTolerance( float tolerance )                    { mIntTolerance = tolerance; }
    float                       IntTolerance( void ) const                          { return mIntTolerance; }

    void                        SetFloatTolerance( float tolerance )                  { mFloatTolerance = tolerance; }
    float                       FloatTolerance( void ) const                        { return mFloatTolerance; }

    void                        SetVectorTolerance( float tolerance )                 { mVectorTolerance = tolerance; }
    float                       VectorTolerance( void ) const                       { return mVectorTolerance; }

    void                        SetQuatTolerance( float tolerance )                   { mQuatTolerance = tolerance; }
    float                       QuatTolerance( void ) const                         { return mQuatTolerance; }

    void                        SetColourTolerance( float tolerance )                 { mColourTolerance = tolerance; }
    float                       ColourTolerance( void ) const                       { return mColourTolerance; }

private:
    bool                        mbUsePeakDetection;
    float                       mIntTolerance;
    float                       mFloatTolerance;
    float                       mVectorTolerance;
    float                       mQuatTolerance;
    float                       mColourTolerance;
};

class tlDataChunk;
class tlInventory;
class tlAnimation;
class tlAnimationGroup;
class tlAnimationGroupList;

class tlVisibilityAnim;
class tlTextureAnim;
class tlCameraAnim;
class tlLightAnim;
class tlExpressionAnim;
class tlPoseAnim;
class tlScenegraphTransformAnim;
class tlBillboardQuadAnim;
class tlBillboardQuadGroupAnim;

//*****************************************************************************
//NOTE:
//      - Memory image size is only the size needed for channels not the animation groups
//        or the animations themselves
//*****************************************************************************

//*****************************************************************************
// tlAnimation
//*****************************************************************************
class tlAnimation : public tlEntity
{
public:
    tlAnimation();
    tlAnimation(const tlAnimation& animation);
    tlAnimation(tlDataChunk* ch);
    ~tlAnimation();

    virtual tlAnimation* Clone() const;

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    //accessor functions to access the animation group table linearly (note index doesn't neccessarily equal groupid!)
    int GetNumAnimationGroups();
    int FindAnimationGroupById(unsigned int groupId);
    int FindAnimationGroupByName(const char* groupName);
    void SetAnimationGroup(const tlAnimationGroup& group);
    void SetAnimationGroup(const tlAnimationGroup& group, unsigned int groupId, const char* groupName = NULL);
    tlAnimationGroup* AddAnimationGroup(unsigned int groupId, const char* groupName = NULL);
    tlAnimationGroup* GetAnimationGroup(int index);
    void DeleteAnimationGroup(int index);

    //get the next unique group id by finding the largest group id and adding 1
    unsigned int GetNextUniqueGroupId();

    void SetAnimationType(const tlFourCC& type);
    const tlFourCC& GetAnimationType() const;

    void SetFrameRate(float rate);
    float GetFrameRate() const;

    void SetCyclic(bool cyclic);
    bool GetCyclic() const;

    void SetNumFrames(unsigned int numFrames);
    unsigned int GetNumFrames() const;

    //removes all keys outside the range and resets the first key to 0
    void SetFrameRange(short start, short stop, bool shiftToZero = true);
    void GetFrameRange(short& start, short& stop);

    void ShiftKeys(short delta);
    void StretchKeys(unsigned beginKey, unsigned endKey, short delta);
    void ScaleKeyTimes(float scale);
    void LoopKeys();
    void InsertExtraKeys(unsigned int space);

    // calculate the size needed in runtime memory to store the channel (0=pc,1=ps2,2=xbox,3=gamecube)
    unsigned int CalculateMemoryImageSize(unsigned int console);

    //sort the animation groups in order of ascending group ids and remove 
    //the duplicate group ids and validate the remaining groups
    bool IsValid();
    void MakeValid();

    bool IsStatic();
    void MakeStatic();
    void RoughOptimization( const tlAnimationTolerances& tolerances );
    void RemoveStaticGroups();

    void AppendAnimTypePrefix();
    void AppendAnimTypeSuffix();

protected:
    tlFourCC animationType;
    float frameRate;
    bool cyclic;
    unsigned int numFrames;
    tlTable<tlAnimationGroup*> animationGroups;
};

//*****************************************************************************
// tlAnimationGroup
//*****************************************************************************
class tlAnimationGroup : public tlEntity
{
public:
    tlAnimationGroup();
    tlAnimationGroup(const tlAnimationGroup& group);
    tlAnimationGroup(tlDataChunk* ch);
    ~tlAnimationGroup();

    virtual tlAnimationGroup* Clone() const;

    void LoadFromChunk16(tlDataChunk* ch)                       { assert(0); }
    tlDataChunk* Chunk16()                                      { assert(0); return NULL; }

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    virtual tlAnimationGroup& operator=(const tlAnimationGroup& group);

    void SetGroupId(unsigned int id);
    unsigned int GetGroupId() const;

    int GetNumChannels();

    void CreateIntChannel(const tlFourCC& code, int numKeys);
    void CreateFloat1Channel(const tlFourCC& code, int numKeys);
    void CreateFloat2Channel(const tlFourCC& code, int numKeys);
    void CreateVectorChannel(const tlFourCC& code, int numKeys);
    void CreateQuaternionChannel(const tlFourCC& code, int numKeys, unsigned format = 0);
    void CreateStringChannel(const tlFourCC& code, int numKeys, bool entity = false);
    void CreateBoolChannel(const tlFourCC& code, int numKeys);
    void CreateColourChannel(const tlFourCC& code, int numKeys);
    void CreateEventChannel(const tlFourCC& code, int numKeys);

    void SetIntChannel(const tlFourCC& code, const tlIntChannel* channel);
    void SetFloat1Channel(const tlFourCC& code, const tlFloat1Channel* channel);
    void SetFloat2Channel(const tlFourCC& code, const tlFloat2Channel* channel);
    void SetVectorChannel(const tlFourCC& code, const tlVectorChannel* channel);
    void SetQuaternionChannel(const tlFourCC& code, const tlQuaternionChannel* channel);
    void SetStringChannel(const tlFourCC& code, const tlStringChannel* channel);
    void SetBoolChannel(const tlFourCC& code, const tlBoolChannel* channel);
    void SetColourChannel(const tlFourCC& code, const tlColourChannel* channel);
    void SetEventChannel(const tlFourCC& code, const tlEventChannel* channel);

    tlIntChannel* GetIntChannel(const tlFourCC& code);
    tlFloat1Channel* GetFloat1Channel(const tlFourCC& code);
    tlFloat2Channel* GetFloat2Channel(const tlFourCC& code);
    tlVectorChannel* GetVectorChannel(const tlFourCC& code);
    tlQuaternionChannel* GetQuaternionChannel(const tlFourCC& code);
    tlStringChannel* GetStringChannel(const tlFourCC& code);
    tlBoolChannel* GetBoolChannel(const tlFourCC& code);
    tlColourChannel* GetColourChannel(const tlFourCC& code);
    tlEventChannel* GetEventChannel(const tlFourCC& code);

    void DeleteIntChannel(const tlFourCC& code);
    void DeleteFloat1Channel(const tlFourCC& code);
    void DeleteFloat2Channel(const tlFourCC& code);
    void DeleteVectorChannel(const tlFourCC& code);
    void DeleteQuaternionChannel(const tlFourCC& code);
    void DeleteStringChannel(const tlFourCC& code);
    void DeleteBoolChannel(const tlFourCC& code);
    void DeleteColourChannel(const tlFourCC& code);
    void DeleteEventChannel(const tlFourCC& code);

    void OptimizeIntChannels(float tolerance = DEFAULT_INT_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );
    void OptimizeFloat1Channels(float tolerance = DEFAULT_FLOAT_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );
    void OptimizeFloat2Channels(float tolerance = DEFAULT_FLOAT_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );
    void OptimizeVectorChannels(float tolerance = DEFAULT_VECTOR_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );
    void OptimizeQuaternionChannels(float tolerance = DEFAULT_QUAT_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );
    void OptimizeStringChannels();
    void OptimizeBoolChannels();
    void OptimizeColourChannels(float tolerance = DEFAULT_COLOUR_ANIMATION_TOLERANCE, bool bUsePeakDetection = true );

    tlChannelContainer<int>* GetIntChannels();
    tlChannelContainer<float>* GetFloat1Channels();
    tlChannelContainer<tlPoint2D>* GetFloat2Channels();
    tlChannelContainer<tlPoint>* GetVectorChannels();
    tlChannelContainer<tlQuat>* GetQuaternionChannels();
    tlChannelContainer<tlString>* GetStringChannels();
    tlChannelContainer<bool>* GetBoolChannels();
    tlChannelContainer<tlColour>* GetColourChannels();
    tlChannelContainer<tlEvent>* GetEventChannels();

    //removes all keys outside the range and resets the first key to 0
    void SetFrameRange(short start, short stop, bool shiftToZero = true);
    void GetFrameRange(short& start, short& stop);
   
    void ShiftKeys(short delta);
    void StretchKeys(unsigned beginKey, unsigned endKey, short delta);
    void ScaleKeyTimes(float scale);
    void LoopKeys();
    void InsertExtraKeys(unsigned int space);

    // calculate the size needed in runtime memory to store the channel (0=pc,1=ps2,2=xbox,3=gamecube)
    unsigned int CalculateMemoryImageSize(unsigned int console, unsigned int inSize = 0);

    // make all the channels valid
    bool IsValid();
    void MakeValid();

    bool IsStatic();
    void MakeStatic();
    void RoughOptimization( const tlAnimationTolerances& tolerances );
    void RemoveStaticChannels();

protected:
    void Initialize();

    unsigned int groupId;
    tlChannelContainer<int> intChannels;
    tlChannelContainer<float> float1Channels;
    tlChannelContainer<tlPoint2D> float2Channels;
    tlChannelContainer<tlPoint> vectorChannels;
    tlChannelContainer<tlQuat> quaternionChannels;
    tlChannelContainer<tlString> stringChannels;
    tlChannelContainer<bool> boolChannels;
    tlChannelContainer<tlColour> colourChannels;
    tlChannelContainer<tlEvent> eventChannels;
};

//*****************************************************************************
// tlAnimationLoader
//*****************************************************************************
class tlAnimationLoader : public tlEntityLoader
{
public:
    tlAnimationLoader();

    virtual bool CheckChunkID(unsigned chunkID);

    virtual tlEntity* Load(tlDataChunk* chunk);

    static void SetAutoAppendAnimTypePrefix(bool enable);
    static void SetAutoAppendAnimTypeSuffix(bool enable);
    static bool GetAutoAppendAnimTypePrefix();
    static bool GetAutoAppendAnimTypeSuffix();

protected:
    static bool autoAppendAnimTypePrefix;
    static bool autoAppendAnimTypeSuffix;
};

#endif
