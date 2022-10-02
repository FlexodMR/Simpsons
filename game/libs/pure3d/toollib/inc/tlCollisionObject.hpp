//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _COLLISIONOBJECT_HPP_
#define _COLLISIONOBJECT_HPP_


#include "tlEntity.hpp"
#include "tlTypes.hpp"
#include "tlPoint.hpp"
#include "tlMatrix.hpp"
#include "tlLoadManager.hpp"

#include "simdata.hpp"

class tlDataChunk;
class tlInventory;

#ifndef MAX
#define MAX(a, b) ((a) >= (b) ? (a) : (b))
#endif

#ifndef MIN
#define MIN(a, b) ((a) <  (b) ? (a) : (b))
#endif

#ifndef Fabs
#define Fabs(a) ((a)>=0 ? (a) : (-a))
#endif


#define MINCOUNTFORCOLLISIONVOLUMEFIT 3 // can't do a fit if the number of vertices is lower than mincount

class tlCollisionVolume;
class tlCollisionVolumeChunk;
class tlSelfCollision;
class tlPrimGroupMesh;
class tlSkeleton;
class tlSkin;
class tlCompositeDrawable;

typedef tlCollisionVolume* ptlCollisionVolume;


enum CollisionVolumeTypeEnum  { BestFit=0,              // 0
                                SphereVolumeType,       // 1
                                CylinderVolumeType,     // 2
                                CapsuleVolumeType,      // 3
                                OBBoxVolumeType,        // 4
                                WallVolumeType,         // 5
                                BBoxVolumeType          // 6
                              };

//*****************************************************************************
// tlCollisionVolumeOwner
//*****************************************************************************
// this is for the composite drawable drawable elements. Each collison volume has an
// mOwnerIndex which correspond to one of the collision volume owner. This way a 
// composite drawable can assiciated more than one drawable to a set of collision volume
// this is usefull when the same collision volume apply to different LOD of a character,
// the LODs being seletec using the composite drawable visibility mechanism.
//
// use the CollisionObject methods:
//   void SetNumOwner(int inNumOwner);
//   void AddOwnerName(int inOwner, char* inName);
//
class tlCollisionVolumeOwner
{
public:
    tlCollisionVolumeOwner() {}

    ~tlCollisionVolumeOwner()
    {
        for (int i=0; i<mNames.GetSize(); i++)
            strdelete(mNames[i]);
    }

    static tlCollisionVolumeOwner* LoadFromChunk(tlDataChunk*);

    void AddName(const char* inName)
    { 
        mNames.Add(strnew(inName)); 
    }

    TList<char*> mNames;
};

//*****************************************************************************
// tlSelfCollision
//*****************************************************************************
// for deformable object. In the case of a skeleton based object, the index correspond to 
// a skeleton joint, self indicate if the self collision applies to the subjoints.
// e.g. if pony tail is joint 20 to 25 and shoulder is joint 30. 
//    selfCollision(20, 30, true, true) collides first link of the ponytail with the shoulder joint
//    selfCollision(20, 30, false, false) collides the whole ponytail with the whole arm, starting at the shoulder.
// In the case of a flexible object, there is no hierarchy, the index is a particle number, self has no meaning.
//
// use the CollisionObject method:
//    AddSelfCollision
class tlSelfCollision
{
public:
    tlSelfCollision(int inJoint1, int inJoint2, bool inSelfOnly1, bool inSelfOnly2)
        : mJointIndex1(inJoint1), mJointIndex2(inJoint2), mSelfOnly1(inSelfOnly1), mSelfOnly2(inSelfOnly2)
    {}

    static tlSelfCollision* LoadFromChunk(tlDataChunk* ch);

    int mJointIndex1;
    int mJointIndex2;
    short mSelfOnly1;
    short mSelfOnly2;
};

//*****************************************************************************
// tlCollisionObject
//*****************************************************************************
class tlCollisionObject : public tlEntity
{
public:
    tlCollisionObject();
    tlCollisionObject(tlDataChunk *ch);
    ~tlCollisionObject();

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk *Chunk();

    virtual void LoadFromChunk16(tlDataChunk* ch)   { assert(false); }
    virtual tlDataChunk* Chunk16()                  { assert(false); return NULL; }

    void SetNumSubObject(int inNumSubObject)        { mNumSubObject = inNumSubObject; }
    int GetNumSubObject()                     const { return mNumSubObject; }
    
    // those are called only for autogeneration
    void SetCollElRatio(float inRatio);
    void FitPrimGroupMesh(tlPrimGroupMesh* pg, tlSimDataHolder* inData = NULL, bool hollow=false);
    void FitSkin(tlSkeleton* skel, tlSkin* skin, tlSimDataHolder* inData = NULL);
    void FitCompositeDrawable(tlSkeleton* skel, tlCompositeDrawable* comp, tlSimDataHolder* inData = NULL);
    

    // otherwise simply call SetName(drawableName) and SetCollisionVolume
    void SetCollisionVolume(tlCollisionVolume* inCollisionVolume) { mCollisionVolume = inCollisionVolume; }

    // Call AddCollisionVolume to add collision volume to thje object. 
    // Call EndAddCollisionVolume when done adding the volume
    void AddCollisionVolume(tlCollisionVolume* inCollisionVolume);
    void EndAddCollisionVolume(tlSkeleton* inSkeleton = NULL); // need skeleton if NubSubObject > 0
    void FixCollisionVolume(tlSkeleton* inSkeleton); // re-build the collisionvolume hierarchy for an exisiting object

    // these are for compositedrawable
    void AddOwnerName(int inOwner, const char* inName);
    void SetNumOwner(int inNumOwner);
    int  GetOwnerIndex(const char* meshName) const;//{return(mOwnerList.ContainsAtIndex(meshName));}
    void CleanUnusedOwners();
    TList<tlCollisionVolumeOwner*>& GetOwnerList();

    void AddSelfCollision(int inJoint1, int inJointB, bool inSelfOnlyA = true, bool inSelfOnlyB = true);

    tlCollisionVolume* GetCollisionVolume() { return mCollisionVolume; }
    TList<tlSelfCollision*>& GetSelfCollisionList() { return mSelfCollisionList; }

    tlSimNameData  mStringData;

    static float sCollElRatio;
    static float sMinWeight;
    static int sHierarchyDepth;

    void MergeCollisionVolume(ptlCollisionVolume& parentVolume, tlCollisionVolume* childVolume);

    void GetExtensions(tlPoint& pmin, tlPoint& pmax) const;

    void SetDefaultArea(unsigned int inDefaultArea) { mDefaultArea = inDefaultArea; }
    unsigned int GetDefaultArea() const { return mDefaultArea; }
    void SetStaticAttribute(bool inStatic) { mStatic = inStatic; }
    bool GetStaticAttribute() const { return mStatic; }
    void SetCanSpin(bool inCanSpin) { mCanSpin = inCanSpin; }
    bool GetCanSpin() const { return mCanSpin; }
    void SetCanRoll(bool inCanRoll) { mCanRoll = inCanRoll; }
    bool GetCanRoll() const { return mCanRoll; }
    void SetCanSlide(bool inCanSlide) { mCanSlide = inCanSlide; }
    bool GetCanSlide() const { return mCanSlide; }
    void SetCanBounce(bool inCanBounce) { mCanBounce = inCanBounce; }
    bool GetCanBounce() const { return mCanBounce; }

protected:
    tlCollisionObject(const tlCollisionObject&) { assert(false); /* todos...*/ }
    tlCollisionObject& operator=(const tlCollisionObject&) { assert(false); /* todos...*/ }

    void AddExtractedVolume(tlCollisionVolume* inCollisionVolume);

    void SubGetExtensions(tlPoint& pmin, tlPoint& pmax) const;
    void ComputeJointRestPose(tlSkeleton* skel, tlMatrix* m);
    void BuildHierarchy(ptlCollisionVolume* jointCollisionVolume, tlSkeleton* skel);
    void LoadCollisionData(tlSimDataHolder* inData);
    void CumulateSkinVerticesPerJointIndex(TArray<int> *skinVerticesPerJointIndex, tlSkin* skin);
    bool FitSkinCollisionVolume(ptlCollisionVolume* jointCollisionVolume, tlSkin* skin, tlMatrix* worldJointRestPose, tlSimDataHolder* inData, int ownerIndex = 0);
    tlCollisionVolume* FitPrimGroupMeshCollisionVolume(tlPrimGroupMesh* pg, tlSimDataHolder* inData, CollisionVolumeTypeEnum type, bool hollow=false);

    void SubCleanUnusedOwners(tlCollisionVolume* inVolume, int* list);
    void SubCleanUnusedOwners2(tlCollisionVolume* inVolume, int* list);

    int mNumSubObject; // 0 for rigid body, = nb joint for character, = nb of particle for particle system etc.
    tlCollisionVolume* mCollisionVolume;

    TList<tlCollisionVolumeOwner*> mOwnerList;
    TList<tlSelfCollision*> mSelfCollisionList;

    bool mStatic;
    unsigned int  mDefaultArea;
    bool mCanSpin;
    bool mCanRoll;
    bool mCanSlide;
    bool mCanBounce;

    ptlCollisionVolume* mJointCollisionVolume;
};

//*****************************************************************************
// tlCollisionVolume
//*****************************************************************************
class tlCollisionVolume
{
public:
    tlCollisionVolume();
    tlCollisionVolume(tlCollisionVolumeChunk* cch);
    ~tlCollisionVolume();
    virtual tlDataChunk* Chunk();

    static tlCollisionVolume* LoadFromChunk(tlDataChunk*);

    tlPoint mPosition;

    virtual void Scale(float sx, float sy, float sz);
    virtual void AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const;

    void EmptySubVolume();
    void AddSubVolume(tlCollisionVolume* inVolume);
    void SetObjRefIndex(int inIndex);
    void SetOwnerIndex(int inIndex);

    inline TList<tlCollisionVolume*>& SubVolume() { return mSubVolumeList; }
    inline int Type()             const { return mType; }
    inline int ObjRefIndex()      const { return mObjRefIndex; }
    inline int OwnerIndex()       const { return mOwnerIndex; }

    float Volume(int inIndex);
    tlMatrix Inertia(int inIndex, const tlPoint& cm);
    tlPoint VR(int inIndex); // return sum volume * position


protected:
    friend class tlCollisionObject;

    void LoadSubCollisionVolume(tlDataChunk* cch);
    inline virtual float VolumeSelf() const { return 0; }
    inline virtual void InertiaSelf(tlMatrix& m) { m.IdentityMatrix(); }

    TList<tlCollisionVolume*> mSubVolumeList;

    int mObjRefIndex;
    int mOwnerIndex;
    CollisionVolumeTypeEnum mType;
};

//*****************************************************************************
// tlSphereVolume
//*****************************************************************************
class tlSphereVolume : public tlCollisionVolume
{
public:
    tlSphereVolume(const tlPoint& inPosition, float inRadius);
    tlSphereVolume(tlCollisionVolumeChunk* cch);
    virtual ~tlSphereVolume();
    virtual tlDataChunk* Chunk();

    virtual void Scale(float sx, float sy, float sz);
    virtual void AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const;

    float mSphereRadius;        // sphere radius

protected:
    virtual float VolumeSelf() const;
    virtual void InertiaSelf(tlMatrix& m);
};


//*****************************************************************************
// tlCylinderVolume
//*****************************************************************************
class tlCylinderVolume : public tlCollisionVolume
{
public:
    tlCylinderVolume(tlPoint& inPosition, const tlPoint& inAxis, float inLen, float inRadius, bool inFlatEnd = false);
    tlCylinderVolume(tlCollisionVolumeChunk* cch);
    virtual ~tlCylinderVolume();
    virtual tlDataChunk* Chunk();

    virtual void Scale(float sx, float sy, float sz);
    virtual void AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const;

    tlPoint mAxis;                   // cylinder's orientation
    float mLength;                   // cylinder's half-length
    float mCylinderRadius;           // cylinder's radius
    bool mFlatEnd;                   // true for cylinder, false for capsule, default:false

protected:
    virtual void InertiaSelf(tlMatrix& m);
    virtual float VolumeSelf() const;
};

//*****************************************************************************
// tlOBBoxVolume
//*****************************************************************************
class tlOBBoxVolume
: public tlCollisionVolume
{
public:
    tlOBBoxVolume(tlPoint& inPosition, tlPoint& inAxis0, tlPoint& inAxis1, tlPoint& inAxis2, float inLength0, float inLength1, float inLength2);
    tlOBBoxVolume(tlCollisionVolumeChunk* cch);
    virtual ~tlOBBoxVolume();
    virtual tlDataChunk* Chunk();

    //virtual void Scale(float sx, float sy, float sz);
    virtual void AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const;

    tlPoint mAxis[3];       // orientation of the box
    float mLength[3];       // half length of the 3 cube's dimension

protected:
    virtual void InertiaSelf(tlMatrix& m);
    virtual float VolumeSelf() const;
};


//*****************************************************************************
// tlWallVolumeVolume
//*****************************************************************************
class tlWallVolume : public tlCollisionVolume
{
public:
    tlWallVolume(const tlPoint& inPosition, const tlPoint& inNormal);
    tlWallVolume(tlCollisionVolumeChunk* cch);
    virtual ~tlWallVolume();
    virtual tlDataChunk* Chunk();

    //virtual void Scale(float sx, float sy, float sz);
    virtual void AddExtensions(tlPoint& pmin, tlPoint& pmax, bool& first) const;

    tlPoint mNormal;     // Wall normal, points toward the inside

protected:
    virtual void InertiaSelf(tlMatrix& m) { m = Identity(); }
    virtual float VolumeSelf() const;
};

//*****************************************************************************
// tlBBoxVolume
//*****************************************************************************
class tlBBoxVolume : public tlCollisionVolume
{
public:
    tlBBoxVolume();
    tlBBoxVolume(tlCollisionVolumeChunk* cch);
    virtual ~tlBBoxVolume();
    virtual tlDataChunk* Chunk();

    //virtual void Scale(float sx, float sy, float sz);

    // this allows to locks the bbox so that the collision object can't break external hierarchy
    // during the calls to tlCollisionObject::AddCollisionVolume(vol);
    bool mBuildExternally;

protected:

private:
    virtual float VolumeSelf() const;
};


//*****************************************************************************
// misc functions
//*****************************************************************************

// fit a set of collVolume to the set of points considering the require type and depth
tlCollisionVolume* FitCollVolume(tlPoint* lv, int count, CollisionVolumeTypeEnum = BestFit, int howdeep = 1, bool hollow = false);

// fit a wall to the set of point. the wall is oriented  with its normal along the 
// minimum axis lenght of the object
tlCollisionVolume* FitWall(tlPoint* lv, int count);

// compute the covariance matrix associated to the set of points
void ComputeCovariance( tlPoint* lv, int count, tlPoint* cov, tlPoint& center);

float VecNormalize(tlPoint& p);
void ScaleMat(tlMatrix& m, float f);
inline bool ShortToBool(short s);

template <class TYPE>
inline TYPE Sqr(TYPE a)
{
     return a*a;
}

inline bool ShortToBool(short s)
{
    return s == 0 ? false : true;
}

//*****************************************************************************
// tlCollisionObjectLoader
//*****************************************************************************
class tlCollisionObjectLoader : public tlEntityLoader
{
public:
    tlCollisionObjectLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif // _COLLISIONOBJECT_HPP_
