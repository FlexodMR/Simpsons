/*===========================================================================
TestViewer.cpp - Pure3D testbed

  
    Copyright (c) 1995-1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <assert.h>
#include <string.h>
#include <typeinfo.h>
#include <ctype.h> //for isdigit
#include <stdlib.h> //for atoi

#include <p3d/pure3d.hpp>
#include <p3d/anim/poseanimation.hpp>
#include <p3d/anim/skeleton.hpp>
#include <p3d/geometry.hpp>
#include <p3d/anim/polyskin.hpp>
#include <p3d/utility.hpp>
#include <p3d/drawable.hpp>

#include<p3d/targa.hpp>

#include "grid.hpp"

#ifdef WIN32
#define SPIFFY_CONSOLE
#endif

// console stuff
#ifdef SPIFFY_CONSOLE
//   #include <fontfactory.hpp> // PC only
#include "enhancedconsole.hpp"
#else
#include "simpleconsole.hpp"
#endif

#include "objectscripter.hpp"
#include "commandline.hpp"
#include "constuff.hpp"

#include "mouse.hpp"
#include "simpleapp.hpp"
#include "eventreceiver.hpp"
#include "testviewer.hpp"

// sim include
#include "simcommon/simutility.hpp"       // for loaders
#include "simcommon/simenvironment.hpp"   // for SimUnits
#include "simcommon/simmath.hpp"          // for CopyRotation
#include "simcommon/simstateflexible.hpp"
#include "simcommon/simstatearticulated.hpp"
#include "simcommon/simwind.hpp"
#include "simcommon/skeletoninfo.hpp"

#include "simcollision/collisionmanager.hpp"
#include "simcollision/collisiondisplay.hpp"
#include "simcollision/collisionvolume.hpp"
#include "simcollision/proximitydetection.hpp"

#include "simflexible/flexibleobject.hpp" // for debug display
#include "simflexible/particlesystxd.hpp"
#include "simcommon/dline2.hpp"


//
// sim functions
//

using namespace RadicalMathLibrary;
using namespace sim;

const float MAX_UPDATEAI_TIME_ms = 1000.0f*1.0f/30.0f; // 30 fps

#define DAFAULT_DT_ms 16.6f
//#define DAFAULT_DT_ms 5.0f
static float lastSimTimerTime_sec = 0;
static float totalSimTime_sec = 0;
static float totalAppTime_sec = 0;

static float time_scale = 1.0f; // set this lower than 1 to see slow motion
static float MatrixEffectScale = 1.0f;

int  updateCount=0;
bool alltime = true;

//
// scripter functions
//

void SetMatrixEffectScale(float inScale)
{
    MatrixEffectScale = inScale;
}

void SetMaxPasses(int i)
{
    P3DASSERT(i>0);
    if (CollisionManager::GetCurrentInstance())
        CollisionManager::GetCurrentInstance()->GetImpulseBasedCollisionSolver()->SetMaxPasses(i);
}

void QuickImpulse(int i)
{
    CollisionManager::GetCurrentInstance()->GetImpulseBasedCollisionSolver()->DoQuickSolve(i==0?false:true);
}

void AddPointLight(float x, float y, float z, int r, int g, int b, tView* view)
{
    tPointLight* light = new tPointLight;
    light->SetPosition(x, y, z);
    light->SetColour(tColour(r, g, b));
    view->AddLight(light);
}

void RemoveLights(tView* view)
{
    view->RemoveAllLights();
}


void DebugDisplay(int i, TestViewer* app)
{
    app->SetDebugDisplay(i == 0 ? false : true);
}


void SetDebugDisplay(const char* s, bool b, TestViewer* app)        
{ 
    app->SetDebugDisplay(s,  b);        
}


int GetDebugDisplay(const char* s, TestViewer* app) 
{ 
    if(strcmp(s, "Velocity") == 0)
    {
        return app->debugVelocity;
    }
    else if(strcmp(s, "JointModifier") == 0)
    {
        return app->debugJointModifier;
    }
    else if(strcmp(s, "Collision") == 0)
    {
        return app->debugCollision;
    }
    else if(strcmp(s, "Vcm") == 0)
    {
        return app->debugVcm;
    }
    return 0;   // does nothing
}


void ToggleDebugDisplay(const char* s, TestViewer* app)
{
    SetDebugDisplay(s, !GetDebugDisplay(s, app), app);
}

void ToggleDebugPrint(TestViewer* app)
{
    app->SetDebugPrint(!app->GetDebugPrint());
}

void TogglePrintDrawables(TestViewer* app)
{
    app->SetPrintDrawables(!app->GetPrintDrawables());
}

void TogglePrintSimStats(TestViewer* app)
{
    app->SetSimStatsDisplay(!app->GetSimStatsDisplay());
}

void ToggleSmartCollDetect(TestViewer* app)
{
    if (app->GetCollisionManager())
    {
        CollisionManagerAttributes currAttribute = app->GetCollisionManager()->GetCollisionManagerAttributes();
        
        if (currAttribute & CM_DetectAll)
        {
            app->GetCollisionManager()->SetCollisionManagerAttributes(CM_DetectIfMoving | CM_SolveAll);
        }
        else if (currAttribute & CM_DetectIfMoving)
        {
            app->GetCollisionManager()->SetCollisionManagerAttributes(CM_DetectAll | CM_SolveAll);
        }
    }
}

void NearPlane(float f, tCamera* c)
{
    c->SetNearPlane(f);
}

void SetDt(float dt, TestViewer* app)
{
    if (dt > 0)
        app->SetSimtimestep(dt);
}

void RealTime(int i, TestViewer* app)
{
    app->SetRealTime(i==0 ? false : true);
}

void SetTimeScale(float inTimeScale)
{
    time_scale = inTimeScale;
}

void Sim( TestViewer* app )
{
    alltime = true;
    app->FullPhysicsNodes();
}

void SimN( int f, TestViewer* app )
{
    updateCount = f;
    alltime = false;
    app->FullPhysicsNodes();
}

void ResetApp(TestViewer* app)
{
    app->ResetAll();
}

static void Load(const char* file, TestViewer* app)
{
    if(!p3d::load(file))
    {
        char string[256];
        sprintf(string, "Could not load file %s", file);
        app->Echo(string);
    }
   else
   {
       app->RememberFile(file);
   }
}

void RunScript(const char* fileName, tObjectScripter* scripter)
{
    char name[128];
    strcpy(name, fileName);
    
    int size = strlen(fileName);
    if (size <= 4 || fileName[size-4] != '.')
    {
        strcpy(&name[size], ".cfg");
    }
    scripter->ExecFile(name);
}

void LoadNIS(const char* fileName, TestViewer* app)
{
    ResetApp(app);
    Load(fileName, app);
    app->SimLoad();
}

void AddObject(const char* name, TestViewer* app)
{
    app->AddUserObject(name);
}

void AddCollisionObject(const char* name, TestViewer* app)
{
    app->AddUserObject(name, 1);
}

void AddAccessory(const char* accessory, const char* toCharacter, int atJoint, TestViewer* app)
{
    app->AddAccessoryToChar(accessory, toCharacter, atJoint);
}

void DropAccessory(const char* accessory, const char* character, TestViewer* app)
{
    app->DropProp(accessory, character);
}

void TranslateObject(const char* name, float x, float y, float z, TestViewer* app)
{
    Vector newpos(x, y, z);
    app->MoveObject(tEntity::MakeUID(name), newpos);
}

void RotateObject(const char* name, float x, float y, float z, TestViewer* app)
{
    app->RotObject(tEntity::MakeUID(name), x, y, z);
}
void ToggleIK(const char* name, TestViewer* app)
{
    app->SwitchIK(tEntity::MakeUID(name));
}
void ToggleSound(TestViewer* app)
{
    app->ToggleSoundOn();
}
void NextDraw(TestViewer* app)
{
    app->NextDrawable();
}
void resettrans(TestViewer* app)
{
    app->ResetTransform();
}
void fullphysrb(TestViewer* app)
{
    app->FullPhysicsNodes();
}
void readlink(TestViewer* app)
{
}
void PhMovScale(float f, TestViewer* app)
{
    app->Setphmovescale(f);
}
void fullphyschar(TestViewer* app)
{
    app->FullPhysicsArticluatedNodes();
}
void SetEnvProps( const char* props_name, float val1, float val2, float val3, TestViewer* app)
{
    app->SetEnvProps( props_name, val1, val2, val3 );
}
void SetTrs( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( SET_TRANSLATION, name, x, y, z );
}
void AddTrs( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( ADD_TRANSLATION, name, x, y, z );
}
void SetRot( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( SET_ROTATION, name, x, y, z );
}
void AddRot( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( ADD_ROTATION, name, x, y, z );
}
void PhSpeed( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( LIN_SPEED, name, x, y, z );
}
void PhRotSpeed( const char* name, float x, float y, float z, TestViewer* app )
{
    app->SetObjectVectorValue( ROT_SPEED, name, x, y, z );
}
void PhImpulse( const char* name, float posx, float posy, float posz, float impx, float impy, float impz, TestViewer* app )
{
    //posx, y, z define the position where to applied the impulse
    //this relative to the object's position.
    app->SetObject2VectorValue( IMPULSE, name, posx, posy, posz, impx, impy, impz );
}
void PhImpulseLink(char* name, char* targetName, float intensity, int index, TestViewer* app)
{
    UserObject* obj = UserObject::FindUserObject(tEntity::MakeUID(name));
    if (obj)
        obj->AddImpulseLink(targetName, intensity, index);
}
void PhIKLink(char* name, char* targetName, int startindex, int midindex, int endindex, int limbtype, TestViewer* app)
{
    // offset is calculated from pose in userobject.AddIKLink for now  
    float offx=0, offy=2.0f, offz=0;  
    UserObject* obj = UserObject::FindUserObject(tEntity::MakeUID(name));
    if (obj)
        obj->AddIKLink(targetName, startindex, midindex, endindex, limbtype, offx, offy, offz);
}
void PhScale( const char* name, float val, TestViewer* app )
{
    app->SetObjectFloatValue( SCALEFACTOR, name, val );
}
void PhSetRestCoef( const char* name, float val, TestViewer* app )
{
    app->SetObjectFloatValue( RESTCOEF, name, val );
}
void PhSetTangRestCoef( const char* name, float val, TestViewer* app )
{
    app->SetObjectFloatValue( TANGRESTCOEF, name, val );
}
void PhSetFrictionCoef( const char* name, float val, TestViewer* app )
{
    app->SetObjectFloatValue( FRICTIONCOEF, name, val );
}
void PhDensity( const char* name, float val, TestViewer* app )
{
    app->SetObjectFloatValue( DENSITY, name, val );
}
void MuEEt( const char* name, const char* nameProps, TestViewer* app )
{
    app->SetObjectProps( name, nameProps );
}
void SetAxisOfRevolution(const char* name, int axis, TestViewer* app)
{
    app->SetObjectFloatValue( AXIS_OF_REV, name, float(axis) );
}
void PhRestingFactor(  const char* name, float val0, float val1, float val2, TestViewer* app )
{
    app->SetObjectVectorValue( RESTING_SENSITIVITY, name, val0, val1, val2 );
}
void PhWakeUp( const char* name, TestViewer* app)
{
    SimStats::ResetPeakTimes();
    app->SetObjectState( WAKE_UP, name);
}
void PhAddManFlex(int m, int n, float size, int solverType, TestViewer* app)
{
    app->AddManFlex(m, n, size, solverType, true);
}

void PhFlexSetProps(const char* name, const char* PropName, float val1, float val2, TestViewer* app)
{
    app->SetFlexProps(name, PropName, val1, val2);
}
void PhAddConstraint( int constraining, int constrained, float x1, float y1, float z1, float x2, float y2, float z2, TestViewer* app )
{
    app->AddConstraint( constraining, constrained, x1, y1, z1, x2, y2, z2 );
}

void AddWind(int type, float ix, float iy, float iz, TestViewer* app)
{
    if (SimEnvironment::GetCurrentDefaultSimEnvironment())
    {
        SimWind* wind = NULL;
        Vector seed(ix, iy, iz);
        if (type == 0)
        {
            wind = new SimWind;
            wind->SetWindSeedCGS(seed);
        }
        else if (type == 1)
        {
            wind = new SimWindSinus;
            wind->SetWindSeedCGS(seed);
        }

        if (wind)
            SimEnvironment::GetCurrentDefaultSimEnvironment()->SetWind(wind);
    }
}

void ConvertToRigid(char* in_name, TestViewer* app)
{
    UserObjectArray ObjectArray;
    
    app->GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        if (ObjectArray[i]->articulated)
        {
            ObjectArray[i]->ConvertToRigid();
        }
    }
}

void DumpStuff(char* fileName)
{
#ifdef COLLECT_PAIR_COLLISION_HISTORY
    FILE* file = fopen(fileName, "w");
    P3DASSERT(file);

    if (file)
    {
        sim::PairCollisionInfoHolder* pairCollisionInfoHolder = &sim::CollisionManager::GetCurrentInstance()->GetCollisionDetector()->GetPairCollisionInfoHolder();

        char str[256];
        for (int i=0; i<pairCollisionInfoHolder->mPairCollisionInfoArray.GetSize(); i++)
        {
            pairCollisionInfoHolder->Dump(str, i);
            fprintf(file, str);
        }
        fclose(file);
    }
#endif
}

void ExportScript(char* fileName, TestViewer* app)
{
    FILE* file = fopen(fileName, "w");
    P3DASSERT(file);

    if (file)
    {
        int i;

        fprintf(file, "phempty\n\n");

        for (i=0; i<app->nbLoadedFiles; i++)
        {
            fprintf(file, "load %s\n", app->loadedFiles[i]);
        }
        fprintf(file, "\n");

        for (i=0; i<UserObject::GetNumUserObjects(); i++)
        {
            UserObject* uo = UserObject::GetUserObject(i);
            if (!uo->simState->GetSimulatedObject() && uo->simState->GetCollisionObject())
                fprintf(file, "addcobj %s\n", uo->simState->GetCollisionObject()->GetName());
            else if (uo->simState->GetSimulatedObject())
                fprintf(file, "addobj %s\n", uo->simState->GetSimulatedObject()->GetName());
            else 
                continue;

            rmt::Matrix m = uo->transform;
            fprintf(file, "phmov - %f %f %f\n", m.Row(3).x, m.Row(3).y, m.Row(3).z);
            rmt::Vector e;
            e.ConvertToEulerYZX(m);
            fprintf(file, "setrot - %f %f %f\n", e.x, e.y, e.z);
            fprintf(file, "\n");
        }
        fprintf(file, "sim\n\n");
        fclose(file);
    }
}

void SetSkelAxis(const char* name, int index, float x, float y, float z, float n, TestViewer* app)
{
    SkeletonInfo* info = p3d::find<SkeletonInfo>(name);
    if (info)
    {
        rmt::Vector axis(x, y, z);
        info->SetJointAxis(index, axis, n);
    }
}

void SetSkelRotAxis(const char* name, int index, float x, float y, float z, TestViewer* app)
{
    SkeletonInfo* info = p3d::find<SkeletonInfo>(name);
    if (info)
    {
        rmt::Vector axis(x, y, z);
        info->SetJointRotAxis(index, axis);
    }
}

void DetachJoint(const char* in_name, const char* newObjName, int jointIndex, TestViewer* app)
{
    UserObjectArray ObjectArray;
    
    app->GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        if (ObjectArray[i]->articulated)
        {
            SimState* newSimState = ((SimStateArticulated*)ObjectArray[i]->simState)->CreateJointSimState(jointIndex, newObjName);
            if (newSimState)
            {
                UserObject* newUO = UserObject::CreateNewUserObject(newSimState);
                if (newUO)
                {
                    tCompositeDrawable* cd = dynamic_cast<tCompositeDrawable*>(ObjectArray[i]->drawable);
                    if (cd)
                    {
                        for (int i=0; i<cd->GetNumDrawableElement(); i++)
                        {
                            tCompositeDrawable::DrawablePropElement* prop = dynamic_cast<tCompositeDrawable::DrawablePropElement*>(cd->GetDrawableElement(i));
                            if (prop && prop->GetPoseIndex() == jointIndex)
                            {
                                prop->SetVisibility(false);
                                newUO->drawable = prop->GetDrawable();
                                newUO->drawable->AddRef();
                            }
                        }
                    }
                    SimStateArticulated* ssart = static_cast<SimStateArticulated*>(ObjectArray[i]->simState);
                    
                    ssart->StartModifyingJointVisibility();
                    ssart->SetJointVisibility(jointIndex, false);
                    ssart->EndModifyingJointVisibility();

                    PhysicsProperties* pp = p3d::find<PhysicsProperties>("defaultPhysicsProperties");
                    if (pp)
                    {
                        newUO->simState->SetPhysicsProperties(pp);
                    }

                    newUO->MoveObject(ssart->GetTransform(jointIndex), 0);
                    if (newUO->simState->GetSimulatedObject())
                    {
                        newUO->SetControlToSim();
                        newUO->SetLinearSpeed(ssart->GetJointState(jointIndex)->GetLinearVelocity());
                        newUO->SetAngularSpeed(ssart->GetJointState(jointIndex)->GetAngularVelocity());
                    }
                }
            }
        }
    }
}

void InertialJoint(const char* in_name, int jointIndex, float speedRate, float accelRate, float gravityRate, float centrifugalRate, TestViewer* app)
{
    UserObjectArray ObjectArray;
    
    app->GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        if (ObjectArray[i]->articulated)
        {
            ObjectArray[i]->AddInertialJoint(jointIndex, speedRate, accelRate, gravityRate, centrifugalRate);
        }
    }
}

void AddDriver(const char* in_name, int driverIndex, int jointIndex, float inVal1, float inVal2, TestViewer* app)
{
    UserObjectArray ObjectArray;
    
    app->GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        if (ObjectArray[i]->articulated)
        {
            ObjectArray[i]->AddDriver(driverIndex, jointIndex, inVal1, inVal2);
        }
    }
}

void AddVcm(const char* in_name, int jointIndex, float inK, float inD, TestViewer* app)
{
    UserObjectArray ObjectArray;
    
    app->GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        if (ObjectArray[i]->articulated)
        {
            ObjectArray[i]->AddVirtualCM(jointIndex, inK, inD);
        }
        else
        {
            ObjectArray[i]->AddVirtualCM(-1, inK, inD);
        }
    }
}

//
//
//

template <class T> class TemplateIterator : public ViewerIterator
{
public:
    TemplateIterator(T* t)
    {
        iterator = t;
        current = iterator->First();
    }
    
    ~TemplateIterator()
    {
        delete iterator;
    }
    
    tEntity* First(void)
    {
        current = iterator->First();
        
        return current;
    }
    
    tEntity* Current(void)
    {
        if(!current)
            current = iterator->First();
        
        return current;
    }
    
    tEntity* Next(bool loop = false)
    {
        current = iterator->Next();
        if(loop && !current)
            current = iterator->First();
        return current;
    }
    
    tEntity* Prev(void)
    {
        current = iterator->Prev();
        if(!current)
            current = iterator->Last();
        return current;
        
    }
    
private:
    T* iterator;
    tEntity* current; 
};

class DrawIterator  : public tInventory::Iterator<tDrawable> {};
class AnimIterator  : public tInventory::Iterator<tFrameController> {};
class CamIterator   : public tInventory::Iterator<tCamera> {};
class LightIterator : public tInventory::Iterator<tLightGroup> {};



//-------------------------------------------------------------------
// TestViewer class
// derive from Testbed. 
//
//-------------------------------------------------------------------

TestViewer::TestViewer(SimpleApp* a)
: TestBed(a),
controller(NULL),
realTime(true),
simtimestep_sec(DAFAULT_DT_ms/1000.0f),
phmovescale(0.1f),
debugDisplay(true),
debugPrint(false),
printDrawables(false),
debugVelocity(false),
debugCollision(false),
debugJointModifier(false),
debugVcm(true)
{
    mouseButtonDown[0] = false;
    mouseButtonDown[1] = false;
    mouseButtonDown[2] = false;
    phmouse = false;
    screenshot = false;
    shotNumber = 0;
    
    currentUserObjectIndex = -1;
    
    multiObjectMode = false;
    
    collisionManager = NULL;
    
    mMyCollisionSolverAgent = NULL;
    mSoundManager = NULL;
    mSoundPlayer = NULL;
    mSoundOn = true;
    
    currentSceneGraph = NULL;
    nbLoadedFiles = 0;  
    simStatsDisplay = false;
}

TestViewer::~TestViewer()
{
    ResetAll();
    
    delete drawables;
    delete controllers;
    delete cameras;
    delete lights;
    
    delete mSoundManager;
    delete mSoundPlayer;
    
    p3d::loadManager->RemoveAllHandlers(); // should be in testbed

    UserObject::Shutdown();
}

void TestViewer::SetRealTime(bool b)            
{ 
    realTime = b; 
}

void TestViewer::ResetAll(bool emptyInventory)
{
    camera = userCamera;
    currentSceneGraph = NULL;
    
    UserObject::ResetUserObject();
    currentUserObjectIndex = -1;
    multiObjectMode = false;
    totalSimTime_sec = 0;
    totalAppTime_sec = 0;
    
    screenshot = false;
    shotNumber = 0;
    
    if (emptyInventory)
    {
        nbLoadedFiles = 0;
        controller = NULL;
        
        delete drawables;
        delete controllers;
        delete cameras;
        delete lights;
        
        p3d::inventory->RemoveAllElements();
        
        drawables   = new TemplateIterator<DrawIterator>(new DrawIterator);
        controllers = new TemplateIterator<AnimIterator>(new AnimIterator);
        cameras     = new TemplateIterator<CamIterator>(new CamIterator);
        lights      = new TemplateIterator<LightIterator>(new LightIterator);
        
        // need that always present
        tShader* shader = new tShader;
        shader->SetName("p3d_default");
        p3d::inventory->Store(shader);

        if (collisionManager)
        {
            collisionManager->Release();
            collisionManager = NULL;
        
            //allow AI to respond to proper removal of all collisions
            mMyCollisionSolverAgent->GetCollisionAnalyser()->NotifyShutdown();

            if(mSoundPlayer)
                mSoundPlayer->RemoveAllSound();
        
            //remove collision solver agent
            mMyCollisionSolverAgent->Release();
            mMyCollisionSolverAgent = NULL;
        }

        ResetSimulation();
    }
    else
    {
        if (collisionManager)
        {
            collisionManager->ResetAll();
        }
    }

    mSoundPlayer->RemoveAllSound();
    //mSoundOn = false;
    SimStats::ResetPeakTimes();
}


//-------------------------------------------------------------------
#include "menu.hpp"

void TestViewer::SetupMenu()
{
    scripter->SetIntRef("debugDisplay", &debugDisplay);
    scripter->SetIntRef("debugPrint", &debugPrint);
    scripter->SetIntRef("printDrawables", &printDrawables);
    
    MenuHandler* menuHandler = app->GetMenuHandler();
    
    if(!menuHandler)  // some platforms (PS2) don't support menus
        return;
    
    menuHandler->AddItem("&File",         MenuHandler::TOP,     0, false, false, "");
    menuHandler->AddItem("&Open...",      MenuHandler::ITEM,    0, false, false, "getFile");
    menuHandler->AddItem("&Reset...",     MenuHandler::ITEM,    0, false, false, "phempty");
    menuHandler->AddItem("&Exit",         MenuHandler::ITEM,    0, false, false, "quit");
    
    menuHandler->AddItem("&View",         MenuHandler::TOP,     0, false, false, "");
    menuHandler->AddItem("Fill",          MenuHandler::SUB,     0, false, false, "");   
    menuHandler->AddItem("Solid",         MenuHandler::SUBITEM, 1, true,  true,  "fillMode solid");
    menuHandler->AddItem("Wireframe",     MenuHandler::SUBITEM, 1, true,  false, "fillMode wire");
    menuHandler->AddItem("Point",         MenuHandler::SUBITEM, 1, true,  false, "fillMode point");
    menuHandler->AddItem("Face Culling",  MenuHandler::SUB,     0, false, false, "");   
    menuHandler->AddItem("Off",           MenuHandler::SUBITEM, 2, true,  false, "cullMode none");
    menuHandler->AddItem("Normal",        MenuHandler::SUBITEM, 2, true,  true,  "cullMode ccw");
    menuHandler->AddItem("Inverted",      MenuHandler::SUBITEM, 2, true,  false, "cullMode cw");
    
    menuHandler->AddItem("&Camera",       MenuHandler::TOP,     0, false, false, "");
    menuHandler->AddItem("Reset" ,        MenuHandler::ITEM,    0, false, false, "reset");
    menuHandler->AddItem("Mouse sensitivity", MenuHandler::SUB, 0, false, false, "");
    menuHandler->AddItem("Normal",        MenuHandler::SUBITEM, 4, true,  true,  "moveRate 0.2; zoomRate 0.5; rollRate 0.7");
    menuHandler->AddItem("Low",           MenuHandler::SUBITEM, 4, true,  false, "moveRate 0.05; zoomRate 0.125; rollRate 0.175");
    menuHandler->AddItem("Lock Origin",   MenuHandler::ITEM,    0, true,  false, "lockOrigin %d");
    
    menuHandler->AddItem("&Simulation",   MenuHandler::TOP,     0, false, false, "");
    
    menuHandler->AddItem("Sound",         MenuHandler::ITEM,    0, true,  true,  "togglesound");
    menuHandler->AddItem("SmartDetect",   MenuHandler::ITEM,    0, true,  true,  "smartdetect");
    menuHandler->AddItem("RealTime",      MenuHandler::ITEM,    0, true,  true, "realtime 1");
    menuHandler->AddItem("FixTime",       MenuHandler::ITEM,    0, true,  false,  "realtime 0");
    menuHandler->AddItem("FixTime Speed", MenuHandler::SUB,     0, false, false, "");
    menuHandler->AddItem("16 ms",         MenuHandler::SUBITEM, 6, true,  true,  "setdt 16.0");
    menuHandler->AddItem("10 ms",         MenuHandler::SUBITEM, 6, true,  false, "setdt 10.0");
    menuHandler->AddItem("5 ms",          MenuHandler::SUBITEM, 6, true,  false, "setdt 5");
    menuHandler->AddItem("1 ms",          MenuHandler::SUBITEM, 6, true,  false, "setdt 1");
    menuHandler->AddItem("Control",       MenuHandler::SUB,     0, false, false, "");
    menuHandler->AddItem("Rigid body Full Physics",    MenuHandler::SUBITEM, 0, false,  false,  "fullphysrb");
    menuHandler->AddItem("Character Full Physics",     MenuHandler::SUBITEM, 0, false,  false,  "fullphyschar");
    menuHandler->AddItem("Reset",                      MenuHandler::SUBITEM, 0, false,  false,  "resettrans");
    
    menuHandler->AddItem("&Info",               MenuHandler::TOP,       0, false, false, "");
    //menuHandler->AddItem("DebugDisplay",      MenuHandler::ITEM,      10, true, false, "tdd");
    menuHandler->AddItem("&DebugDisplay",       MenuHandler::SUB,       0, false, false, "");
    menuHandler->AddItem("DebugVelocity",       MenuHandler::SUBITEM,   0, true, false,  "tdd Velocity");
    menuHandler->AddItem("DebugJointModifier",  MenuHandler::SUBITEM,   0, true, false,  "tdd JointModifier");
    menuHandler->AddItem("DebugCollision",      MenuHandler::SUBITEM,   0, true, false,  "tdd Collision");
    menuHandler->AddItem("DebugPrint",          MenuHandler::ITEM,      0, true, false,  "pobj");
    menuHandler->AddItem("PrintDrawables",      MenuHandler::ITEM,      0, true, false,  "pdrawables");
    menuHandler->AddItem("DisplaySimStats",     MenuHandler::ITEM,      0, true, false,  "pstats");
    
    menuHandler->Create();
}

inline float simGetTime_sec()
{
    return float(radTimeGetMilliseconds())/1000.0f;
}

void TestViewer::Init()
{
    TestBed::Init();

    mGrid = new Grid;
    mGrid->AddRef();
    mGrid->mode = 1;
    mGrid->count = 10;
    mGrid->size = 4;

    ((tEnhancedConsole*)console)->SetBackgroundColour(tColour(0, 0, 0, 10));
    
    userCamera = camera;
    
    //class ScenegraphIterator : public tInventory::Iterator<sg::Scenegraph> {};
    //class MulticontrollerIterator : public tInventory::Iterator<tMultiController> {};
    drawables = new TemplateIterator<DrawIterator>(new DrawIterator);
    controllers = new TemplateIterator<AnimIterator>(new AnimIterator);
    cameras = new TemplateIterator<CamIterator>(new CamIterator);
    lights = new TemplateIterator<LightIterator>(new LightIterator);
    
    lastSimTimerTime_sec = simGetTime_sec();
    
    mSoundManager = new SoundManager();
    mSoundPlayer = new SoundPlayer(mSoundManager);

    //scripter->ExecFile("phdefault.cfg"); too early to call from there...
}

void TestViewer::AddPostInitBindings()
{
    scripter->SetFunction("phempty",       (void*)ResetApp,             "",         this);
    
    scripter->SetFunction("nearPlane",     (void*)NearPlane,            "f",        camera);
    scripter->SetFunction("pointlight",    (void*)AddPointLight,        "fffiii",   view);
    scripter->SetFunction("nolights",      (void*)RemoveLights,         "",         view);
    
    scripter->SetFunction("setdt",         (void*)SetDt,                "f",        this);
    scripter->SetFunction("realtime",      (void*)RealTime,             "i",        this);
    scripter->SetFunction("dd",            (void*)DebugDisplay,         "i",        this);
    //scripter->SetFunction("tdd",         (void*)ToggleDebugDisplay,   "",         this);
    scripter->SetFunction("tdd",           (void*)ToggleDebugDisplay,   "s",        this);
    scripter->SetFunction("pobj",          (void*)ToggleDebugPrint,     "",         this);
    scripter->SetFunction("pdrawables",    (void*)TogglePrintDrawables, "",         this);
    scripter->SetFunction("pstats",        (void*)TogglePrintSimStats,  "",         this);
    scripter->SetFunction("smartdetect",   (void*)ToggleSmartCollDetect, "",        this);
    scripter->SetFunction("nis",           (void*)LoadNIS,              "s",        this);
    scripter->SetFunction("sim",           (void*)Sim,                  "",         this);
    scripter->SetFunction("ss",            (void*)SimN,                 "i",        this);
    scripter->SetFunction("resettrans",    (void*)resettrans,           "",         this);
    scripter->SetFunction("fullphysrb",    (void*)fullphysrb,           "",         this);
    scripter->SetFunction("fullphyschar",  (void*)fullphyschar,         "",         this);
    scripter->SetFunction("readlink",      (void*)readlink,             "",         this);
    scripter->SetFunction("phmovs",        (void*)PhMovScale,           "f",        this);
    scripter->SetFunction("addobj",        (void*)AddObject,            "s",        this);
    scripter->SetFunction("addcobj",       (void*)AddCollisionObject,   "s",        this);
    scripter->SetFunction("movobj",        (void*)TranslateObject,      "sfff",     this);
    scripter->SetFunction("rotobj",        (void*)RotateObject,         "sfff",     this);
    scripter->SetFunction("togglesound",   (void*)ToggleSound,          "",         this);
    scripter->SetFunction("toggleIK",      (void*)ToggleIK,             "s",        this);
    scripter->SetFunction("nextd",         (void*)NextDraw,             "",         this);
    scripter->SetFunction("run",           (void*)RunScript,            "s",        scripter);
    scripter->SetFunction("addaccessory",  (void*)AddAccessory,         "ssi",      this);
    scripter->SetFunction("dropaccessory", (void*)DropAccessory,        "ss",       this);
    scripter->SetFunction("timescale",     (void*)SetTimeScale,         "f",        NULL);
        
    //Usefull scripting methods to set parameters in sim objects
    
    //kinematic.
    scripter->SetFunction("addtrs",        (void*)AddTrs,               "sfff",     this);
    scripter->SetFunction("phmov",         (void*)SetTrs,               "sfff",     this);
    scripter->SetFunction("addrot",        (void*)AddRot,               "sfff",     this);
    scripter->SetFunction("setrot",        (void*)SetRot,               "sfff",     this);
    scripter->SetFunction("phscale",       (void*)PhScale,              "sf",       this);
    scripter->SetFunction("phspeed",       (void*)PhSpeed,              "sfff",     this);
    scripter->SetFunction("phrotspeed",    (void*)PhRotSpeed,           "sfff",     this);
    
    //Resting sensitivity and wake-up
    scripter->SetFunction("phrest",        (void*)PhRestingFactor,      "sfff",     this);
    scripter->SetFunction("wup",           (void*)PhWakeUp,             "s",        this);
    
    //Impulse properties.
    scripter->SetFunction("phE"  ,         (void*)PhSetRestCoef,        "sf",       this); //Coefficient of restitution
    scripter->SetFunction("phEt"  ,        (void*)PhSetTangRestCoef,    "sf",       this); //Coefficient of tangential friction
    scripter->SetFunction("phMu"  ,        (void*)PhSetFrictionCoef,    "sf",       this); //Coefficient of friction
    scripter->SetFunction("phRho"  ,       (void*)PhDensity,            "sf",       this); //Density for rigid body
    scripter->SetFunction("mueet"  ,       (void*)MuEEt,                "ss",       this); //All contact properties by name
    scripter->SetFunction("axisrev"  ,     (void*)SetAxisOfRevolution,  "si",       this); //All contact properties by name
    
    //Add an impulse on a rigid object.
    scripter->SetFunction("phimp",         (void*)PhImpulse,            "sffffff",  this);
    scripter->SetFunction("phimplink",     (void*)PhImpulseLink,        "ssfi",     this);
    scripter->SetFunction("phiklink",      (void*)PhIKLink,             "ssiiii" ,  this);
    
    //To add flexible object manually and to set flex properties
    scripter->SetFunction("addflex",       (void*)PhAddManFlex,         "iifi",     this);
    scripter->SetFunction("xprops",        (void*)PhFlexSetProps,       "ssff",     this); // See SetFlexProps
    
    //Add a kinematic constraint. (constraining, constrained ...)
    scripter->SetFunction("addcns",        (void*)PhAddConstraint,      "iiffffff", this);
    
    //Setting up the environement:
    scripter->SetFunction("setenv",        (void*)::SetEnvProps,        "sfff",     this);
    
    scripter->SetFunction("wind",          (void*)AddWind,              "ifff",     this);
    scripter->SetFunction("rigid",         (void*)ConvertToRigid,       "s",        this);
    
    scripter->SetFunction("export",        (void*)ExportScript,         "s",        this);
    scripter->SetFunction("dumpstuff",     (void*)DumpStuff,            "s",         0);

    scripter->SetFunction("setskelaxis"  , (void*)SetSkelAxis,          "siffff",   this);
    scripter->SetFunction("setskelrotaxis",(void*)SetSkelRotAxis,       "sifff",    this);
    scripter->SetFunction("detachjoint"  , (void*)DetachJoint,          "ssi",      this);
    scripter->SetFunction("inertialjoint", (void*)InertialJoint,        "siffff",   this);
    scripter->SetFunction("adddriver"    , (void*)AddDriver,            "siiff",    this);
    scripter->SetFunction("addvcm"       , (void*)AddVcm,               "siff",     this);
    scripter->SetFunction("setmes"       , (void*)SetMatrixEffectScale, "f",        0);
    scripter->SetFunction("maxcspasses"  , (void*)SetMaxPasses,         "i",        0);
    scripter->SetFunction("quickimp"     , (void*)QuickImpulse,         "i",        0);
        
    InstallSimLoaders();
    TestBed::AddPostInitBindings();
    
}

void TestViewer::ToggleSoundOn()
{ 
    if (mSoundOn)
        mSoundPlayer->RemoveAllSound();
    
    mSoundOn = !mSoundOn; 
}

void TestViewer::FileDrop(const char* name)
{
    int size = strlen(name);
    if (size < 4)
        return;
    
    if (strcmp(&name[size-3], "cfg") == 0)
    {
        RunScript(name, scripter);
    }
    else if (strcmp(&name[size-3], "p3d") == 0 || strcmp(&name[size-3], "P3D") == 0 || strcmp(&name[size-3], "P3d") == 0)
    {
        if (multiObjectMode)
        {
            Load(name, this);
        }
        else
        {
            LoadNIS(name, this);
            multiObjectMode = true;
        }
    }
}

rmt::Matrix* GetSimMatrix(Scenegraph::Node* nn)
{
    Scenegraph::Node* n = nn;
    
    while (n && dynamic_cast<Scenegraph::Transform*>(n) == NULL)
    {
        n = n->GetParent();
    }
    if (n)
        return static_cast<Scenegraph::Transform*>(n)->ModifyWorldTransform();
    else 
        return NULL;
}

void AddSceneGraphNode(Scenegraph::Node* node, TestViewer* testViewer)
{
    if (dynamic_cast<Scenegraph::Branch*>(node))
    {
        for (int i=0; i<(int)node->GetNumChildren(); i++)
        {
            AddSceneGraphNode(node->GetChild(i), testViewer);
        }
    }
    else if( dynamic_cast<Scenegraph::Drawable *>(node) )
    {
        Scenegraph::Drawable* drawnode = static_cast<Scenegraph::Drawable *>(node);
        tDrawable* draw = drawnode->GetDrawable();
        rmt::Matrix* rootMatrix = GetSimMatrix(drawnode);
        
        if( dynamic_cast<tCompositeDrawable *>(draw) )
        {
            tCompositeDrawable* cd = static_cast<tCompositeDrawable*>(draw);
            testViewer->SetDrawable(cd, rootMatrix);
        }
        else if( dynamic_cast<tPolySkin *>(draw) )
        {
            tPolySkin* skin = static_cast<tPolySkin*>(draw);
            testViewer->SetDrawable(skin, rootMatrix);
        }
        else if( dynamic_cast<tGeometry *>(draw) )
        {
            //SimNode *n = AddGeom(draw->GetUID(), rootMatrix, testViewer);
            tGeometry* geom = static_cast<tGeometry*>(draw);
            testViewer->SetDrawable(geom, rootMatrix);
            if (geom == NULL)
            {
                //AddFlexGeom(draw->GetUID(), rootMatrix, simgroup);
            }
        }
    }
}

void AddSceneGraph(Scenegraph::Scenegraph* sg, TestViewer* testViewer)
{
    AddSceneGraphNode(sg->GetRoot(), testViewer);
}

void TestViewer::SimLoad()
{
    // look for multi controller
    controller = NULL;
    NextMultiController();
    
    tLightGroup* lightGroup = dynamic_cast<tLightGroup*>(lights->First());
    if (lightGroup)
        lightGroup->SetViewLights(view);
    
    if (controller) 
        controller->Advance(0);
    
    // try to find a scene graph or tCompositeDrawable or tPolySkin or tDrawable
    Scenegraph::Scenegraph* sg = NULL;
    tCompositeDrawable* cd = NULL;
    tPolySkin* skin = NULL;
    tDrawable* dr = NULL;
    
    drawables->First();
    do
    {
        sg = dynamic_cast<Scenegraph::Scenegraph*>(drawables->Current());
        if (sg && currentSceneGraph == NULL)
        {
            sg->UpdateTransform();
            currentSceneGraph = sg;
            multiObjectMode = true;
            AddSceneGraph(sg, this);   
            return;
        }
    }
    while(drawables->Next());
    
    
    // find drawable
    // get transform from scenegraph
    
    
    
    drawables->First();
    do
    {
        cd = dynamic_cast<tCompositeDrawable*>(drawables->Current());
        if (cd)
            break;
    }
    while(drawables->Next());
    
    if (!cd)
    {
        drawables->First();
        do
        {
            skin = dynamic_cast<tPolySkin*>(drawables->Current());
            dr = dynamic_cast<tGeometry*>(drawables->Current());
            
            if (dr)
            {
                SetDrawable(dr);
                break;
            }
            else if (skin)
            {
                SetDrawable(skin);
                break;
            }
        }
        while(drawables->Next());
    }
    else
    {
        SetDrawable(cd);
    }
}

void TestViewer::SetDebugDisplay(const char* s, bool b)        
{ 
    if(strcmp(s, "Velocity") == 0)
    {
        debugVelocity = b;
    }
    else if(strcmp(s, "JointModifier") == 0)
    {
        debugJointModifier = b;
    }
    else if(strcmp(s, "Collision") == 0)
    {
        debugCollision = b;
    }
}

void TestViewer::NextCamera()
{
    if (camera == userCamera)
    {
        camera = (tCamera*)cameras->First();
    }
    else
    {
        camera = (tCamera*)cameras->Next();
    }
    
    if (camera == NULL)
    {
        camera = userCamera;
    }
    view->SetCamera(camera);
}

void TestViewer::NextMultiController()
{
    if (controller == NULL)
    {
        controllers->First();
    }
    else
    {
        controllers->Next();
    }
    do
    {
        controller = dynamic_cast<tMultiController*>(controllers->Current());
        if (controller)
            break;
    }
    while(controllers->Next());

//    if (controller == NULL)
//        controller = p3d::find<tFrameController>("PTRN_Motion_Root");
    if (controller)
        controller->SetCycleMode(FORCE_CYCLIC);

}

void TestViewer::NextDrawable()
{
    if (multiObjectMode)
    {
        if (UserObject::GetNumUserObjects() > 0)
        {
            currentUserObjectIndex ++;
            if (currentUserObjectIndex >= UserObject::GetNumUserObjects())
                currentUserObjectIndex = 0;
        }
    }
    else
    {
        P3DASSERT(UserObject::GetNumUserObjects() <= 1);
        
        tDrawable* next = (tDrawable*)drawables->Next();
        if (next == NULL)
            next = (tDrawable*)drawables->First();
        
        if (next)
        {
            if (UserObject::GetNumUserObjects() == 1 && next->GetUID() == UserObject::GetUserObject(0)->uid)
                return;
            else
                SetDrawable(next);
        }
    }
}

void TestViewer::SetDrawable(tDrawable* inDrawable, rmt::Matrix* inExtTransform)
{
    if (!multiObjectMode)
        ResetAll(false);
    
    if (controller)
    {
        controller->SetFrame(0);
    }
    
    if (!multiObjectMode)
    {
        Scenegraph::Scenegraph* sg = dynamic_cast<Scenegraph::Scenegraph*>(inDrawable);
        if (sg)
        {
            sg->UpdateTransform();
            currentSceneGraph = sg;
            multiObjectMode = true;
            AddSceneGraph(sg, this);   
        }
        else
            AddUserObject(inDrawable, inDrawable->GetUID(), 0, inExtTransform);
    }
    else
        AddUserObject(inDrawable, inDrawable->GetUID(), 0, inExtTransform);
    
    lastSimTimerTime_sec = simGetTime_sec();
}

void TestViewer::MoveObject(tUID uid, const rmt::Vector& newpos)
{
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        if (UserObject::GetUserObject(i)->uid == uid)
        {
            rmt::Matrix m = UserObject::GetUserObject(i)->transform;
            m.Row(3) = newpos;
            UserObject::GetUserObject(i)->MoveObject(m);
        }
    }
}

void  TestViewer::RotObject(tUID uid, float x, float y, float z)
{
    Matrix rot;
    rot.FillRotateXYZ(x, y, z);
    
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        if (UserObject::GetUserObject(i)->uid == uid)
        {
            rmt::Matrix m = UserObject::GetUserObject(i)->transform;
            CopyRotation(rot, m);
            UserObject::GetUserObject(i)->MoveObject(m);
        }
    }
}

void  TestViewer::SwitchIK(tUID uid)
{
    bool currentActivity;
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {      
        if ( UserObject::GetUserObject(i)->uid == uid)
        {
            for(int j=0; j<UserObject::GetUserObject(i)->mIKDriverList.GetSize(); j++)
            {
                currentActivity = UserObject::GetUserObject(i)->mIKDriverList[j]->IsEnabled();
                UserObject::GetUserObject(i)->mIKDriverList[j]->SetIsEnabled(!currentActivity);
            }
        }
    }
}
void TestViewer::AddUserObject(const char* name, int type, rmt::Matrix* inExtTransform, int inArea)
{
    multiObjectMode = true;

    SimStats::ResetPeakTimes();
    
    tUID uid = tEntity::MakeUID(name);
    
    tDrawable* drawable = NULL;
    drawables->First();
    tEntity* first = drawables->First();
    
    while (drawables->Current())
    {
        if (drawables->Current()->GetUID() == uid)
        {
            drawable = (tDrawable*)drawables->Current();
            break;
        }
        else
        {
            drawables->Next();
            if (drawables->Current() == first) // should not need to do that?!?!?!?
                break;
        }
    }
    //if (drawable) allows adding user object that has no drawable associated with them
    {
        AddUserObject(drawable, uid, type, inExtTransform);
    }
}

void TestViewer::AddUserObject(tDrawable* inDrawable, tUID inUID, int type, rmt::Matrix* inExtTransform, int inArea)
{
    InitSimulation();
    
    
    if (UserObject::GetNewUserObjects(inDrawable, inUID, type, inExtTransform))
    {
        currentUserObjectIndex++;
    }
    if (controller == NULL)
        NextMultiController();
}

void TestViewer::AddAccessoryToChar(const char* accessoryName, const char* toCharacter, int atJoint)
{ 

    UserObject* character = UserObject::FindUserObject(tEntity::MakeUID(toCharacter));
    if( !UserObject::FindUserObject( tEntity::MakeUID(accessoryName) ) )
    {
        AddUserObject(accessoryName, 0);
    }    
    character->AddAccessory(accessoryName, atJoint);
    
}

void TestViewer::DropProp(const char* accessory, const char* character)
{
    UserObject* actor = UserObject::FindUserObject(tEntity::MakeUID(character) );
    actor->DropProp( accessory );

}

void TestViewer::InitSimulation()
{
    if (!sim::SimulationInitialized())
    {
        sim::InitializeSimulation(sim::MetersUnits);
        SetDrawVolumeMethod(DrawVolumeShape);
    }

    float collisionDistanceCGS = 2.0f; // cm
    
    SimEnvironment::SetCollisionDistanceCGS(collisionDistanceCGS);
    
    if (!collisionManager)
    {
        collisionManager = CollisionManager::GetInstance();
        collisionManager->AddRef();
        
        collisionManager->SetCollisionManagerAttributes(CM_DetectIfMoving | CM_SolveAll);
        
        P3DASSERT(mMyCollisionSolverAgent == NULL);
        mMyCollisionSolverAgent = new AICollisionSolverAgent();
        mMyCollisionSolverAgent->AddRef();
        collisionManager->GetImpulseBasedCollisionSolver()->SetCollisionSolverAgent(mMyCollisionSolverAgent);
    }
}

void TestViewer::UpdateAI(float dt_sec)
{
    static bool first = true;
    if (first)
    {
        first = false;
        scripter->ExecFile("phdefault.cfg");
    }

    if (controller)
    {
        controller->Advance(dt_sec*1000.0f, true);
    }
    
    totalSimTime_sec += dt_sec;

    if (SimEnvironment::GetCurrentDefaultSimEnvironment() && SimEnvironment::GetCurrentDefaultSimEnvironment()->Wind())
    {
        SimEnvironment::GetCurrentDefaultSimEnvironment()->Wind()->UpdateWind(totalSimTime_sec);
    }

    UserObject::UpdateAllUserObject(dt_sec, totalSimTime_sec);

    if(mMyCollisionSolverAgent && mSoundPlayer && mSoundOn) {
        mSoundPlayer->UpdateSounds(mMyCollisionSolverAgent->GetCollisionAnalyserData());
    }
}

//-------------------------------------------------------------------
void TestViewer::Render(float badtime_ms)
{
    static float timeToSimAndDisplay_sec = 0; // remembers the last time required for sim+display
    float newtimertime_sec = simGetTime_sec();
    bool dosim = true;

    totalAppTime_sec += (newtimertime_sec - lastSimTimerTime_sec);

    float elapsedTime_sec = (totalAppTime_sec - totalSimTime_sec) * time_scale;

    if (!realTime)
    {
        if (elapsedTime_sec + timeToSimAndDisplay_sec < simtimestep_sec)
        {
            /*
            char buf[255];
            sprintf(buf, "time: %f %f\n", elapsedTime_ms, timeToSimAndDisplay_sec);
            OutputDebugString(buf);
            */
            dosim = false;
        }
        elapsedTime_sec = simtimestep_sec;
    }
    if (elapsedTime_sec < VERY_SMALL)
        dosim = false;
    
    p3d::context->BeginFrame();
    view->BeginRender();
    
    if (camera == userCamera)
    {
        rmt::Matrix objectMatrix;
        objectMatrix.Identity();
        mouse->GetMatrix(&objectMatrix);
        p3d::stack->Multiply(objectMatrix);
    }


    mGrid->Display();
    
    if (phmouse && dosim)
        DragPhObject(elapsedTime_sec);
    
    char buf[255];
    int v = 0;
    
    if (phmouse)
        sprintf(buf, "time: %0.3f s, simdt: %0.2f ms, move obj", totalSimTime_sec, elapsedTime_sec*1000.0f);
    else if (realTime)
        sprintf(buf, "realtime: %0.3f s, simdt(rt): %0.2f ms", totalSimTime_sec, elapsedTime_sec*1000.0f);
    else
        sprintf(buf, "fixtime: %0.3f s, simdt: %0.2f ms", totalSimTime_sec, elapsedTime_sec*1000.0f);
    
    p3d::pddi->DrawString(buf, 10, v, tColour(127,200,230));
    
    v += 15;
    v += 15;
    
    bool loop = false;
    
    if (controller)
    {
        sprintf(buf, "MultiController: %s", controller->GetName());
        p3d::pddi->DrawString(buf, 10, v, tColour(127,200,230));
        float prevframe = controller->GetFrame();
        loop = (prevframe > controller->GetFrame() ? true : false);
    }
    else
    {
        sprintf(buf, "MultiController: none");
        p3d::pddi->DrawString(buf, 10, v, tColour(127,200,230));
    }
    
    if (dosim)
    {
        if ( updateCount || alltime )
        {
            UpdateAI(elapsedTime_sec);
            updateCount--;
        }
        else if (CollisionManager::GetInstance()->GetCollisionManagerAttributes() & CM_SolveAll)
        {
            CollisionManager::GetInstance()->DetectCollision(elapsedTime_sec, 0);
        }
    }

    if (UserObject::GetNumUserObjects() == 0)//> 1)
    {
        // test here
        static bool first = true;

        if (first)
        {
            first = false;

            /*
            if (!SimulationInitialized())
            {
                InitSimulation();
            }

            rmt::Vector p1(341.080f, -0.653656f, 260.085f), 
                        ax10(0, 0.00555167f, -0.999985f),
                        ax11(-1.0f, 0.0, 0),
                        ax12(0, 1.0f, 0),
                        len(4.0f, 4.0f, 0.5f);
            rmt::Vector p2(341.939f, -0.130390f, 264.459f);
            
            p2 = p2 - p1;
            p1.Clear();

            CollisionVolume* v1 = new OBBoxVolume(p1, ax10, ax11, ax12, len.x, len.y, len.z);
            SimState* ss1 = SimState::CreateSimState(v1, "obj1");
            ss1->GetCollisionObject()->SetIsStatic(false);
            CollisionVolume* v2 = new SphereVolume(p2, 	0.377400f);
            SimState* ss2 = SimState::CreateSimState(v2, "obj2");
            ss2->GetCollisionObject()->SetIsStatic(false);

            UserObject::CreateNewUserObject(ss1);
            UserObject::CreateNewUserObject(ss2);
            multiObjectMode = true;
            currentUserObjectIndex = 0;
            */

            /*
            if (!SimulationInitialized())
            {
                //InitializeSimulation(MetersUnits);
                InitSimulation();
            }

            rmt::Vector p1(-24.553f, 24.1643f, 96.2099f), ax1(0.736753f, 0.000838044f, 0.676161f);
            rmt::Vector p2(-21.5795f, 25.0338f, 98.5907f), ax2(0f, 1f, 0f);
            
            p2 = p2 - p1;
            p1.Clear();

            CollisionVolume* v1 = new CylinderVolume(p1, ax1, 2.31039f, 1.47253f);
            SimState* ss1 = SimState::CreateSimState(v1, "obj1");
            ss1->GetCollisionObject()->SetIsStatic(false);
            CollisionVolume* v2 = new CylinderVolume(p2, ax2, 0.550000f, 0.3f);
            SimState* ss2 = SimState::CreateSimState(v2, "obj2");
            ss2->GetCollisionObject()->SetIsStatic(false);

            UserObject::CreateNewUserObject(ss1);
            UserObject::CreateNewUserObject(ss2);
            multiObjectMode = true;
            currentUserObjectIndex = 0;
            */
            /*
            #ifdef COLLECT_PAIR_COLLISION_HISTORY
            sim::CollisionManager::GetCurrentInstance()->GetCollisionDetector()->SetPairCollisionInfoHolder(
                UserObject::GetUserObject(0)->simState->GetCollisionObject(),
                UserObject::GetUserObject(1)->simState->GetCollisionObject() );

            #endif
            */
        }
    }

    if (simStatsDisplay)
    {
        SimStats::DisplayStats();
    }

    Display();
    
    view->EndRender();
    console->Display();
    p3d::context->EndFrame(false);

    if(screenshot)
    {
        tTargaHandler* targa = new tTargaHandler;
        tImage32* image = new tImage32;
        image->SetSize(p3d::display->GetWidth(), p3d::display->GetHeight());

        p3d::display->Screenshot((pddiColour*)image->GetColourChannel(), p3d::display->GetWidth() * p3d::display->GetHeight() * 4);
        
        char filename[128];
        sprintf(filename, "screenshot %.4d.tga", shotNumber);
        
        targa->SaveImage(image, filename);
        image->Release();
        targa->Release();
        shotNumber++;
    }

    p3d::context->SwapBuffers();

    if (dosim)
        timeToSimAndDisplay_sec = simGetTime_sec() - lastSimTimerTime_sec;
    lastSimTimerTime_sec = newtimertime_sec;
}

int TestViewer::GetDebugIndex()
{
    return GetDebugVelocity() + 2*GetDebugJointModifier() + 4*GetDebugVcm();
}

void TestViewer::Display()
{
    char buf[255];
    int v = 60;
    
    if (UserObject::GetNumUserObjects() == 0)
    {
        if (drawables->Current())
        {
            sprintf(buf, "No SimObject available for: %s", drawables->Current()->GetName());
            p3d::pddi->DrawString(buf, 10, v, tColour(127,200,230));
        }
    }
    
    if (currentSceneGraph)
        currentSceneGraph->Display();
    
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        UserObject::GetUserObject(i)->Display();
        
        if (GetDebugPrint())
        {
            tColour c(127,200,230);
            
            char objectName[64];
            char type[8];
            char simActivity[16];
            char ikActivity[16];
            
            if (UserObject::GetUserObject(i)->drawable)
            {
                strcpy(objectName, UserObject::GetUserObject(i)->drawable->GetName());
            }
            else
            {
                strcpy(objectName, "NoDrawable");
            }
            
            if (UserObject::GetUserObject(i)->HasSimulatedObject())
            {
                strcpy(type, "(dyn)");
            }
            else
            {
                strcpy(type, "");
            }
            
            if (UserObject::GetUserObject(i)->Simulating())
            {
                strcpy(simActivity, "simulating");
            }
            else
            {
                strcpy(simActivity, "static");
            }
            if(UserObject::GetUserObject(i)->mIKDriverList.GetSize() > 0)
            {
                if(UserObject::GetUserObject(i)->mIKDriverList[0]->IsEnabled())
                    strcpy(ikActivity, "ik on");
                else 
                    strcpy(ikActivity, "ik off");
            }
            else
            {
                strcpy(ikActivity, "");
            }
            sprintf(buf, "UserObject %d: %s %s %s %s", i, objectName, type, simActivity, ikActivity);
            
            if (i == currentUserObjectIndex)
                c.SetGreen(250);
            p3d::pddi->DrawString(buf, 10, v, c);
            v += 15;
            
            if (dynamic_cast<SimStateFlexible*>(UserObject::GetUserObject(i)->simState))
            {
                if (i == currentUserObjectIndex)//To many things to display, so display only for the selected object.
                { 
                    ConditionParams params = (dynamic_cast<SimStateFlexible*>(UserObject::GetUserObject(i)->simState))->GetFlexibleObject()->mPsyst->GetParams();
                    float extD = (dynamic_cast<SimStateFlexible*>(UserObject::GetUserObject(i)->simState))->GetFlexibleObject()->mPsyst->mExtDensity;
                    
                    sprintf(buf, "FLXf k1df=%-6.1lf b1df=%-6.1lf b2df=%-6.1lf s2df=%-6.1lf w1=%-4.3lf w2=%-4.3lf", params.Stretch1Dkf, params.Bend1Dkf, params.Bend2Dkf, params.Shear2Dkf, params.Wind1DKf, params.Wind2DKf);
                    p3d::pddi->DrawString(buf, 10, v, c);
                    v += 15;
                    
                    sprintf(buf, "FLXd k1dd=%-6.1lf b1dd=%-3.1lf b2dd=%-3.1lf s2dd=%-3.1lf extd=%-5.3lf", params.Stretch1Dkd, params.Bend1Dkd, params.Bend2Dkd, params.Shear2Dkd, extD);
                    p3d::pddi->DrawString(buf, 10, v, c);
                    v += 15;
                }
            }
        }
        
        if (GetDebugDisplay())
        {
            UserObject::GetUserObject(i)->DebugDisplay(GetDebugIndex());
        }
    }
    
    if (GetPrintDrawables() && drawables->Current())
    {
        tDrawable* curdrawable = (tDrawable*)drawables->Current();
        drawables->Next();
        
        v = 60;
        
        do 
        {
            sprintf(buf, "%s", drawables->Current()->GetName());
            p3d::pddi->DrawString(buf, 500, v, tColour(127,200,230));
            v += 15;
        } 
        while (drawables->Next(true) != curdrawable);
    }
    
    if (phmouse && UserObject::GetNumUserObjects() > 0)
    {
        UserObject* uo = UserObject::GetUserObject(currentUserObjectIndex);
        if (uo->drawable)
        {
            rmt::Sphere sphere;
            uo->drawable->GetBoundingSphere(&sphere);
            rmt::Vector p;
            uo->transform.Transform(sphere.centre, &p);
            dLine3(p, sphere.radius, tColour(0, 255, 0));
        }
    }

    if (UserObject::GetNumUserObjects() > 0 && collisionManager && debugCollision)
    {
        // display up to 10 collision info
        for (int i=0; i<collisionManager->GetCollisionList()->GetSize() && i < 10; i++)
        {
            if (false) // enable to print collision content
            {
                // debug collision printout here
                v += 15;
                Collision cc = collisionManager->GetCollisionList()->GetAt(i);
                sprintf(buf, "a:%s b:%s  d = %f, n = %f %f %f", cc.mCollisionObjectA->GetName(), cc.mCollisionObjectB->GetName(), cc.mDistance, cc.mNormal.x, cc.mNormal.y, cc.mNormal.z);
                p3d::pddi->DrawString(buf, 10, v, tColour(0, 255, 0));
                
                if (false) // enable to test that points are on volume's surface
                {
                    rAssert(TestPointOnSurf(cc.mCollisionObjectA->GetCollisionVolume(), cc.GetPositionA(), false));
                    rAssert(TestPointOnSurf(cc.mCollisionObjectB->GetCollisionVolume(), cc.GetPositionB(), false));
                }
            }
        }
        DisplayCollisions(collisionManager);
        DisplayCollisionObjects(collisionManager);
        //DisplayCollisionObjectPairs(collisionManager);
    }
}

void TestViewer::DragPhObject(float dt_sec)
{
    P3DASSERT (phmouse);
    
    if (currentUserObjectIndex < 0)
        return;
    
    if (!mouseButtonDown[0] && !mouseButtonDown[2])
        return;
    
    Matrix m = UserObject::GetUserObject(currentUserObjectIndex)->GetTransform();
    
    if (mouseButtonDown[0])
    {
        if (!mouseButtonDown[2])
            m.Row(3).Add(Vector(-phmovescale*float(storedMouseDx), phmovescale*float(storedMouseDy), 0));
        else
            m.Row(3).Add(Vector(0, 0, phmovescale*float(storedMouseDy)));
    }
    else if (mouseButtonDown[2])
    {
        static float scale = 0.0025f;
        Matrix mtmp;
        mtmp.Identity();
        mtmp.FillRotateYZX(-scale*float(storedMouseDy), 0, scale*float(storedMouseDx));
        
        Vector trans = m.Row(3);
        trans.Scale(-1.0f);
        m.Row(3) = trans;
        m.Mult(mtmp);
        trans.Scale(-1.0f);
        m.Row(3) = trans;
    }
    
    UserObject::GetUserObject(currentUserObjectIndex)->MoveObject(m, dt_sec);
    
    /*
    the mouse drag method is not called every iteration. consequence: draging an object 
    at constant speed is impossible since every iteration that MouseDrag is not called, 
    the object is not moved. To fix this problem we stored the lasst mouse move and use 
    it a maximum of maxUseStored iteration before resetting it. The object now moves 
    smoothly. I don't know if this value of maxUseStored is appropriate for every computer.
    */
    
    lastStored++;
    static int maxUseStored = 6;
    if (lastStored > maxUseStored)
        StoreMouseDrag(0, 0);
}

void TestViewer::MousePress(int button)
{
    mouseButtonDown[button] = true;
    mouse->Press(button);
    
    StoreMouseDrag(0, 0);
}

void TestViewer::MouseRelease(int button)
{
    StoreMouseDrag(0, 0);
    if (phmouse && 0)//todo(mic) : Remove this.
        DragPhObject(); // this will reset the object's speed to 0

    mouseButtonDown[button] = false;
    mouse->Release(button);
    
}

void TestViewer::MouseDrag(int dx, int dy)
{
    if (phmouse)
        StoreMouseDrag(dx, dy);
    else
        mouse->Drag(dx, dy);
}

void TestViewer::StoreMouseDrag(int dx, int dy)
{
    storedMouseDx = dx;
    storedMouseDy = dy;
    lastStored = 0;
}

void TestViewer::KeyPress(unsigned key)
{
    if (commandLine->IsActive())
    {
        switch (key)
        {
        case 4209: // F2
            phmouse = !phmouse;
            break;
            
        case 4216: // F9
            screenshot = true;
            break;
            
        case 4218: // F11
            screenshot = false;
            break;
            
        case 4135: // rigth arrow
            NextDrawable();
            break;
            
        case 4136: // down arrow
            NextMultiController();
            break;
            
        case 4130: // page down
            NextCamera();
            break;
            
        default:
            TestBed::KeyPress(key);
            break;
        }
    }
    else
    {
        switch (key)
        {
        case 4209: // F2
            phmouse = !phmouse;
            break;
            
        case 4216: // F9
            screenshot = true;
            break;
            
        case 4218: // F11
            screenshot = false;
            break;
            
        case 4135: // rigth arrow
            NextDrawable();
            break;
            
        case 4136: // down arrow
            NextMultiController();
            break;
            
        case 4130: // page down
            NextCamera();
            break;
            
        case 100: // d
            debugDisplay = !debugDisplay;
            break;
            
        case 112: // p
            ResetTransform();
            break;
            
        case 114: // r
            SetRealTime(!realTime);
            break;
            
        case 115: // s
            FullPhysicsNodes();
            break;
            
        default:
            TestBed::KeyPress(key);
            break;
        }
    }
}

void TestViewer::SetSimtimestep(float f)
{ 
    simtimestep_sec = f/1000.0f; 
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        UserObject::GetUserObject(i)->ResetRestingDetector();
    }
}

void TestViewer::ResetTransform()
{
    if (controller)
    {
        controller->Advance(0);
    }
    
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        UserObject::GetUserObject(i)->ResetToAI();
    }
}

void TestViewer::FullPhysicsNodes()
{
    for (int i=0; i<UserObject::GetNumUserObjects(); i++)
    {
        UserObject::GetUserObject(i)->SetControlToSim();
    }
}

void TestViewer::FullPhysicsArticluatedNodes()
{
}

void TestViewer::GetObjectByName( const char* in_name, UserObjectArray &io_userObjectArray)
{
    if( in_name == NULL )
        return;
    
    if( strncmp( "-", in_name, 1 ) == 0 )
    {
        //Use the current selected node.
        if (currentUserObjectIndex>=0)
            io_userObjectArray.Add(UserObject::GetUserObject(currentUserObjectIndex));
        return;
    }
    else if( strncmp( "all", in_name, 3 ) == 0 )
    {
        for (int i=0; i<UserObject::GetNumUserObjects(); i++)
        {
            io_userObjectArray.Add(UserObject::GetUserObject(i));
        }
    }
    else if( ::isdigit(in_name[0]) ) 
    {
        long num;
        char *stop;
        num = strtol(in_name, &stop, 10 );
        if (num < UserObject::GetNumUserObjects())
            io_userObjectArray.Add(UserObject::GetUserObject(num));
    }
    else
        return;
}

void TestViewer::SetObjectVectorValue( UserObjectValueType in_type, const char* in_name, float x, float y, float z )
{
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    Vector value(x, y, z);
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->SetVectorValue(UserObjectValueType(in_type), value);
    }
}

void TestViewer::SetObject2VectorValue   
(
 UserObjectValueType in_type, 
 const char* in_name, 
 float in_px, float in_py, float in_pz, 
 float in_impx, float in_impy, float in_impz 
 )
{
    
    Vector pos(in_px, in_py, in_pz);
    Vector imp(in_impx, in_impy, in_impz );
    
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->Set2VectorValue(in_type, pos, imp);
    }
}

void TestViewer::SetObjectFloatValue( UserObjectValueType in_type, const char* in_name, float val )
{
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->SetFloatValue(in_type, val);
    }
}

void TestViewer::SetObjectState( UserObjectValueType in_type, const char* in_name )
{
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->SetState(in_type);
    }
}

void TestViewer::SetObjectProps( const char* in_name, const char* in_nameProps)
{
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->SetProps(in_nameProps);
    }

}

void TestViewer::SetFlexProps(const char* in_name, const char* in_propName, float in_val1, float in_val2)
{
    UserObjectArray ObjectArray;
    
    GetObjectByName( in_name, ObjectArray );
    
    for( int i=0 ; i<ObjectArray.GetSize() ; i++ )
    {
        ObjectArray[i]->SetFlexProps(in_propName, in_val1, in_val2);
    }
}

void TestViewer::AddManFlex(int m, int n, float size, int inType, bool addCollision)
{
    InitSimulation(); // make sure the simmanager and collmanager are created
    UserObject* newobj = UserObject::AddManFlex(m, n, size, inType, addCollision);
    if (newobj)
    {
        // fix particle 0
        newobj->SetFlexProps("fixp", 0, 0);

        currentUserObjectIndex ++;
        multiObjectMode = true;
    }
}

void TestViewer::AddConstraint( int constraining, int constrained, float x1, float y1, float z1, float x2, float y2, float z2 )
{
    P3DASSERT(false); // not supported for now

    P3DASSERT(constraining>=0 && constraining<UserObject::GetNumUserObjects());
    if ( !(constraining>=0 && constraining<UserObject::GetNumUserObjects()) )
        return;
    P3DASSERT(constrained>=0 && constrained<UserObject::GetNumUserObjects());
    if ( !(constrained>=0 && constrained<UserObject::GetNumUserObjects()) )
        return;
    
    SimState *state1, *state2;
    state1 = UserObject::GetUserObject(constraining)->simState;
    state2 = UserObject::GetUserObject(constrained)->simState;
    
    LocalTarget target1, target2;
    
    switch( state1->GetSimulatedObject()->Type() )
    {
    case FlexibleObjectType:
        if ( (int)x1 >= ((FlexibleObject*)state1->GetSimulatedObject())->mPsyst->mNbp )
        {
            P3DASSERTMSG(0,"Invalid flexible target index","");
            return;
        }
        target1.SetIndex((int)x1);
        break;
    case RigidObjectType:
    case ArticulatedObjectType:
    default:
        P3DASSERTMSG(0,"Case not supported","");
        return;
    }
    switch( state2->GetSimulatedObject()->Type() )
    {
    case RigidObjectType:
        {
            Vector v(x2,y2,z2);
            target2.SetOffset(v);
        }
        break;
    case ArticulatedObjectType:
    case FlexibleObjectType:
    default:
        P3DASSERTMSG(0,"Case not supported","");
        return;
    }
    
    //AddConstraint(state1,&target1,state2,&target2); need to add that somewhere...
    P3DASSERT(collisionManager);
    collisionManager->RemovePair(state1->GetCollisionObject(), state2->GetCollisionObject());
}

void TestViewer::SetEnvProps( const char *props_name, float in_val1, float in_val2, float in_val3 )
{
    if (SimEnvironment::GetCurrentDefaultSimEnvironment())
    {
        if (strcmp(props_name,"colldist")==0 )
        {
            SimEnvironment::SetCollisionDistanceCGS(in_val1);
        }
        if (strcmp(props_name,"gravity")==0 )
        {
            SimEnvironment::GetCurrentDefaultSimEnvironment()->SetGravityCGS(in_val1, in_val2, in_val3);
        }
    }
}

void TestViewer::RememberFile(const char* fileName)
{
    int size = strlen(fileName);
    if (size < 4)
        return;

    bool p3dFile = (strcmp(&fileName[size-3], "p3d") == 0 || strcmp(&fileName[size-3], "P3D") == 0 || strcmp(&fileName[size-3], "P3d") == 0);
    if (nbLoadedFiles < 20 && p3dFile)
    {
        strcpy(loadedFiles[nbLoadedFiles], fileName);
        nbLoadedFiles++;
    }
}
