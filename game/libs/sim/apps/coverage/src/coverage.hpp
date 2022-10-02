/*===========================================================================
    coverage.hpp - PDDI test cases

    29-Oct-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _COVERAGE_HPP
#define _COVERAGE_HPP

#include <string.h>
#include <p3d/pure3d.hpp>
#include <radmath/radmath.hpp>
#include "simcommon/simstate.hpp"
#include "simcollision/collisionmanager.hpp"
//#include <p3d/spotlight.hpp>

#include "configparam.hpp"
#include "userobject.hpp"
#include "benchmarkresults.hpp"

using namespace RadicalMathLibrary;

//forward declaration
class InfoScreen;
class tFrameController;

class CoverageTest
{
public:
    CoverageTest();
    virtual ~CoverageTest() {}
    virtual void Setup() {}
    virtual void ParseConfigParams(ConfigParam& param) {}
    virtual UpdateInfo Update( float deltaTime ) { return UpdateInfo(); }
    virtual void CleanUp() {}
    virtual void Display() = 0;
    virtual const char* GetName() = 0;
    virtual Vector GetCameraPos() { return defCameraPos; }
    void SetArtPath(const char* path);
    void SetupSection(void);
    static void SetDefCameraPos(Vector v) { defCameraPos = v; }
    void DisplayHelpText();

    UpdateInfo DoTimeTest(float dt, float seconds, tView *view, InfoScreen *infoScreen);
    UpdateInfo DoTimeTest(float dt, int steps, tView *view, InfoScreen *infoScreen);

protected:
    char artPath[256];
    bool Load(const char* file);
    void FillPath(const char* file, char* path);
    static Vector defCameraPos;
    
    virtual char* GetHelpText() { return "No Description"; }
};

// global function evil?  sure.
void DoQuad(tShader* shader, tTexture* tex, float x, float y, float z, float sx, float sy, pddiBlendMode mode);

//-------------------------------------------------------------------
// Expected result:
// API coverage:
const int cPhysicsTestMaxNames = 64;
class PhysicsTest : public CoverageTest
{
public:
    PhysicsTest();
    virtual ~PhysicsTest();

    virtual const char* GetName() { return "General Physics"; }
    virtual void LoadArt();
    virtual void InitUserObjects();
    virtual void Setup();
    virtual void CleanUp();
    virtual UpdateInfo Update( float deltaTime );
    virtual void PreUpdate(float deltaTime, float gameTime);
    virtual void UpdateSimulation(float deltaTime, float gameTime);
    virtual void UpdateCollision(float deltaTime, float gameTime);
    virtual void PostUpdate(float deltaTime, float gameTime);
    virtual void Display();
    virtual Vector GetCameraPos();

    void SetNumObjects(int num) {mNumObjects = num;}

    static void NextObjectType();

    static void LoadP3DFiles();

    static bool sReloadObjectsBetweenTests;
    static int sDefaultObject;
    static void Reset();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates a default SimulationManager.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }

    int mNumObjects;
    UserObject *mUserObject;
    char *mP3DFilesToLoad[cPhysicsTestMaxNames];
    char *mDrawableNames[cPhysicsTestMaxNames];
    tDrawable *mDrawable[cPhysicsTestMaxNames];
    float mGameTime;

    sim::CollisionManager *mCollisionManager;

    tFrameController* mController;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class InfoScreen : public PhysicsTest
{
public:
    InfoScreen();

    virtual const char* GetName() { return "Information Screen"; }
    virtual void Setup() {};
    virtual void CleanUp() {};
    virtual UpdateInfo Update( float deltaTime ) { return UpdateInfo(); }
    virtual void Display();

    void StartTimeTests(int numTests);
    void ExecutingTimeTest(
        int whichTest, int whichSubTest, int numSubTests,
        const char *testname, Benchmark *benchmark);
    void EndTimeTests();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }

    bool mDoingTimeTests;
    int mTimingWhichTest;
    int mNumTests;
    int mTimingWhichSubTest;
    int mNumSubTests;
    const char *mTestName;
    Benchmark *mBenchmark;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class BenchmarkingTest : public PhysicsTest
{
public:
    BenchmarkingTest();

    virtual const char* GetName() { return "Benchmark"; }
    void SetBenchmark(Benchmark *benchmark);
    virtual void InitUserObjects();
    virtual UpdateInfo Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }

    Benchmark *mBenchmark;
    bool mSimulationManagerDoCollisions;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class LoadTest : public PhysicsTest
{
public:
    LoadTest();

    virtual const char* GetName() { return "Collision Load-Testing"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class LightLoadTest : public LoadTest
{
public:
    LightLoadTest() {SetNumObjects(16);}

    virtual const char* GetName() { return "Light Collision Load-Testing"; }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class MediumLoadTest : public LoadTest
{
public:
    MediumLoadTest() {SetNumObjects(64);}

    virtual const char* GetName() { return "Medium Collision Load-Testing"; }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class HeavyLoadTest : public LoadTest
{
public:
    HeavyLoadTest() {SetNumObjects(256);}

    virtual const char* GetName() { return "Heavy Collision Load-Testing"; }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class JumbleTest : public PhysicsTest
{
public:
    JumbleTest();

    virtual const char* GetName() { return "Jumble of Objects"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class BowlTest : public PhysicsTest
{
public:
    BowlTest();

    virtual const char* GetName() { return "Collision Bowl"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class StackTest : public PhysicsTest
{
public:
    StackTest();

    virtual const char* GetName() { return "Stationary Object Collision Test"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class BreakingStackTest : public PhysicsTest
{
public:
    BreakingStackTest();

    virtual const char* GetName() { return "Breaking Stationary Object Collision Test"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};


//-------------------------------------------------------------------
// Expected result:
// API coverage:
class StackTap : public PhysicsTest
{
public:
    StackTap();

    virtual const char* GetName() { return "StackTap - Knock block from the bottom"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class StackMultiTap : public PhysicsTest
{
public:
    StackMultiTap();

    virtual const char* GetName() { return "StackMultiTap - Nudge block from the bottom, with multiple hits"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class FrictionSpin : public PhysicsTest
{
public:
    FrictionSpin();

    virtual const char* GetName() { return "FrictionSpin - Test sliding/rotational Friction"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class CounterSpin : public PhysicsTest
{
public:
    CounterSpin();

    virtual const char* GetName() { return "CounterSpin - Test opposing sliding/rotational Friction"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class Implossion : public PhysicsTest
{
public:
    Implossion();

    virtual const char* GetName() { return "Implosion - many objects meet at a focus"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class Crazy : public PhysicsTest
{
public:
    Crazy();

    virtual const char* GetName() { return "Crazy - Random Spins/velocities on random objects"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class Pyramid : public PhysicsTest
{
public:
    Pyramid();

    virtual const char* GetName() { return "Pyramid - Test rest detection via Pyramid"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};
//-------------------------------------------------------------------
// Expected result:
// API coverage:
class Pyramid3d : public PhysicsTest
{
public:
    Pyramid3d();

    virtual const char* GetName() { return "Pyramid3d - Test rest detection via Pyramid3d"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class WindConst : public PhysicsTest
{
public:
    WindConst();

    virtual const char* GetName() { return "WindConst - Constant wind blowing on a structure"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
    int mXSize, mYSize, mZSize;
};

//-------------------------------------------------------------------
// Expected result:
// API coverage:
class CharacterTest : public PhysicsTest
{
public:
    CharacterTest();

    virtual const char* GetName() { return "Character"; }
    virtual void InitUserObjects();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Creates many objects for collision.\n\
    API coverage:\n\
        sim::SimulationManager::GetInstance();";
    }
};

#endif /* _COVERAGE_HPP */
