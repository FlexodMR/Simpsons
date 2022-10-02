//=============================================================================
// Copyright (C) 2001 Radical Entertainment Ltd.  All Rights Reserved
//
// Component   : Scrooby
//
// Description : A basic application to get scrooby up and running
//
// Author(s)   : Mike Perzel
//
//=============================================================================

// Recompillation Protection
#ifndef SCROOBY_VIEWER_H
#define SCROOBY_VIEWER_H

//=============================================================================
// Nested Includes
//=============================================================================
// Pure3D Includes
#include <p3d/pure3d.hpp>
#include <radmath/radmath.hpp>
// RadCore Includes
#include <raddebug.hpp>
#include <radfile.hpp>
#include <radplatform.hpp>
#include <radcontroller.hpp>
// Scrooby Includes
#include <project.h>
#include <app.h>

//=============================================================================
// Interface Definitions
//=============================================================================

class Viewer : public Scrooby::GotoScreenCallback, public Scrooby::LoadProjectCallback
//=============================================================================
// Description : The name pretty much says it all
//
// Constraints : None
//=============================================================================
{
public:
    Viewer();

    // Reference counting functions
    int AddRef();
    int Release();

    // the function to be called every frame for rendering / animation
    void Run();

    // Scrooby callback functions
    // from GotoScreenCallback
    virtual void OnGotoScreenComplete();
    // from LoadProjectCallback
    virtual void OnProjectLoadComplete( class Scrooby::Project * project);

    void Load( const char* projectName );
protected:
    // by protecting this, we force the use of Release as a deconstructor
    virtual ~Viewer();
    void ProcessInput();
    int m_refCount;
private:
    // Pure3D Camera and View.
    tView* m_pView;
    tPointCamera* m_pCamera;

    IRadController** m_controllerList;

    // a boolean flag that sets when scrooby is safe to render.  This will only
    // be set when the project has finished loading, and should be unset before
    // calling any unload functions
    bool m_bRenderable;
    // a boolean flag to indicate whether or not to run the basic animation example
    // in the Run() function
    bool m_bAnimate;
    // a pointer to the Scrooby App that gets loaded.  This is basically just a
    // shortcut to calling Scrooby::App::GetInstance().
    Scrooby::App* m_pScroobyApp;
    // the project we're going to load and work with.  This could also be gotten
    // using Scrooby::App::GetInstance()->GetProject().
    Scrooby::Project* m_pProject;

    int m_index;

    bool m_bButtonDown;

    bool m_bDrawForeground;
    bool m_bDrawBackground;

    bool m_bDrawSafetyZone;

};

#endif