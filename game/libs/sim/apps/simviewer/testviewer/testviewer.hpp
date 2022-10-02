#ifndef _TESTVIEWER_HPP_
#define _TESTVIEWER_HPP_

#include "testbed.hpp"
#include "radmath/radmath.hpp"
#include "simcommon/tarray.hpp"
#include "simcollision/collisionmanager.hpp"

#include "aicollisionsolveragent.hpp"
#include "soundmanager.hpp"
#include "soundplayer.hpp"

class tDrawable;
class tFrameController;
class ViewerIterator;
class Grid;

#include "p3d/scenegraph/scenegraph.hpp"

#include "userobject.hpp"

//
// iterator class
//

class ViewerIterator
{
public:
    virtual ~ViewerIterator() {}
    virtual tEntity* Current(void) = 0;
    virtual tEntity* Next(bool loop = false) = 0;
    virtual tEntity* Prev(void) = 0;
    virtual tEntity* First(void) = 0;
};

class TestViewer : public TestBed
{
public:
    TestViewer(SimpleApp* app);
    ~TestViewer();
    
    // EventReceiver interface
    virtual void Render(float delta);
    
    virtual void MousePress(int button);
    virtual void MouseRelease(int button);
    virtual void MouseDrag(int dx, int dy);
    virtual void KeyPress(unsigned key);
    void Init();
    virtual void SetupMenu();
    virtual void RememberFile(const char* fileName);
    
    virtual void SimLoad();
    virtual void ResetAll(bool emptyInventory = true);
    
    virtual void NextDrawable();
    void NextMultiController();
    void NextCamera();
    virtual void SetDrawable(tDrawable* next, rmt::Matrix* inTransform = 0);
    void AddUserObject(tDrawable* drawable, tUID inUID, int type = 0, rmt::Matrix* inExtTransform = 0, int area = 0);
    void AddUserObject(const char* name, int type = 0, rmt::Matrix* inExtTransform = 0, int area = 0);
    void AddAccessoryToChar(const char* accessory, const char* toCharacter, int atJoint);
    void DropProp(const char* accessory, const char* character);
    void MoveObject(tUID uid, const rmt::Vector& dp);
    void RotObject(tUID uid, float x, float y, float z);
    void SwitchIK(tUID uid);
    
    sim::CollisionManager* GetCollisionManager() { return collisionManager; }
    
    void SetRealTime(bool b);
    void SetSimtimestep(float f);
    void Setphmovescale(float f)        { phmovescale = f; }
    void SetDebugDisplay(bool b)        { debugDisplay = b; }
    void SetDebugDisplay(const char* s, bool b);
    int  GetDebugDisplay()        const { return debugDisplay; }
    int  GetDebugDisplay(const char* s);
    int  GetDebugVelocity()       const { return debugVelocity; }
    int  GetDebugCollision()      const { return debugCollision; }
    int  GetDebugJointModifier()  const { return debugJointModifier; }
    int  GetDebugVcm()            const { return debugVcm; }
    int  GetDebugIndex();
    void SetDebugPrint(bool b)          { debugPrint = b; }
    int  GetDebugPrint()          const { return debugPrint; }
    void SetPrintDrawables(bool b)      { printDrawables = b; }
    int  GetPrintDrawables()      const { return printDrawables; }
    void ResetTransform();
    void FullPhysicsNodes();
    void FullPhysicsArticluatedNodes();
    void ToggleSoundOn();
    void SetSimStatsDisplay(bool b)     { simStatsDisplay = b; }
    bool GetSimStatsDisplay()     const { return simStatsDisplay; }
    
    void GetObjectByName( const char* in_name, UserObjectArray &io_simObjects);
    void SetObjectFloatValue( UserObjectValueType in_type, const char* in_name, float val );
    void SetObjectVectorValue( UserObjectValueType in_type, const char* in_name, float x, float y, float z );
    void SetObject2VectorValue( UserObjectValueType in_type, const char* in_name, float , float , float, float , float , float  );
    void SetObjectState( UserObjectValueType in_type, const char* in_name );
    void SetObjectProps( const char* in_name, const char* in_nameProps);
    void SetFlexProps(const char* in_name, const char* in_propName, float in_val1, float in_val2=0.0f);
    void AddManFlex(int m, int n, float size, int solverType, bool inCollision);
    void AddConstraint( int constraining, int constrained, float x1, float y1, float z1, float x2, float y2, float z2 );
    void SetEnvProps( const char *props_name, float in_val1, float in_val2, float in_val3 );
    void SetMaximumTimeStepScaleFactor( float in_val );
    
    virtual void FileDrop(const char* name);
    
    int debugVelocity;
    int debugCollision;
    int debugJointModifier;
    int debugVcm;

    char loadedFiles[20][128];
    int nbLoadedFiles;
    
protected:
    
    Scenegraph::Scenegraph* currentSceneGraph;
    
    virtual void AddPostInitBindings();
    virtual void Display();
    
    void InitSimulation();
    virtual void UpdateAI(float dt_ms);
    
    int currentUserObjectIndex;
    
    sim::CollisionManager* collisionManager;
    
    tFrameController* controller;
    
    bool mouseButtonDown[3];
    bool phmouse;
    
    virtual void DragPhObject(float dt_sec=0);
    void StoreMouseDrag(int dx, int dy);
    
    int storedMouseDx;
    int storedMouseDy;
    int lastStored;
    
    ViewerIterator* drawables;
    ViewerIterator* controllers;
    ViewerIterator* cameras;
    ViewerIterator* lights;
    
    bool realTime;
    float simtimestep_sec;
    float phmovescale;
    int debugDisplay;
    bool simStatsDisplay;
    
    int debugPrint;
    int printDrawables;
    
    tCamera* userCamera;
    
    bool screenshot;
    int shotNumber;
    
    bool multiObjectMode;
    
    AICollisionSolverAgent *mMyCollisionSolverAgent;
    SoundManager *mSoundManager;
    SoundPlayer *mSoundPlayer;
    bool mSoundOn;

    Grid *mGrid;
};

void ResetApp(TestViewer* app);


#endif
