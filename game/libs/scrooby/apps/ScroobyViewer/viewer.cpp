//=============================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All Rights Reserved.
//
// Component   : Scrooby
//
// Description : Implementation of the Scrooby Viewer
//
// Authors     : Mike Perzel
//
//=============================================================================

//=============================================================================
// Includes
//=============================================================================
#include "viewer.h"
#include <page.h>
#include <screen.h>
#include <text.h>
#include <sprite.h>
#include <radcontroller.hpp>
#include <feapp.h>
#include <resourcemanager/feresourcemanager.h>

const float g_xSafety = 0.075f;
const float g_ySafety = 0.075f;
const float g_xSafetyMax = 0.05f;
const float g_ySafetyMax = 0.05f;

//=============================================================================
// Member functions
//=============================================================================

//=============================================================================
// Viewer::Viewer
//=============================================================================
// Description : Constructs the P3D and Scrooby objects necessary
//
// Constraints : need an active P3D context before calling
//
//=============================================================================
Viewer::Viewer()
:
m_refCount( 0 ),            // no references to the object.  These must be set explicitly
m_pView( NULL ),            // not yet initialized
m_pCamera( NULL ),          // not yet initialized
m_controllerList( NULL ),
m_bRenderable( false ),     // not able to render anything in Scrooby by default
m_bAnimate( false ),        // do not do the basic animation example in the run function
m_pScroobyApp( NULL ),
m_pProject( NULL ),
m_index( 0 ),
m_bButtonDown( false ),
m_bDrawForeground( true ),
m_bDrawBackground( true ),
m_bDrawSafetyZone( false )
{
    // start with no stats, then let the user specify (see the input section)
    p3d::pddi->EnableStatsOverlay( false );

    // Set up pure3d.  This is straight out of the pure3d trivial app, so if you
    // would like more details, check there.
    m_pView = new tView;
    m_pView->AddRef();    
    m_pView->SetBackgroundColour( tColour( 0, 0, 100 ) );
    m_pView->SetAmbientLight( tColour( 40, 40, 40 ) );    
    rmt::Vector cameraPosition( 0.0f, 0.0f, -200.0f );
    m_pCamera = new tPointCamera;
    m_pCamera->AddRef();    
    m_pCamera->SetPosition( cameraPosition );
    m_pView->SetCamera( m_pCamera );    
    p3d::pddi->EnableZBuffer( true );    
    p3d::InstallDefaultLoaders();


    radControllerInitialize(); 
    // Scrooby initialization
    // The scrooby app is a singleton class, which means only one of the classes
    // may exist at any given time.  The GetInstance call will either create a new
    // instance of the class and return a pointer to it if the class does not exist,
    // or return a pointer to the existing class if it does
    m_pScroobyApp = Scrooby::App::GetInstance();

    FeApp::GetInstance()->GetFeResourceManager().SetAsyncLoading( false );

}

//=============================================================================
// Viewer::~Viewer
//=============================================================================
// Description : cleans up the Scrooby and Pure3d objects allocated
//
//=============================================================================
Viewer::~Viewer()
{
    radControllerTerminate();

    // Get rid of the scrooby project
    if( m_pProject )
    {
        // Calling this will not only delete the project, but will also
        // unload all of the resources the project allocated.  Failing
        // to call this will result in memory leaks.
        m_pScroobyApp->UnloadProject( m_pScroobyApp->GetProject() );
        m_pProject = NULL;
    }

    // This says we are done with this instance.  That way, if no one else
    // is using it, we can remove it from memory
    m_pScroobyApp->DeleteInstance();

    // Delete the Pure3D objects
    if( m_pCamera )
    {
        m_pCamera->Release();
    }
    if( m_pView )
    {
        m_pView->Release();
    }
}

//=============================================================================
// Trivial::AddRef
//=============================================================================
// Description : Reference Counting (like DCOM style)
//
// Constraints : All AddRef calls should be paired with a Release call
//
// Return      : number of currenly active references
//
//=============================================================================
int Viewer::AddRef()
{
    // add a reference to the object.  A reference will make sure that the
    // object isn't deleted while people are using it
    return m_refCount++;
}

//=============================================================================
// Trivial::Release
//=============================================================================
// Description : Reference Counting (like DCOM style).  This should be used to
//               delete the object.
//
// Constraints : All AddRef calls should be paired with a Release call
//
// Return      : number of currenly active references
//
//=============================================================================
int Viewer::Release()
{
    // this is a little strong, but it will force the pairing of references, so
    // it's a valid inclusion in a trivial app.
    rAssert( m_refCount > 0 );

    // Release a reference to the object
    m_refCount--;

    // if that was the last reference, delete the object
    if( m_refCount == 0 )
    {
        delete this;
        return 0;
    }

    return m_refCount;
}

//=============================================================================
// Viewer::Run
//=============================================================================
// Description : Does basic drawing, and possibly animation
//
// Constraints : This should be called once per frame
//
//=============================================================================
void Viewer::Run()
{
    // We need to service the file system regularly to let it finish loading and
    // to let it alert us on it's state through callbacks.
    radFileService();

    ProcessInput();

    // The pure3D side of beginning a Scrooby frame
    p3d::context->BeginFrame();
    m_pView->BeginRender();
   
    // This will draw all of the visible objects on the current screen
    //m_pScroobyApp->DrawFrame();
    if( m_bDrawBackground )
    {
        m_pScroobyApp->DrawBackground();
    }
    if( m_bDrawForeground )
    {
        m_pScroobyApp->DrawForeground();
    }
    if( m_bDrawSafetyZone )
    {
        p3d::pddi->PushState( PDDI_STATE_RENDER );
        p3d::pddi->PushState( PDDI_STATE_VIEW );
        p3d::pddi->EnableZBuffer( false );
        
        float aspect;
        
        aspect = static_cast< float >( FeApp::GetInstance()->GetScreenWidth() ) / static_cast< float >( FeApp::GetInstance()->GetScreenHeight() );
        
        p3d::pddi->SetCamera( 0.1f, 10.0f, 1.5707f, aspect ); // 1.5707 = PI /2
        p3d::pddi->SetProjectionMode( PDDI_PROJECTION_PERSPECTIVE );
        p3d::pddi->SetCullMode( PDDI_CULL_NONE );
        p3d::pddi->SetAlphaRef( 1 / 127.0f );
        p3d::stack->Push();
        p3d::stack->LoadIdentity();
        
#ifdef RAD_GAMECUBE
        p3d::stack->Scale(1.07f, 0.91f, 1.0f);
#endif
        p3d::stack->Translate( -0.5f, -0.5f / aspect, 0.5f );

        // Show the bounding box
        tShader* testMat = p3d::find<tShader>("p3d_default");
        tColour colour;
        colour.c = 0xFF00FFFF;
        
        pddiPrimStream* stream = p3d::pddi->BeginPrims( testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
        stream->Colour( colour );
        stream->Coord( g_xSafety, g_ySafety / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( 1.0f - g_xSafety, g_ySafety / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( 1.0f - g_xSafety, (1.0f - g_ySafety) / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( g_xSafety, (1.0f - g_ySafety) / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( g_xSafety, g_ySafety / aspect, 0.0f );
        p3d::pddi->EndPrims( stream );

        colour.c = 0xFF2020FF;
        
        stream = p3d::pddi->BeginPrims( testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
        stream->Colour( colour );
        stream->Coord( g_xSafetyMax, g_ySafetyMax / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( 1.0f - g_xSafetyMax, g_ySafetyMax / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( 1.0f - g_xSafetyMax, (1.0f - g_ySafetyMax) / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( g_xSafetyMax, (1.0f - g_ySafetyMax) / aspect, 0.0f );
        stream->Colour( colour );
        stream->Coord( g_xSafetyMax, g_ySafetyMax / aspect, 0.0f );
        p3d::pddi->EndPrims( stream );

        p3d::stack->Pop();
        p3d::pddi->PopState( PDDI_STATE_RENDER );
        p3d::pddi->PopState( PDDI_STATE_VIEW );
    }
    
    // Tell Pure3D to finish the current frame
    m_pView->EndRender();
   p3d::context->EndFrame();
}

//=============================================================================
// Viewer::OnGotoScreenComplete
//=============================================================================
// Description : A callback for the completion of loading a particular screen
//
// Constraints : Should be called by scrooby only
//
//=============================================================================
void Viewer::OnGotoScreenComplete()
{
    m_bRenderable = true;
}

//=============================================================================
// Viewer::OnProjectLoadComplete
//=============================================================================
// Description : A callback for the completion of loading the entire project
//
// Constraints : Should be called by scrooby only
//
// Parameters  : the project loaded
//
//=============================================================================

void Viewer::OnProjectLoadComplete( class Scrooby::Project * project)
{
    if( project )
    {
        m_pProject = project;
        m_pProject->GotoScreenByIndex( m_index, this );
    }
}

//=============================================================================
// Viewer::Load
//=============================================================================
// Description : Loads a project
//
// Parameters  : project - the name of the project to load
//
//=============================================================================
void Viewer::Load( const char* projectName )
{
#ifdef RAD_CONSOLE
    char temp[256] = "REMOTEDRIVE:/";
    strcat( temp, projectName );
    m_pScroobyApp->LoadProject( temp, this );
#else
    m_pScroobyApp->LoadProject( projectName, this );
#endif
}

/*void Viewer::ProcessInput()
{
    // We're not going to do anything with the input if the screen isn't loaded, so why bother?
    if( m_bRenderable )
    {
        // poll controllers
        radControllerSystemService();
        
        IRadControllerSystem* rCtlSys = radControllerSystemGet();
        if ( rCtlSys == 0 )
        {
            return;
        }
        
        unsigned ctlCount = rCtlSys->GetNumberOfControllers();
        float xrange = 0.0f;
        float yrange = 0.0f;
        float stats = 0.0f;
        float boxes = 0.0f;
        for (unsigned i = 0; i < ctlCount; ++i)
        {
            IRadController* rCtlr = rCtlSys->GetControllerByIndex( i );
            if (rCtlr == 0)
            {
                continue;
            }

            if ( strcmp( rCtlr->GetType(), "Mouse" ) == 0 )
            {
                continue;
            }

            rCtlr->AddRef();
            
    }
}*/

void Viewer::ProcessInput()
{
    if( m_bRenderable )
    {
        radControllerSystemService();
        IRadControllerSystem* rCtlSys = radControllerSystemGet();
        rAssert(rCtlSys != NULL);
        unsigned int ctlCount = rCtlSys->GetNumberOfControllers();
        if( !m_controllerList )
        {
            m_controllerList = new IRadController*[ctlCount];
            for( unsigned int i = 0; i < ctlCount; i++ )
            {
                m_controllerList[i] = NULL;
            }
        }
        float xrange = 0.0f;
        float yrange = 0.0f;
        float stats = 0.0f;
        float boxes = 0.0f;
        float safetyzone = 0.0f;
        for( unsigned int i=0; i<ctlCount; i++)
        {
            IRadController* rCtlr = rCtlSys->GetControllerByIndex(i);

            if ( strcmp( rCtlr->GetType(), "Mouse" ) == 0 )
            {
                continue;
            }

            if( rCtlr->IsConnected() )
            {
                if( !m_controllerList[i] )
                {
                    m_controllerList[i] = rCtlr;
                    m_controllerList[i]->AddRef();
                }
                else
                {
                    unsigned inputCount = m_controllerList[i]->GetNumberOfInputPointsOfType( "XAxis" );
                    unsigned j;
                    for( j = 0; j < inputCount; ++j )
                    {
                        IRadControllerInputPoint* input = m_controllerList[i]->GetInputPointByTypeAndIndex("XAxis", j);
                        if( input )
                        {
                            input->SetRange(-1.0f, 1.0f);
                            xrange += input->GetCurrentValue();
                        }
                    }
                    
                    inputCount = m_controllerList[i]->GetNumberOfInputPointsOfType( "Button" );
                    for( j = 0; j < inputCount; ++j )
                    {
                        // Controls for moving from screen to screen
                        IRadControllerInputPoint* input = m_controllerList[i]->GetInputPointByName( "Right" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            xrange += input->GetCurrentValue();
                            
                        }
                        input = m_controllerList[i]->GetInputPointByName( "Left" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            xrange -= input->GetCurrentValue();
                        }
                        input = m_controllerList[i]->GetInputPointByName( "DPadRight" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            xrange += input->GetCurrentValue();
                            
                        }
                        input = m_controllerList[i]->GetInputPointByName( "DPadLeft" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            xrange -= input->GetCurrentValue();
                        }
                        
                        // Controls for PDDI stats
                        input = m_controllerList[i]->GetInputPointByName( "S" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            stats += input->GetCurrentValue();
                        }
                        input = m_controllerList[i]->GetInputPointByName( "TriggerZ" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            stats += input->GetCurrentValue();
                        }
                        
                        // Controls for bounding boxes
                        input = m_controllerList[i]->GetInputPointByName( "[" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            boxes += input->GetCurrentValue();
                        }
                        
                        // Controls for Foreground/Background views
                        input = m_controllerList[i]->GetInputPointByName( "1" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            yrange += input->GetCurrentValue();
                        }
                        input = m_controllerList[i]->GetInputPointByName( "2" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            yrange -= input->GetCurrentValue();
                        }
                        input = m_controllerList[i]->GetInputPointByName( "TriggerL" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            yrange += input->GetCurrentValue();
                        }
                        input = m_controllerList[i]->GetInputPointByName( "TriggerR" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            yrange -= input->GetCurrentValue();
                        }
                        // Controls for Safety Zones
                        input = m_controllerList[i]->GetInputPointByName( "]" );
                        if( input )
                        {
                            input->SetRange( 0.0f, 1.0f );
                            safetyzone += input->GetCurrentValue();
                        }
                    }
                }
            }
            else
            {
            }
        }
        if( stats > 0.0f )
        {
            if( !m_bButtonDown )
            {
                m_bButtonDown = true;
                p3d::pddi->EnableStatsOverlay( !p3d::pddi->IsStatsOverlayEnabled() );
            }
        }
        else if( boxes > 0.0f )
        {
            if( !m_bButtonDown )
            {
                m_bButtonDown = true;
                FeApp::GetInstance()->SetShowBoundingBoxes( !FeApp::GetInstance()->IsShowingBoundingBoxes() );
            }
        }
        else if( xrange > 0.5f )
        {
            if( !m_bButtonDown && m_index < m_pScroobyApp->GetProject()->GetScreenCount()-1 )
            {
                // Go to the next screen
                m_bRenderable = false;
                m_bButtonDown = true;
                m_pScroobyApp->GetProject()->GotoScreenByIndex( ++m_index, this );
            }
        }
        else if( xrange < -0.5f )
        {
            if( !m_bButtonDown && m_index > 0 )
            {
                // Go to the previous screen
                m_bRenderable = false;
                m_bButtonDown = true;
                m_pScroobyApp->GetProject()->GotoScreenByIndex( --m_index, this );
            }
        }
        else if( yrange > 0.5f )
        {
            if( !m_bButtonDown )
            {
                m_bButtonDown = true;
                m_bDrawForeground = !m_bDrawForeground;
            }
        }
        else if( safetyzone > 0.5f )
        {
            if( !m_bButtonDown )
            {
                m_bButtonDown = true;
                m_bDrawSafetyZone = !m_bDrawSafetyZone;
            }
        }
        else
        {
            m_bButtonDown = false;
        }
    }
}
