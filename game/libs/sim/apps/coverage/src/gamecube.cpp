/*
 * Pure3D Trivial application Gamecube PC Emulator specific code
 *
 * Created 8-Feb-2000 Eric Honsch
 *
 */

#include <radthread.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radfile.hpp>

#include "coverapp.hpp"
#include "configparam.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d/pure3d.hpp>
#include <assert.h>

#include <dolphin.h>
#include <cstdlib>
#include <pool_alloc.h>

static void CPPInit(void);

#define HEAP_ID 0

static BOOL IsHeapInitialized = FALSE;


//-------------------------------------------------------------------
// GameCubeApp declaration of TrivialApp
class GameCubeApp
{
public:
    GameCubeApp();
    virtual ~GameCubeApp();

    virtual bool Init();
    virtual int Run();
    virtual void HandlePadMsg(int msg, PADStatus *status);

    void EnableRendering(bool enable) { }

private:
    CoverApp* renderer;

    // Pure3D core objects

    // Pure3D platform - all platform specific interfaces are in the
    // tPlatform class. For example, Pure3D initialisation which
    // differs between the PC, PS2 and Linux are found in here.
    tPlatform* platform;

    // Pure3D context - the context defines a running instance of Pure3D.
    // Each context gets it's own instance of PDDI, a matrix stack, and
    // an inventory.    Rendering and animation objects are associated with
    // a particular context.  Data cannot be shared across contexts.
    // There is generally no need for a game to have more than one
    // context.
    tContext* context;

    PADStatus controllers[PAD_MAX_CONTROLLERS];
    unsigned short prevbuttons[PAD_MAX_CONTROLLERS];

    bool displayHelp;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static GameCubeApp* app = NULL;

GameCubeApp::GameCubeApp()
{
    platform = NULL;
    context = NULL;
    displayHelp = false;
}

GameCubeApp::~GameCubeApp()
{
    delete renderer;
    renderer = NULL;

    if(context)
    {
        platform->DestroyContext(context);
        context = NULL;
    }
    if(platform)
    {
        tPlatform::Destroy(platform);
    }
}

bool GameCubeApp::Init()
{
    // Initialise Pure3D platform object.
    // This call differs between different platforms.   The Win32 version,
    // for example requires the application instance to be passed in.
    platform = tPlatform::Create();
    assert(platform);

    // Setup the type of controller we have, MUST do this before PADInit
//   PADSetSpec(PAD_SPEC_5);
    PADInit();

    ConfigParam config;
    config.Init( "config.txt", platform );

    // Initialiase the Pure3D context object.
    // We have to create on of these for every window, and for every PDDI
    // instance we use for rendering.  Since almost every application only
    // uses one window and PDDI library at a time, we one need to create one
    // context.
    tContextInitData init;
    init.bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    init.xsize       = 640;
    init.ysize       = 480;
    init.pal         = false;   // true for pal
    init.fieldmode   = false;   // true for interlaced display
    init.aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
    init.progressive = false;   // true for non-interlaced display

    // Create the context.
    context = platform->CreateContext(&init);
    assert(context);

    // Assign this context to the platform.
    platform->SetActiveContext(context);

    p3d::pddi->EnableStatsOverlay(true);

    // Create the Tutorial1 renderer
    renderer = new CoverApp;
    renderer->Init(config);

    renderer->InitBenchmarks("benchmark.cfg", platform);

    // Turn off some of the warnings spit out by the debug libs
    GXSetVerifyLevel(GX_WARN_MEDIUM);

    return true;
}

// Gamecube rendering loop
int GameCubeApp::Run()
{

    //static int frames = 0;
    while(1)
    {
        prevbuttons[0] = controllers[0].button;
        PADRead(controllers);
        PADClamp(controllers);
        if (controllers[0].err != 0) 
        {
            PADReset(PAD_CHAN0_BIT);
            PADRead(controllers);
            PADClamp(controllers);
            //printf("Resetting PAD0\n");
        }

        int msg = (int)((prevbuttons[0] ^ controllers[0].button) & controllers[0].button);
        HandlePadMsg(msg, &controllers[0]);

        //printf("%d, %d\n", controllers[0].button, msg);

        if(displayHelp)
        {
            renderer->DisplayHelp();
        }
        else
        {
            renderer->Render(16.67F); //ms
        }
    }
    return 0;
}

// Control pad message handling
void GameCubeApp::HandlePadMsg(int msg, PADStatus *status)
{

    float rotx = ((float) status->stickX) / 32.0F;
    float roty = ((float) status->stickY) / -32.0F;

    renderer->Rotate(-rotx, -roty);

    float panx = ((float) status->substickX) / 32.0F;
    float pany = ((float) status->substickY) / -32.0F;

    renderer->Pan(-panx, -pany);


    if (msg & PAD_BUTTON_LEFT)  ;

    if (msg & PAD_BUTTON_RIGHT) ;

    if (status->button & PAD_BUTTON_UP)     renderer->Zoom(1.5F);

    if (status->button & PAD_BUTTON_DOWN)   renderer->Zoom(-1.5F);

    if (msg & PAD_TRIGGER_Z)     displayHelp = !displayHelp;

    if (msg & PAD_TRIGGER_R)     renderer->NextTest();

    if (msg & PAD_TRIGGER_L)     renderer->PrevTest();

    if (msg & PAD_BUTTON_A) renderer->ResetTest();

    if (msg & PAD_BUTTON_B) renderer->NextObjectType();

    if (msg & PAD_BUTTON_X) ;

    if (msg & PAD_BUTTON_Y) ;

    if (msg & PAD_BUTTON_MENU)  //start button
    {
        renderer->DoTimeTests(0.033f, 4.0f);
    }
}





//-----------------------------------------------------------------------------
// Here, we create the application object, and call it's Run() method.
int main(int argc, char** argv)
{

    OSInit();
    DVDInit();
    VIInit();

    radThreadInitialize();
    radMemoryInitialize();
    radPlatformInitialize();
    radTimeInitialize();
    radFileInitialize(10, 10, RADMEMORY_ALLOC_DEFAULT);

    app = new GameCubeApp();
    app->Init();
    int returnCode = app->Run();
    delete app;

    radFileTerminate();
    radTimeTerminate();
    radPlatformTerminate();
    radMemoryTerminate();
    radThreadTerminate();

    return returnCode;
}

// The built in malloc & free don't work
extern "C"
{
void *malloc (unsigned int size)
{
    return OSAllocFromHeap(HEAP_ID, size);
}

void free(void *mem)
{
    if (mem != NULL) OSFreeToHeap(HEAP_ID, mem);
}

}

