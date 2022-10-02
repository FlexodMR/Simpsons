/*
 * Pure3D Coverage test application
 *
 * Derived from Trivial
 *
 */


#include "coverapp.hpp"

// This include file pulls in definitions of all the Pure3D core classes.
#include <p3d/pure3d.hpp>

#include <assert.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <stdlib.h>

//-------------------------------------------------------------------
// This appears in the window title bar
const char ApplicationName[] = "Pure3D Coverage Test";

// These two values define the resolution of the rendering area
const int WindowSizeX = 640;
const int WindowSizeY = 480;

//-------------------------------------------------------------------
// Linux declaration of Application
class LinuxApp
{
public:
   LinuxApp();
   virtual ~LinuxApp();

   virtual bool Init();
   virtual int Run();
   
   void CreateRenderer();

   void EnableRendering(bool enable) { renderingEnabled = enable; }
   CoverApp* GetRenderer() {return renderer;}

private:

   // To keep the system from bogging, rendering is disabled when
   // the application loses focus.
   bool renderingEnabled;
   CoverApp* renderer;

   // Pure3D core objects
   
   // Pure3D platform - all platform specific interfaces are in the
   // tPlatform class.  For example, Pure3D initialisation which
   // differs between the PC, PS2 and Linux are found in here.
   tPlatform* platform; 

   // Pure3D context - the context defines a running instance of Pure3D.
   // Each context gets it's own instance of PDDI, a matrix stack, and
   // an inventory.  Rendering and animation objects are associated with
   // a particular context.  Data cannot be shared across contexts.
   // There is generally no need for a game to have more than one 
   // context.
   tContext* context;

   static bool displayHelp;
   Display *dpy;
   Window   win;
};

//-------------------------------------------------------------------
// Global application pointer.  We need this in case the WndProc needs to talk
// to the application.
static LinuxApp* app = NULL;

bool LinuxApp::displayHelp = false;

inline LinuxApp* GetApplication() { return app; }

// main - Linux application entry point
// Here, we create the application object, and call it's Run() method.
int main(int argc, char* argv[])
{
   app = new LinuxApp();
   app->Init();
   int returnCode = app->Run();
   delete app;
   return returnCode;
}

//-------------------------------------------------------------------
// LinuxApp implementation
// This is where the Pure3D initialisation, and message loop handing goes
LinuxApp::LinuxApp()
{
   platform = NULL;
   context = NULL;
   renderingEnabled = false;
}

LinuxApp::~LinuxApp()
{
   renderingEnabled = false;
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

static Window MakeWindow( Display *dpy,
                          unsigned int width, unsigned int height )
{
   int attrib[] = { GLX_RGBA,
                    GLX_RED_SIZE, 1,
                    GLX_GREEN_SIZE, 1,
                    GLX_BLUE_SIZE, 1,
                    GLX_DOUBLEBUFFER,
                    None };
   int scrnum;
   XSetWindowAttributes attr;
   unsigned long mask;
   Window root;
   Window win;
   GLXContext ctx;
   XVisualInfo *visinfo;

   scrnum = DefaultScreen( dpy );
   root = RootWindow( dpy, scrnum );

   visinfo = glXChooseVisual( dpy, scrnum, attrib );
   if (!visinfo) {
      printf("Error: couldn't get an RGB, Double-buffered visual\n");
      exit(1);
   }

   /* window attributes */
   attr.background_pixel = 0;
   attr.border_pixel = 0;
   attr.colormap = XCreateColormap( dpy, root, visinfo->visual, AllocNone);
   attr.event_mask = StructureNotifyMask | ExposureMask;
   mask = CWBackPixel | CWBorderPixel | CWColormap | CWEventMask;

   win = XCreateWindow( dpy, root, 0, 0, width, height,
                        0, visinfo->depth, InputOutput,
                        visinfo->visual, mask, &attr );

   ctx = glXCreateContext( dpy, visinfo, NULL, True );

   glXMakeCurrent( dpy, win, ctx );

   XMapWindow( dpy, win );
   return win;
}

bool LinuxApp::Init()
{
   // Get the Display
   dpy = XOpenDisplay(NULL);

   // Create a window
   win = MakeWindow(dpy, 640, 480);
   //glutCreateWindow("Pure3D Coverage Test");

   // Create an application window

   // Initialise Pure3D platform object.
   // This call differs between different platforms.  The Linux version,
   // for example requires nothing to be passed in.
   platform = tPlatform::Create();
   assert(platform);

   CreateRenderer();

   return true;
}

void LinuxApp::CreateRenderer()
{
   // Initialiase the Pure3D context object.
   // We have to create on of these for every window, and for every PDDI
   // instance we use for rendering.  Since almost every application only
   // uses one window and PDDI library at a time, we one need to create one
   // context.
   tContextInitData init;

   ConfigParam config;
   config.Init( "config.txt", platform );

   // This application runs in a window.
   // To take over the entire display, choose PDDI_DISPLAY_FULLSCREEN.
   if( config.GetOptionIntVal("FullScreen") == 1 )
   {
      init.displayMode = PDDI_DISPLAY_FULLSCREEN;
   }
   else
   {
      init.displayMode = PDDI_DISPLAY_WINDOW;
   }

   // All applications should supply PDDI_BUFFER_COLOUR.  PDDI_BUFFER_DEPTH
   // specifies that we also want to allocate a Z-buffer.  Some applications
   // may want to also specifiy PDDI_BUFFER_STENCIL to allocate a stencil
   // buffer.
   init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
   
   // These values only take effect in fullscreen mode.  In windowed mode, the
   // dimensions of the window define the rendering area.  We'll define them
   // anyway for completeness sake.
   init.xsize = WindowSizeX;
   init.ysize = WindowSizeY;

   // Depth of the rendering buffer.  Again, this value only works in
   // fullscreen mode.  In window mode, the depth of the desktop is used.
   // This value should be either 16 or 32.  Depths of 4, 8, and 24 are not
   // supported by most 3D hardware, and not by Pure3D.   
   init.bpp = config.GetOptionIntVal("BPP");

   // The X display and window
   init.xdisplay = dpy;
   init.xwindow = win;

   // Create the context.
   context = platform->CreateContext(&init);
   assert(context);

   // Assign this context to the platform.
   platform->SetActiveContext(context);

   // Create the CoverApp renderer
   renderer = new CoverApp;
   renderer->Init( config );
   renderingEnabled = true;
}

// This is your basic message loop.
int LinuxApp::Run()
{
   float currentTime = 0.0f;   //(float)timeGetTime();
   float elapsed = 16.666f;

   XEvent event;

   while (1) {
      XFlush(dpy);
      if(XPending(dpy))
      {
         XNextEvent( dpy, &event );

         switch (event.type) 
         {
            case Expose:
               // Drawing happens below
               printf("Expose\n");
               break;
            case ConfigureNotify:
               //resize( event.xconfigure.width, event.xconfigure.height );
               printf("ConfigureNotify\n");
               break;
            case KeyPress:
               printf("KeyPress\n");
               break;
            case KeyRelease:
               printf("KeyRelease\n");
               GetApplication()->GetRenderer()->NextTest();
               break;
         }
      }
      if(displayHelp)
      {
         renderer->DisplayHelp();
      }
      else if(renderingEnabled)
      {
         renderer->Render(elapsed);
      }
   }

   return 0;
}
