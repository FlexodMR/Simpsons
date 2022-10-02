/*===========================================================================
    coverage.hpp - PDDI test harness

    29-Oct-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#if defined(WIN32) && defined(_DEBUG) && !defined(_XBOX)
#include <stdio.h>
#include "windows.h"
#endif

#include "coverage.hpp"
#include "coverapp.hpp"
#include "viewercamera.hpp"

#include <radmath/radmath.hpp>

#include "simcommon/simutility.hpp"
#include "simcommon/simenvironment.hpp"
#include "simcommon/simulatedobject.hpp"
#include "simcollision/collisiondisplay.hpp"
#include "simcollision/collisionmanager.hpp"
#include "simcollision/collisionanalyser.hpp"
#include "simcommon/simenvironment.hpp"
#include "simcommon/simwind.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <radtime.hpp>

//#define FORCE_COLLISION_ANALYSER

static float MAX_TIME_STEP_sec = 0.0167f;
static bool USE_FIX_TIME_STEP = true;

RadicalMathLibrary::Vector CoverageTest::defCameraPos;

CoverageTest::CoverageTest()
{
    artPath[0] = 0;
}

void CoverageTest::SetArtPath(const char* path)
{
    strncpy(artPath, path, 256);
    int lastCharIdx = strlen(artPath)-1;
    if(lastCharIdx >= 0 && artPath[lastCharIdx] == '/')
    {
        artPath[lastCharIdx] = 0;
    }
}

void CoverageTest::FillPath(const char* name, char* path)
{
    sprintf(path, "%s/%s", artPath, name);
}

bool CoverageTest::Load(const char* file)
{
    char fullPath[512];
    sprintf(fullPath, "%s/%s", artPath, file);
    return p3d::load(fullPath);
}

void CoverageTest::SetupSection()
{
    /*
    p3d::inventory->AddSection(GetName());
    p3d::inventory->SelectSection(GetName());
    p3d::inventory->SetCurrentSectionOnly(true);
    */
}

void CoverageTest::DisplayHelpText()
{
    p3d::pddi->DrawString(GetHelpText(), 10, 10);
}

UpdateInfo CoverageTest::DoTimeTest(float dt, float seconds, tView *view, InfoScreen *infoScreen)
{
    return DoTimeTest(dt, (int)(seconds / dt), view, infoScreen);
}

UpdateInfo CoverageTest::DoTimeTest(float dt, int steps, tView *view, InfoScreen *infoScreen)
{
    UpdateInfo info;
    Setup();
    unsigned startTime = radTimeGetMicroseconds();
    for(int i = 0; i < steps; i++) {
        UpdateInfo tempInfo = Update(dt);
        info += tempInfo;

        if(view) {
            //draw the info screen for this test
            p3d::context->BeginFrame();
            view->BeginRender();
            p3d::stack->Push();

            Display();

            if(infoScreen)
                infoScreen->Display();

            p3d::stack->Pop();
            view->EndRender();
            p3d::context->EndFrame(true);
        }
    }
    unsigned endTime = radTimeGetMicroseconds();

    //fixup for inaccuracies in the timers - prevent really big negative values
    if(startTime > endTime)
        startTime = endTime;

    float totalTime = (endTime - startTime) / 1000000.0f;
    info.mOtherTime = totalTime - (info.mSimTime + info.mCollisionTime);
    if(info.mOtherTime < 0)
        info.mOtherTime = 0;

    CleanUp();
    return info;
}

//-------------------------------------------------------------------
bool PhysicsTest::sReloadObjectsBetweenTests = false;
int PhysicsTest::sDefaultObject = 1;

void PhysicsTest::Reset()
{
    p3d::inventory->RemoveAllElements();
    sim::ResetSimulation();
}


PhysicsTest::PhysicsTest()
:
mNumObjects(2),
mUserObject(NULL),
mCollisionManager(NULL)
{
    for(int i = 0; i < cPhysicsTestMaxNames; i++) {
        mP3DFilesToLoad[i] = NULL;
        mDrawableNames[i] = NULL;
        mDrawable[i] = NULL;
    }
    mP3DFilesToLoad[0] = "art//simwall.p3d";
    mP3DFilesToLoad[1] = "art//simcylinder.p3d";
    mP3DFilesToLoad[2] = "art//simcrate.p3d";
    mP3DFilesToLoad[3] = "art//simcapsule.p3d";
    mP3DFilesToLoad[4] = "art//simsphere.p3d";
    mDrawableNames[0] = "boardo";
    mDrawableNames[1] = "Cylinder01";
    mDrawableNames[2] = "pCubeShape2";
    mDrawableNames[3] = "Capsule01";
    mDrawableNames[4] = "Sphere01";
    mController = NULL;
}

PhysicsTest::~PhysicsTest()
{
    if(mUserObject) {
        delete [] mUserObject;
        mUserObject = NULL;
    }

    if (mCollisionManager)
        mCollisionManager->Release();

    if(sReloadObjectsBetweenTests) 
    {
        p3d::inventory->RemoveAllElements();
        sim::ResetSimulation();
    }
}

void PhysicsTest::LoadArt()
{
    if(!sReloadObjectsBetweenTests)
        return;

    for(int i = 0; i < cPhysicsTestMaxNames; i++) {
        if(!mP3DFilesToLoad[i])
            break;
        p3d::load(mP3DFilesToLoad[i]);
    }
}

void PhysicsTest::InitUserObjects()
{
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));
    mUserObject[1].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));

    rmt::Matrix matrix;
    matrix.Identity();
    matrix.Row(3).y = 0.01f;
    mUserObject[0].MoveObject(matrix, 0.0f);
    matrix.Row(3).y = 2.0f;
    mUserObject[1].SetControlToSim();
    mUserObject[1].MoveObject(matrix, 0.0f);
}

void PhysicsTest::Setup()
{
    if (!sim::SimulationInitialized())
    {
        sim::InitializeSimulation(sim::CentimetersUnits);
    }

    if(mUserObject)
        delete [] mUserObject;

    mUserObject = new UserObject[mNumObjects];
    P3DASSERT(mUserObject);

    float collisionDistanceCGS = 2.0f; // cm

    //load p3d files
    LoadArt();

    //initialize collision/simulation objects
    sim::SimEnvironment::SetCollisionDistanceCGS(collisionDistanceCGS);
    
    if (mCollisionManager == NULL)
    {
        mCollisionManager = sim::CollisionManager::GetInstance();
        mCollisionManager->AddRef();
    }

#ifdef FORCE_COLLISION_ANALYSER
    mCollisionManager->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent()->EnableCollisionAnalyser();
#endif

    //find drawables for all loaded objects
    int i;
    for(i = 0; i < cPhysicsTestMaxNames; i++) {
        if(mDrawableNames[i])
            mDrawable[i] = p3d::find<tDrawable>(mDrawableNames[i]);
        else
            mDrawable[i] = NULL;
    }

    //initialize UserObjects
    InitUserObjects();

    //add all UserObjects to the simulation
    for(i = 0; i < mNumObjects; i++) 
    {
        if(mUserObject[i].simState) 
        {
            if(mUserObject[i].simState->GetCollisionObject())
            {
                mCollisionManager->AddCollisionObject(mUserObject[i].simState->GetCollisionObject());
            }
        }
    }
    mGameTime = 0.0f;
}

void PhysicsTest::CleanUp()
{
#ifdef FORCE_COLLISION_ANALYSER
    mCollisionManager->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent()->DisableCollisionAnalyser();
#endif

    for(int i = 0; i < mNumObjects; i++) {
        mUserObject[i].Reset();
    }

    if(sReloadObjectsBetweenTests) {
        p3d::inventory->RemoveAllElements();
        sim::ResetSimulation();
        mCollisionManager->Release();
        mCollisionManager = NULL;
    }
    else
    {
        mCollisionManager->ResetAll();
    }

    if(mUserObject) {
        delete [] mUserObject;
        mUserObject = NULL;
    }
    mController = NULL;
}

UpdateInfo PhysicsTest::Update( float deltaTime_sec )
{
    if (USE_FIX_TIME_STEP)
    {
        deltaTime_sec = MAX_TIME_STEP_sec;
    }
    else
    {
        static float previousTime = 0;
        float newTime = float(radTimeGetMilliseconds());
        deltaTime_sec = rmt::Clamp(0.0f, newTime - previousTime, MAX_TIME_STEP_sec);
        previousTime = newTime;
    }

    if (mController)
        mController->Advance(deltaTime_sec*1000.0f); // needs msec

    mGameTime += deltaTime_sec;

    if (sim::SimEnvironment::GetCurrentDefaultSimEnvironment() && sim::SimEnvironment::GetCurrentDefaultSimEnvironment()->Wind())
    {
        sim::SimEnvironment::GetCurrentDefaultSimEnvironment()->Wind()->UpdateWind(mGameTime);
    }

    PreUpdate(deltaTime_sec, mGameTime);
    UpdateSimulation(deltaTime_sec, mGameTime);
    PostUpdate(deltaTime_sec, mGameTime);
    UpdateCollision(deltaTime_sec, mGameTime);

#ifdef FORCE_COLLISION_ANALYSER
    mCollisionManager->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent()->GetCollisionAnalyserData();
#endif

    return UpdateInfo();
}

void PhysicsTest::PreUpdate(float deltaTime_sec, float gameTime)
{
}

void PhysicsTest::UpdateSimulation(float deltaTime_sec, float gameTime)
{
    for(int i = 0; i < mNumObjects; i++)
        mUserObject[i].Update(deltaTime_sec);
}

void PhysicsTest::UpdateCollision(float deltaTime_sec, float gameTime)
{
    mCollisionManager->DetectCollision(deltaTime_sec, gameTime);
    mCollisionManager->SolveCollision(deltaTime_sec, gameTime);
}

void PhysicsTest::PostUpdate(float deltaTime_sec, float gameTime)
{
}

void PhysicsTest::Display()
{
    for(int i = 0; i < mNumObjects; i++)
        mUserObject[i].Display();
}

Vector PhysicsTest::GetCameraPos()
{
//  return Vector(2, 1, 2);
    return Vector(-6, 3, -6);
}

void PhysicsTest::LoadP3DFiles()
{
    if(sReloadObjectsBetweenTests)
        return;

    p3d::inventory->RemoveAllElements();

    char *p3dFiles[] = {
        "art/simwall.p3d",
        "art/simcylinder.p3d",
        "art/simcrate.p3d",
        "art/simcapsule.p3d",
        "art/simsphere.p3d"
    };

    int size = sizeof(p3dFiles) / sizeof(p3dFiles[0]);
    for(int i = 0; i < size; i++) {
        p3d::load(p3dFiles[i]);
    }
}

void PhysicsTest::NextObjectType()
{
    sDefaultObject++;
    if(sDefaultObject == 5)
        sDefaultObject = 1;
}

//-------------------------------------------------------------------
InfoScreen::InfoScreen()
:mDoingTimeTests(false),
mTimingWhichTest(0),
mNumTests(1),
mTestName(NULL),
mBenchmark(NULL)
{
}

void InfoScreen::Display()
{
    int line = 24;
    int lineoffs = 16;
    if(mDoingTimeTests) {
        char buf[128];
        p3d::pddi->DrawString("Benchmarking Physics Modules", 25, line += lineoffs, tColour(200,200,200));
        line += lineoffs;
        sprintf(buf, "  TOTAL PROGRESS: %d of %d (%0.0f%%)", mTimingWhichTest, mNumTests, (float)mTimingWhichTest / mNumTests * 100.0f);
        p3d::pddi->DrawString(buf, 25, line += lineoffs, tColour(200,200,200));
        line += lineoffs;
        sprintf(buf, "    Currently testing \"%s\"", mTestName);
        p3d::pddi->DrawString(buf, 25, line += lineoffs, tColour(200,200,200));
        sprintf(buf, "      %d of %d (%0.0f%%)", mTimingWhichSubTest, mNumSubTests, (float)mTimingWhichSubTest / mNumSubTests * 100.0f);
        p3d::pddi->DrawString(buf, 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("    Parameters:", 25, line += lineoffs, tColour(200,200,200));
        for(int i = 0; i < mBenchmark->NumParams(); i++) {
            BenchmarkParameter *param = mBenchmark->GetParam(i);
            sprintf(buf, "      %s: %s", param->GetName(), param->GetAsString());
            p3d::pddi->DrawString(buf, 25, line += lineoffs, tColour(200,200,200));
        }
    }
    else {
        p3d::pddi->DrawString("Physics Benchmarking Tests", 25, line += lineoffs, tColour(200,200,200));
        line += lineoffs;
        p3d::pddi->DrawString("The purpose of this program is to test the performance of the ", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("physics libraries on all platforms (PC, PS2, XBox, GameCube).", 25, line += lineoffs, tColour(200,200,200));
#ifdef WIN32
        line += lineoffs;
        p3d::pddi->DrawString("  Use left and right to switch through the tests", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Use the mouse to rotate around the tests as they are running", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Press \"T\" to run the benchmark", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Press \"N\" to switch object types", 25, line += lineoffs, tColour(200,200,200));
#endif
#ifdef PS2EE
        line += lineoffs;
        p3d::pddi->DrawString("  Use L1 and R1 to switch through the tests", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Use the D-Pad to rotate around the tests as they are running", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Use the 4 primary buttons to pan around the tests as they are running", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Use L2 and R2 to zoom in/out of the tests as they are running", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Press \"START\" to run the benchmark", 25, line += lineoffs, tColour(200,200,200));
        p3d::pddi->DrawString("  Press \"SELECT\" to switch object types", 25, line += lineoffs, tColour(200,200,200));
#endif
    }
}

void InfoScreen::StartTimeTests(int numTests)
{
    mDoingTimeTests = true;
    mTimingWhichTest = 0;
    mNumTests = numTests;
}

void InfoScreen::ExecutingTimeTest(
    int whichTest, int whichSubTest, int numSubTests,
    const char *testname, Benchmark *benchmark)
{
    mTimingWhichTest = whichTest;
    mTimingWhichSubTest = whichSubTest;
    mNumSubTests = numSubTests;
    mTestName = testname;
    mBenchmark = benchmark;
}

void InfoScreen::EndTimeTests()
{
    mDoingTimeTests = false;
    mTestName = NULL;
}

//-------------------------------------------------------------------
BenchmarkingTest::BenchmarkingTest()
:mBenchmark(NULL)
{
    SetNumObjects(0);
}

void BenchmarkingTest::SetBenchmark(Benchmark *benchmark)
{
    mBenchmark = benchmark;
    if(!mBenchmark) {
        SetNumObjects(0);
        return;
    }

    BenchmarkParameter *param = mBenchmark->GetParam("Number of Objects");
    if(param)
        SetNumObjects(param->GetAsInt());
    else
        SetNumObjects(1);
}

void BenchmarkingTest::InitUserObjects()
{
    if(!mBenchmark)
        return;

    int scenarioType = 1;
    bool convertToRigidBody = false;
    BenchmarkParameter *param;

    param = mBenchmark->GetParam("Max Passes");
    if(param) {
        int maxPasses = param->GetAsInt();
        mCollisionManager->GetImpulseBasedCollisionSolver()->SetMaxPasses(maxPasses);
    }

    param = mBenchmark->GetParam("Collision Analyser Enabled");
    if(param) {
        sim::CollisionSolverAgent *myAgent = mCollisionManager->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent();
        bool enableAnalyser = param->GetAsBool();
        if(enableAnalyser)
            myAgent->EnableCollisionAnalyser();
        else
            myAgent->DisableCollisionAnalyser();
    }

    param = mBenchmark->GetParam("Scenario Type");
    if(param) {
        char *scenario = param->GetAsString();
        if(strcmp(scenario, "Random Cloud") == 0)
            scenarioType = 1;
        else if(strcmp(scenario, "Vertical Stack") == 0)
            scenarioType = 2;
    }

    param = mBenchmark->GetParam("Convert to Rigid Body");
    if(param)
        convertToRigidBody = param->GetAsBool();

    //create floor
    char *groundName = mBenchmark->GetParam("Ground Name")->GetAsString();
    mUserObject[0].Init(p3d::find<tGeometry>(groundName), tEntity::MakeUID(groundName));

    unsigned randseed = 0;
    param = mBenchmark->GetParam("Use Time As Random Seed");
    if(param)
        randseed = param->GetAsBool() ? radTimeGetMicroseconds() : 0;
    rmt::Randomizer rand(randseed);

    //create falling objects
    for(int i = 1; i < mNumObjects; i++) {
        char *objectName = mBenchmark->GetParam("Object Names")->GetAsString();
        bool ret = mUserObject[i].Init(p3d::find<tDrawable>(objectName), tEntity::MakeUID(objectName));
        P3DASSERTMSG(ret, "Error Init()ializing userobject", "");

        rmt::Matrix matrix;
        matrix.Identity();
        switch(scenarioType) {
        case 1:
            matrix.Row(3).x = rand.FloatSigned() * 4.0f;
            matrix.Row(3).y = rand.Float() * 4.0f + 2.0f;
            matrix.Row(3).z = rand.FloatSigned() * 4.0f;
            break;
        case 2:
            matrix.Row(3).x = 0.0f;
            matrix.Row(3).y = i * 4.0f + 2.0f;
            matrix.Row(3).z = 0.0f;
            break;
        }
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);

        if(convertToRigidBody && mUserObject[i].articulated)
            mUserObject[i].ConvertToRigid();

        param = mBenchmark->GetParam("Y Rotation");
        if(param) {
            float yrot = param->GetAsFloat();
            mUserObject[i].SetAngularSpeed(rmt::Vector(0.0f, yrot, 0.0f));
        }
    }

    // obsolete
    param = mBenchmark->GetParam("SimulationManager::DoCollisions()");

    param = mBenchmark->GetParam("Wind Enabled");
    if(param) {
        if(param->GetAsBool()) {
            sim::SimWind *wind = new sim::SimWind();
            wind->SetWindSeedCGS(rmt::Vector(2000.0f, 0.0f, 0.0f));
            sim::SimEnvironment::GetDefaultSimEnvironment()->SetWind(wind);
        }
    }
}

UpdateInfo BenchmarkingTest::Update(float deltaTime_sec)
{
    mGameTime += deltaTime_sec;

    PhysicsTest::PreUpdate(deltaTime_sec, mGameTime);

    unsigned startSimTime = radTimeGetMicroseconds();
    PhysicsTest::UpdateSimulation(deltaTime_sec, mGameTime);
    unsigned endSimTime = radTimeGetMicroseconds();

    PhysicsTest::PostUpdate(deltaTime_sec, mGameTime);

    unsigned startColTime = radTimeGetMicroseconds();
    PhysicsTest::UpdateCollision(deltaTime_sec, mGameTime);
    unsigned endColTime = radTimeGetMicroseconds();


    //do the collision analyser calculations
    sim::CollisionSolverAgent *agent = mCollisionManager->GetImpulseBasedCollisionSolver()->GetCollisionSolverAgent();
    if(agent->CollisionAnalyserEnabled()) {
        sim::CollisionAnalyserDataPList& data = agent->GetCollisionAnalyserData();
        for(int i = 0; i < data.GetSize(); i++)
            data[i]->Processed();
    }

    //fixup for inaccuracies in the timers - prevent really big negative values
    if(startSimTime > endSimTime)
        startSimTime = endSimTime;
    if(startColTime > endColTime)
        startColTime = endColTime;

    return UpdateInfo(
        (endSimTime - startSimTime) / 1000000.0f,
        (endColTime - startColTime) / 1000000.0f);
}

//-------------------------------------------------------------------
LoadTest::LoadTest()
{
    /*
    mP3DFilesToLoad[0] = "art//simwall.p3d";
    mP3DFilesToLoad[1] = "art//simcylinder.p3d";
    mDrawableNames[0] = "boardo";
    mDrawableNames[1] = "Cylinder01";
    */
}

void LoadTest::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    for(int i = 1; i < mNumObjects; i++) {
        mUserObject[i].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).y = i * 2 + 2.0f;
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);
    }
}

//-------------------------------------------------------------------
JumbleTest::JumbleTest()
{
    mP3DFilesToLoad[0] = "art//simwall.p3d";
    mP3DFilesToLoad[1] = "art//simcylinder.p3d";
    mP3DFilesToLoad[2] = "art//simcrate.p3d";
    mP3DFilesToLoad[3] = "art//simcapsule.p3d";
    mP3DFilesToLoad[4] = "art//simsphere.p3d";
    mDrawableNames[0] = "boardo";
    mDrawableNames[1] = "Cylinder01";
    mDrawableNames[2] = "pCubeShape2";
    mDrawableNames[3] = "Capsule01";
    mDrawableNames[4] = "Sphere01";
    SetNumObjects(64);
}

void JumbleTest::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    rmt::Randomizer rand(0);
    //create falling objects
    for(int i = 1; i < mNumObjects; i++) {
        int index = 1 + rand.IntRanged(4);
        mUserObject[i].Init(mDrawable[index], tEntity::MakeUID(mDrawableNames[index]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = rand.FloatSigned() * 4.0f;
        matrix.Row(3).y = rand.Float() * 4.0f + 2.0f;
        matrix.Row(3).z = rand.FloatSigned() * 4.0f;
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);
    }
}

//-------------------------------------------------------------------
BowlTest::BowlTest()
{
    mP3DFilesToLoad[0] = "art//simwall.p3d";
    mP3DFilesToLoad[1] = "art//simcylinder.p3d";
    mP3DFilesToLoad[2] = "art//simcrate.p3d";
    mP3DFilesToLoad[3] = "art//simcapsule.p3d";
    mP3DFilesToLoad[4] = "art//simsphere.p3d";
    mDrawableNames[0] = "boardo";
    mDrawableNames[1] = "Cylinder01";
    mDrawableNames[2] = "pCubeShape2";
    mDrawableNames[3] = "Capsule01";
    mDrawableNames[4] = "Sphere01";
    SetNumObjects(64);
}

void BowlTest::InitUserObjects()
{
    /*
    rmt::Matrix matrix;
    matrix.Identity();
    */
    //create bowl
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    rmt::Randomizer rand(0);
    //create falling objects
    for(int i = 1; i < mNumObjects; i++) {
        int index = 1 + rand.IntRanged(4);
        mUserObject[i].Init(mDrawable[index], tEntity::MakeUID(mDrawableNames[index]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = rand.FloatSigned() * 4.0f;
        matrix.Row(3).y = rand.Float() * 4.0f + 2.0f;
        matrix.Row(3).z = rand.FloatSigned() * 4.0f;
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);
    }
}

//-------------------------------------------------------------------
StackTest::StackTest()
{
    mXSize = 4;
    mYSize = 4;
    mZSize = 4;
    SetNumObjects(1 + mXSize * mYSize * mZSize);
}

void StackTest::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 1.0f + 1.0f - mXSize / 2 + y*0.01f;
                matrix.Row(3).y = y * 1.0f + 1.0f;
                matrix.Row(3).z = z * 1.0f + 1.0f - mZSize / 2 + y*0.01f;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f);
                objectIndex++;
            }
        }
    }
}

//-------------------------------------------------------------------
BreakingStackTest::BreakingStackTest()
{
    mXSize = 4;
    mYSize = 4;
    mZSize = 4;
    SetNumObjects(2 + mXSize * mYSize * mZSize);
}

void BreakingStackTest::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 1.4f + 1.0f - mXSize / 2 + y*0.01f;
                matrix.Row(3).y = y * 1.4f + 1.5f;
                matrix.Row(3).z = z * 1.4f + 1.0f - mZSize / 2;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f);
                objectIndex++;
            }
        }
    }

    mUserObject[objectIndex].Init(mDrawable[4], tEntity::MakeUID(mDrawableNames[4]));
    rmt::Matrix matrix;
    matrix.Identity();
    matrix.Row(3).x = 0.0f;
    matrix.Row(3).y = 4.0f;
    matrix.Row(3).z = -6.0f;
    mUserObject[objectIndex].SetControlToSim();
    mUserObject[objectIndex].MoveObject(matrix, 0.0f);
    mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(0.0f, 0.0f, 10.0f));
}

//-------------------------------------------------------------------
//best performed with cylinders
StackTap::StackTap()
{
    mXSize = 1;
    mYSize = 2;
    mZSize = 1;
    SetNumObjects(2 + mXSize * mYSize * mZSize);
}

void StackTap::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 0.0f + 0.0f - mXSize / 2;
                matrix.Row(3).y = y * 1.05f + 1.0f;
                matrix.Row(3).z = z * 0.0f + 0.0f - mZSize / 2;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f);
                objectIndex++;
            }
        }
    }

    mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
    rmt::Matrix matrix;
    matrix.Identity();
    matrix.Row(3).x = 0.0f;
    matrix.Row(3).y = 1.0f;
    matrix.Row(3).z = -4.0f;
    mUserObject[objectIndex].SetControlToSim();
    mUserObject[objectIndex].MoveObject(matrix, 0.0f);
    mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(0.0f, 0.0f, 12.0f));
}


//-------------------------------------------------------------------
StackMultiTap::StackMultiTap()
{
    mXSize = 1;
    mYSize = 5;
    mZSize = 1;

    SetNumObjects(1+ 30 + mXSize * mYSize * mZSize);
}

/////////////////////////////////////////////////////
//A stack of objects is bombarded wiht objects, creates waivering tower
/////////////////////////////////////////////////////

void StackMultiTap::InitUserObjects()
{   
    int floor = 0;
    int cylinder =1;
    int box = 2;
    int capsule = 3;
    int ball = 4;

    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[box], tEntity::MakeUID(mDrawableNames[box]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 0.0f + 0.0f - mXSize / 2;
                matrix.Row(3).y = y * 1.2f + 1.0f;
                matrix.Row(3).z = z * 3.0f + 2.0f - mZSize / 2;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f);
                objectIndex++;
            }
        }
    }
    
    rmt::Matrix matrix;
    matrix.Identity();

    int maxProjectiles = 30;
    for(int numProjectiles = 0; numProjectiles < maxProjectiles; numProjectiles++) {
        mUserObject[objectIndex].Init(mDrawable[capsule], tEntity::MakeUID(mDrawableNames[capsule]));
        matrix.Row(3).x = 0.0f;
        matrix.Row(3).y = 1.00001f;
        matrix.Row(3).z = -4.0f - (numProjectiles * 2.0f);
        mUserObject[objectIndex].SetControlToSim();
        mUserObject[objectIndex].MoveObject(matrix, 0.0f);
        mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(0.0f, 0.0f, 14.0f+ (0.3f* numProjectiles)));
        objectIndex++;
    }
}

/////////////////////////////////////////////////////
//Many objects appear in a stack one spinning, angular mommentum should be transfered
// best performed with blocks
/////////////////////////////////////////////////////

FrictionSpin::FrictionSpin()
{
    mXSize = 1;
    mYSize = 10;
    mZSize = 1;
    SetNumObjects(1 + mXSize * mYSize * mZSize);
}

void FrictionSpin::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 0.0f + 0.0f - mXSize / 2;
                matrix.Row(3).y = y * 1.05f + 1.0f;
                matrix.Row(3).z = z * 0.0f + 0.0f - mZSize / 2;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f); 
                if(y == 2) {
                    mUserObject[objectIndex].SetAngularSpeed(rmt::Vector(0.0f, 160.0f, 0.0f));
                }
                objectIndex++;
            }
        }
    }
}

/////////////////////////////////////////////////////
//Many objects appear in a stack each spinning oposing directions, opposing spins should cancel out
// best performed with blocks
/////////////////////////////////////////////////////

CounterSpin::CounterSpin()
{
    mXSize = 1;
    mYSize = 10;
    mZSize = 1;
    SetNumObjects(1 + mXSize * mYSize * mZSize);
}

void CounterSpin::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    for(int x = 0; x < mXSize; x++) {
        for(int y = 0; y < mYSize; y++) {
            for(int z = 0; z < mZSize; z++) {
                mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
                rmt::Matrix matrix;
                matrix.Identity();
                matrix.Row(3).x = x * 0.0f + 0.0f - mXSize / 2;
                matrix.Row(3).y = y * 1.05f + 1.0f;
                matrix.Row(3).z = z * 0.0f + 0.0f - mZSize / 2;
                mUserObject[objectIndex].SetControlToSim();
                mUserObject[objectIndex].MoveObject(matrix, 0.0f);
                if(y % 2 == 0) {
                    mUserObject[objectIndex].SetAngularSpeed(rmt::Vector(0.0f, 60.0f, 0.0f));
                }
                else {
                    mUserObject[objectIndex].SetAngularSpeed(rmt::Vector(0.0f, -60.0f, 0.0f));
                }
                objectIndex++;
            }
        }
    }
}
/////////////////////////////////////////////////////
//Many object are forced into a focus
/////////////////////////////////////////////////////
Implossion::Implossion()
{
    mXSize = 30;
    mYSize = 15;
    mZSize = 30;
    SetNumObjects(1 + mXSize + mZSize + mYSize);
}

void Implossion::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //create falling objects
    int objectIndex = 1;
    int x = 0;
    int y = 0;
    int z = 0;
    for(z = 0; z < mZSize; z++) {
        mUserObject[objectIndex].SetControlToSim();
        if(z % 2 == 0) {
            mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
            rmt::Matrix matrix;
            matrix.Identity();
            matrix.Row(3).x = x * 0.0f + 0.0f;
            matrix.Row(3).y = y * 0.0f + 1.0f;
            matrix.Row(3).z = z * -1.0f + 0.0f;
            mUserObject[objectIndex].MoveObject(matrix, 0.0f);

            mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(0.0f, 0.0f, 10.0f));
        }
        else {
            mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
            rmt::Matrix matrix;
            matrix.Identity();
            matrix.Row(3).x = x * 0.0f + 0.0f;
            matrix.Row(3).y = y * 0.0f + 1.0f;
            matrix.Row(3).z = z * 1.0f + 0.0f;
            mUserObject[objectIndex].MoveObject(matrix, 0.0f);

            mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(0.0f, 0.0f, -10.0f));
        }
        objectIndex++;
    }
    z = 0;
    for(x = 0; x < mXSize; x++) {
        mUserObject[objectIndex].SetControlToSim();
        if(x % 2 == 0) {
            mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
            rmt::Matrix matrix;
            matrix.Identity();
            matrix.Row(3).x = x * -1.0f + 0.0f;
            matrix.Row(3).y = y * 0.0f + 1.0f;
            matrix.Row(3).z = z * 0.0f + 0.0f;
            mUserObject[objectIndex].MoveObject(matrix, 0.0f);

            mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(10.0f, 0.0f, 0.0f));
        }
        else {
            mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
            rmt::Matrix matrix;
            matrix.Identity();
            matrix.Row(3).x = x * 1.0f + 0.0f;
            matrix.Row(3).y = y * 0.0f + 1.0f;
            matrix.Row(3).z = z * 0.0f + 0.0f;
            mUserObject[objectIndex].MoveObject(matrix, 0.0f);

            mUserObject[objectIndex].SetLinearSpeed(rmt::Vector(-10.0f, 0.0f, 0.0f));
        }
        objectIndex++;
    }

    for(y = 0; y < mYSize; y++) {  
        mUserObject[objectIndex].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = x * 0.0f + 0.0f;
        matrix.Row(3).y = y * 2.0f + 1.0f;
        matrix.Row(3).z = z * 0.0f + 0.0f;
        mUserObject[objectIndex].SetControlToSim();
        mUserObject[objectIndex].MoveObject(matrix, 0.0f);
        objectIndex++;
    }
}
/////////////////////////////////////////////////////
//Random objects appaer with random velocites with random angular velocities
/////////////////////////////////////////////////////

Crazy::Crazy()
{
    rmt::Randomizer rand(0);
    //int index 

    int mXSize = 50 + rand.IntRanged(60);
    SetNumObjects(mXSize);
}

void Crazy::InitUserObjects()
{
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));
    rmt::Randomizer rand(0);

    //exploding objects
    for(int i = 1; i < mNumObjects; i++) {
        int index = 1 + rand.IntRanged(4);
        mUserObject[i].Init(mDrawable[index], tEntity::MakeUID(mDrawableNames[index]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = rand.FloatSigned() * 4.0f;
        matrix.Row(3).y = rand.Float() * 4.0f + 2.0f;
        matrix.Row(3).z = rand.FloatSigned() * 4.0f;
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);
        mUserObject[i].SetLinearSpeed(rmt::Vector(rand.FloatSigned() * 4.0f, rand.FloatSigned() * 4.0f, rand.FloatSigned() * 4.0f));
        mUserObject[i].SetAngularSpeed(rmt::Vector(rand.FloatSigned() * 4.0f, rand.FloatSigned() * 40.0f, rand.FloatSigned() * 40.0f));
    }
}
/////////////////////////////////////////////////////
Pyramid::Pyramid()
{
    rmt::Randomizer rand(0);
    //int index 

    mYSize = 4;
    int pDesign = 0;
    for(int y = mYSize+1 ; y >= 0; y--){
        pDesign += y;
    }
    SetNumObjects(1 + pDesign);
}

void Pyramid::InitUserObjects()
{   
    int objID = 1;
    int objCount = 1;
    int xLoc = 0;
    float yLoc = 0.0f;
    float xSpacer = 0.0f;
    int tier = mYSize;
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));
    rmt::Randomizer rand(0);


//  SETUP FOR Boxes
    for(objCount = 1; objCount < mNumObjects; objCount++) {
        mUserObject[objID].Init(mDrawable[2], tEntity::MakeUID(mDrawableNames[2]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = xLoc * 1.8f + xSpacer - (5.0f);
        matrix.Row(3).y = yLoc + 0.5f;//* x;
        matrix.Row(3).z = 0.0f;
        mUserObject[objID].SetControlToSim();
        mUserObject[objID].MoveObject(matrix, 0.0f);
        objID++;
        xLoc++;
        if(xLoc > tier) {
            tier--;
            xLoc = 0;
            xSpacer+= 0.9f;
            yLoc += 1.005f;
        }
    }

    /*  SETUP FOR CYLINDERS
    for(objCount = 1; objCount < mNumObjects; objCount++) {
        mUserObject[objID].Init(mDrawable[sDefaultObject], tEntity::MakeUID(mDrawableNames[sDefaultObject]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = xLoc * 0.55f + xSpacer - (mYSize / 4.0f);
        matrix.Row(3).y = yLoc + 0.0f;//* x;
        matrix.Row(3).z = 0.0f;
        mUserObject[objID].SetControlToSim();
        mUserObject[objID].MoveObject(matrix, 0.0f);
        objID++;
        xLoc++;
        if(xLoc > tier) {
            tier--;
            xLoc = 0;
            xSpacer+= 0.275f;
            yLoc += 1.0f;
        }
    }
    */
}

/******************************************************************************
Status: This simple test is incomplete, it is intened to make a 3d pyramid.
          This code is still in a debug state, the loop that places the blocks
          is flawed.

  Chris
*******************************************************************************/
Pyramid3d::Pyramid3d()
{
    rmt::Randomizer rand(0);
    //int index 

    mYSize = 2;
    int pDesign = 0;
    for(int y = mYSize ; y >= 0; y--){
        pDesign += y*y;
    }
    // SetNumObjects(1 + pDesign);

    SetNumObjects(10);
}

void Pyramid3d::InitUserObjects()
{   
    int objID = 1;
    int objCount = 1;
    float xLoc = 1.0f;
    float yLoc = 0.0f;
    float zLoc = 0.0f;
//  float xSpacer = 0.0f;
//  float zSpacer = 0.0f;
    int tier = mYSize;
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    //Pyramid
    for(int z = 1; z < 4; z++){
        for(int x = 1; x < 4; x++){
            mUserObject[objID].Init(mDrawable[2], tEntity::MakeUID(mDrawableNames[2]));
            rmt::Matrix matrix;
            matrix.Identity();
            matrix.Row(3).x = (float)(xLoc * 1.8  - (mYSize / 4.0f));
            matrix.Row(3).y = yLoc + 0.52f;
            matrix.Row(3).z = (float)(zLoc * 1.8  - (mYSize / 4.0f));
            mUserObject[objID].SetControlToSim();
            mUserObject[objID].MoveObject(matrix, 0.0f);
            objID++;

            xLoc = (float)x;
        }
        zLoc = (float)z;
    }
}

/******************************************************************************
Status: Wind does not appear to be functioning:
          The underlying code may be fine however i've been unable to set the
          vector for the wind, as such it has no force.

  Chris
*******************************************************************************/
WindConst::WindConst()
{
    rmt::Randomizer rand(0);
    //int index 

    mYSize = 4;
    int pDesign = 0;
    for(int y = mYSize+1 ; y >= 0; y--){
        pDesign += y;
    }
    SetNumObjects(1 + pDesign);
}

void WindConst::InitUserObjects()
{   
    int objID = 1;
    int objCount = 1;
    int xLoc = 0;
    float yLoc = 0.0f;
    float xSpacer = 0.0f;
    int tier = mYSize;

    sim::SimWind *wind = new sim::SimWind();
    //wind->mWindseed(1.0f,1.0f,1.0f);
    //wind->mWind(1.0f,1.0f,1.0f);
    wind->SetWindSeedCGS(rmt::Vector(56.0f,0.0f,60.f));
    //create floor
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));
    rmt::Randomizer rand(0);
    
    //initialize wind
    float collisionDistanceCGS = 2.0f;
    sim::SimEnvironment::SetCollisionDistanceCGS(collisionDistanceCGS);
    sim::SimEnvironment::GetDefaultSimEnvironment()->SetWind(wind);

    //exploding objects
//  SETUP FOR Boxes
    for(objCount = 1; objCount < mNumObjects; objCount++) {
        mUserObject[objID].Init(mDrawable[2], tEntity::MakeUID(mDrawableNames[2]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = xLoc * 1.8f + xSpacer - (4.0f);
        matrix.Row(3).y = yLoc + 0.5f;//* x;
        matrix.Row(3).z = 0.0f;
        mUserObject[objID].SetControlToSim();
        mUserObject[objID].MoveObject(matrix, 0.0f);
        objID++;
        xLoc++;
        if(xLoc > tier){
            tier--;
            xLoc = 0;
            xSpacer+= 0.9f;
            yLoc += 1.005f;
        }
    }
}

//-------------------------------------------------------------------
CharacterTest::CharacterTest()
{
    /*
    mP3DFilesToLoad[0] = "art//simwall.p3d";
    mP3DFilesToLoad[1] = "art//simcylinder.p3d";
    mP3DFilesToLoad[2] = "art//simcrate.p3d";
    mP3DFilesToLoad[3] = "art//simcapsule.p3d";
    mP3DFilesToLoad[4] = "art//simsphere.p3d";
    mDrawableNames[0] = "boardo";
    mDrawableNames[1] = "Cylinder01";
    mDrawableNames[2] = "pCubeShape2";
    mDrawableNames[3] = "Capsule01";
    mDrawableNames[4] = "Sphere01";
    */
    SetNumObjects(2);
}

void CharacterTest::InitUserObjects()
{
    /*
    rmt::Matrix matrix;
    matrix.Identity();
    */
    //create bowl
    mUserObject[0].Init(mDrawable[0], tEntity::MakeUID(mDrawableNames[0]));

    mController = p3d::find<tFrameController>("PTRN_Motion_Root");

    if (mController)
        mController->SetCycleMode(FORCE_CYCLIC);

    tDrawable *drawable = p3d::find<tDrawable>("Motion_Root");
    mUserObject[1].Init(drawable, tEntity::MakeUID("Motion_Root"));

    //sim::SimWind *wind = new sim::SimWindSinus();
    //wind->SetWindSeedCGS(rmt::Vector(2000.0f, 0.0f, 0.0f));
    //sim::SimEnvironment::GetDefaultSimEnvironment()->SetWind(wind);

    /*
    rmt::Randomizer rand(0);
    //create falling objects
    for(int i = 1; i < mNumObjects; i++) {
        int index = 1 + rand.IntRanged(4);
        mUserObject[i].Init(mDrawable[index], tEntity::MakeUID(mDrawableNames[index]));
        rmt::Matrix matrix;
        matrix.Identity();
        matrix.Row(3).x = rand.FloatSigned() * 4.0f;
        matrix.Row(3).y = rand.Float() * 4.0f + 2.0f;
        matrix.Row(3).z = rand.FloatSigned() * 4.0f;
        mUserObject[i].SetControlToSim();
        mUserObject[i].MoveObject(matrix, 0.0f);
    }
    */
}