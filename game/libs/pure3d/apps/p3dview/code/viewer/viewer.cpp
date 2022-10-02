//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"viewer.hpp"
#include"viewercamera.hpp"
#include"version.h"

#include <p3d/pure3d.hpp>
#include <p3d/anim/instancedgeometry.hpp>
#include <pddi/pddiext.hpp>
#include <pddi/pddi.hpp>
#include <p3d/fileftt.hpp>

#include <p3d/shadow.hpp>
#include <p3d/spotlight.hpp>

#include <console/console.hpp>
#include <console/viewp3d.hpp>
#include <console/quickviewp3d.hpp>
#include <console/objectscripter.hpp>
#include <console/function.hpp>
#include <console/commandline.hpp>
#include <input/inputdriver.hpp>
#include <rendering/grid.hpp>
#include <rendering/quakecam.hpp>
#include <rendering/strokefont.hpp>
#include <rendering/lightdebug.hpp>
#include <rendering/polycounter.hpp>
#include <config/settings.hpp>
#include <file/p3dfile.hpp>
#include <interface/kernel.hpp>
#include <plugin/registry.hpp>
#include <plugin/module.hpp>
#include <plugin/types.hpp>
#include <radmemory.hpp>
#include <radthread.hpp>
#include <radtime.hpp>

#include <p3d/scenegraph/scenegraph.hpp>

#include <viewer/overlay.hpp>
#include <viewer/collision.hpp>
#include <viewer/lighting.hpp>
#include <viewer/capture.hpp>

#include <utility/smoother.hpp>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

#ifdef RAD_GAMECUBE
    #include <typeinfo.h>
#else
    #include <typeinfo>
#endif

//SRR2 stuff
#include <roads/roadmanager.h>
#include <roads/road.h>
#include <roads/intersection.h>
#include <roads/roadsegment.h>
#include <loading/roadloader.h>
#include <loading/intersectionloader.h>
#include <loading/roaddatasegmentloader.h>
#include <constants/srrchunks.h>


bool threadInitialized = false;
bool memInitialized = false;

char currentFileName[1024] = "";

void SendCommandToClient(const char* command);

using namespace RadicalMathLibrary;

static int heapUsage = 0;

class ViewerIterator
{
public:
    virtual ~ViewerIterator() {}
    virtual tEntity* Current(void) = 0;
    virtual tEntity* Next(void) = 0;
    virtual tEntity* Prev(void) = 0;
    virtual void     Flush(void) = 0;
};

template <class T> class TemplateIterator : public ViewerIterator
{
public:
    TemplateIterator(T* t)
    {
        iterator = t;
        current = iterator->First();
    }
    
    ~TemplateIterator()
    {
        delete iterator;
    }
    
    tEntity* Current(void)
    {
        if(!current)
            current = iterator->First();

        return current;
    }

    tEntity* Next(void)
    {
        current = iterator->Next();
        if(!current)
            current = iterator->First();
        return current;
    }

    tEntity* Prev(void)
    {
        current = iterator->Prev();
        if(!current)
            current = iterator->Last();
        return current;

    }

    void Flush(void)
    {
        current = NULL;
    }

private:
    T* iterator;
    tEntity* current; 
};

class DrawIterator : public tInventory::Iterator<tDrawable> {};
class MatIterator : public tInventory::Iterator<tShader> {};
class TexIterator : public tInventory::Iterator<tTexture> {};
class AnimIterator : public tInventory::Iterator<tFrameController> {};
class CamIterator : public tInventory::Iterator<tCamera> {};
class FontIterator : public tInventory::Iterator<tFont> {};
class MulticontrollerIterator : public tInventory::Iterator<tMultiController> {};
class ParticleSystemIterator : public tInventory::Iterator<tParticleSystem> {};
//SRR2
class RoadIterator : public tInventory::Iterator<Road> {};
class IntersectionIterator : public tInventory::Iterator<Intersection> {};
class RoadSegmentIterator : public tInventory::Iterator<RoadSegment> {};

int nShadows;
tShadow* shadows[256];
rmt::Matrix shadowMatrices[256];
rmt::Vector shadowPoints[256]; 
float shadowIntensity = 1.0f;

class LightSelector : public Scenegraph::CustomDisplayCallback
{
public:
    LightSelector(Lighting* l) : lighting(l), translucent(new DisplayList), shadowing(new DisplayList)
    {
        translucent->SetSize(16384);
        shadowing->SetSize(256);
    }

    void DrawTranslucent(void)
    {
        for(unsigned i = 0; i < translucent->GetCount(); i++)
        {
            rmt::Matrix objectToView;
            tDrawable* draw = translucent->GetSorted(i, &objectToView);
            DisplayWithLights(draw, objectToView);
        }
        translucent->Purge();
    }

    void DrawShadowing(void)
    {
        for(unsigned i = 0; i < shadowing->GetCount(); i++)
        {
            rmt::Matrix objectToView;
            tDrawable* draw = shadowing->GetSorted(i, &objectToView);
            DisplayWithLights(draw, objectToView);
        }
        shadowing->Purge();
    }

    static bool DoShadow(tDrawable* draw, const rmt::Matrix& objectToView)
    {
        tShadow* shadow = p3d::find<tShadow>(draw->GetName());

        rmt::Sphere bound;
        draw->GetBoundingSphere(&bound);

        if(dynamic_cast<tDrawablePose*>(draw))
        {
            tPose::Joint* joint = dynamic_cast<tDrawablePose*>(draw)->GetPose()->GetJoint(4);
            if(joint)
            {
                bound.centre = joint->worldMatrix.Row(3);
            }
        }

        rmt::Matrix viewToWorld = p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix();
        objectToView.Transform(bound.centre, &bound.centre);
        viewToWorld.Transform(bound.centre, &bound.centre);

        if(shadow)
        {
            tDrawablePose* d = dynamic_cast<tDrawablePose*>(draw);
            tShadowSkin* s = dynamic_cast<tShadowSkin*>(shadow);
            if(d && s)
            {
                s->SetPose(d->GetPose());   
            }

            shadows[nShadows] = shadow;
            shadowMatrices[nShadows] = *p3d::stack->GetMatrix();
            shadowPoints[nShadows] = bound.centre; 
            nShadows++;

            return true;
        }
        
        tCompositeDrawable* comp = dynamic_cast<tCompositeDrawable*>(draw);
        if(comp && !shadow)
        {
            comp->GetPose()->Evaluate();
    
            //
            // Display elements
            //
            bool shadowed = false;
            for(int i=0; i<comp->GetNumDrawableElement(); i++)
            {
                tCompositeDrawable::DrawableElement* e = comp->GetDrawableElement(i);
                if(e)
                {
                    e->SetPose(comp->GetPose());
                    if (e->IsVisible())
                    {
                        if(e->GetType() == tCompositeDrawable::DrawableElement::PROP_ELEMENT)
                        {
                            p3d::stack->PushMultiply(comp->GetPose()->GetJoint(((tCompositeDrawable::DrawablePropElement*)e)->GetPoseIndex())->objectMatrix);
                        }
                        else if(e->GetType() == tCompositeDrawable::DrawableElement::EFFECT_ELEMENT)
                        {
                            p3d::stack->PushMultiply(comp->GetPose()->GetJoint(((tCompositeDrawable::DrawableEffectElement*)e)->GetPoseIndex())->objectMatrix);
                        }

                        shadowed |= DoShadow(comp->GetDrawableElement(i)->GetDrawable(), objectToView);
                        
                        if((e->GetType() == tCompositeDrawable::DrawableElement::PROP_ELEMENT) || (e->GetType() == tCompositeDrawable::DrawableElement::EFFECT_ELEMENT))
                        {
                            p3d::stack->Pop();
                        }
                    }
                }
            }
            return shadowed;
        }
        return false;
    }
    
    void DisplayWithLights(tDrawable* draw, const rmt::Matrix& objectToView)
    {
        rmt::Sphere bound;
        draw->GetBoundingSphere(&bound);

        if(dynamic_cast<tDrawablePose*>(draw))
        {
            tPose::Joint* joint = dynamic_cast<tDrawablePose*>(draw)->GetPose()->GetJoint(4);
            if(joint)
            {
                bound.centre = joint->worldMatrix.Row(3);
            }
        }

        rmt::Matrix viewToWorld = p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix();
        objectToView.Transform(bound.centre, &bound.centre);
        viewToWorld.Transform(bound.centre, &bound.centre);

        lighting->SelectLighting(bound.centre);
        p3d::stack->PushLoad(objectToView);
        draw->Display();
        p3d::stack->Pop();
    }

    void Display(Scenegraph::Drawable* draw)
    {
        if(draw->GetDrawable())
        {
            if(DoShadow(draw->GetDrawable(), *p3d::stack->GetMatrix()))
            {
                shadowing->Add(draw->GetDrawable(), NULL, draw->SortOrder());
            }
            else
            {
                if(draw->IsTranslucent())
                {
                    translucent->Add(draw->GetDrawable(), NULL, draw->SortOrder());
                }
                else
                {
                    DisplayWithLights(draw->GetDrawable(), *p3d::stack->GetMatrix());
                }
            }

        }
    }

protected:
    Lighting* lighting;
    DisplayList* translucent;
    DisplayList* shadowing;
};

extern bool g_WaitForConnect;

void GamecubeLinkerSucks(void);


Viewer::Viewer(Kernel* k) :
    framerate(16.0f)
{
    GamecubeLinkerSucks();

    kernel = k;

    context = NULL;
    
    view = NULL;
    camera = NULL;

    console = NULL;

    typeMask[0] = 0;
    nameMask[0] = 0;
    showInventory = false;
    lastInventoryShown = 0;
    

    coverage = false;

    objectOfInterest = NULL;

    collisionViewer = new CollisionVolumeViewer;
    lighting = new Lighting;
    capture = new Capture(kernel);
    lightSel = new LightSelector(lighting);;

    drawables = NULL;
    materials = NULL;
    textures = NULL;
    iterator = NULL;
    controller = NULL;

    //SRR2
    roads = NULL;
    intersections = NULL;
    segments = NULL;

    playAnim = 1;
    animSpeed = 1.0f;
    animForward = true;

    strcpy(string,"The quick brown fox \njumps over the lazy dog");

    box = 0;

    background = NULL;

    help = 0;

    averageTime = 1;

    animAutoStep = 1;
    animStepSize = 33.333333f;
    animIntegerOnly = false;

    drawSkeleton = 0;
    drawPhysicsObjects = 0;

    helpText = NULL;

    backgroundColour = tColour(0,0,128);
    fogColour = tColour(255,255,255);
    fogStart = 0.0f;
    fogEnd = 100.0f;

    particleBlendRatio = 0.0f;

    multipleCount = 0;
    multipleSpread = 2.0f;
    
    fovX = 90;
    fovAspect = ((float)p3d::display->GetWidth())/((float)p3d::display->GetHeight());
    nearPlane = 1;
    farPlane = 1000;
    forceFrustum = false;

    burnTime = -1.0f;

    geoOptimize = true;

    heapLowWater = 0;

    selectObject = true;
    selectAnim = true;
    selectCamera = false;
    selectLight = false;

    asyncLoad = true;

    trackPose = false;
    trackedJointIndex = 5;
    
    messageWindow = new MessageWindow;
    overlay = new Overlay;

    shadowWash.Set(64,64,64,64);

    currentFile[0] = 0;

    supressAllInfo = false;
    showOverlay = true;
    showMessages = true;

#ifdef RAD_XBOX
    tBillboardQuadGroup::SetMaxNumVisibilityTests(1);
#endif

}

Viewer::~Viewer()
{
}

void Viewer::AttachContext(tContext* c)
{
    context = c;
}

tFont* font;

void FormatErrorString(const char* in, char* out, unsigned maxSize)
{
    unsigned lineLen = 0;
    unsigned totalLen = 0;
    unsigned inIndex = 0;
    unsigned outIndex = 0;
   
    while(in[inIndex])
    {
        if(lineLen > 50)
        {
            out[outIndex++] = '\n';
            for(int i = 0; i < 9; i++)
            {
                out[outIndex++] = ' ';
            }
            lineLen = 9;
        }
        else
        {
            if(in[inIndex] == '\n')
            {
                lineLen = 0;
            }
            else
            {
                lineLen++;
            }
            out[outIndex++] = in[inIndex++];
        }
        if (outIndex == maxSize-1)
        {
            break;
        }
    }
    out[outIndex++] = 0;
}


void BlackScreenOfDeath(const char* text)
{
    if(!p3d::context->InFrame())
        p3d::pddi->BeginFrame();

    p3d::pddi->SetClearColour(tColour(0,0,0));
    p3d::pddi->SetClearDepth(1.0f);
    p3d::pddi->SetClearStencil(0);
    p3d::pddi->Clear(PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH | PDDI_BUFFER_STENCIL);

    char rawError[4096];
    char formatError[4096];

    if (currentFileName[0] != 0)
    {
        sprintf(rawError,"%s\nFAILED FILE : %s\n", text, currentFileName);
    }
    else
    {
        sprintf(rawError,"%s", text);
    }
    
    FormatErrorString(rawError, formatError, 4096);

    p3d::pddi->DrawString(formatError,30,30,tColour(255,255,255));

    p3d::pddi->EndFrame();
    p3d::display->SwapBuffers();

#ifndef RAD_PC
    while(1);
#endif
}

void DebugHandler(const char* c)
{
    if((c[0] == 'A') && (c[1] == 'S') && (c[2] == 'S'))
    {
        BlackScreenOfDeath(c);
    }
    rDebuggerString_Implementation(c);
}

void Viewer::Setup(void)
{
    rDebugSetOutputHandler(DebugHandler); 

    p3d::platform->SetActiveContext(context);

    consoleView = new Console::ViewP3D(NULL,NULL,NULL);
    consoleQuickView = new Console::QuickViewP3D(NULL);

    float aspect = ((float)p3d::display->GetWidth())/((float)p3d::display->GetHeight());

    view = new tView;
    camera = vcam = new ViewerCamera;
    camera->SetName("default");
    camera->SetFOV(DegToRadian(90), aspect);
    p3d::inventory->Store(camera);

    qcam = new tQuakeCam;
    qcam->SetFOV(DegToRadian(90), aspect);
    qcam->SetFarPlane(10000.0f);
    qcam->SetNearPlane(0.5f);
    qcam->SetName("quake");
    p3d::inventory->Store(qcam);

    view->AddRef();

    camera->SetFOV(DegToRadian(90), aspect);
    camera->SetFarPlane(10000.0f);
    camera->SetNearPlane(0.5f);

    view->SetWindow(0.0f,0.0f,1.0f,1.0f);
    view->SetCamera(camera);
    view->SetAmbientLight(tColour(0,0,0));

    p3d::InstallDefaultLoaders();

    collisionViewer->Setup();


    rotation.Identity();
    rotation.FillRotateY(DegToRadian(0.5));
    current.Identity();

    grid = new Grid;
    grid->AddRef();

    drawables = new TemplateIterator<DrawIterator>(new DrawIterator);
    materials = new TemplateIterator<MatIterator>(new MatIterator);
    textures = new TemplateIterator<TexIterator>(new TexIterator);
    anims = new TemplateIterator<AnimIterator>(new AnimIterator);
    cameras = new TemplateIterator<CamIterator>(new CamIterator);
    fonts = new TemplateIterator<FontIterator>(new FontIterator);
    particleSystems = new TemplateIterator<ParticleSystemIterator>(new ParticleSystemIterator);

    //SRR2
    roads = new TemplateIterator<RoadIterator>( new RoadIterator );
    intersections = new TemplateIterator<IntersectionIterator>( new IntersectionIterator );
    segments = new TemplateIterator<RoadSegmentIterator>( new RoadSegmentIterator );
    iterator = drawables;


    testMat = new tShader();
    testMat->SetInt(PDDI_SP_ISLIT, false);
    testMat->SetColour(PDDI_SP_DIFFUSE, tColour(255,255,255));

    tImageHandler* img = (tImageHandler*)p3d::loadManager->GetHandler(".tga");
    img->SetLoadType(tImageHandler::SPRITE);

    img = (tImageHandler*)p3d::loadManager->GetHandler(".png");
    img->SetLoadType(tImageHandler::SPRITE);
    
    img = (tImageHandler*)p3d::loadManager->GetHandler(".bmp");
    img->SetLoadType(tImageHandler::SPRITE);

    p3d::inventory->AddSection("viewer");
    p3d::inventory->SelectSection("viewer");

    p3d::inventory->SelectSection("default");

//    p3d::pddi->SetAlphaRef(0.0f);

    overlay->UpdateStatusLineF("version", "v%s",ViewerVersionString());
    overlay->PositionStatusLine("version", 35, -65);
    overlay->ShowStatusLine("version", true);

    overlay->PositionStatusLine("fps", -190, 20);
    overlay->ShowStatusLine("fps", true);

    overlay->PositionStatusLine("vertices", -190, 60);
    overlay->ShowStatusLine("vertices", true);

    overlay->PositionStatusLine("polygons", -190, 40);
    overlay->ShowStatusLine("polygons", true);

    overlay->PositionStatusLine("draw", 35, 20);
    overlay->ShowStatusLine("draw", true);

    overlay->PositionStatusLine("anim", 35, 40);
    overlay->ShowStatusLine("anim", true);

    overlay->PositionStatusLine("light", 35,60);
    overlay->ShowStatusLine("light", true);

    overlay->PositionStatusLine("camera", 35, 80);
    overlay->ShowStatusLine("camera", true);

    overlay->PositionStatusLine("memory", -200, -100);
    overlay->ShowStatusLine("memory", true);

    overlay->PositionStatusLine("launch", 35, -140);
    overlay->ShowStatusLine("launch", true);

    overlay->PositionStatusLine("loaded", 35, 150);
    overlay->ShowStatusLine("loaded", true);

    //This is all SRR2 stuff
    p3d::context->GetLoadManager()->GetP3DHandler()->AddHandler( new RoadLoader, SRR2::ChunkID::ROAD );
    p3d::context->GetLoadManager()->GetP3DHandler()->AddHandler( new IntersectionLoader, SRR2::ChunkID::INTERSECTION );
    p3d::context->GetLoadManager()->GetP3DHandler()->AddHandler( new RoadDataSegmentLoader, SRR2::ChunkID::ROAD_SEGMENT_DATA );
}

void Viewer::AttachConsole(Console::Console* c)
{
    if(!c)
        return;

    console = c;
    consoleView->SetBuffer(c->GetCommandLine());
    consoleQuickView->SetBuffer(c->GetCommandLine());

    float size = (10.f / 480.0f) * 1.33f;
    tFont* font = new tStrokeFont(size);
    font->SetLineSpacing(size / 5.0f);
    consoleView->SetTextColour(tColour(255,255,255));
    consoleView->SetFont(font);
}

void Viewer::Configure(Settings* settings, Console::ObjectScripter* interp)
{
    lighting->Setup(settings);
    capture->Setup(settings, interp);

    
    settings->Bind("view.backgroundColour", &backgroundColour);

    settings->Bind("fog.colour", &fogColour);
    settings->Bind("fog.start", &fogStart);
    settings->Bind("fog.end", &fogEnd);

    settings->Bind("view.frustum.fov", &fovX);
    settings->Bind("view.frustum.near", &nearPlane);
    settings->Bind("view.frustum.far", &farPlane);
    settings->Bind("view.frustum.force", &forceFrustum);

    settings->Bind("debug.drawBox", &box);
    settings->Bind("debug.drawSkeleton", &drawSkeleton);
    settings->Bind("debug.drawPhysicsObjects", &drawPhysicsObjects);


    settings->Bind("overlay.averageTime", &averageTime);
    settings->Bind("overlay.showInventory", &showInventory);
    settings->Bind("overlay.show", &showOverlay);
    settings->Bind("overlay.showMessages", &showMessages);

    settings->Bind("load.geoOptimize", &geoOptimize);
    settings->Bind("load.selectObject", &selectObject);
    settings->Bind("load.selectAnim", &selectAnim);
    settings->Bind("load.selectCamera", &selectCamera);
    settings->Bind("load.selectLight", &selectLight);
    settings->Bind("load.async", &asyncLoad);

    if(g_WaitForConnect)
    {
        tFile* helpFile = new FilePure3D(kernel->OpenFileIn(settings->Get("help.quickHelp")), "help.txt");

        if(helpFile)
        {
            helpText = new char[helpFile->GetSize() + 1];
            helpFile->GetData(helpText, helpFile->GetSize(), tFile::BYTE);
            helpText[helpFile->GetSize()] = 0;
            helpFile->Release();
        }
    }

    grid->Configure(settings);
    vcam->Configure(settings,interp);

    interp->SetInt("dummy", 42);

    settings->Bind("fontDisplay.string", string, 256);

    settings->Bind("shadow.washColour", &shadowWash);

    interp->SetStringRef("nameMask", nameMask);
    interp->SetStringRef("typeMask", typeMask);

    interp->SetIntRef("help", &help);
    
    interp->SetFloatRef("burnTime", &burnTime);

    interp->SetClosure("printMessage", this, &Viewer::PrintMessage);

    interp->SetClosure("load", this, &Viewer::Load);
    interp->SetClosure("completeLoad", this, &Viewer::CompleteLoad);
    interp->SetClosure("draw", this, &Viewer::SetDrawable);
    interp->SetClosure("camera", this, &Viewer::SetCamera);
    interp->SetClosure("anim", this, &Viewer::SetAnim);
    interp->SetClosure("light", lighting, &Lighting::SetLightGroup);
    interp->SetClosure("mode", this, &Viewer::ViewMode);
    interp->SetClosure("centre", this, &Viewer::AutoCentre);

    interp->SetClosure("flush", this, &Viewer::Flush);
    
    interp->SetClosure("conBackground", this, &Viewer::SetConsoleBackground);

    interp->SetClosure("viewport", view, &tView::SetWindow);

    interp->SetClosure("qcamMove", qcam, &tQuakeCam::Move);
    interp->SetClosure("qcamReset", qcam, &tQuakeCam::Reset);
    interp->SetClosure("qcamLookX", qcam, &tQuakeCam::LookX);
    interp->SetClosure("qcamLookY", qcam, &tQuakeCam::LookY);

    settings->Bind("camera.trackPose", &trackPose);
    settings->Bind("camera.trackedJointIndex", &trackedJointIndex);

    settings->Bind("quakecam.speed", &qcam->speed);
    settings->Bind("quakecam.sensitivity", &qcam->sensitivity);
    settings->Bind("quakecam.invert", &qcam->invert);

    interp->SetClosure("rotateX", this, &Viewer::RotateX);
    interp->SetClosure("rotateY", this, &Viewer::RotateY);
    interp->SetClosure("resetRot", this, &Viewer::ResetRotation);
    interp->SetClosure("moveObj", this, &Viewer::Move);

    interp->SetClosure("scrollInventoryUp", this, &Viewer::ScrollInventoryUp);
    interp->SetClosure("scrollInventoryDown", this, &Viewer::ScrollInventoryDown);

    interp->SetClosure("nextObj", this, &Viewer::NextObj);
    interp->SetClosure("prevObj", this, &Viewer::PrevObj);
    interp->SetClosure("nextAnim", this, &Viewer::NextAnim);
    interp->SetClosure("prevAnim", this, &Viewer::PrevAnim);
    interp->SetClosure("nextCam", this, &Viewer::NextCam);
    interp->SetClosure("prevCam", this, &Viewer::PrevCam);
    interp->SetClosure("nextLight", lighting, &Lighting::NextLightGroup);
    interp->SetClosure("prevLight", lighting, &Lighting::PrevLightGroup);

    interp->SetClosure("nextObjType", this, &Viewer::NextObjType);
    interp->SetClosure("prevObjType", this, &Viewer::PrevObjType);
    interp->SetClosure("nextAnimType", this, &Viewer::NextAnimType);
    interp->SetClosure("prevAnimType", this, &Viewer::PrevAnimType);

    interp->SetIntRef("animPlay", &playAnim);
    interp->SetClosure("animStep", this, &Viewer::AnimStep);
    interp->SetClosure("animReset", this, &Viewer::AnimReset);
    interp->SetClosure("animBind", this, &Viewer::AnimBind);
    interp->SetClosure("animCreateFC", this, &Viewer::MakePoseController);
    interp->SetClosure("animCreateAllFC", this, &Viewer::MakePoseControllerAll);

    settings->Bind("lighting.shadowIntensity", &shadowIntensity);

    settings->Bind("anim.integerFramesOnly", &animIntegerOnly);
    settings->Bind("anim.speed", &animSpeed);
    settings->Bind("anim.autoStep", &animAutoStep);
    settings->Bind("anim.stepSize", &animStepSize);
    settings->Bind("anim.forward", &animForward);

    interp->SetClosure("backgroundImage", this, &Viewer::SetBackgroundImage);
    interp->SetClosure("gamma", this, &Viewer::Gamma);

    settings->Bind("multiply.count", &multipleCount);
    settings->Bind("multiply.spread", &multipleSpread);

    interp->SetInt("solid", 0);
    interp->SetInt("wire", 1);
    interp->SetInt("point", 2);
    interp->SetInt("none", 0);
    interp->SetInt("ccw", 1);
    interp->SetInt("cw", 2);
    
    interp->SetClosure("fillMode", p3d::context->GetContext(), &pddiRenderContext::SetFillMode);
    interp->SetClosure("cullMode", p3d::context->GetContext(), &pddiRenderContext::SetCullMode);
    interp->SetClosure("zWrite", p3d::context->GetContext(), &pddiRenderContext::SetZWrite);
    interp->SetClosure("statsOverlay", p3d::context->GetContext(), &pddiRenderContext::EnableStatsOverlay);

    interp->SetClosure("fog", this, &Viewer::EnableFog);
    interp->SetClosure("grid", this, &Viewer::ToggleGrid);
    interp->SetClosure("origin", this, &Viewer::ToggleOrigin);

    interp->SetClosure("setParticleBlendRatio", this, &Viewer::SetParticleBlendRatio);
    interp->SetClosure("incParticleBlendRatio", this, &Viewer::IncParticleBlendRatio);
    interp->SetClosure("decParticleBlendRatio", this, &Viewer::DecParticleBlendRatio);

    Plugin::AppData appdata;
    appdata.settings = settings;

    for(unsigned i = 0; i < Plugin::Registry::GetModuleCount(); i++)
    {
//        if(Plugin::Registry::GetModule(i)->GetType() == Plugin::PURE3D_GLOBAL_STATE)
        {
            Plugin::Registry::GetModule(i)->Setup(&appdata);
        }
    }
}


void Viewer::Shutdown(void)
{
    qcam = NULL;
    vcam = NULL;

    for(unsigned i = 0; i < Plugin::Registry::GetModuleCount(); i++)
    {
        if(Plugin::Registry::GetModule(i)->GetType() == Plugin::PURE3D_GLOBAL_STATE)
        {
            Plugin::Registry::GetModule(i)->Shutdown();
        }
    }

    p3d::platform->SetActiveContext(context);

    view->Release();
    testMat->Release();

    delete consoleView;
    delete consoleQuickView;

    delete drawables;
    delete materials;
    delete textures;
    delete anims;
    delete cameras;
    delete fonts;
    delete particleSystems;

    //SRR2
    delete roads;
    delete intersections;
    delete segments;

    grid->Release();
    delete helpText;
}

class LoadCallback : public tLoadRequest::Callback
{
public:
    LoadCallback(Viewer* v)
    {
        viewer = v;
    }

    void AddRef(void) { radLoadObject::AddRef(); }
    void Release(void) { radLoadObject::Release(); }

    void Done(tLoadStatus status, tLoadRequest *load)
    {
        viewer->LoadDone(load);
    }

protected:
    Viewer* viewer;
};

void Viewer::CompleteLoad(void)
{
    p3d::loadManager->CompleteAll();
}

void Viewer::Load(char* name)
{  
    if(heapLowWater == 0)
        heapLowWater = heapUsage;
        
    p3d::platform->SetActiveContext(context);

#ifdef P3D_USE_FTT_FILE
#if defined(RAD_PS2) || defined(RAD_GAMECUBE) || defined(RAD_XBOX) 
    char filename2[256]= "REMOTEDRIVE:";
    strcat(filename2, name);
    tFile* file = new tFileFTT(filename2, !asyncLoad);
#else
    tFile* file = new tFileFTT(name, !asyncLoad);
#endif
#else
    InStream* stream = kernel->OpenFileIn(name);
    tFile* file = new FilePure3D(stream, name);
#endif

    if(!file)
        return;

    file->AddRef();

    tP3DFileHandler* p3dfh = p3d::loadManager->GetP3DHandler();
    if(p3dfh)
    {  
        tGeometryLoader* geoLoad = (tGeometryLoader*)p3dfh->GetHandler(Pure3D::Mesh::MESH);
        geoLoad->SetOptimize(geoOptimize);
    }   

    tLoadRequest* request = new tLoadRequest(file);
    currentLoad = request;
    strcpy(currentFileName,request->GetFilename());

#ifdef P3D_USE_FTT_FILE
    request->SetAsync(asyncLoad);
#endif

    request->SetCallback(new LoadCallback(this));
    p3d::loadManager->Load(request);
    file->Release();
    loadStart = kernel->SystemTime();
}

bool writeMemProfile = false;
char fileMemProfile[256];

void Viewer::LoadDone(tLoadRequest* request)
{
    const char* full = request->GetFilename();
    const char* tmp = &full[strlen(full) - 1];

    while((tmp != full) && (*tmp != '\\') && (*tmp != ':'))
        tmp--;

    if((*tmp == '\\') || (*tmp == ':'))
        tmp++;

    strcat(currentFile, "\n ");

    strcat(currentFile, tmp);

    writeMemProfile = true;
    strcpy(fileMemProfile, tmp);
        
    overlay->UpdateStatusLineF("loaded", "Loaded : %s", currentFile); 

    loadTime = kernel->SystemTime() - loadStart;
    if(selectObject)
    {

        if(objectOfInterest == NULL)
            NextObjType("Scene");

        if(objectOfInterest == NULL)
            NextObjType("Comp");

        if(objectOfInterest == NULL)
            NextObjType("PolySkin");

            
        if(!objectOfInterest)
        {
            objectOfInterest = iterator->Next();
            AutoCentre();
        }
    }

    if(selectAnim)
    {
        if(controller == NULL)
            NextAnimType("Multi");

        if(controller == NULL)
            NextAnimType("Pose");

        if(controller == NULL)
        {
            controller = dynamic_cast<tFrameController*>(anims->Next());
            if (controller)
            {
                controller->SetCycleMode(FORCE_CYCLIC);
            }
        }
    }

    lighting->Load();
    /*
    if(selectLight)
    {
        if(lightGroup->GetUID() == tEntity::MakeUID("default"))
        {
            lightGroup = dynamic_cast<tLightGroup*>(lights->Next());
        }
    }
    */

    if(selectCamera)
    {
        tCamera* current = camera;
    
        if((camera->GetUID() == tEntity::MakeUID("default")) || (camera->GetUID() == tEntity::MakeUID("quake")))
        {
            tCamera* tmp = dynamic_cast<tCamera*>(cameras->Next());
            while(((tmp->GetUID() == tEntity::MakeUID("default")) || (tmp->GetUID() == tEntity::MakeUID("quake"))) && (tmp != current))
            {
                tmp = dynamic_cast<tCamera*>(cameras->Next());
            }
            camera = tmp;
        }
        view->SetCamera(camera);
    }

    RoadManager::GetInstance()->CreateRoadNetwork();
}

void Viewer::Flush(void)
{
    objectOfInterest = NULL;
    controller = NULL;
    camera = NULL;

    collisionViewer->Flush();
    lighting->Flush();


    p3d::inventory->RemoveAllElements();

    p3d::inventory->Store(qcam);
    p3d::inventory->Store(vcam);

    drawables->Flush();
    materials->Flush();
    textures->Flush();
    anims->Flush();
    cameras->Flush();
    fonts->Flush();
    particleSystems->Flush();
    //SRR2
    roads->Flush();
    intersections->Flush();
    segments->Flush();
    RoadManager::GetInstance()->Init( RoadManager::STARTUP );  //Reset!


    camera = vcam;

    currentFile[0] = 0;
    overlay->UpdateStatusLine("loaded", ""); 
}

void Viewer::SetConsoleBackground(char* name)
{
    if(!console)
        return;

    tImageFactory factory;
    
    tTexture* t = factory.LoadAsTexture(name);
    if(t)
    {
        consoleView->GetBackgroundShader()->SetTexture(PDDI_SP_BASETEX, t);
        consoleView->GetBackgroundShader()->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
        consoleView->GetBackgroundShader()->SetInt(PDDI_SP_ISLIT,0);
        consoleView->GetBackgroundShader()->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);
        consoleView->SetBackgroundColour(tColour(255,255,255,128));
    }
}


void Viewer::SetBackgroundImage(char* name)
{
    if(background)
        background->Release();

    background = NULL;

    tImageFactory f;

#if defined(RAD_PS2) || defined(RAD_GAMECUBE) || defined(RAD_XBOX) 
    char filename2[256]= "REMOTEDRIVE:";
    strcat(filename2, name);
    tFile* file = new tFileFTT(filename2, true);

    tImage* image = f.LoadAsImage(file);
#else
    tImage* image = f.LoadAsImage(name);
#endif

    if(image)
    {
        background = new tSprite(image);
        background->AddRef();
        image->Release();
    }

    
}

void Viewer::ViewMode(int m)
{
    switch(m)
    {
        case 0 :
            iterator = drawables;
            break;
        case 1 :
            iterator = textures;
            break;
        case 2 :
            iterator = materials;
            break;
        case 3 :
            iterator = fonts;
            break;
        case 4:
            iterator = roads;
            break;
        case 5:
            iterator = intersections;
            break;
        case 6:
            iterator = segments;
            break;
    }
    objectOfInterest = iterator->Current();
}

void Viewer::Move(float x, float y, float z)
{
    rmt::Matrix translation;
    rmt::Matrix tmp;

    translation.Identity();
    translation.FillTranslate(Vector(x,y,z));
    tmp.Mult(current,translation);
    current = tmp;
}

void Viewer::RotateX(float a)
{
    rmt::Matrix rotation;
    rmt::Matrix tmp;

    rotation.Identity();
    rotation.FillRotateY(DegToRadian(-a));
    tmp.Mult(current,rotation);
    current = tmp;
}

void Viewer::RotateY(float a)
{
    rmt::Matrix rotation;
    rmt::Matrix tmp;

    rotation.Identity();
    rotation.FillRotateX(DegToRadian(-a));
    tmp.Mult(current,rotation);
    current = tmp;
}

void Viewer::ResetRotation(void)
{
    current.Identity();
}

void Viewer::NextObj(void)
{
    objectOfInterest = iterator->Next();
}

void Viewer::PrevObj(void)
{
    objectOfInterest = iterator->Prev();
}

void Viewer::NextAnim(void)
{
    controller = dynamic_cast<tFrameController*>(anims->Next());
}

void Viewer::PrevAnim(void)
{
    controller = dynamic_cast<tFrameController*>(anims->Prev());
}

void Viewer::NextCam(void)
{
    tCamera* tmp = dynamic_cast<tCamera*>(cameras->Next());
    if(tmp) camera = tmp;
    view->SetCamera(camera);
}

void Viewer::PrevCam(void)
{
    tCamera* tmp = dynamic_cast<tCamera*>(cameras->Prev());
    if(tmp) camera = tmp;
    view->SetCamera(camera);
}

void Viewer::SetDrawable(char* in)
{
    objectOfInterest = p3d::find<tDrawable>(in);
}

void Viewer::SetCamera(char* in)
{
    tCamera* tmp = p3d::find<tCamera>(in);
    if(tmp) camera = tmp;
    view->SetCamera(camera);
}

void Viewer::SetAnim(char* in)
{
    controller = p3d::find<tFrameController>(in);
}

void Viewer::NextAnimType(char* type)
{
    if(!controller)
        controller = dynamic_cast<tFrameController*>(anims->Prev());

    tFrameController* c = dynamic_cast<tFrameController*>(anims->Next());

    while(c && (c != controller))
    {
        char name[256];
        p3d::ClassName(c, name, 256);
        char* walk = name;
        char* walkType = type;

        while(*walkType)
        {
            if(*walkType++ != *walk++)
                goto skip;
        }
        controller = c;
        return;
skip:
        c = dynamic_cast<tFrameController*>(anims->Next());
    }
}

void Viewer::PrevAnimType(char* type)
{
    if(!controller)
        controller = dynamic_cast<tFrameController*>(anims->Next());

    tFrameController* c = dynamic_cast<tFrameController*>(anims->Prev());

    while(c && (c != controller))
    {
        char name[256];
        p3d::ClassName(c, name, 256);
        char* walk = name;
        char* walkType = type;

        while(*walkType)
        {
            if(*walkType++ != *walk++)
                goto skip;
        }
        controller = c;
        return;
skip:
        c = dynamic_cast<tFrameController*>(anims->Prev());
    }
}

void Viewer::NextObjType(char* type)
{
    tEntity* prevVal = objectOfInterest;

    tEntity* c = dynamic_cast<tEntity*>(iterator->Next());

    if(!objectOfInterest)
    {
        objectOfInterest = iterator->Prev();
        c = dynamic_cast<tEntity*>(objectOfInterest);
    }

    if(c)
    {
        do
        {
            char name[256];
            p3d::ClassName(c, name, 256);
            char* walk = name;
            char* walkType = type;

            while(*walkType)
            {
                if(*walkType++ != *walk++)
                    goto skip;
            }
            objectOfInterest = c;
            return;
    skip:
            c = dynamic_cast<tEntity*>(iterator->Next());
        } while(c && (c != objectOfInterest));
    }

    objectOfInterest = prevVal;
}

void Viewer::PrevObjType(char* type)
{
    tEntity* prevVal = objectOfInterest;

    if(!objectOfInterest)
    {
        objectOfInterest = iterator->Next();
    }

    tEntity* c = dynamic_cast<tEntity*>(iterator->Prev());

    while(c && (c != objectOfInterest))
    {
        char name[256];
        p3d::ClassName(c, name, 256);
        char* walk = name;
        char* walkType = type;

        while(*walkType)
        {
            if(*walkType++ != *walk++)
                goto skip;
        }
        objectOfInterest = c;
        return;
skip:
        c = dynamic_cast<tEntity*>(iterator->Prev());
    }

    objectOfInterest = prevVal;;
}

void Viewer::AutoCentre(void)
{
    tDrawable* draw = dynamic_cast<tDrawable*>(objectOfInterest);

    if( draw )
    {
        rmt::Sphere sphere;
        draw->GetBoundingSphere(&sphere);
        vcam->Watch(sphere);
        return;
    }

    //SRR2
    Road* road = dynamic_cast<Road*>(objectOfInterest);

    if ( road )
    {
        rmt::Sphere sphere = road->GetBoundingSphere();
        vcam->Watch(sphere);
        return;
    }

    Intersection* i = dynamic_cast<Intersection*>(objectOfInterest);

    if ( i )
    {
        rmt::Vector loc;
        i->GetLocation( loc );
        rmt::Sphere sphere( loc, i->GetRadius() );
        vcam->Watch(sphere);
        return;
    }

    RoadSegment* seg = dynamic_cast<RoadSegment*>(objectOfInterest);

    if ( seg )
    {
        Road* road = seg->GetRoad();
        if ( road )
        {
            rmt::Sphere sphere = road->GetBoundingSphere();
            vcam->Watch(sphere);
            return;
        }
    }
           
}


void Viewer::Gamma(float g)
{
    pddiExtGammaControl* gamma = (pddiExtGammaControl*)p3d::pddi->GetExtension(PDDI_EXT_GAMMACONTROL);
    if(gamma)
    {
        gamma->SetGamma(g,g,g);
    }
}

void Viewer::AnimStep(int forward)
{
    float step = animStepSize;


    if(animAutoStep)
    {
        tAnimationFrameController* fc = dynamic_cast<tAnimationFrameController*>(controller);

        if(fc)
            if(fc->GetAnimation())
                step = fc->GetAnimation()->GetSpeed();
    }

    if(!controller)
        return;
  
    if(animIntegerOnly)
    {
        controller->SetFrame(float(((int)controller->GetFrame()) + (forward ? 1 : -1)));
        controller->Advance(0);
    }
    else
    {
        controller->Advance(step * (forward ? 1 : -1));
    }

}

void Viewer::AnimReset(void)
{
  if(!controller)
        return;
  
    controller->SetFrame(0);
}

void Viewer::AnimBind(void)
{
    tDrawablePose* pose = dynamic_cast<tDrawablePose*>(objectOfInterest);
    tPoseAnimationController* poseFC = dynamic_cast<tPoseAnimationController*>(controller);

    if(!pose || !poseFC)
        return;
  
    poseFC->SetPose(pose->GetPose());
}


void Viewer::MakePoseController(char* name, char* animName)
{
    tDrawablePose* pose = p3d::find<tDrawablePose>(name);
    tAnimation* anim = p3d::find<tAnimation>(animName);

    if(!pose)
        pose = dynamic_cast<tDrawablePose*>(objectOfInterest);

    if(!pose || !anim)
        return;

    tPoseAnimationController *pc = new tPoseAnimationController;
    pc->SetName(name);
    pc->SetPose(pose->GetPose());
    pc->SetAnimation(anim);

    p3d::inventory->Store(pc);

    if(controller == NULL)
        NextAnimType("Pose");
}

void Viewer::MakePoseControllerAll(char* name)
{
    tDrawablePose* pose = p3d::find<tDrawablePose>(name);

    if(!pose)
        pose = dynamic_cast<tDrawablePose*>(objectOfInterest);

    if(!pose)
        return;

    tInventory::Iterator<tAnimation> it(p3d::inventory);
    
    tAnimation* anim = it.First();
    while(anim)
    {
        if(anim->GetAnimationType() == Pure3DAnimationTypes::POSE_TRANSFORM_PTRN)
        {
            tPoseAnimationController *pc = new tPoseAnimationController;
            pc->SetName(anim->GetName());
            pc->SetPose(pose->GetPose());
            pc->SetAnimation(anim);

            p3d::inventory->Store(pc);
        }
        anim = it.Next();
    }

    if(controller == NULL)
        NextAnimType("Pose");
}

void Viewer::SetParticleBlendRatio(float ratio)
{
    particleBlendRatio = rmt::Clamp(ratio,0.0f,1.0f);
    tParticleSystem* start = dynamic_cast<tParticleSystem*>(particleSystems->Current());
    tParticleSystem* current = start;
    do {
        if (current)
        {
            current->SetBlendRatio(particleBlendRatio);
            current = dynamic_cast<tParticleSystem*>(particleSystems->Next());
        }
        else
        {
            break;
        }
    } while (start!=current);
}

void Viewer::IncParticleBlendRatio(void)
{
    if (particleBlendRatio<1.0f)
        SetParticleBlendRatio(particleBlendRatio+0.05f);
}

void Viewer::DecParticleBlendRatio(void)
{
    if (particleBlendRatio>0.0f)
        SetParticleBlendRatio(particleBlendRatio-0.05f);
}

void Viewer::EnableFog(int enable)
{
    view->EnableFog(enable != 0);
    if (enable)
    {
        view->SetFogColour(fogColour);
        view->SetFogPlanes(fogStart,fogEnd);
    }
}

void Viewer::ToggleGrid(void)
{
    grid->ToggleGrid();
}

void Viewer::ToggleOrigin(void)
{
    grid->ToggleOrigin();
}


void Viewer::DrawDebug3D(float frameTime)
{
    if(supressAllInfo)
    {
        return;
    }

    grid->Display();
    vcam->Display();

    for(unsigned i = 0; i < Plugin::Registry::GetModuleCount(); i++)
    {
        if(Plugin::Registry::GetModule(i)->GetType() == Plugin::RENDERER)
        {
            dynamic_cast<Plugin::Renderer*>(Plugin::Registry::GetModule(i))->Display();
        }
    }

    if (drawPhysicsObjects)
    {
        collisionViewer->Display(dynamic_cast<tDrawable*>(objectOfInterest));
    }

    tDrawable* draw = dynamic_cast<tDrawable*>(objectOfInterest);

    if(draw && box)
        draw->DisplayBoundingBox();

}

void Viewer::DrawDebug2D(float frameTime)
{
    if(supressAllInfo)
    {
        return;
    }

    char nameBuf[256];
    

    //Default overlay                
    
    p3d::ClassName(objectOfInterest, nameBuf, 256);
    overlay->UpdateStatusLineF("draw","%s : %s", objectOfInterest ? nameBuf : "Drawable", objectOfInterest ? objectOfInterest->GetName() : "<none>");

    p3d::ClassName(controller, nameBuf, 256);
    overlay->UpdateStatusLineF("anim", "%s : %s (frame %.2f)", controller ? nameBuf : "Animation", controller ? controller->GetName() : "<none>",
                                                controller ? controller->GetFrame() : 0);

    overlay->UpdateStatusLineF("camera", "Camera : %s", camera->GetName());

 
    overlay->UpdateStatusLineF("light", "Lights : %s", lighting->GetLightGroupName());

    float newTime = frameTime;

    if(averageTime)
    {
        newTime = framerate.Smooth(newTime);
    }

    overlay->UpdateStatusLineF("fps", "%.2f ms (%d fps)", newTime, int(1000/newTime)); 
    overlay->UpdateStatusLineF("polygons", "Polys : %d", polyCount); 
    overlay->UpdateStatusLineF("vertices", "Verts : %d", vertexCount); //for the Overlay class

    float tmpMem = heapLowWater ? ((float(heapUsage) - float(heapLowWater)) / 1024.0f) : 0.0f;

    if(tmpMem < 0.0f) tmpMem = 0.0f;
    overlay->UpdateStatusLineF("memory", "Memory :\n     tex: %0.1fk\n     geo: %0.1fk\n     other: %0.1fk", 
                p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_4BIT) +
                p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_8BIT) +
                p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_16BIT) +
                p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_32BIT) +
                p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_DXTN),
                p3d::pddi->GetFloatStat(PDDI_STAT_BUFFERED_ALLOC),
                tmpMem );

    if(writeMemProfile)
    {
        char tmpCmd[256];

        writeMemProfile = false;

        sprintf(tmpCmd, "c_writeMemProfile \"%s\t%.1f\t%.1f\t%.1f\"", fileMemProfile,
            p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_4BIT) +
            p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_8BIT) +
            p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_16BIT) +
            p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_32BIT) +
            p3d::pddi->GetFloatStat(PDDI_STAT_TEXTURE_ALLOC_DXTN),
            p3d::pddi->GetFloatStat(PDDI_STAT_BUFFERED_ALLOC),
            tmpMem );

        SendCommandToClient(tmpCmd);
    }
/*
    extern unsigned timeA;
    extern unsigned timeB;
    extern unsigned timeC;
    extern unsigned timeD;
    extern unsigned timeE;
    extern unsigned timeF;
    extern unsigned timeG;

    overlay->UpdateStatusLineF("launch", "t: %.2f ms :  %.2f %.2f %.2f %.2f %.2f %.2f %.2f", ((float)shadowTime)/1000.0f, ((float)timeF)/1000.0f, ((float)timeG)/1000.0f, ((float)timeA)/1000.0f, ((float)timeB)/1000.0f, ((float)timeC)/1000.0f, ((float)timeD)/1000.0f, ((float)timeE)/1000.0f);
    timeA = timeB = timeC = timeD = timeE = timeF = timeG = 0;
*/

    static float rotate = 0.0f;
    rotate += 0.001f * frameTime;

    if(rotate > PI_2)
        rotate -= PI_2;


    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
    p3d::stack->Push();
    p3d::stack->LoadIdentity();

    pddiPrimStream* stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, 2);

    float x,y;
    rmt::SinCos(rotate, &x, &y);
    x *= 5;
    y *= 5 * 1.33f;

    stream->Colour(tColour(255,255,255));
    stream->Coord(p3d::display->GetWidth() - 80 - x, 105 - y, 5);

    stream->Colour(tColour(255,255,255));
    stream->Coord(p3d::display->GetWidth() - 80 + x, 105 + y, 5);

    p3d::pddi->EndPrims(stream);

    p3d::stack->Pop();
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);

    if(showInventory)
        ShowInventory();

    if(showMessages)
    {
        messageWindow->Display(300,100);
    }

    messageWindow->CheckForTimeouts(frameTime);

    if(currentLoad)
    {
        if(currentLoad->GetState() == COMPLETE)
        {
            currentLoad = NULL;
        }
        else
        {
            char buf[1024];
            const char* full = currentLoad->GetFilename();
            const char* tmp = &full[strlen(full) - 1];

            while((tmp != full) && (*tmp != '\\'))
                tmp--;

            if(*tmp == '\\')
                tmp++;

            sprintf(buf, "Loading %s (%d%%)...", tmp, int(currentLoad->GetPortionLoaded() * 100));
            p3d::pddi->DrawString(buf,60, p3d::display->GetHeight() / 2, tColour(0,255,0));
        }

    }

    if(showOverlay)
        overlay->Display();

    if(console)
    {
        consoleView->Show(console->IsActive() && !console->IsQuickActive());
        consoleView->Tick(frameTime);
        consoleView->Display();
        if(console->IsQuickActive())
            consoleQuickView->Display();
    }

    lighting->Display();
}


void Viewer::Display(float frameTime)
{
    nShadows = 0;

    Time t(frameTime, Time::MILLISECONDS);
    t = capture->PreRender(t, controller, &supressAllInfo);
    frameTime = (float)t.AsMicroseconds() / 1000.0f;

    if (frameTime > 1000.0f)
    {
        frameTime = 16.6666f;
    }

    Time launch;
    PolyCounter polys;

    if(trackPose)
    {
        tDrawablePose* p = dynamic_cast<tDrawablePose*>(objectOfInterest);
        if(p && (trackedJointIndex < (unsigned)p->GetPose()->GetNumJoint()))
        {
            vcam->Watch(p->GetPose()->GetJoint(trackedJointIndex)->worldMatrix.Row(3), true);
        }
    }

    if(forceFrustum)
    {
        camera->SetFOV(DegToRadian(fovX),fovAspect);
        camera->SetNearPlane(nearPlane);
        camera->SetFarPlane(farPlane);
    }
    else
    {
        vcam->SetFOV(DegToRadian(fovX),fovAspect);
        vcam->SetNearPlane(nearPlane);
        vcam->SetFarPlane(farPlane);
        qcam->SetFOV(DegToRadian(fovX),fovAspect);
        qcam->SetNearPlane(nearPlane);
        qcam->SetFarPlane(farPlane);
    }

    view->SetBackgroundColour(backgroundColour);


    vcam->Tick(frameTime);
    qcam->Tick(frameTime);


    p3d::platform->SetActiveContext(context);
    
    p3d::loadManager->SwitchTask();

    p3d::context->BeginFrame();
    
    view->BeginRender();

        if(help)
        {
            DisplayHelp();
        }
        else
        {
            static tShadowGenerator& shadowGen = *(new tShadowGenerator);
            shadowGen.PreRender();

            DrawDebug3D(frameTime);

            if(background)
            {
                p3d::stack->Push();
                p3d::stack->LoadIdentity();
                p3d::stack->Translate(-0.5f, -(1.0f/1.33f) / 2, camera->GetFarPlane() - 1);
                p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);
                p3d::pddi->SetZWrite(false);

                background->Display();

                p3d::pddi->SetZWrite(true);
                p3d::pddi->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
                p3d::stack->Pop();

            }

            lighting->BeginScene();

            p3d::stack->Push();
            p3d::stack->Translate(0,0,0);
            p3d::stack->Multiply(current);

            lighting->SelectLighting();

            polys.Begin();

            launch = kernel->SystemTime();
            DisplayDrawable(dynamic_cast<tDrawable*>(objectOfInterest));
            launch = kernel->SystemTime() - launch;

#ifdef RAD_XBOX
            tBillboardQuadGroup::SubmitVisibilityTests();
#endif

            polyCount = 0;
            vertexCount = 0;
            polys.End(&polyCount, &vertexCount);

            unsigned shadowTime = 0;
            tDrawable* draw = dynamic_cast<tDrawable*>(objectOfInterest);
            if(draw)
            {
                if(!nShadows)
                {
                    tShadow* shadow = p3d::find<tShadow>(draw->GetName());
                    if(shadow)
                    {
                        shadows[nShadows] = shadow;
                        shadowMatrices[nShadows] = *p3d::stack->GetMatrix();
                        nShadows++;

                        tDrawablePose* d = dynamic_cast<tDrawablePose*>(draw);
                        tShadowSkin* s = dynamic_cast<tShadowSkin*>(shadow);
                        if(d && s)
                        {
                            s->SetPose(d->GetPose());   
                        }
                    }
                }

                if(nShadows)
                {

                    shadowTime = radTimeGetMicroseconds();

                    int curShadowCaster = 0;
                    RefPtr<tLightGroup> shadowCasters = new tLightGroup(16);
                    lighting->GetShadowCasters(shadowCasters);
                    tColour washColours[16];

                    {
                        int sumIntensity = 0;
                        int i;
                        int lightCount = 0;

                        for( i = 0; i < shadowCasters->GetNumLights(); i++ )
                        {
                            if( shadowCasters->GetLight( i ) != NULL )
                            {
                                const tColour &c = shadowCasters->GetLight( i )->GetColour();
                                sumIntensity += rmt::Max( c.Red(), rmt::Max( c.Green(), c.Blue() ) );
                            }
                        }

                        sumIntensity *= 4;
    
                        for( i = 0; i < shadowCasters->GetNumLights(); i++ )
                        {
                            /*
                            tLight *light = shadowCasters->GetLight( i );
                            if( light != NULL )
                            {
                                if( sumIntensity != 0 )
                                {
                                    const tColour &c = light->GetColour();
                                    int intensity = rmt::Max( c.Red(), rmt::Max( c.Green(), c.Blue() ) );
                    
                                    static const float DEFAULT_SHADOW_CONTRAST = 1.0f;
                                    float scale   = DEFAULT_SHADOW_CONTRAST * (float)intensity / (float)sumIntensity;
                                    int channel   = 255 - rmt::Clamp( (int)( scale * (float)intensity ), 0, 255 );
                                    // int channel   = rmt::Clamp( intensity, 0, 255 );
                                    washColours[i] = tColour ( channel, channel, channel );
                                }
                                else
                                {
                                    washColours[i] = tColour(255,255,255);
                                }
                            }*/
                            unsigned intensity = (1.0f - shadowIntensity) * 255;
                            washColours[i] = tColour(intensity,intensity,intensity);

                        }
                    }

                    for(int i = 0; i < shadowCasters->GetNumLights(); i++)
                    {
                        tLight* light = shadowCasters->GetLight(i);
                        
                        if(light && light->IsEnabled())
                        {
                            shadowGen.Begin();
                            shadowGen.SetWashColour(washColours[i]);

                            for(int i = 0; i < nShadows; i++)
                            {
                                p3d::stack->PushLoad(shadowMatrices[i]);

                                if(dynamic_cast<tDirectionalLight*>(light))
                                {
                                    shadows[i]->SetLight(false, dynamic_cast<tDirectionalLight*>(light)->GetDirection());
                                }

                                if(dynamic_cast<tPointLight*>(light))
                                {
                                    shadows[i]->SetLight(true, dynamic_cast<tPointLight*>(light)->GetPosition());
                                }

                                if(dynamic_cast<tSpotLight*>(light))
                                {
                                    shadows[i]->SetLight(true, dynamic_cast<tSpotLight*>(light)->GetPosition());
                                }

                                shadows[i]->SetVolumeLength(10.0f);

                                shadows[i]->Display();
                                p3d::stack->Pop();
                            }

                            shadowGen.End();
                            shadowTime = radTimeGetMicroseconds() - shadowTime;
                            //shadow->DrawShell();
                            //shadow->DrawNormals();
                        }
                    }

                    lightSel->DrawShadowing();
                }
                lightSel->DrawTranslucent();
            }

            p3d::stack->Pop();


            lighting->EndScene();
            
            DisplayShader(dynamic_cast<tShader*>(objectOfInterest),dynamic_cast<tTexture*>(objectOfInterest));
            DisplayFont(dynamic_cast<tFont*>(objectOfInterest));
    
            //SRR2
            DisplayRoad(dynamic_cast<Road*>(objectOfInterest));
            DisplayIntersection(dynamic_cast<Intersection*>(objectOfInterest));
            DisplayRoadSegment(dynamic_cast<RoadSegment*>(objectOfInterest));

            DrawDebug2D(frameTime);
    }
    view->EndRender();

    DisplayAnimation(controller, frameTime);

    p3d::context->EndFrame(false);

    if(burnTime >= 0)
        kernel->Sleep(Time(burnTime, Time::MILLISECONDS));

    capture->PostRender();

    p3d::display->SwapBuffers();

#ifdef RAD_XBOX
    tBillboardQuadGroup::GetVisibilityResults();
#endif

    capture->PostSwap();
}
//-------------------------------------------------------------------
void Viewer::ScrollInventoryUp(void)
{
    if (canScrollInventoryUp) lastInventoryShown--;
}

//-------------------------------------------------------------------
void Viewer::ScrollInventoryDown(void)
{
    if (canScrollInventoryDown) lastInventoryShown++;
}

//-------------------------------------------------------------------
void Viewer::ShowInventory(void)
{   
    int left = 35;   
    int colWidth = 250;
    int spacing = 20;
    int top = 120;
    int bottom = p3d::display->GetHeight() - 40;

    if (showOverlay == false) //if Standard overlay is off
        top = 20;    

    char buf[255];
    sprintf(buf, "name: -%s-  type: -%s-", nameMask, typeMask);
    p3d::pddi->DrawString(buf, left, top, tColour(200,200,255));
    
    if(console)
    {
        if(console->IsFullActive())
        {
            bottom -= (int)consoleView->GetHeight();
        }

        if(console->IsQuickActive())
        {
            bottom -= 30;
        }
    }

    //draw Inventory list, and scrolling indicators if necessary
    int itemsDisplayed = (((bottom - 20) - (top + 20)) / spacing) - 2;
     if (lastInventoryShown == 0) //intialize list if needed
        lastInventoryShown = itemsDisplayed;
    int firstInventoryShown = lastInventoryShown - itemsDisplayed;
    int x = left;
    int y = (top + 40);
    int itemCount = 0;
    bool endOfList = false;
    tInventory::Iterator<tEntity> it;
    tEntity* obj = it.First();
   
    //loop through and print list
    while(!endOfList && (itemCount < lastInventoryShown))
    {
        if (itemCount >= firstInventoryShown &&
            strstr(typeid(*obj).name(), typeMask) && 
            strstr(obj->GetName(), nameMask))
        {
            char nameBuf[256];
            p3d::ClassName(obj, nameBuf, 256);
            strcat(nameBuf, "  ");
            sprintf(buf, "%s", strcat(nameBuf, obj->GetName()));
            p3d::pddi->DrawString(buf, x, y, tColour(255,255,255));
            y += spacing;
            
        }
        itemCount++;
        obj = it.Next();
        obj ? endOfList = false : endOfList = true;
    }

    //draw scroll labels
    canScrollInventoryUp = (firstInventoryShown != 0);
    canScrollInventoryDown = (!endOfList);
                            

    if (canScrollInventoryUp)
        p3d::pddi->DrawString("Scroll up: [", x, top + 20, tColour(200,200,200));
    
    if (canScrollInventoryDown)
        p3d::pddi->DrawString("Scroll down: ]", x, bottom - 40, tColour(200,200,200));
    
}

void Viewer::DisplayShader(tShader* mat, tTexture* tex)
{
    if(!mat && !tex)
        return;

    if(!mat)
        mat = testMat;

    if(strcmp(mat->GetType(),"pointsprite")==0)
        return;

    if(tex)
        mat->SetTexture(PDDI_SP_BASETEX, tex);

    p3d::stack->Push();
    p3d::stack->LoadIdentity();
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);

    const float w = 0.20f;
    const float h = 0.20f;
    const float z = 1;

    pddiPrimStream* stream = p3d::pddi->BeginPrims(mat->GetShader(), PDDI_PRIM_TRISTRIP, PDDI_V_CT2, 4);

    tColour white(255,255,255);

    stream->Colour(white);
    stream->UV(0.0f,0.0f);
    stream->UV(0.0f,0.0f,1);
    stream->Coord(-w, -h, z)
        ;
    stream->Colour(white);
    stream->UV(0.0f,1.0f);
    stream->UV(0.0f,1.0f,1);
    stream->Coord(-w, h, z);

    stream->Colour(white);
    stream->UV(1.0f,0.0f);
    stream->UV(1.0f,0.0f,1);
    stream->Coord(w, -h, z);

    stream->Colour(white);
    stream->UV(1.0f,1.0f);
    stream->UV(1.0f,1.0f,1);
    stream->Coord(w, h, z);

    p3d::pddi->EndPrims(stream);

    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
    p3d::stack->Pop();

    if(tex)
    {
        char tmp[128];
        sprintf(tmp, "(Texture dimensions : %d x %d, %d bpp)", tex->GetTexture()->GetWidth(), tex->GetTexture()->GetHeight(), tex->GetTexture()->GetDepth());
        p3d::pddi->DrawString(tmp, 40, p3d::display->GetHeight() - 85);
    }
  
//   mat->EnableLighting(oldLight);
}

void Viewer::DisplayDrawable(tDrawable* draw)
{
    if(!draw)
        return;

    if(dynamic_cast<tSprite*>(draw))
    {
//      p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);
        p3d::stack->Push();
//      p3d::stack->LoadIdentity();
        p3d::stack->Scale(100,100,1);
//      p3d::stack->Translate(0,0,2);
//      (dynamic_cast<tSprite*>(draw))->GetShader()->SetInt(PDDI_SP_FILTER, PDDI_FILTER_NONE);
        draw->Display();
        p3d::stack->Pop();
//      p3d::pddi->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
        return;
    }

    if(drawSkeleton && dynamic_cast<tDrawablePose*>(draw))
    {
        tDrawablePose* drawable = dynamic_cast<tDrawablePose*>(draw);
        tPose* pose = drawable->GetPose();
        tSkeleton* skel = pose->GetSkeleton();

        pddiPrimStream* stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, skel->GetNumJoint() * 2);

        pose->Evaluate();

        for(int i = 0; i < skel->GetNumJoint(); i++)
        {
            tSkeleton::Joint* joint = skel->GetJoint(i);
            stream->Vertex(((pddiVector*)(&(pose->GetJoint(i)->worldMatrix.Row(3)))), tColour(255,255,255));
            stream->Vertex(((pddiVector*)(&(pose->GetJoint(joint->parentIndex)->worldMatrix.Row(3)))), tColour(255,255,255));
        }
        p3d::pddi->EndPrims(stream);

    }
    else
    {
        if(multipleCount <= 1)
        {
            if(dynamic_cast<Scenegraph::Scenegraph*>(draw))
            {
                dynamic_cast<Scenegraph::Scenegraph*>(draw)->CustomDisplay(lightSel);
            }
            else
            {
                draw->Display();
                LightSelector::DoShadow(draw, *p3d::stack->GetMatrix());
            }
        }
        else
        {
            int count = 0;

            for(int sq = 1; true; sq++)
            {
                p3d::stack->Push();
                p3d::stack->Translate(0,0,multipleSpread * (sq - 1));

                int i = 0;
                while(i < sq)
                {
                    draw->Display();

                    p3d::stack->Translate(multipleSpread,0,0);
                    count++;
                    if(count == multipleCount)
                    {
                        goto multipleDone;
                    }
                    i++;
                }

                p3d::stack->Translate(-multipleSpread,0,0);
                while(i > 0)
                {
                    p3d::stack->Translate(0,0,-multipleSpread);
                    draw->Display();

                    count++;
                    if(count == multipleCount)
                    {
                        goto multipleDone;
                    }
                    i--;
                }

                p3d::stack->Pop();
            }
multipleDone:
            p3d::stack->Pop();         ;
        }
    }

#if defined(RAD_XBOX) || defined(RAD_WIN32) 
    tInstancedGeometry::FlushAll();
#endif
}

void Viewer::DisplayFont(tFont* font)
{
    if(!font)
        return;

    p3d::stack->Push();
    p3d::stack->LoadIdentity();
    p3d::stack->Translate(0,0,2);
    p3d::stack->Scale(0.001f,0.001f,0.001f);
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);

    P3D_UNICODE unicodeString[1024];
    p3d::AsciiToUnicode(string, unicodeString, 1024);
    font->DisplayText(unicodeString);

    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_PERSPECTIVE);
    p3d::stack->Pop();
}

void Viewer::DisplayAnimation(tFrameController* controller, float elapsedTime)
{
    if(!controller)
        return;
    
    float tmpAnimSpeed = Abs(animSpeed) * (animForward ? 1 : -1);

    controller->SetCycleMode(FORCE_CYCLIC);

    // find this drawable's animation controller
    if(playAnim)
    {
        controller->SetRelativeSpeed(tmpAnimSpeed);
        controller->Advance(elapsedTime);
        controller->SetRelativeSpeed(1.0f);

        if(animIntegerOnly)
        {
            float frame = controller->GetFrame();
            controller->SetFrame((float)(int)controller->GetFrame());
            controller->Advance(0);
            controller->SetFrame(frame);
        }
    }
}

void Viewer::DisplayRoad( Road* road )
{
    if ( !road )
    {
        return;
    }

    road->Render( tColour( 0, 255, 0 ) );
}

void Viewer::DisplayIntersection( Intersection* intersection )
{
    if ( !intersection )
    {
        return;
    }

    intersection->Render();
}

void Viewer::DisplayRoadSegment( RoadSegment* seg )
{
    if ( seg )
    {
        seg->GetRoad()->Render( tColour( 0, 0, 0 ) );
        seg->Render( tColour( 255, 0, 0 ) );
    }
}

void Viewer::DisplayHelp(void)
{
    if(helpText)
        p3d::pddi->DrawString(helpText,10,50);
}


void Viewer::PrintMessage(char* in)
{
    messageWindow->NewMessage(in);
}



struct MemHeader
{
    unsigned magic;
    unsigned size;
    
#ifdef RAD_PS2
    unsigned char pad[8];
#endif
};

void* operator new(size_t size)
{
    if (!threadInitialized)
    {
        radThreadInitialize();
        threadInitialized = true;
    }
    if(!memInitialized)
    {
#ifdef RAD_GAMECUBE
        radMemoryInitialize(0, 0);
#else
        radMemoryInitialize();
#endif
        memInitialized = true;
    }

    heapUsage += size;
    void* res = radMemoryAlloc( radMemoryGetCurrentAllocator( ), size + sizeof(MemHeader));
    MemHeader* h = (MemHeader*)res;
    h->magic = 0xfeebfeeb;
    h->size = size;
    return (void*)(((char*)res) + sizeof(MemHeader));
}

static inline void MemDelete(void* data)
{
    if(!data)
        return;
        
    MemHeader* h = (MemHeader*)(((char*)data) - sizeof(MemHeader));

    if(h->magic == 0xfeebfeeb)
    {
        heapUsage -= h->size;
        radMemoryFree( h );
    }
    else
    {
        free(data);
    }
}

void operator delete[]( void* data )
{
    MemDelete(data);
}

void operator delete(void* data)
{
    MemDelete(data);
}
