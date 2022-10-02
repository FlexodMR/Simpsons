/*===========================================================================
   testbed.hpp - Pure3D testbed

   28-Mar-96 Created by Neall
   01-May-98 changed to used new console, and scripting
   28-Oct-99 completely rewritten, spiffier version
   14-Feb-00 PS2 / Unix friendly

   Copyright (c) 1995-2000 Radical Entertainment, Inc.
   All rights reserved.
===========================================================================*/
#ifndef _TESTBED_HPP
#define _TESTBED_HPP

#include <stdio.h>
#include "eventreceiver.hpp"
#include "simpleapp.hpp"

class tObjectScripter;
class tCommandLine;
class tConsole;
class tAnimationFrameController;
class tView;
class tCamera;
class tLight;
class tShader;
class tTexture;
class tEntity;

class Mouse;
class Grid;

class TestBed : public EventReceiver
{
public:
   TestBed(SimpleApp* app);
   virtual ~TestBed();

   virtual void Init();
   virtual void RememberFile(const char* fileName) {}

   // EventReceiver interface
   virtual void Render(float delta);
   virtual void Activate(bool a);
   virtual void KeyPress(unsigned key);
   virtual void MousePress(int button);
   virtual void MouseRelease(int button);
   virtual void MouseDrag(int dx, int dy);
   virtual void FileDrop(const char* name);
   virtual void ScripterCommand(const char* name);
   SimpleApp* GetApp() { return app; }


   void Echo(const char* msg);
   char* GetCurrentDrawableName()    { return drawableName; }

protected:
   void InitScripter();
   void ShowInventory();
   virtual void AddPostInitBindings();
   virtual void SetupMenu();
   void HandleCamera(float elapsedTime);
   void DisplayDrawable(float elapsedTime);
   void DisplayShader(tShader* = NULL);
   void DisplayTexture();
   void DisplaySprite();
   tAnimationFrameController* ResolveFrameController(tEntity* entity);

   bool ready;
   SimpleApp* app;
   MulticastReceiver* receiver;

   bool renderingEnabled;
   tView* view;
   tLight* light;
   tCamera* camera;

   Mouse* mouse;
   Grid* grid;
   int showGrid;

   tObjectScripter* scripter;
   tConsole* console;
   tCommandLine *commandLine;

   char commandLineParam[255];
   char pddiLibPath[128];
   int showInventory;
   char typeMask[128];
   char nameMask[128];
   char drawableName[128];
   char animationName[128];
   char materialName[128];
   char textureName[128];
   char cameraName[128];
   char spriteName[128];
   float animSpeed;
   int playAnim;
   int showNormals;
   int showCameraName;
   int lockOrigin;
   int drawableIndex;
};

#endif
