/*
 * Pure3D Coverage test application
 *
 * Created 03-Nov-2000 Young (ytaeson@radical.ca)
 * Derived from Trivial
 *
 */

#include <simcommon/simstatearticulated.hpp>
#include "coverapp.hpp"
#include "viewercamera.hpp"
#include "harness.hpp"
#include "coverage.hpp"
#include "userobject.hpp"

CoverApp::CoverApp()
{
/*
#ifdef GCN
    //here's some stuff initializing for the Radical File Server
    //unfortunately at the time of this writing it doesn't work in
    //release mode (so it's not too useful really)
    radPlatformInitialize( );
    radDbgComTargetInitialize( HostIO );
#endif
*/

    view = NULL;
    camera = NULL;
    light = NULL;

    m_cycle = false;
    m_cycleDuration = 3000;

    m_grid = NULL;
}

CoverApp::~CoverApp()
{
    // Most Pure3D objects have protected destructors.  Instead of explicit
    // deletion of pointers, the Release() method is used.  If the reference
    // count of an object falls to zero, the object will be deleted, and
    // its memory freed.
    if(view)
    {
        view->Release();
    }

    if(camera)
    {
        camera->Release();
    }

    if(light)
    {
        light->Release();
    }

    if(m_grid)
    {
        m_grid->Release();
    }

    delete harness;
}

// Initialise Pure3D objects
void CoverApp::Init( ConfigParam& config )
{
    // The tView object represents the region of the frame buffer that we
    // are rendering unto.  Multiple view can be created for split/screen
    // effects.
    view = new tView;
    view->AddRef();

    // Each view must have a camera associated with it.  The tPointCamera
    // has a position, a target (look-at point), and a twist
    camera = new ViewerCamera();
    camera->AddRef();

    view->SetCamera(camera);
    camera->SetFarPlane(5000.0f);
    camera->SetTarget(Vector(0.0f, 0.0f, 0.0f));
    
    // Create an infinite-directional light.
    light = new tDirectionalLight;
    light->AddRef();

    // Attach the light to the view.
    view->AddLight(light);   

    m_grid = new Grid;
    m_grid->AddRef();

    // Call into PDDI to enable Z-buffering.
    p3d::pddi->EnableZBuffer(true);

    // This call installs chunk handlers for all the primary chunk types that
    // Pure3D supports. This includes textures, materials, geometries, and the like
    p3d::InstallDefaultLoaders();

    harness = new TestHarness;
    harness->Init( config );
    
    SetOptions( config );

    sim::SimStateArticulated::sUseInventoryObject = false;
}

void CoverApp::InitBenchmarks( char *filename, tPlatform *platform )
{
    harness->InitBenchmarks(filename, platform);
}

// Load config options
void CoverApp::SetOptions( ConfigParam& config )
{
    // make sure view, camera, and light are good and ready
    if( view && camera && light && harness )
    {
        m_grid->mode = config.GetOptionIntVal("GridMode");
        m_grid->count = config.GetOptionIntVal("GridCount");
        m_grid->size = config.GetOptionFloatVal("GridSize");

        m_cycleDuration = config.GetOptionFloatVal("DisplayLen");
        m_cycle = config.GetOptionIntVal("Cycle") == 1;

        p3d::pddi->EnableStatsOverlay( config.GetOptionIntVal("StatsOverlay") == 1 );

        view->SetBackgroundColour
        (
            tColour
            (
                config.GetOptionIntVal("BGcolourR"),
                config.GetOptionIntVal("BGcolourG"),
                config.GetOptionIntVal("BGcolourB")
            )
        );
    
        light->SetDirection
        (
            config.GetOptionFloatVal("LightDirectionX"),
            config.GetOptionFloatVal("LightDirectionY"),
            config.GetOptionFloatVal("LightDirectionZ")
        );
        
        light->SetColour
        (
            tColour
            (
                config.GetOptionIntVal("LightColourR"),
                config.GetOptionIntVal("LightColourG"),
                config.GetOptionIntVal("LightColourB")
            )
        );

        view->SetAmbientLight
        (
            tColour
            (
                config.GetOptionIntVal("AmbientLightR"),
                config.GetOptionIntVal("AmbientLightG"),
                config.GetOptionIntVal("AmbientLightB")
            )
        );
        
        harness->SetDefaultCameraLoc
        (
            config.GetOptionFloatVal("InitialCameraLocX"),
            config.GetOptionFloatVal("InitialCameraLocY"),
            config.GetOptionFloatVal("InitialCameraLocZ")
        );

        camera->SetDefault( harness->GetDefaultCameraLoc() );
        camera->Reset();
    }
}

void CoverApp::Render(float deltaTime)
{
    static float cycleTime;
    // Cycle through tests every set ms
    if( m_cycle )
    {
        cycleTime += deltaTime;
        if( cycleTime > m_cycleDuration )
        {
            cycleTime = 0;
            harness->NextTest();
        }
    }

    // Inform Pure3D that we are going to render some stuff.  There should
    // only be one BeginFrame() / EndFrame() call per rendering loop.
    p3d::context->BeginFrame();
    
    // Tell Pure3D we are starting to render into a view.  If screen clearing
    // is enabled, the view area will be cleared.  Any lights associated
    // with the view will be enabled.
    view->BeginRender();

    p3d::stack->Push();

    harness->Display( deltaTime );
    m_grid->Display();

    p3d::stack->Pop();
    // Tell Pure3D that we are finished with this view.
    view->EndRender();
    
    // This makes Pure3D swap the frame buffers.
    p3d::context->EndFrame(true);
}

void CoverApp::DisplayHelp()
{
    p3d::context->BeginFrame();
    view->BeginRender();

    harness->GetCurrentTest()->DisplayHelpText();

    view->EndRender();
    p3d::context->EndFrame();
}

void CoverApp::NextTest()
{
    harness->NextTest();
    camera->SetDefault( harness->GetDefaultCameraLoc() );
    camera->Reset();
}

void CoverApp::PrevTest()
{
    harness->PrevTest();
    camera->SetDefault( harness->GetDefaultCameraLoc() );
    camera->Reset();
}

void CoverApp::ResetTest()
{
    harness->ResetTest();
    camera->SetDefault( harness->GetDefaultCameraLoc() );
    camera->Reset();
}

void CoverApp::Zoom( float zm )
{
    camera->Zoom( zm );
    return;
}

void CoverApp::Rotate( float x, float y )
{
    camera->RotateX(x);
    camera->RotateY(y);
    return;
}

void CoverApp::Pan( float x, float y )
{
    camera->MoveX( x );
    camera->MoveY( y );
    return;
}

void CoverApp::Reset()
{
    camera->Reset();
    return;
}

void CoverApp::NextObjectType()
{
    harness->NextObjectType();
}

void CoverApp::DoTimeTests(float dt, float seconds)
{
    harness->DoTimeTests(view, dt, seconds);
}

void CoverApp::ToggleDisplaySimStat()
{
    TestHarness::ToggleDisplaySimStat();
}
