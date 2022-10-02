
#include "userobject.hpp"

#include "simcommon/simstate.hpp"
#include "simcommon/simstateflexible.hpp"
#include "simcommon/simstatearticulated.hpp"
#include "simcommon/simtarget.hpp"
#include "simcommon/simstatetarget.hpp"
#include "simcommon/trackerjointmodifier.hpp"
#include "simcommon/impulselink.hpp"
#include "simcommon/miscdriver.hpp"
#include "simcommon/dline2.hpp"

#include "simphysics/physicsobject.hpp"
#include "simphysics/articulatedphysicsobject.hpp"

#include "simcollision/collisionobject.hpp"
#include "simcollision/collisionmanager.hpp"

#include "simflexible/particlesyst.hpp"
#include "simflexible/flexjointmodifier.hpp"
#include "simflexible/flexibleobject.hpp"
#include "simflexible/particlesystxd.hpp"

#include <p3d/pure3d.hpp>
#include "p3d/drawable.hpp"
#include "p3d/anim/skeleton.hpp"
#include "p3d/anim/polyskin.hpp"
#include "p3d/anim/compositedrawable.hpp"
#include "poser/poseengine.hpp"
#include "manualflexdrawable.hpp"

//#define USE_EXPRESSION_MIXER
#ifdef USE_EXPRESSION_MIXER
#include "pantsdriver.hpp"
#include "sonicdriver.hpp"
#endif

const int PoseEngineSimPass = 1;
UserObject* UserObject::sUserObjectArray = NULL;
int UserObject::sNumUserObjects = 0;
int UserObject::sUserObjectArraySize = 0;
float UserObject::sGameTime = 0;

static bool subIterateFlex = false;

using namespace sim;

UserObject::UserObject() 
: drawable(NULL), 
simState(NULL),
articulated(false),
mArea(0)
{ 
    transform.Identity(); 
    
    poseEngine = NULL;
    extTransform = NULL;
}

UserObject::~UserObject() 
{
    if (poseEngine)
        poseEngine->Release();
}

bool UserObject::Init(tDrawable* inDrawable, tUID inUID, int type, rmt::Matrix* inExtTransform, int area)
{
    transform.Identity();
    extTransform = inExtTransform;

    if (extTransform)
        transform = *extTransform;
    
    uid = inUID;
    
    mIKDriverList.RemoveAll();
    
    SimStateAttributes attrib;
    switch (type)
    {
    case 0:
        attrib = SimStateAttribute_Default;
        break;
    case 1:
        attrib = SimStateAttribute_Collision;
        break;
    case 2:
        attrib = SimStateAttribute_Simulated;
        break;
    }
    
    if (!inDrawable)
    {
        simState = SimState::CreateSimState(uid, attrib);
        articulated = false;
    }
    else if (dynamic_cast<tPolySkin*>(inDrawable))
    {
        tPose* pose = GetP3DPose(inDrawable);
        CreatePoseEngine(pose);
        simState = SimStateArticulated::CreateSimStateArticulated(uid, poseEngine->GetPose(), attrib);
        articulated = true;
    }
    else if (dynamic_cast<tCompositeDrawable*>(inDrawable))
    {
        tPose* pose = GetP3DPose(inDrawable);
        CreatePoseEngine(pose);
        simState = SimStateArticulated::CreateSimStateArticulated(uid, poseEngine->GetPose(), attrib);
        articulated = true;
    }
    else
    {
        simState = SimStateFlexible::CreateSimStateFlexible(uid, attrib);
        
        if (simState == NULL)
        {
            simState = SimState::CreateSimState(uid, attrib);
        }
        articulated = false;
    }
    if (simState == NULL)
        return false;
    
    drawable = inDrawable;
    
    if (drawable)
        drawable->AddRef();
    
    simState->AddRef();
    simState->SetTransform(transform);
    
    if (simState->GetSimulatedObject()) 
    {
        //todo(mic) : Have to parametrise the vcm according to meaningfull values.
        simState->InitVirtualCM(-1); 
    }
    else
    {
        if (simState->GetVirtualCM())
            simState->GetVirtualCM()->SetActive(false);
    }
    
    AddJointModifier();
    
    simState->mAIRefPointer = this;
    
    if (simState->GetCollisionObject())
        simState->GetCollisionObject()->Update();
    
    return true;
}

void UserObject::Reset()
{
    if (drawable)
        drawable->Release();
    
    simState->Release();
    simState = NULL;
    drawable = NULL;
    transform.Identity();
    int i;
    for (i=0; i<mImpulseLinkList.GetSize(); i++)
        mImpulseLinkList[i]->Release();
    
    mImpulseLinkList.RemoveAll();

    for (i=0; i<mAccessoryList.GetSize(); i++)
    {
        delete mAccessoryList[i];
    }
    mAccessoryList.RemoveAll();

    mIKDriverList.RemoveAll();
    
    if (poseEngine)
    {
        poseEngine->Release();
        poseEngine = NULL;
    }
    extTransform = NULL;
    uid = 0;
    articulated = false;
    mArea = 0;
}

void UserObject::ResetToAI()
{
    // static_cast<Scenegraph::Scenegraph*>(drawable))->UpdateTransform();
    simState->SetControl(simAICtrl);
    
    if (extTransform)
        transform = *extTransform;
    else
        transform.Identity();
    simState->SetTransform(transform);
    
    // reset the poseengine
}

void UserObject::SetControlToSim()
{
    if (simState->GetSimulatedObject())
    {
        simState->SetControl(simSimulationCtrl);
        simState->GetSimulatedObject()->WakeUp();
    }
}

bool UserObject::Simulating() const 
{
    bool simulating = simState->GetControl() == simSimulationCtrl ? true : false;
    if (simulating)
    {
        PhysicsObject* physicsObject = dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject());
        if (physicsObject)
            simulating = !physicsObject->IsAtRest();
    }
    return simulating;
}

void UserObject::MoveObject(const rmt::Matrix& inTransform, float inDt)
{

    if (simState->GetCollisionObject() && simState->GetCollisionObject()->IsStatic())
        return; // can't move it without asserting

    SimControlEnum control = simState->GetControl();
    
    transform = inTransform;
    
    if (control == simSimulationCtrl)
    {
        simState->SetControl(simAICtrl);
        
        // If dt = 0, the velocities are resetted
        simState->SetTransform(transform, inDt); // this will reset the velocity
        
        simState->SetControl(control);
    }
    else if (inDt == 0)// || simState->GetSimulatedObject() == NULL)
    {
        // this doesn't work if inDt > 0 cause the next 
        // settransfrom will make the simstate internal speed to reset
        // which will make an eventual collision with that simstate 
        // not to see the correct speed.

        // on the other hand, if there is no SimulatedObject, no update will be
        // called and never the settransform will be called.

        simState->SetTransform(transform, inDt);
    }
}

void UserObject::Update(float dt_sec)
{
        // if there is a scenegraph, apply the transform node
        if (extTransform) 
            transform = *extTransform;

        // call this if the object is not added to the simulation manager
        // this is basically the same code as simManager but specialized to 
        // handle poseEngine update requirements.  Should be cleaned up in future.
        if (articulated)
        {
            UpdateArticulated(dt_sec);
        }
        else // non articulated object
        {
            if (simState->GetControl() == simAICtrl)
            {
                simState->SetTransform(transform, dt_sec);
            }
            if (poseEngine)
            {
                // will get here for articulated object converted to rigid
                UpdatePoseEngine(dt_sec);
            }
            if (simState->GetSimulatedObject())
            {
                simState->GetSimulatedObject()->Update(dt_sec);
                transform = simState->GetTransform();
            }
        }

        if (extTransform) // this is for scenegraph only
            *extTransform = transform;
}

void UserObject::UpdateArticulated(float dt_sec)
{

    P3DASSERT (poseEngine);
    
    // the use of the poseengine makes the update of the articulated object 
    // a little more complicated. Because of that, it is no longer possible 
    // to use the simulation manager for it.

    // store the current joint state for all the joints.
    static_cast<SimStateArticulated*>(simState)->StoreJointState(dt_sec);

    // update the visibility of the collisionvolume if is a compositedrawable
    /* this may interfere with the use of SimStateArticulated::JointVisibility()
    if (simState->GetCollisionObject())
    {
        tCompositeDrawable* cd = dynamic_cast<tCompositeDrawable*>(drawable);
        if (cd)
        {
            simState->GetCollisionObject()->SetVisibility(cd);
        }
    }
    */
    int i;

    // this is the reaching system. Could eventually become a driver in th poseEngine.
    for (i=0; i<mImpulseLinkList.GetSize(); i++)
    {
        mImpulseLinkList[i]->Update(dt_sec);
    }

    if (simState->GetControl() == simAICtrl)
    {
        // at this point, it is assume that the this->transform is updated.
        simState->SetTransform(transform, dt_sec);
    }
    if (simState->GetSimulatedObject())
    {
        // this will dissipate the joint deformation energy and
        // will update the object transform if in full physics
        simState->GetSimulatedObject()->Update(dt_sec);
        transform = simState->GetTransform();
    }

    UpdatePoseEngine(dt_sec);

    // store the current joint position, 
    static_cast<SimStateArticulated*>(simState)->UpdateJointState(dt_sec);

    // handle accessories
    for(i=0; i<mAccessoryList.GetSize(); i++)
    {
        ConstrainProp(mAccessoryList[i]->object, mAccessoryList[i]->joint);
    }
}

void UserObject::UpdatePoseEngine(float dt_sec)
{
    // Animation must be updated by dt_sec here.
    // If you update animation in tPose, set initFrom RestPose = false.
    bool initFromRestPose = false;

    // update the poseengine
    poseEngine->Begin(initFromRestPose); // init the poser::Pose

    for (int i=0; i<poseEngine->GetPassCount(); i++) // advance and update the drivers
    {
        poseEngine->Advance(i, dt_sec);
        poseEngine->Update(i);
    }

    poseEngine->End(); // copy the poser::Pose in the tPose
}

void UserObject::CreatePoseEngine(tPose* inPose)
{
    poseEngine = new poser::PoseEngine(inPose, PoseEngineSimPass+1, inPose->GetNumJoint());
    poseEngine->AddRef();
    
    RootMatrixDriver* rootMatrixDriver = new RootMatrixDriver(&transform);
    poseEngine->AddPoseDriver(0, rootMatrixDriver);

    poseEngine->Begin();
}


void UserObject::AddJointModifier()
{
    if (!articulated || !drawable)
        return;
    
    SimStateArticulated* simStateArt = static_cast<SimStateArticulated*>(simState);
    
    if (simState->GetSimulatedObject() && simState->GetSimulatedObject()->Type() == ArticulatedObjectType)
    {
        ArticulatedPhysicsObject* artObj = simStateArt->GetArtPhysObject();
        for (int i=0; i<artObj->NumSimJoints(); i++)
        {
            PhysicsJoint* joint = artObj->GetSimJoint(i);
            P3DASSERT(joint);
            poseEngine->AddPoseDriver(PoseEngineSimPass, new PhysicsJointMatrixModifier(joint));
        }
    }

    FlexibleJointDefinition* fjdef = p3d::find<FlexibleJointDefinition>(drawable->GetUID());
    
    if (fjdef)
    {
        for (int i=0; i<fjdef->mDefinitions.GetSize(); i++)
        {
            FlexJointModifier* flexJointModifier = new FlexJointModifier(poseEngine->GetPose(), fjdef, i);
            poseEngine->AddPoseDriver(PoseEngineSimPass, flexJointModifier);
            
            // need to add it there for collision response on the flex
            simStateArt->AddFlexJointModifier(flexJointModifier);
        }
    }

    int con = poseEngine->GetPose()->GetSkeleton()->FindJointIndex("Shoulder_Con_R");
    int shoulder = poseEngine->GetPose()->GetSkeleton()->FindJointIndex("Shoulder_R");

    if (con > 0 && shoulder > 0)
    {
        CopyRotationMinusTwistDriver* expressionDriver = new CopyRotationMinusTwistDriver(shoulder, con);
        //CopyRotationDriver* expressionDriver = new CopyRotationDriver(shoulder, con);
        poseEngine->AddPoseDriver(PoseEngineSimPass, expressionDriver);
    }
    con = poseEngine->GetPose()->GetSkeleton()->FindJointIndex("Shoulder_Con_L");
    shoulder = poseEngine->GetPose()->GetSkeleton()->FindJointIndex("Shoulder_L");

    if (con > 0 && shoulder > 0)
    {
        CopyRotationMinusTwistDriver* expressionDriver = new CopyRotationMinusTwistDriver(shoulder, con);
        //CopyRotationDriver* expressionDriver = new CopyRotationDriver(shoulder, con);
        poseEngine->AddPoseDriver(PoseEngineSimPass, expressionDriver);
    }

#ifdef USE_EXPRESSION_MIXER
    tExpressionMixer* mixer = p3d::find<tExpressionMixer>("hulk_shorts");
    if (mixer && drawable)
    {
        tCompositeDrawable* cd = dynamic_cast<tCompositeDrawable*>(drawable);

        if (cd)
        {
            tCompositeDrawable::DrawablePoseElement* de = dynamic_cast<tCompositeDrawable::DrawablePoseElement*>(cd->FindNode("hulk_body_transformShape2"));
            if (de)
            {
                PantsDriver *pd = new PantsDriver(mixer, poseEngine->GetPose());
                poseEngine->AddPoseDriver(PoseEngineSimPass, pd);
            }
        }
    }
    mixer = p3d::find<tExpressionMixer>("p3dGroup1");
    if (mixer && drawable)
    {
        tCompositeDrawable* cd = dynamic_cast<tCompositeDrawable*>(drawable);

        if (cd)
        {
            tCompositeDrawable::DrawablePoseElement* de;
            de = dynamic_cast<tCompositeDrawable::DrawablePoseElement*>(cd->FindNode("HairMasterShape"));
            if (de)
            {
                SonicHairDriver *pd = new SonicHairDriver(mixer, poseEngine->GetPose());
                poseEngine->AddPoseDriver(PoseEngineSimPass, pd);
            }
            de = dynamic_cast<tCompositeDrawable::DrawablePoseElement*>(cd->FindNode("KnucklesHairShape"));
            if (de)
            {
                SonicHairDriver *pd = new SonicHairDriver(mixer, poseEngine->GetPose());
                poseEngine->AddPoseDriver(PoseEngineSimPass, pd);
            }
            de = dynamic_cast<tCompositeDrawable::DrawablePoseElement*>(cd->FindNode("ShadowHairShape"));
            if (de)
            {
                SonicHairDriver *pd = new SonicHairDriver(mixer, poseEngine->GetPose());
                poseEngine->AddPoseDriver(PoseEngineSimPass, pd);
            }
            de = dynamic_cast<tCompositeDrawable::DrawablePoseElement*>(cd->FindNode("tailTailsShape"));
            if (de)
            {
                SonicHairDriver *pd = new SonicHairDriver(mixer, poseEngine->GetPose());
                poseEngine->AddPoseDriver(PoseEngineSimPass, pd);
            }
        }
    }
#endif
}

void UserObject::AddImpulseLink(char* targetName, float intensity, int index)//, const rmt::Vector& offset)
{
    UserObject* object = FindUserObject(tEntity::MakeUID(targetName));
    if (object && simState->GetSimulatedObject(index))
    {
        SimTarget* simTarget = new SimStateTarget(object->simState);
        ImpulseLink* link = new ImpulseLink(simState, index, simTarget, intensity);
        mImpulseLinkList.Add(link);
    }
}

void UserObject::AddIKLink(char* targetName, int startjoint, int midjoint, int endjoint, int limbtype, float offx, float offy, float offz)
{
    if (!articulated)
        return;
    
    UserObject* object = FindUserObject(tEntity::MakeUID(targetName));
    if (object)
    {
        SimStateArticulated* simStateArt = static_cast<SimStateArticulated*>(simState);
        SimTarget* effectorTarget = new SimStateTarget(object->simState);
        
        // Temporary/default don't yet have offset scripted
        // Set the initial end effector to coincide with the endjoint position
        rmt::Vector offsetpos,  targetpos;
        rmt::Matrix offsettransform;
        offsetpos = simStateArt->GetPose()->GetSkeleton()->GetJoint(endjoint)->worldMatrix.Row(3);
        offsettransform.Identity();
        offsettransform = simState->GetTransform();
        offsetpos.Transform(offsettransform);
        effectorTarget->GetPos(targetpos);
        offsetpos.Sub(targetpos);   
        effectorTarget->SetOffset(offsetpos);
        
        IKDriver* ikDriver = new IKDriver(  simStateArt->GetPose(),                                                       
            startjoint,                                                 
            midjoint,
            endjoint,
            static_cast<IKLimbType>(limbtype),
            effectorTarget
            );
        poseEngine->AddPoseDriver(PoseEngineSimPass, ikDriver);
        mIKDriverList.Add(ikDriver);
    }
}

void UserObject::AddAccessory(const char* propName, int joint)
{
    
    UserObject* prop = NULL;
    prop = FindUserObject(tEntity::MakeUID( propName ));
    AddAccessory(prop, joint);
    
}

void UserObject::AddAccessory(UserObject* prop, int joint)
{

    
      //TODO check newAccessory is not already added
    if( prop &&  ( joint < poseEngine->GetPose()->GetJointCount() ) ) 
    {
        Accessory* a;
        a = GetAccessory(prop);
        if(!a)
        {
            a = new Accessory;
            a->object = prop;
            a->joint = joint;
            mAccessoryList.Add(a);
            prop->simState->SetControl(simAICtrl);
        }
        ConstrainProp(prop, joint);
        prop->simState->GetCollisionObject()->Relocated();
        prop->simState->GetCollisionObject()->Update();
    }
    // don't allow character and accessory to collide
    CollisionManager::GetInstance()->RemovePair(prop->simState->GetCollisionObject(),
                                                this->simState->GetCollisionObject() 
                                                );
}

UserObject::Accessory* UserObject::GetAccessory(const char* accessoryName)
{
    return GetAccessory(FindUserObject(tEntity::MakeUID(accessoryName)) );
}

UserObject::Accessory* UserObject::GetAccessory(const UserObject* prop)
{
    for (int i=0; i<mAccessoryList.GetSize(); i++)
    {
        UserObject::Accessory* accessory = mAccessoryList.GetAt(i);
        if( accessory->object == prop)
            return accessory;
    }
    return NULL;
}

void UserObject::ConstrainProp( UserObject* prop, int joint )
{
    if(!articulated)
        return;
    int numJoints = poseEngine->GetPose()->GetJointCount();
    if( joint < 0 ||  joint >= numJoints )
        return;
    rmt::Matrix m = poseEngine->GetPose()->GetJoint(joint)->GetWorldMatrix();
    prop->MoveObject( m );
} 

void UserObject::DropProp( const char* propName )
{
    if(!articulated)
        return;
    Accessory* prop = GetAccessory(propName);

    P3DASSERT(prop && prop->object->HasSimulatedObject());

    mAccessoryList.Remove(prop);
    CollisionManager::GetInstance()->AddPair(this->simState->GetCollisionObject(), 
                              prop->object->simState->GetCollisionObject());
    prop->object->SetControlToSim();
    delete prop;    
}

void UserObject::DropPropInCompDraw( const char* propName )
{
    if ( !articulated || !dynamic_cast<tCompositeDrawable*>(drawable) )
        return;
    tCompositeDrawable* cd = NULL;
    cd = static_cast<tCompositeDrawable*>(drawable);
    tCompositeDrawable::DrawableElement* drawElement = NULL;
    drawElement = cd->FindNode( propName );
    drawElement->SetVisibility(false);
    
}

void UserObject::Display()
{
    // if extTransform != NULL, the display will be assumed by the scenegraph
    if (drawable && !extTransform)
    {
        if (simState->RequiresPushTransforForDisplay())
        {
            p3d::stack->Push();
            p3d::stack->Multiply(transform);
            drawable->Display();
            p3d::stack->Pop();
        }
        else
        {
            if (poseEngine && static_cast<tDrawablePose*>(drawable)->GetPose() != poseEngine->GetP3DPose())
                static_cast<tDrawablePose*>(drawable)->SetPose(poseEngine->GetP3DPose());
            drawable->Display();
        }
    }
}

void UserObject::DebugDisplay(int debugIndex)
{
    DrawLineToggler toggler;

    simState->DebugDisplay(debugIndex);
    
    for (int i=0; i<mIKDriverList.GetSize(); i++)
    {
        mIKDriverList[i]->DebugDisplay();
    }
}

bool UserObject::HasSimulatedObject()
{
    return simState->GetSimulatedObject() == NULL ? false : true;
}

void UserObject::SetLinearSpeed(const rmt::Vector& inSpeed)
{
    if (HasSimulatedObject() && (simState->GetSimulatedObject()->Type() == RigidObjectType || simState->GetSimulatedObject()->Type() == ArticulatedObjectType))
    {
        SetControlToSim();
        dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject())->SetCMVelocity(inSpeed);
    }
}

void UserObject::SetAngularSpeed(const rmt::Vector& inSpeed)
{
    if (HasSimulatedObject() && (simState->GetSimulatedObject()->Type() == RigidObjectType || simState->GetSimulatedObject()->Type() == ArticulatedObjectType))
    {
        rmt::Vector vcm;
        vcm = simState->GetLinearVelocity();
        SetControlToSim();
        simState->GetAngularVelocity() = inSpeed;
        dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject())->SetCMVelocity(vcm);
        dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject())->SyncSimObj(false);
    }
}

tPose* UserObject::GetP3DPose(tDrawable* inDrawable)
{
    tPose* pose = NULL;
    
    if (dynamic_cast<tPolySkin*>(inDrawable))
    {
        pose = static_cast<tPolySkin*>(inDrawable)->GetPose();
    }
    else if (dynamic_cast<tCompositeDrawable*>(inDrawable))
    {
        pose = static_cast<tCompositeDrawable*>(inDrawable)->GetPose();
    }
    for (int i=0; i<GetNumUserObjects(); i++)
    {
        if (GetUserObject(i)->drawable == inDrawable)
        {
            pose = pose->GetSkeleton()->NewPose();
            break;
        }
    }
    return pose;
}

//
//
//


void UserObject::SetVectorValue(UserObjectValueType in_type, const rmt::Vector& value)
{
    switch( in_type )
    {
    case SET_TRANSLATION:
        {
            Matrix transfo;
            transfo = GetTransform();
            transfo.FillTranslate(value);
            MoveObject(transfo);
        }
        break;
    case ADD_TRANSLATION:
        {
            Matrix transfo = transform;
            transfo.Row(3).Add(value);
            MoveObject(transfo);
        }
        break;
    case ADD_ROTATION:
        {
            Vector trans = value;
            Matrix transfo, rot;
            rot.Identity();
            rot.FillRotateXYZ(value.x, value.y, value.z);
            transfo = GetTransform();
            trans = transfo.Row(3);
            trans.Scale(-1);
            transfo.FillTranslate(trans);
            transfo.Mult(rot);
            trans.Scale(-1);
            transfo.FillTranslate(trans);
            MoveObject(transfo);
        }
        break;
    case SET_ROTATION:
        {
            Matrix transfo, rot;
            rot.FillRotateYZX(value.x, value.y, value.z);
            transfo = GetTransform();
            CopyRotation(rot, transfo);
            MoveObject(transfo);
        }
        break;
    case RESTING_SENSITIVITY:
        {
            if (simState->GetSimulatedObject() == NULL )
                return ;
            PhysicsObject* physicsObject = dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject());
            if (physicsObject)
            {
                P3DASSERT(value.x>0 && value.y>0 && value.z>0);
                if(!(value.x>0 && value.y>0 && value.z>0))
                    return;
                physicsObject->SetRestingSensitivity(value.x,value.y,value.z);
            }
        }
        break;
    case LIN_SPEED:
        {
            SetLinearSpeed(value);
        }
        break;
    case ROT_SPEED:
        {
            SetAngularSpeed(value);
            if (simState->GetSimulatedObject() == NULL )
                return ;
            simState->GetSimulatedObject()->SyncSimObj(false);
        }
        break;
    }
}

void UserObject::Set2VectorValue(UserObjectValueType in_type, const rmt::Vector& pos, const rmt::Vector& imp)
{
    switch( in_type )
    {
    case IMPULSE:
        {
            //When impulse is added on a rigid body, pos must be given in the rest frame of 
            //the object.
            //When impulse is added on an articulated body, pos.x must be set to the joint
            //index where we want the impulse to be added. pos.y represent the offset [0,1]
            //pos.z is unused.

            int jointindex = -1;
            SimulatedObject *obj = simState->GetSimulatedObject();
            if (obj)
            {
                SymMatrix massMatrix;
                Vector wpos = pos, simp = imp;
                if (obj->Type() == RigidObjectType)
                {
                    Vector off;
                    ((PhysicsObject*)obj)->GetCMOffset(off);
                    wpos.Add(off);
                    wpos.Transform(simState->GetTransform(jointindex));
                }
                else if (obj->Type() == ArticulatedObjectType)
                {
                    Vector axis;
                    jointindex = (int)pos.x;
                    ArticulatedPhysicsObject *artobj = (ArticulatedPhysicsObject*)obj;
                    axis = artobj->JointInfo(jointindex).mAxis;
                    axis.Scale(artobj->JointInfo(jointindex).mLength*pos.y);
                    wpos.Transform(axis,simState->GetTransform(jointindex));
                }
                else
                {
                    P3DASSERT(false);
                    return;
                }

                Vector dir = simp;
                if (dir.NormalizeSafe() > VERY_SMALL)
                {
                    bool ret = false;

                    obj->StartCollision(wpos, dir, NULL, jointindex);
                    do
                    {
                        obj->GetMassMatrix(wpos, massMatrix, NULL, jointindex);
                        ret = obj->AddImpulse(wpos, simp, massMatrix, NULL, jointindex);
                    } while(ret==false);

                    CollisionSolverAgent* collAgent = CollisionManager::GetInstance()->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent();
                    P3DASSERT(collAgent);
                    if(collAgent)
                    {
                        collAgent->TestCache(simState, jointindex);
                        if (collAgent->EndObjectCollision(simState, jointindex) != Solving_Aborted)
                        {
                            obj->EndCollision(true,jointindex,-1);
                        }
                    }
                }
            }
        }
        break;
    }
}

void UserObject::SetFloatValue(UserObjectValueType in_type, float val)
{
    switch( in_type )
    {
    case SCALEFACTOR:
        if (simState)
        {
            PhysicsObject* physicsObject = dynamic_cast<PhysicsObject*>(simState->GetSimulatedObject());
            if (physicsObject)
            {
                P3DASSERT(val>0);
                //                  physicsObject->UpdateScale(val);
                P3DASSERTMSG(0,"Not Implemented","");
            }
        }
        break;
    case DENSITY:
    case RESTCOEF:
    case TANGRESTCOEF:
    case FRICTIONCOEF:
        if ( simState && simState->GetPhysicsProperties())
        {
            PhysicsProperties *props;
            props = new PhysicsProperties;
            *props = *simState->GetPhysicsProperties();
            if( in_type == RESTCOEF )
            {
                props->SetRestCoeffCGS(val);
            }
            else if( in_type == TANGRESTCOEF )
            {
                props->SetTangRestCoeffCGS(val);
            }
            else if( in_type == FRICTIONCOEF )
            {
                props->SetFrictCoeffCGS(val);
            }
            else if( in_type == DENSITY )
            {
                props->SetDensityCGS(val);
            }
            simState->SetPhysicsProperties(props);
        }
        break;
    case AXIS_OF_REV:
        if (!articulated && simState && simState->GetSimulatedObject() && simState->GetSimulatedObject()->Type() == RigidObjectType)
        {
            sim::AXIS_OF_REVOLUTION axis = (val == 0.0f ? AXIS_OF_REVOLUTION_ABOUT_X : (val == 1.0f ? AXIS_OF_REVOLUTION_ABOUT_Y : AXIS_OF_REVOLUTION_ABOUT_Z));
            static_cast<PhysicsObject*>(simState->GetSimulatedObject())->SetAxisOfRevolution(axis);
        }
        break;
    }
}

void UserObject::SetProps(const char* in_propName)
{
    PhysicsProperties *props = PhysicsProperties::FindPhysicsProperty(in_propName);
    if(!props)
        props = PhysicsProperties::DefaultPhysicsProperties();

    simState->SetPhysicsProperties(props);

}

void UserObject::SetFlexProps(const char* in_propName, float in_val, float in_val2)
{
    SimulatedObject *obj = simState->GetSimulatedObject();
    FlexibleObject *flexObj = dynamic_cast<FlexibleObject*>(obj);
    if( flexObj==NULL )
        return;
    ParticleSystem* psyst = flexObj->mPsyst;
    
    if(strcmp(in_propName,"k1df") == 0) //stretch 1D force
        psyst->SetOneConditionParameter(in_val, eFlexStretch1D_f);
    else if(strcmp(in_propName,"k2df") == 0) //stretch 2D force
        psyst->SetOneConditionParameter(in_val, eFlexStretch2D_f);
    else if(strcmp(in_propName,"k1dd") == 0) //stretch 1D damping
        psyst->SetOneConditionParameter(in_val, eFlexStretch1D_d);
    else if(strcmp(in_propName,"k2dd") == 0) //stretch 2D damping
        psyst->SetOneConditionParameter(in_val, eFlexStretch2D_d);
    else if(strcmp(in_propName,"b1df") == 0) //bending 1D force
        psyst->SetOneConditionParameter(in_val, eFlexBend1D_f);
    else if(strcmp(in_propName,"b2df") == 0) //bending 2D force
        psyst->SetOneConditionParameter(in_val, eFlexBend2D_f);
    else if(strcmp(in_propName,"b1dd") == 0) //bending 1D damping
        psyst->SetOneConditionParameter(in_val, eFlexBend1D_d);
    else if(strcmp(in_propName,"b2dd") == 0) //bending 2D damping
        psyst->SetOneConditionParameter(in_val, eFlexBend2D_d);
    else if(strcmp(in_propName,"s2df") == 0) //shearing force
        psyst->SetOneConditionParameter(in_val, eFlexShear2D_f);
    else if(strcmp(in_propName,"s2dd") == 0) //shearing damping
        psyst->SetOneConditionParameter(in_val, eFlexShear2D_d);
    else if(strcmp(in_propName,"w1df") == 0) //wind 1D
        psyst->SetOneConditionParameter(in_val, eFlexWind1D_f);
    else if(strcmp(in_propName,"w2df") == 0) //wind 2D
        psyst->SetOneConditionParameter(in_val, eFlexWind2D_f);
    else if(strcmp(in_propName,"extd") == 0) //External density
        psyst->SetExtDensity(in_val);
    else if(strcmp(in_propName,"fixp") == 0) //External density
    {
        int index = (int)in_val;
        if ( index >= 0 && index < psyst->mNbp )
        {
            if (psyst->IsParticleFree(index))
            {
                Matrix m = flexObj->GetSimState()->GetTransform();
                m.Invert();
                Vector pos;
                m.Transform(flexObj->ParticlePosition(index), &pos);
                SimMatrixTarget* target = new SimMatrixTarget(&flexObj->GetSimState()->GetTransform());
                target->SetOffset(pos);
                flexObj->AddFixParticleTarget(index, target);
            }
            else
            {
                flexObj->FreeParticle(index);
            }
        }
    }
    else if( (strcmp(in_propName,"lambda") ) == 0 ) //Streching factor
    {
        psyst->SetLambda(in_val,in_val2, true);
    }
    else if( (strcmp(in_propName,"kappa") ) == 0 ) //Banding factor based or the angle at joints
    {
        psyst->SetKappa(in_val,in_val2, true);
    }
    else if( (strcmp(in_propName,"iota") ) == 0 ) //Shearing factor.
    {
        psyst->SetIota(in_val,in_val2, true);
    }
    
}

void UserObject::SetState(UserObjectValueType in_type)
{
    switch( in_type )
    {
    case CONTROL_EXT:
        ResetToAI();
        break;
    case CONTROL_PHYSIC:
        SetControlToSim();
        break;
    case WAKE_UP:
        if (simState->GetSimulatedObject())
        {
            if (simState->GetControl() != simAICtrl )
                simState->GetSimulatedObject()->WakeUp();
        }
        break;
    }
}

void UserObject::ConvertToRigid()
{
    P3DASSERT(articulated);

    for (int i=0; i<mImpulseLinkList.GetSize(); i++)
        mImpulseLinkList[i]->Release();
    
    mImpulseLinkList.RemoveAll();
    
    articulated = false;

    ((SimStateArticulated*)simState)->ConvertToRigidBody();
}

void UserObject::AddInertialJoint(int jointIndex, float speedRate, float accelRate, float gravityRate, float centrifugalRate)
{
    SimStateArticulated* ssart = static_cast<SimStateArticulated*>(simState);

    ArticulatedPhysicsObject* apo = (ArticulatedPhysicsObject*)ssart->GetSimulatedObject(jointIndex);
    if (apo)
    {
        bool found = false;
        PhysicsJoint* j = apo->GetJoint(jointIndex);
        if (j && j->GetNumDOF() > 0 && j->NormDCMPosition() > RELA_SMALL)
        {
            // setting the inv stiffness to 0 has the consequence of removing 
            // entirely any muscle action on that joint. this means that a 
            // collision impulse added on that joint won't transmit anything to the 
            // parent
            j->SetInvStiffness(1.0f);

            for (int i=0; i<poseEngine->GetPoseDriverCount(PoseEngineSimPass); i++)
            {
                poser::PoseDriver* pd = poseEngine->GetPoseDriver(PoseEngineSimPass, i);
                if (pd->GetPriority() == poser::PhysicsInertialJointPriority 
                    && pd->GetMinimumJointIndex() == jointIndex)
                {
                    PhysicsJointInertialEffector* ie = dynamic_cast<PhysicsJointInertialEffector*>(pd);
                    if (ie)
                    {
                        found = true;
                        ie->SetSpeedRate(speedRate);
                        ie->SetAccelRate(accelRate);
                        ie->SetGravityRate(gravityRate);
                        ie->SetCentrifugalRate(centrifugalRate);
                        break;
                    }
                }
            }
            if (!found)
            {
                PhysicsJointInertialEffector* ie = new PhysicsJointInertialEffector(j);
                ie->SetSpeedRate(speedRate);
                ie->SetAccelRate(accelRate);
                ie->SetGravityRate(gravityRate);
                ie->SetCentrifugalRate(centrifugalRate);
                poseEngine->AddPoseDriver(PoseEngineSimPass, ie);
            }
        }
    }
}

void UserObject::AddDriver(int inDriverIndex, int inJoint, float inVal1, float inVal2 )
{
    if (poseEngine)
    {
        bool found = false;

        for (int i=0; i<poseEngine->GetPoseDriverCount(0); i++)
        {
            poser::PoseDriver* pd = poseEngine->GetPoseDriver(0, i);
            if (pd->GetPriority() == 1 
                && pd->GetMinimumJointIndex() == inJoint)
            {
                switch(inDriverIndex)
                {
                case 1:
                    {
                        OscillatorDriver* od = dynamic_cast<OscillatorDriver*>(pd);
                        if(od)
                        {
                            od->SetMaxTranslation(inVal1);
                            found = true;
                            break;
                        }
                    }
                    break;
                case 2:
                    {
                        RotationDriver* od = dynamic_cast<RotationDriver*>(pd);
                        if(od)
                        {
                            od->SetParams(inVal1, inVal2);
                            found = true;
                            break;
                        }
                    }
                    break;
                case 3:
                    {
                        CarWheelDriver* od = dynamic_cast<CarWheelDriver*>(pd);
                        if(od)
                        {
                            od->SetParams(inVal1, inVal2);//speed, direction
                            found = true;
                            break;
                        }
                    }
                    break;
                case 4:
                    {
                        OrbitDriver* od = dynamic_cast<OrbitDriver*>(pd);
                        if(od)
                        {
                            od->SetParams(inVal1, inVal2);//speed, direction
                            found = true;
                            break;
                        }
                    }
                    break;
                }
            }
        }
        if (!found)
        {
            switch(inDriverIndex)
            {
            case 1:
                {
                    OscillatorDriver* od = new OscillatorDriver(inJoint, inVal1);
                    poseEngine->AddPoseDriver(0, od);
                }
                break;
            case 2:
                {
                    RotationDriver *od = new RotationDriver(inJoint, (int)inVal1, inVal2);
                    poseEngine->AddPoseDriver(0, od);
                }
                break;
            case 3:
                {
                    CarWheelDriver *od = new CarWheelDriver(inVal1, inVal2);
                    poseEngine->AddPoseDriver(0, od);
                }
                break;
            case 4:
                {
                    OrbitDriver *od = new OrbitDriver(inJoint, (int)inVal1, inVal2);
                    poseEngine->AddPoseDriver(0, od);
                }
                break;
            }

        }
    }
}


void UserObject::AddVirtualCM( int inJoint, float inK, float inD )
{
    simState->AddVirtualCM(inJoint);
    simState->InitVirtualCM(inJoint);
}
//
// static methods to handle the userobjects
//

UserObject* UserObject::FindUserObject(tUID uid)
{
    UserObject* object = NULL;
    
    for (int i=0; i<GetNumUserObjects(); i++)
    {
        if (uid == GetUserObject(i)->uid)
        {
            object = GetUserObject(i);
            break;
        }
    }
    return object;
}

void UserObject::ResetUserObject()
{
    for (int i=0; i<sNumUserObjects; i++)
        sUserObjectArray[i].Reset();
    
    sNumUserObjects = 0;
}

void UserObject::UpdateAllUserObject(float inDt_Sec, float in_TotalTime)
{
    int i;

    sGameTime = in_TotalTime;

    for (i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        GetUserObject(i)->Update(inDt_Sec);
    }

    if (CollisionManager::GetCurrentInstance())
    {
        CollisionManager::GetCurrentInstance()->DetectCollision(inDt_Sec, in_TotalTime);
        CollisionManager::GetCurrentInstance()->SolveCollision(inDt_Sec, in_TotalTime);
    }
}

UserObject* UserObject::GetNewUserObjects(tDrawable* inDrawable, tUID inUID, int type, rmt::Matrix* inExtTransform, int inArea)
{
    UserObject* newUserObject = CreateNewUserObject();

    if (newUserObject->Init(inDrawable, inUID, type, inExtTransform))
    {
        if (newUserObject->simState->GetCollisionObject())
        {
            CollisionManager::GetInstance()->AddCollisionObject(newUserObject->simState->GetCollisionObject(), inArea);
        }
    }
    else
    {
        sNumUserObjects--;
        newUserObject = NULL;
    }
    return newUserObject;
}

UserObject* UserObject::AddManFlex(int m, int n, float size, int inType, bool inColl)
{
    UserObject* newUserObject = NULL;
    
    SimStateFlexible* simState = SimStateFlexible::CreateManSimStateFlexible(m, n, size, inType);
    
    if (simState)
    {
        P3DASSERT(simState->GetCollisionObject() && simState->GetSimulatedObject());
        
        newUserObject = CreateNewUserObject();
        
        if (inColl)
        {
            CollisionManager::GetInstance()->AddCollisionObject(simState->GetCollisionObject());
        }

        newUserObject->simState = simState;
        simState->AddRef();
        
        ManualFlexDrawable *drawable = new ManualFlexDrawable(simState->GetFlexibleObject()->mPsyst);
        drawable->SetName(simState->GetCollisionObject()->GetName());
        newUserObject->drawable = drawable;
    }
    return newUserObject;
}

UserObject* UserObject::CreateNewUserObject(sim::SimState* inSimState)
{
    UserObject* newUserObject = CreateNewUserObject();
    newUserObject->simState = inSimState;
    inSimState->AddRef();

    if (newUserObject->simState->GetCollisionObject())
    {
        CollisionManager::GetInstance()->AddCollisionObject(newUserObject->simState->GetCollisionObject());
    }
    return newUserObject;
}

void UserObject::ResetRestingDetector()
{
    if (simState->GetSimulatedObject())
        simState->GetSimulatedObject()->ResetRestingDetector();
}

UserObject* UserObject::CreateNewUserObject()
{
    if(sNumUserObjects >= sUserObjectArraySize-1) {
        if(sUserObjectArraySize == 0)
            sUserObjectArraySize = 50;
        sUserObjectArraySize *= 2;

        //out of userobjects; must grow the array
        UserObject* newArray = new UserObject[sUserObjectArraySize];
        P3DASSERT(newArray);

        for(int i = 0; i < sNumUserObjects; i++)
            newArray[i] = sUserObjectArray[i];
        delete [] sUserObjectArray;
        sUserObjectArray = newArray;
    }

    return &sUserObjectArray[sNumUserObjects++];
}
