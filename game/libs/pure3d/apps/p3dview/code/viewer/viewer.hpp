//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TESTBED_HPP
#define _TESTBED_HPP

#include <p3d/p3dtypes.hpp>
#include <string.h>
#include <utility/pointer.hpp>
#include <utility/smoother.hpp>
#include <utility/time.hpp>

const int AVERAGE_FRAMES = 32;

namespace Console {
    class Console;
    class ObjectScripter;
}

class tEntity;
class tDrawable;
class tDrawablePose;
class tContext;
class tView;
class tShader;
class tTexture;
class tFont;
class tAnimation;
class tFrameController;
class tCamera;
class tQuakeCam;
class tSprite;
class tLoadRequest;

class ViewerCamera;
class AnimManager;
class Grid;
class TestHarness;
class MessageWindow;
class Overlay;

class CollisionVolumeViewer;
class Lighting;
class Capture;

class Settings;
class Kernel;

class ViewerIterator;

class LightSelector;

//SRR2 Stuff
class Road;
class Intersection;
class RoadSegment;

namespace Console
{
    class ViewP3D;
    class QuickViewP3D;
}

class Viewer
{
public:
    Viewer(Kernel* k);
    ~Viewer();


    void Setup(void);
    void Display(float frameTime);
    void Shutdown(void);

    void AttachContext(tContext* context);
    void AttachConsole(Console::Console*);
    void Configure(Settings* settings, Console::ObjectScripter*);

    void Load(char*);
    void Flush(void);
    void LoadDone(tLoadRequest*);

    void SetConsoleBackground(char* name);

    void SetBackgroundImage(char*);

    void Move(float, float, float);
    void RotateX(float);
    void RotateY(float);
    void ResetRotation(void);

    void ViewMode(int);
    void SetDrawable(char*);
    void SetCamera(char*);
    void SetAnim(char*);
    void NextObj(void);
    void PrevObj(void);
    void NextAnim(void);
    void PrevAnim(void);
    void NextCam(void);
    void PrevCam(void);

    void NextAnimType(char*);
    void PrevAnimType(char*);
    void NextObjType(char*);
    void PrevObjType(char*);

    void AnimReset(void);
    void AnimStep(int);
    void AnimBind(void);

    void AutoCentre(void);

    void Gamma(float);

    void MakePoseController(char* name, char* animname);
    void MakePoseControllerAll(char* name);

    void SetParticleBlendRatio(float ratio);
    void IncParticleBlendRatio(void);
    void DecParticleBlendRatio(void);

    void EnableFog(int enable);

    void ToggleGrid(void);
    void ToggleOrigin(void);

    void ScrollInventoryUp(void);
    void ScrollInventoryDown(void);
    
    void PrintMessage(char* in);

    void WatchPose(bool);

private:
    void ShowInventory(void);
    
    void CompleteLoad(void);

    void DrawDebug3D(float frameTime);
    void DrawDebug2D(float frameTime);

    void DisplayShader(tShader* mat, tTexture* tex);
    void DisplayFont(tFont*);
    void DisplayDrawable(tDrawable* draw);
    void DisplayAnimation(tFrameController* anim, float time);

    //SRR2
    void DisplayRoad( Road* road );
    void DisplayIntersection( Intersection* intersection );
    void DisplayRoadSegment( RoadSegment* seg );

    void DisplayHelp(void);

    DumbPtr<tContext> context;

    RefPtr<tView> view;
    RefPtr<tCamera> camera;

    RefPtr<tQuakeCam> qcam;
    RefPtr<ViewerCamera> vcam;

    AutoPtr<CollisionVolumeViewer> collisionViewer;
    AutoPtr<Lighting> lighting;
    AutoPtr<Capture> capture;
    
    Console::Console* console;

    rmt::Matrix rotation, current;

    int lastInventoryShown;
    int showInventory;
    char nameMask[256];
    char typeMask[256];

    int playAnim;
    float animSpeed;
    bool animIntegerOnly;
    bool animForward;

    int coverage;

    char string[512];

    Grid* grid;

    tSprite* background;

    int box;

    int help;
    char* helpText;

    ViewerIterator* drawables;
    ViewerIterator* materials;
    ViewerIterator* textures;
    ViewerIterator* anims;
    ViewerIterator* cameras;
    ViewerIterator* fonts;
    ViewerIterator* particleSystems;
    //Srr2
    ViewerIterator* roads;
    ViewerIterator* intersections;
    ViewerIterator* segments;

    ViewerIterator* iterator;
    tEntity* objectOfInterest;
    tFrameController* controller;

    tShader* testMat;

    int averageTime;
    Smoother<float, AVERAGE_FRAMES> framerate;

    float animStepSize;

    int animAutoStep;
    
    int drawSkeleton;
    int drawPhysicsObjects;

    float particleBlendRatio;

    tColour backgroundColour;

    tColour fogColour;
    float   fogStart;
    float   fogEnd;

    Console::ViewP3D* consoleView;
    Console::QuickViewP3D* consoleQuickView;

    float fovX;
    float fovAspect;
    float nearPlane;
    float farPlane;

    bool forceFrustum;

    int multipleCount;
    float multipleSpread;

    float burnTime;

    bool geoOptimize;

    Kernel* kernel;

    unsigned heapLowWater;

    bool selectObject;
    bool selectAnim;
    bool selectCamera;
    bool selectLight;

    bool asyncLoad;

    bool canScrollInventoryUp;
    bool canScrollInventoryDown;
    bool showMessages;

    bool trackPose;
    unsigned trackedJointIndex;

    AutoPtr<MessageWindow> messageWindow;
    AutoPtr<Overlay> overlay;

    tColour shadowWash;

    Time loadStart;
    Time loadTime;

    char currentFile[512];

    unsigned polyCount;
    unsigned vertexCount;
    
    bool supressAllInfo;
    bool showOverlay;

    AutoPtr<LightSelector> lightSel;

    RefPtr<tLoadRequest> currentLoad;
};

#endif

