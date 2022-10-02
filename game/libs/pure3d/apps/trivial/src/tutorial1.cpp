//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Tutorial 1
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#include "tutorial1.hpp"

using namespace RadicalMathLibrary;

Tutorial1::Tutorial1()
{
    view = NULL;
    camera = NULL;
    light = NULL;

    rotation.Identity();
    torus = NULL;
}

Tutorial1::~Tutorial1()
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

    if(torus)
    {
        torus->Release();
    }
}

// Initialise Pure3D objects
void Tutorial1::Init()
{
p3d::pddi->EnableStatsOverlay(true);

    // The tView object represents the region of the frame buffer that we
    // are rendering unto.  Multiple view can be created for split/screen
    // effects.
    view = new tView;
    view->AddRef();

    view->SetBackgroundColour(tColour(0, 0, 100));
    view->SetAmbientLight(tColour(40, 40, 40));

    // Each view must have a camera associated with it.  The tPointCamera
    // has a position, a target (look-at point), and a twist.  We will
    // move the camera up the z axis 200 units.
    Vector cameraPosition(0.0f, 0.0f, -3.0f);
    camera = new tPointCamera;
    camera->AddRef();

    camera->SetPosition(cameraPosition);
    view->SetCamera(camera);

    // Create an infinite-directional light.
    light = new tDirectionalLight;
    light->AddRef();

    // The light will point down the z-axis.
    light->SetDirection(0.0f, 0.0f, 1.0f);
    // Make it yellow.
    light->SetColour(tColour(255, 255, 0));
    // Attach the light to the view.
    view->AddLight(light);

    // Call into PDDI to enable Z-buffering.
    p3d::pddi->EnableZBuffer(true);

    // This call installs chunk handlers for all the primary chunk types that
    // Pure3D supports.  This includes textures, materials, geometries, and the
    // like.  Animation handlers are installed by calling
    // p3d::InstallAnimationLoaders().
    p3d::InstallDefaultLoaders();

    // Load a Pure3D file.  Objects loaded by this call are stored in the
    // inventory.
    p3d::load("torus.p3d");

    // To retrieve an item from the inventory, its type and class must be
    // known.  Torus01 is actually a tGeometry object, but we can specify
    // a base class to be searched for as well.  To search all objects in
    // the inventory, specify tEntity as the type.  Since the find function
    // it templetized, there is no need to cast the returned pointer.  If
    // the specified object can't be found, this function will return NULL.
    torus = p3d::find<tDrawable>("Torus01");
    if(torus)
    {
        // Since we are going to hold on to the pointer to the torus object
        // for the duration of the program, we will increase its reference
        // count.  That way, if some other module were to remove the item
        // from the inventory, or call Release() on it, the object won't go
        // away.
        torus->AddRef();
    }

}

void Tutorial1::Render(float deltaTime)
{
    // Rotation speed
    const float radsPerMs = rmt::PI_BY8 / 1000.0f;

    // Inform Pure3D that we are going to render some stuff.  There should
    // only be one BeginFrame() / EndFrame() call per rendering loop.
    p3d::context->BeginFrame();
    
    // Tell Pure3D we are starting to render into a view.  If screen clearing
    // is enabled, the view area will be cleared.  Any lights associated
    // with the view will be enabled.
    view->BeginRender();

    if(torus)
    {
        // Here, we create a spinny rotation matrix.  By using the deltaTime
        // parameter, the torus will spin at a constant rate regardless of the
        // actual rendering speed.
        Matrix m;
        m.Identity();
        m.FillRotateXYZ(1.7F * deltaTime * radsPerMs, 1.23F * deltaTime * -radsPerMs, deltaTime * radsPerMs);
        rotation.Mult(m);
        // This function ensures that accumulated round-off error from
        // concatenating the rotation matrix doesn't introduce scales
        // into to matrix.
        rotation.OrthoNormal();

        // Preserve the existing matrix on the matrix stack.
        p3d::stack->Push();
        p3d::stack->Multiply(rotation);

        // Draw the torus object.
        torus->Display();

        // Restore the matrix stack.
        p3d::stack->Pop();
    }

    // Tell Pure3D that we are finished with this view.
    view->EndRender();

    // This makes Pure3D swap the frame buffers.
    p3d::context->EndFrame();
}

