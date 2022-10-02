/*===========================================================================
   testbed.cpp - Pure3D testbed

   28-Mar-96 Created by Neall
   01-May-98 changed to used new console, and scripting
   28-Oct-99 completely rewritten, spiffier version
   14-Feb-00 PS2 / Unix friendly

   Copyright (c) 1995-2000 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/

#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <typeinfo>

#include <p3d/pure3d.hpp>

#include "grid.hpp"

using namespace RadicalMathLibrary;

#ifdef WIN32
   //#define SPIFFY_CONSOLE
#endif

// console stuff
#include "enhancedconsole.hpp"
#include "simpleconsole.hpp"

#include "objectscripter.hpp"
#include "commandline.hpp"
#include "constuff.hpp"

#include "mouse.hpp"
#include "menu.hpp"
#include "simpleapp.hpp"
#include "eventreceiver.hpp"
#include "testbed.hpp"


//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------
//-------------------------------------------------------------------

#include <stdlib.h>



#define GRID(X, Z) ((Z)*xSamplesPerCell + (X))


//-------------------------------------------------------------------
// Scripter commands
//-------------------------------------------------------------------
static void Quit(SimpleApp* app)
{
   app->Quit();
}

void Load(const char* file, TestBed* testBed)
{
   if(!p3d::load(file))
   {
      //testBed->Echo("Could not load file.");
   }
   else
   {
       testBed->RememberFile(file);
   }
}

static void GetFile(TestBed* testBed)
{
   char filename[255] = {0};
   testBed->GetApp()->GetFileName(filename);
   if(filename[0])
   {
      testBed->FileDrop(filename);
      //p3d::load(filename);
   }
}

static void SetAnim(char* animName, char* controllerName)
{
   tAnimation* anim = p3d::find<tAnimation>(animName);
   if(anim)
   {
      anim->SetCyclic(true);
      tAnimationFrameController* controller = p3d::find<tAnimationFrameController>(controllerName);
      if(controller)// && controller->ValidateAnimation(anim))
      {
         controller->SetAnimation(anim, 0.0f, 15.0f);
      }
   }
}

static void Reset(Mouse* mouse)
{
   mouse->Reset();
}

static void SetOrigin(float x, float y, float z, Mouse* mouse)
{
   mouse->SetOrigin(x, y, z);
   mouse->Reset();
}

static void SetOrientation(float x, float y, float z, Mouse* mouse)
{
   mouse->SetOrientation(x, y, z);
}

static void SetMoveRate(float rate, Mouse* mouse)
{
   mouse->SetMoveRate(rate);
}

static void SetRollRate(float rate, Mouse* mouse)
{
   mouse->SetRollRate(rmt::DegToRadian(rate));
}

static void SetZoomRate(float rate, Mouse* mouse)
{
   mouse->SetZoomRate(rate);
}

static void SetCursorBlink(bool blink, tCommandLine* cl)
{
   cl->SetCursorBlink(blink);
}

static void SetCursorChar(int c, tCommandLine* cl)
{
   cl->SetCursorChar(c);
}

static void SetBackgroundColour(int r, int g, int b, tView* view)
{
   view->SetBackgroundColour(tColour(r,g,b));
}

static void SetAmbient(int r, int g, int b, tView* view)
{
   view->SetAmbientLight(tColour(r,g,b));
}

//-------------------------------------------------------------------
// TestBed class
//-------------------------------------------------------------------
TestBed::TestBed(SimpleApp* a)
{
   app = a;
   receiver = NULL;

   renderingEnabled = false;
   view = NULL;
   camera = NULL;
   light = NULL;
   mouse = NULL;
   grid = NULL;
   showGrid = 0;
   showCameraName = 0;

   console = NULL;
   commandLine = NULL;
   scripter = NULL;
   typeMask[0] = 0;
   nameMask[0] = 0;
   drawableName[0] = 0;
   animationName[0] = 0;
   materialName[0] = 0;
   textureName[0] = 0;
   cameraName[0] = 0;
   spriteName[0] = 0;
   showInventory = 0;
   animSpeed = 1.0f;
   playAnim = true;
   showNormals = false;
   lockOrigin = false;
   drawableIndex = 0;
   ready = false;
}

TestBed::~TestBed()
{
   p3d::inventory->RemoveAllElements();

   app->SetEventReceiver(NULL);
   delete receiver;
   receiver = NULL;

   renderingEnabled = false;
   
   if ( grid ) grid->Release();
   delete console;
   console = NULL;
   delete scripter;
   scripter = NULL;
   delete commandLine;
   commandLine = NULL;

   if(light)
   {
      light->Release();
      light = NULL;
   }

   if(view)
   {
      view->Release();
      view = NULL;
   }

   if(camera)
   {
      camera->Release();
      camera = NULL;
   }

   delete mouse;
   mouse = NULL;
}

//-------------------------------------------------------------------
void TestBed::Activate(bool a)
{
   renderingEnabled = a;
}

void TestBed::MousePress(int button)
{
   if(!lockOrigin)
      mouse->Press(button);
}

void TestBed::MouseRelease(int button)
{
   if(!lockOrigin)
      mouse->Release(button);
}

void TestBed::MouseDrag(int dx, int dy)
{
   if(!lockOrigin)
      mouse->Drag(dx, dy);
}

void TestBed::KeyPress(unsigned key)
{
   if(key < 256)
   {
      commandLine->HandleKey(key);
   }

   switch(key)
   {
      case K_F1:
         mouse->Reset();
         break;
      case K_UP:
         commandLine->PrevHistory();
         break;

      case K_DOWN:
         commandLine->NextHistory();
         break;

      case K_PAGEUP:

      default:
      break;
   }
}

void TestBed::FileDrop(const char* name)
{
   p3d::load(name);
}

void TestBed::ScripterCommand(const char* cmd)
{
   if(scripter)
   {
      scripter->ExecLine((char*)cmd);
   }
}

//-------------------------------------------------------------------
void TestBed::Echo(const char* msg)
{
   if(console)
   {
      console->Echo((char*)msg);
   }
}

//-------------------------------------------------------------------
// these scripter functions are active before the Pure3D context has been created
void TestBed::InitScripter()
{
   scripter = new tObjectScripter;
   scripter->SetFunction("quit", (void*)Quit, "", this->app);
   scripter->SetStringRef("pddi", pddiLibPath);
   scripter->SetStringRef("typeMask", typeMask);
   scripter->SetStringRef("nameMask", nameMask);
   scripter->SetIntRef("inventory", &showInventory);
   scripter->SetStringRef("draw", drawableName);
   scripter->SetStringRef("shader", materialName);
   scripter->SetStringRef("texture", textureName);
   scripter->SetFloatRef("speed", &animSpeed);
   scripter->SetIntRef("play", &playAnim);
   scripter->SetIntRef("normals", &showNormals);
   scripter->SetIntRef("lockOrigin", &lockOrigin);
   scripter->SetIntRef("showCameraName", &showCameraName);
   scripter->SetIntRef("grid", &showGrid);
}

// these functions are only valid after Pure3D is up and running
void TestBed::AddPostInitBindings()
{
   scripter->SetFunction("load", (void*)Load, "s", this);
   scripter->SetFunction("getFile", (void*)GetFile, "", this);
   scripter->SetFunction("anim", (void*)SetAnim, "s", drawableName);
   scripter->SetFunction("cameraAnim", (void*)SetAnim, "s", cameraName);

   //scripter->SetFunction("light", "s", AddLight, this);
   scripter->SetStringRef("camera", cameraName);
   scripter->SetStringRef("sprite", spriteName);

   scripter->SetFunction("reset", (void*)Reset, "", mouse);
   scripter->SetFunction("origin", (void*)SetOrigin, "fff", mouse);
   scripter->SetFunction("orientation", (void*)SetOrientation, "fff", mouse);
   scripter->SetFunction("moveRate", (void*)SetMoveRate, "f", mouse);
   scripter->SetFunction("rollRate", (void*)SetRollRate, "f", mouse);
   scripter->SetFunction("zoomRate", (void*)SetZoomRate, "f", mouse);

   scripter->SetFunction("cursorBlink", (void*)SetCursorBlink, "i", commandLine);
   scripter->SetFunction("cursorChar", (void*)SetCursorChar, "i", commandLine);

   scripter->SetFunction("background", (void*)SetBackgroundColour, "iii", view);
   scripter->SetFunction("ambient", (void*)SetAmbient, "iii", view);

   scripter->ExecFile("renderconfig.cfg");
}

void TestBed::SetupMenu()
{
   MenuHandler* menuHandler = app->GetMenuHandler();

   if(!menuHandler)  // some platforms (PS2) don't support menus
      return;

   menuHandler->AddItem("&File",         MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("&Open...",      MenuHandler::ITEM,    0, false, false, "getFile");
   menuHandler->AddItem("&Exit",         MenuHandler::ITEM,    0, false, false, "quit");

   menuHandler->AddItem("&View",         MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("Fill",          MenuHandler::SUB,     0, false, false, "");   
   menuHandler->AddItem("Solid",         MenuHandler::SUBITEM, 1, true,  true,  "fillMode solid");
   menuHandler->AddItem("Wireframe",     MenuHandler::SUBITEM, 1, true,  false, "fillMode wire");
   menuHandler->AddItem("Point",         MenuHandler::SUBITEM, 1, true,  false, "fillMode point");
   menuHandler->AddItem("Face Culling",  MenuHandler::SUB,     0, false, false, "");   
   menuHandler->AddItem("Off",           MenuHandler::SUBITEM, 2, true,  false, "cullMode none");
   menuHandler->AddItem("Normal",        MenuHandler::SUBITEM, 2, true,  true,  "cullMode ccw");
   menuHandler->AddItem("Inverted",      MenuHandler::SUBITEM, 2, true,  false, "cullMode cw");

   menuHandler->AddItem("&Object",       MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("Display Inventory",     MenuHandler::ITEM,    0, true,  false, "inventory %d");
   menuHandler->AddItem("Show",          MenuHandler::SUB,     0, false, false, "");
   menuHandler->AddItem("All",           MenuHandler::SUBITEM,    3, true,  true,  "typeMask \"\"");
   menuHandler->AddItem("Cameras",       MenuHandler::SUBITEM,    3, true,  false, "typeMask Camera");
   menuHandler->AddItem("Lights",        MenuHandler::SUBITEM,    3, true,  false, "typeMask Light");
   menuHandler->AddItem("Meshes",        MenuHandler::SUBITEM,    3, true,  false, "typeMask Geometry");
   menuHandler->AddItem("Scenes",        MenuHandler::SUBITEM,    3, true,  false, "typeMask SimpleScene");
   menuHandler->AddItem("PolySkins",     MenuHandler::SUBITEM,    3, true,  false, "typeMask PolySkin");   
   menuHandler->AddItem("Animations",    MenuHandler::SUBITEM,    3, true,  false, "typeMask Animation");   
   menuHandler->AddItem("Textures",      MenuHandler::SUBITEM,    3, true,  false, "typeMask Texture");
   menuHandler->AddItem("Shader",        MenuHandler::SUBITEM,    3, true,  false, "typeMask Shader");
   menuHandler->AddItem("Sprites",       MenuHandler::SUBITEM,    3, true,  false, "typeMask Sprite");
   menuHandler->AddItem("Fonts",         MenuHandler::SUBITEM,    3, true,  false, "typeMask PolyFont");

   menuHandler->AddItem("&Camera",       MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("Reset" ,        MenuHandler::ITEM,    0, false, false, "reset");
   menuHandler->AddItem("Mouse sensitivity", MenuHandler::SUB, 0, false, false, "");
   menuHandler->AddItem("Normal",        MenuHandler::SUBITEM, 4, true,  true,  "moveRate 0.2; zoomRate 0.5; rollRate 0.7");
   menuHandler->AddItem("Low",           MenuHandler::SUBITEM, 4, true,  false, "moveRate 0.05; zoomRate 0.125; rollRate 0.175");
   menuHandler->AddItem("Lock Origin",   MenuHandler::ITEM,    0, true,  false, "lockOrigin %d");

   menuHandler->AddItem("&Animation",    MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("Play",          MenuHandler::ITEM,    5, true,  true,  "play 1");
   menuHandler->AddItem("Stop",          MenuHandler::ITEM,    5, true,  false, "play 0");
   menuHandler->AddItem("Speed",         MenuHandler::SUB,     0, false, false, "");
   menuHandler->AddItem("Double",        MenuHandler::SUBITEM, 6, true,  false, "speed 2.0");
   menuHandler->AddItem("Normal",        MenuHandler::SUBITEM, 6, true,  true,  "speed 1.0");
   menuHandler->AddItem("Half",          MenuHandler::SUBITEM, 6, true,  false, "speed 0.5");
   menuHandler->AddItem("Quarter",       MenuHandler::SUBITEM, 6, true,  false, "speed 0.25");
   
   menuHandler->AddItem("&Info",         MenuHandler::TOP,     0, false, false, "");
   menuHandler->AddItem("Normals (Meshes only)",   MenuHandler::ITEM,    0, true,  false, "normals %d");
   menuHandler->AddItem("Grid",          MenuHandler::ITEM,    0, true,  true, "grid %d");
   menuHandler->AddItem("Statistics",    MenuHandler::ITEM,    0, true,  false, "statsOverlay %d");
   menuHandler->AddItem("Camera Name",   MenuHandler::ITEM,    0, true,  false, "showCameraName %d");

   menuHandler->Create();
}

//-------------------------------------------------------------------
void TestBed::Init()
{
   assert(_heapchk() == _HEAPOK);
   InitScripter();
 
   pddiLibPath[0] = 0;
   scripter->ExecFile("appconfig.cfg");
   if(!pddiLibPath[0])
   {
      strcpy(pddiLibPath, "pddid3dd.dll");
   }

   bool FULLSCREEN = false;
   int width = 800, height = 600;
#ifndef RAD_DEBUG
   FULLSCREEN = false; // full screen doesn't work
   width = 1000;
   height = 750;
#endif

   bool good = app->InitPure3D("Pure3D Viewer (built on " __DATE__ ", " __TIME__ ")", pddiLibPath, width, height, 32, FULLSCREEN);
   assert(good);

   // install loaders
   p3d::InstallDefaultLoaders();

   // set up scripter->pddi bindings
   PDDIBindings(scripter);

   commandLine = new tCommandLine(scripter);
   commandLine->SetActivationKey('`');

#ifdef SPIFFY_CONSOLE
   p3d::load("arial.ttf");
   tTypeFace* font = p3d::find<tTypeFace>("arial.ttf");
   if(font)
   {
      font->AddRef();
      font->SetResolution(18.0f, 1.0f);
      font->SetForegroundColour(tColour(177, 177, 177));
      font->SetBackgroundColour(tColour(0, 0, 0));
      tTextureFont* consoleFont = font->MakeTextureFont(P3D_SCREEN_FONT, 18.0f);

      consoleFont->GetMaterial()->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ADD);
      //consoleFont->GetMaterial()->SetFilterMode(PDDI_FILTER_NONE);
      console = new tEnhancedConsole(commandLine, NULL, consoleFont);
      ((tEnhancedConsole*)console)->SetSlide(false);
      ((tEnhancedConsole*)console)->GetBackgroundMaterial()->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);
   }
   else
   {
      console = new tSimpleConsole(commandLine);
   }
#else
   console = new tSimpleConsole(commandLine);
#endif

   // setup Pure3D scene
   camera = new tCamera;
   camera->AddRef();
   camera->SetName("viewer camera");
   camera->SetFOV(rmt::DegToRadian(90), (4.0f/3.0f));
   camera->SetFarPlane(20000.0f);
   camera->SetNearPlane(0.1f);
   p3d::inventory->Store(camera);

   view = new tView;
   view->AddRef();

   view->SetCamera(camera);

   view->SetBackgroundColour(tColour(64, 64, 128));
   view->SetAmbientLight(tColour(32, 32, 32));

   light = new tDirectionalLight;
   light->AddRef();

   ((tDirectionalLight*)light)->SetDirection(-1,-1,1);
   light->SetColour(tColour(255,255,255));

   //tPointLight* light = new tPointLight;
   //light->SetPosition(0.0f, 0.0f, 0.0f);

   view->AddLight(light);

   mouse = new Mouse;
   mouse->SetOrigin(0.0f, 0.0f, 300.0f);
   mouse->Reset();

   // install loader for toon renderer
   tP3DFileHandler* p3d = p3d::loadManager->GetP3DHandler();
   if(p3d)
   {   
      //p3d->AddHandler(new tSilhouetteGeometryLoader);
   }
   // configure image loaders to load bitmaps as sprites
   tImageHandler* imgHandler;
   imgHandler = (tImageHandler*)p3d::loadManager->GetHandler("png");
   if(imgHandler) imgHandler->SetLoadType(tImageHandler::SPRITE);
   imgHandler = (tImageHandler*)p3d::loadManager->GetHandler("bmp");
   if(imgHandler) imgHandler->SetLoadType(tImageHandler::TEXTURE);
   imgHandler = (tImageHandler*)p3d::loadManager->GetHandler("tga");
   if(imgHandler) imgHandler->SetLoadType(tImageHandler::SPRITE);

   AddPostInitBindings();


   // we are ready to receive events
   receiver = new MulticastReceiver;
   receiver->Add(this);
   app->SetEventReceiver(receiver);
   SetupMenu();
   renderingEnabled = true;
   ready = true;
}

//-------------------------------------------------------------------
tAnimationFrameController* TestBed::ResolveFrameController(tEntity* entity)
{
   //tGeometry* geo = dynamic_cast<tGeometry*>(entity);
   //tMaterial* mat = dynamic_cast<tMaterial*>(entity);
   tDrawablePose* drawablePose = dynamic_cast<tDrawablePose*>(entity);  
   tVectorCamera* camera = dynamic_cast<tVectorCamera*>(entity);
   
   if(drawablePose)
   {
      tPoseAnimationController* controller = new tPoseAnimationController;
      //controller->SetName(drawablePose->GetName());
      controller->SetUID(drawablePose->GetUID());
      controller->SetPose(drawablePose->GetPose());
      return controller;
   }
   else
   if(camera)
   {
      tCameraAnimationController* controller = new tCameraAnimationController;
      //controller->SetName(camera->GetName());
      controller->SetUID(camera->GetUID());
      controller->SetCamera(camera);
      return controller;
   }

   return NULL;
}

//-------------------------------------------------------------------
void TestBed::ShowInventory()
{   
}


//tSilhouetteGeometry* toon = NULL;

//-------------------------------------------------------------------
void TestBed::DisplayDrawable(float elapsedTime)
{
   tDrawable* drawable = p3d::find<tDrawable>(drawableName);
   if(drawable)
   {
      // find this drawable's animation controller
      if(playAnim)
      {
         tAnimationFrameController* controller = p3d::find<tAnimationFrameController>(drawableName);
         if(controller)
         {
            controller->SetRelativeSpeed(animSpeed);
            controller->Advance(elapsedTime);
         }
         else
         {
            // make a new controller for this drawable
            controller = ResolveFrameController(drawable);
            if(controller)
            {
               p3d::inventory->Store(controller);
            }
         }
      }

      drawable->Display();

   }
}

void TestBed::DisplayShader(tShader* shad)
{
   tShader* shader = shad;
   if(!shader)
   {
      shader = p3d::find<tShader>(materialName);
   }

   if(shader)
   {
      const float Q = 256.0f;

      p3d::pddi->PushState(PDDI_STATE_VIEW);
      p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
      p3d::stack->Push();
      p3d::stack->LoadIdentity();
      p3d::stack->Translate((p3d::display->GetWidth() / 2) - Q/2, (p3d::display->GetHeight() / 2) - Q/2, 0.0f);

      pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_TRISTRIP, PDDI_V_NT, 4);
      stream->Normal(0, 0,-1.0f);
      stream->UV(0.0f, 0.0f);
      stream->Coord(0, Q, 1.0f);
      stream->Normal(0, 0,-1.0f);
      stream->UV(0, 1.0f);
      stream->Coord(0, 0, 1.0f);
      stream->Normal(0, 0,-1.0f);
      stream->UV(1.0f, 0.0f);
      stream->Coord(Q, Q, 1.0f);
      stream->Normal(0, 0,-1.0f);
      stream->UV(1.0f, 1.0f);
      stream->Coord(Q, 0, 1.0f);
      p3d::pddi->EndPrims(stream);
      
      p3d::stack->Pop();
      p3d::pddi->PopState(PDDI_STATE_VIEW);
   }
}

void TestBed::DisplayTexture()
{
   tTexture* texture = p3d::find<tTexture>(textureName);
   if(texture)
   {
      tShader* m = new tShader;
      m->SetTexture(PDDI_SP_BASETEX, texture);
      DisplayShader(m);
      m->Release();
   }
}

void TestBed::DisplaySprite()
{
   tSprite* sprite = p3d::find<tSprite>(spriteName);
   if(sprite)
   {
      p3d::stack->Push();
      p3d::stack->Scale(100,100,1);
      sprite->Display();
      p3d::stack->Pop();
   }
}

void TestBed::HandleCamera(float elapsedTime)
{
   tCamera* currentCamera = p3d::find<tCamera>(cameraName);
   tAnimationFrameController* cameraController = p3d::find<tCameraAnimationController>(cameraName);
   if(cameraController)
   {
      cameraController->SetRelativeSpeed(animSpeed);
      cameraController->Advance(elapsedTime);
   }
   else
   {
      // make a new controller for this drawable
      cameraController = ResolveFrameController(currentCamera);
      if(cameraController)
      {
         p3d::inventory->Store(cameraController);
      }
   }
   if(currentCamera)
   {
      view->SetCamera(currentCamera);
   }
   else
   {
      currentCamera = camera; // use built in viewer camera
      view->SetCamera(camera);
   }
}


#include "p3d/targa.hpp"



//-------------------------------------------------------------------
void TestBed::Render(float elapsedTime)
{
}

