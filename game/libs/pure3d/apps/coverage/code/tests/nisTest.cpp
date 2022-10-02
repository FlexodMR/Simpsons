//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "nisTest.hpp"

//------------------------------
// NIS test
//------------------------------

NISTest::NISTest() : directionalLight(NULL), view(NULL), scene(NULL), camera(NULL), multiController(NULL), camController(NULL)
{

}

void NISTest::Shutdown()
{
    if (directionalLight) directionalLight->Release();
    if (view) view->Release();
    if (scene) scene->Release();
    if (camera) camera->Release();
    if (multiController) multiController->Release();
    if (camController) camController->Release();
}

void NISTest::Setup()
{
    SetupSection();

    // shouldn't be doing this...  issues with p3d_default shader in primgroup.cpp
    p3d::inventory->SetCurrentSectionOnly(false);

    directionalLight = new tDirectionalLight();
    directionalLight->AddRef();

    view = new tView();
    view->AddRef();

    view->SetWindow(0.0f, 0.08f, 1.0f, 1.0f);
    view->SetClearColour(tColour(64,64,128));

    Load("NIS/NIS.p3d");

    scene = p3d::find<tDrawable>("Scene");

    if (scene) scene->AddRef();

    multiController = p3d::find<tMultiController>("MasterController");
    if (multiController) multiController->AddRef();

    camera = p3d::find<tVectorCamera>("cam_masterShape");
    if (camera)
    {
        camera->AddRef();
        camController = new tCameraAnimationController();
        camController->AddRef();
        camController->SetCamera(camera);
        view->SetCamera(camera);
    }

    tAnimation* anim = p3d::find<tAnimation>("CAM_cam_masterShape");
    if (anim)
    {
        //anim->SetCyclic(true);
        camController->SetAnimation(anim);
    }
    
}

void NISTest::Display()
{
    directionalLight->Activate(1);

    view->BeginRender();
    if (scene) scene->Display();
    view->EndRender();
}

void NISTest::Update(float deltaTime)
{
    multiController->Advance(deltaTime);
    camController->Advance(deltaTime);
}

void NISTest::CleanUp()
{
    directionalLight->Deactivate();
}
