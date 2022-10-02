//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLPOSEANIM_HPP_
#define _TLPOSEANIM_HPP_

#include "tlChannel.hpp"
#include "tlAnimation.hpp"

class tlDataChunk;
class tlPose;
class tlSkeleton;
class tlMatrix;

//*****************************************************************************
// tlJointAnimGroup
//*****************************************************************************
class tlJointAnimGroup : public tlAnimationGroup
{
public:
    tlJointAnimGroup();
    tlJointAnimGroup( tlDataChunk* ch );
    ~tlJointAnimGroup();
          
    tlAnimationGroup* Clone() const;

    bool IsDynamicRotation();
    bool IsDynamicTranslation();
    
    void Transform( const tlMatrix &m );        // Transform Translations
    void Scale( float sx,float sy,float sz );      // Scale translations
    void Truncate();                          // Convert to ints
    float LargestTranslation();
     
    void CreateStandardChannels( int numKeys );
    
    void CreateTranslationChannel( int numKeys );
    void CreateRotationChannel( int numKeys );

    void SetTranslationChannel( const tlVectorChannel& channel );
    void SetRotationChannel( const tlQuaternionChannel& channel );

    tlVectorChannel* GetTranslationChannel();
    tlQuaternionChannel* GetRotationChannel();

    void DeleteRotationChannel();
    void DeleteTranslationChannel();

    void DeleteXTrans();                      // delete x from translation keys
    void DeleteYTrans();                      // delete y from translation keys
    void DeleteZTrans();                      // delete z from translation keys  
};
    
//*****************************************************************************
// tlPoseAnim
//*****************************************************************************
class tlPoseAnim : public tlAnimation
{
public:
    tlPoseAnim();
    tlPoseAnim( tlDataChunk* ch );
    ~tlPoseAnim();

    tlAnimation* Clone() const;

    void LoadFromChunk16(tlDataChunk* ch);  

    void SetJoint( const tlJointAnimGroup& joint, unsigned int jointId, const char* jointName = NULL );
    tlJointAnimGroup* AddJoint( unsigned int jointId, const char* jointName = NULL);
    tlJointAnimGroup* GetJoint( unsigned int jointId );
    tlJointAnimGroup* FindJoint( const char* jointName );
    void DeleteJoint( unsigned int jointId );   
     
    void Transform( tlMatrix &m );
    void Scale( float sx,float sy,float sz );      //: Scale translations
    void Truncate();
    void OptimizeTranslation( float tolerance );
    void OptimizeRotation( float tolerance );
    void DeleteTranslation();
    void DeleteRotation();
    void EvaluatePose( tlPose* pose, int frame );

    void SetMirrored( bool mirrored );
    bool IsMirrored();
    void SetMirroredAnimName( const char* n );
    const char* GetMirroredAnimName();

    void ReMapJoints( const tlSkeleton* sortedSkeleton );

protected:

    // Mirroring Data
    bool              isMirrored;
    char*             mirroredName;
};

#endif

