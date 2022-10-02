//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _JOINTDEFINITIONDATA_HPP_
#define _JOINTDEFINITIONDATA_HPP_

#include "simtemplatelist.hpp"
#include "tlString.hpp"


class tlSimNameData
{
public:
    tlSimNameData() : mName(NULL) {}
    ~tlSimNameData() { strdelete(mName); }

    const char* GetName() const { return mName; }
    void ClearName() { strdelete(mName); mName = NULL; }

    void SetName(const char* inName)
    {
        strdelete(mName); 
        mName = strnew(inName); 
    }
    
    bool SameName(const char* inName) const
    {
        return (mName == NULL ? false : !strcmp(mName, inName)); 
    }

    tlSimNameData &operator= ( const tlSimNameData &inSimNameData )
    {
        if (inSimNameData.GetName())
        {
            SetName(inSimNameData.GetName());
        }
        return *this;
    }

private:
    char* mName;
};

//
//
//

class tlFlexibleParametersData
: public tlSimNameData
{
public:
    tlFlexibleParametersData()
        : mStretch1Dkf(1000.0f),
        mStretch1Dkd(1.0f),
        mBend1Dkf(10.0f),
        mBend1Dkd(0.1f),
        mWind1DKf(1.0f),
        mStretch2Dkf(0.0f),
        mStretch2Dkd(0.0f),
        mShear2Dkf(40.0f),
        mShear2Dkd(0.250f),
        mBend2Dkf(1.0f),
        mBend2Dkd(0.01f),
        mWind2DKf(200.0f),
        mLambdaF(0.0),
        mLambdaD(0.0),
        mKappaF(0.0),
        mKappaD(0.0),
        mIotaF(0.0),
        mIotaD(0.0),
        mUseLambda(false)
    {}

    float mStretch1Dkf;
    float mStretch1Dkd;
    float mBend1Dkf;
    float mBend1Dkd;
    float mWind1DKf;
    float mStretch2Dkf;
    float mStretch2Dkd;
    float mShear2Dkf;
    float mShear2Dkd;
    float mBend2Dkf;
    float mBend2Dkd;
    float mWind2DKf;
    
    float mLambdaF;
    float mLambdaD;
    float mKappaF;
    float mKappaD;
    float mIotaF;
    float mIotaD;
    bool  mUseLambda;
};

class tlFlexJointConnection
{
public:
    tlFlexJointConnection() : mIndex1(0), mIndex2(0), mLength(0), mOnBranch(false) {}
    void Set(unsigned long inIndex1, unsigned long inIndex2)
    {
        assert(inIndex1 != inIndex2);
        if (inIndex1 < inIndex2)
        {
            mIndex1 = inIndex1;
            mIndex2 = inIndex2;
        }
        else
        {
            Set(inIndex2, inIndex1);
        }
    }
    unsigned long   mIndex1;
    unsigned long   mIndex2;
    float mLength;
    bool  mOnBranch;
};

inline void SwapIndex(unsigned long& i1, unsigned long& i2)
{
    unsigned long tmp = i2;
    i2 = i1;
    i1 = tmp;
}

class tlFlexJointHinge
{
public:
    tlFlexJointHinge() : mIndex1(0), mIndex2(0), mIndex3(0) {}
    void Set(unsigned long inIndex1, unsigned long inIndex2, unsigned long inIndex3)
    {
        assert(inIndex1 != inIndex2 && inIndex1 != inIndex3 && inIndex3 != inIndex2);

        if (inIndex2 < inIndex1)
        {
            SwapIndex(inIndex1, inIndex2);
        }
        if (inIndex3 < inIndex2)
        {
            SwapIndex(inIndex3, inIndex2);
            if (inIndex2 < inIndex1)
            {
                SwapIndex(inIndex1, inIndex2);
            }
        }
        mIndex1 = inIndex1;
        mIndex2 = inIndex2;
        mIndex3 = inIndex3;
    }
    unsigned long   mIndex1;
    unsigned long   mIndex2;
    unsigned long   mIndex3;
};

class tlFlexibleJointData
: public tlSimNameData
{
public:
    tlFlexibleJointData() :
          mGravity(1),
          mSimMethod(0),
          mUseRestingPos(1),
          mRestMethod(1),
          mUpdateMethod(1),
          mUseVirtualJoint(false),
          mSolver(0),
          mExternalDensityFactor(1.0f),
          mAutomaticConnectionOnBranch(true),
          mAutomaticHingeOnBranch(true)
          {}


    tlSimNameData mParameters;
    tlSimNameData mRestingPoseParameters;
    tlSimNameData mConnectionParameters;
    tlSimNameData mHingeParameters;

    unsigned short mGravity;               // add gravity force to the system
    unsigned short mSimMethod;             // specifies the simulation method
    unsigned short mUseRestingPos;         // specifies to add constraint between the system and the resting position
    unsigned short mRestMethod;            // specifies the resting position extraction method
    unsigned short mUpdateMethod;          // specifies the update method
    unsigned short mUseVirtualJoint;       // 
    unsigned short mSolver;                // specifies the particle system solver to be used 
    float          mExternalDensityFactor; // specifies the density of the flexible object as seen by the object object during collision

    bool mAutomaticConnectionOnBranch;
    bool mAutomaticHingeOnBranch;

    void AddBranch(unsigned long inIndex)
    {
        assert(!mBranchList.Contains(inIndex));
        mBranchList.NewElem() = inIndex;
    }
    void AddFixIndex(unsigned long inIndex)
    {
        assert(!mFixIndexList.Contains(inIndex));
        mFixIndexList.NewElem() = inIndex;
    }

    void AddConnection(unsigned long inIndex1, unsigned long inIndex2) 
    {
        mConnectionList.NewElem().Set(inIndex1, inIndex2);
    }

    void AddHinge(unsigned long inIndex1, unsigned long inIndex2, unsigned long inIndex3) 
    {
        mHingeList.NewElem().Set(inIndex1, inIndex2, inIndex3);
    }

    TArray<unsigned long> mBranchList;
    TArray<tlFlexJointConnection> mConnectionList;
    TArray<tlFlexJointHinge> mHingeList;

    TArray<unsigned long> mIndexList;
    TArray<unsigned long> mFixIndexList;
    TArray<unsigned long> mEndOfBranchList;
};

//
//
//

class tlFlexibleObjectData
: public tlSimNameData
{
public:
    tlSimNameData mParameters;
    unsigned short mSolver;                // specifies the particle system solver to be used 
    float          mExternalDensityFactor; // specifies the density of the flexible object as seen by the object object during collision
};

//
//
//

class tlRigidBodyData
{
public:
    tlRigidBodyData() : mAllSet(false), mRestingSensitivity(1.0f) {}
    tlPoint  mCenterOfMass;
    tlMatrix mInertiaMatrix;
    float    mVolume;
    bool     mAllSet;
    float    mRestingSensitivity;
};

class tlPhysicsJointData
{
public:
    tlPhysicsJointData() : mIndex(0), mDOF(0), mStiff(0), mMinAngle(0), mMaxAngle(0) {}
    void Set(unsigned long inIndex, unsigned long inDOF)
    {
        mIndex = inIndex;
        assert(mDOF == 0 || mDOF == 1 || mDOF == 3);
        mDOF = inDOF;
        
        if (mDOF == 1 || mDOF == 3)
        {
            // default value for the stiffness and angle
            mStiff = 0.8f;
            if (mDOF == 1)
            {
                mMinAngle = 0.1f;
                mMaxAngle = 2.0f;
            }
            if (mDOF == 3)
            {
                mMinAngle = 0.5f;
                mMaxAngle = 0.5f;
            }
        }
    }
    void Set(unsigned long inIndex, unsigned long inDOF, float inStiff, float inMinAngle, float inMaxAngle)
    {
        mIndex = inIndex;
        mDOF = inDOF;
        assert(mDOF == 0 || mDOF == 1 || mDOF == 3);
        
        if (mDOF == 1 || mDOF == 3)
        {
            mStiff = inStiff;
            mMinAngle = inMinAngle;
            mMaxAngle = inMaxAngle;
        }
    }
    unsigned long mIndex;
    unsigned long mDOF;
    float mStiff;
    float mMinAngle;
    float mMaxAngle;
};

//
//
//

class tlCollisionJointData
{
public:
    tlCollisionJointData() : mIndex(0), mType(0) {}
    void Set(unsigned long inIndex, unsigned long inType)
    {
        mIndex = inIndex;
        mType = inType;
    }
    unsigned long mIndex;
    unsigned long mType;
};


class tlSelfCollisionJointData
{
public:
    tlSelfCollisionJointData() : mIndex1(0), mIndex2(0), mSelfOnly1(true), mSelfOnly2(true) {}
    void Set(unsigned long inIndex1, unsigned long inIndex2, bool inSelf1 = true, bool inSelf2 = true) 
    {
        if (inIndex1 <= inIndex2)
        {
            mIndex1 = inIndex1;
            mIndex2 = inIndex2;
            mSelfOnly1 = inSelf1;
            mSelfOnly2 = inSelf2;
        }
        else
        {
            Set(inIndex2, inIndex1, inSelf2, inSelf1);
        }
    }
    unsigned long mIndex1;
    unsigned long mIndex2;
    bool mSelfOnly1;
    bool mSelfOnly2;
};

class tlCollisionObjectAttribute
{
public:
    tlCollisionObjectAttribute()
        : mStatic(false), mDefaultArea(0), 
          mCanSpin(true), mCanRoll(true), 
          mCanSlide(true), mCanBounce(true) {}
    
    bool           mStatic; // identify static world object
    unsigned int   mDefaultArea;
    bool           mCanSpin;
    bool           mCanRoll;
    bool           mCanSlide;
    bool           mCanBounce;
};

class tlSimDataHolder
: public tlSimNameData
{
public:

    tlSimDataHolder() : mCreatePhysicsObject(false), mCreateFlexibleObject(false) { SetName("NoName"); }

    void Reset()
    {
        SetName("NoName");
        mCollisionJointData.Clear();
        mSelfCollisionData.Clear();
        mFlexibleJointData.Clear();
        mPhysicsJointData.Clear();
        mStringData.SetName("NoData");
    }

    void AddCollisionData(unsigned long inIndex, unsigned long inType)
    {
        assert(CollisionData(inIndex) == NULL);
        mCollisionJointData.NewElem().Set(inIndex, inType);
    }
    void AddSelfCollisionData(unsigned long inIndex1, unsigned long inIndex2, bool inSelfOnly1 = true, bool inSelfOnly2 = true)
    {
        mSelfCollisionData.NewElem().Set(inIndex1, inIndex2, inSelfOnly1, inSelfOnly2);
    }
    tlCollisionJointData* CollisionData(unsigned long inIndex)
    {
        for (int i=0; i<mCollisionJointData.GetSize(); i++)
        {
            if (inIndex == mCollisionJointData[i].mIndex)
                return &mCollisionJointData[i];
        }
        return NULL;
    }

    tlFlexibleJointData* FlexibleJointData(char* inName)
    {
        for (int i=0; i<mFlexibleJointData.GetSize(); i++)
        {
            if (mFlexibleJointData[i].SameName(inName))
                return &mFlexibleJointData[i];
        }
        return NULL;
    }
    
    tlPhysicsJointData* PhysicsJointData(unsigned long inIndex)
    {
        for (int i=0; i<mPhysicsJointData.GetSize(); i++)
        {
            if (inIndex == mPhysicsJointData[i].mIndex)
                return &mPhysicsJointData[i];
        }
        return NULL;
    }

    tlFlexibleParametersData* FlexibleParametersData(char* inName)
    {
        for (int i=0; i<mFlexibleParametersData.GetSize(); i++)
        {
            if (mFlexibleParametersData[i].SameName(inName))
                return &mFlexibleParametersData[i];
        }
        return NULL;
    }
    
    TArray<tlCollisionJointData>     mCollisionJointData;
    TArray<tlSelfCollisionJointData> mSelfCollisionData;
    tlCollisionObjectAttribute       mCollisionObjectAttribute;

    TArray<tlFlexibleParametersData> mFlexibleParametersData;
    TArray<tlFlexibleJointData>      mFlexibleJointData;

    TArray<tlPhysicsJointData>       mPhysicsJointData;
    tlSimNameData                    mStringData;
    tlRigidBodyData                  mRigidBodyData;
    tlFlexibleObjectData             mFlexibleObjectData;
    bool                             mCreatePhysicsObject;
    bool                             mCreateFlexibleObject;
};



#endif // _JOINTDEFINITIONDATA_HPP_
