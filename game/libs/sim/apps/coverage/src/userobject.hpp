
#ifndef _USEROBJECT_HPP_
#define _USEROBJECT_HPP_

#include "radmath/radmath.hpp"
#include <p3d/p3dtypes.hpp>
#include "simcommon/tlist.hpp"
#include "simcommon/tarray.hpp"
#include "simcommon/impulselink.hpp"
#include "simik/ikdriver.hpp"


class tDrawable;
class tPose;


namespace poser
{
    class SimState;
    class IKDriver;
}

namespace poser
{
    class PoseEngine;
}

enum UserObjectValueType { SET_TRANSLATION, ADD_TRANSLATION, SET_ROTATION, ADD_ROTATION, SCALEFACTOR, RESTCOEF, TANGRESTCOEF, FRICTIONCOEF, \
CONTROL_PHYSIC, CONTROL_EXT, WAKE_UP, LIN_SPEED, ROT_SPEED,\
DENSITY, IMPULSE, RESTING_SENSITIVITY };

class UserObject
{
public:
    UserObject();
    ~UserObject();
    
    bool Init(tDrawable* inDrawable, tUID inUID, int type = 0, rmt::Matrix* inExtTransform = NULL, int area = 0);
    void Reset();
    void ResetToAI();
    void SetControlToSim();
    bool Simulating() const;
    void ResetRestingDetector();
    
    const rmt::Matrix& GetTransform() const { return extTransform == NULL ? transform : *extTransform; }
    
    void MoveObject(const rmt::Matrix& inTransform, float inDt = 0);
    
    void SetLinearSpeed(const rmt::Vector& inSpeed);
    void SetAngularSpeed(const rmt::Vector& inSpeed);
    
    void Update(float dt_sec);
    void UpdateArticulated(float dt_sec);
    void UpdatePoseEngine(float dt_sec);
    
    void Display();
    void DebugDisplay(int debugIndex);
    
    void CreatePoseEngine(tPose* inPose);
    tPose* GetP3DPose(tDrawable* inDrawable);
    
    void AddJointModifier();
    
    bool HasSimulatedObject();
    
    void AddImpulseLink(char* targetName, float intensity, int index);//, const rmt::Vector& offset);
    void AddIKLink(char* targetName, int startindex, int midindex, int endindex, int limbtype, float offx, float offy, float offz);

    sim::TList<sim::ImpulseLink*> mImpulseLinkList;
    sim::TList<sim::IKDriver*>    mIKDriverList;

    struct Accessory
    {
        UserObject*     object;
        int             joint;
    };    void AddAccessory(const char* propName, int joint);
    
    void AddAccessory(UserObject* prop, int joint);
    Accessory* GetAccessory(const char* accessoryName);
    Accessory* GetAccessory(const UserObject* prop);

    void ConstrainProp( UserObject* prop, int joint);
    void DropPropInCompDraw( const char* propName );
    void DropProp( const char* propName );

    sim::TList<Accessory*>      mAccessoryList;

    tDrawable* drawable;
    sim::SimState* simState;
    rmt::Matrix transform;
    rmt::Matrix*   extTransform; // this refer to an external transform eg in the scenegraph transform node
    
    bool articulated;
    tUID uid;
	int mArea;

    bool addedToSimManager;
    
    poser::PoseEngine* poseEngine;
    bool initFromRestPose;
    
    void SetVectorValue(UserObjectValueType in_type, const rmt::Vector& value);
    void Set2VectorValue(UserObjectValueType in_type, const rmt::Vector& pos, const rmt::Vector& imp);
    void SetFloatValue(UserObjectValueType in_type, float val);
    void SetProps(const char* in_propName);
    void SetFlexProps(const char* in_propName, float in_val1, float in_val2=0.0f);
    void SetState(UserObjectValueType in_type);

    void ConvertToRigid();
    void AddInertialJoint(int jointIndex, float speedRate, float AccelRate, float gravityRate, float centrifugalRate);
    void AddDriver(int inDricverIndex, int inJoint, float inVal1, float inVal2);
    void AddVirtualCM( int inJoint, float inK, float inD );
    
    static UserObject* GetUserObject(int i) { return i<sNumUserObjects ? &sUserObjectArray[i] : NULL; }
    static int GetNumUserObjects() { return sNumUserObjects; }
    static UserObject* FindUserObject(tUID uid);
    static void ResetUserObject();
    static UserObject* GetNewUserObjects(tDrawable* inDrawable, tUID inUID, int type, rmt::Matrix* inExtTransform, int inArea = 0);
    static UserObject* AddManFlex(int m, int n, float size, int inType, bool inColl);
    static void UpdateAllUserObject(float inDt_Sec, float in_TotalTime);
    static float sGameTime;
    static UserObject* CreateNewUserObject(sim::SimState* inSimState);
    static void Shutdown() { delete [] sUserObjectArray; }
    
protected:
    static UserObject* CreateNewUserObject();
    static UserObject* sUserObjectArray;
    static int sNumUserObjects, sUserObjectArraySize;
};

typedef sim::TArray<UserObject*> UserObjectArray;

#endif // _USEROBJECT_HPP_
