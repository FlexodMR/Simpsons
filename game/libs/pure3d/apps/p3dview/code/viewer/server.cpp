//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "server.hpp"

#include <interface/kernel.hpp>
#include <interface/display.hpp>
#include <interface/window.hpp>
#include <config/arguments.hpp>
#include <config/settings.hpp>
#include <console/console.hpp>
#include <console/objectscripter.hpp>
#include <client/client.hpp>
#include <file/textfile.hpp>
#include <viewer/server.hpp>
#include <input/consolebindings.hpp>
#include <viewer/p3dcube.h>
#include <viewer/testpattern.hpp>

#include <p3d/utility.hpp>
#include <p3d/pointcamera.hpp>
#include <p3d/directionallight.hpp>
#include <p3d/view.hpp>
#include <p3d/matrixstack.hpp>
#include <p3d/drawable.hpp>

#include"viewer.hpp"
#include"server.hpp"
#include"version.h"
#include"compile.h"

#include<stdio.h>

//SRR2
#include <roads/roadmanager.h>


void SetupDebugCom(void);
void ShutdownDebugCom(void);
void ServiceDebugCom(CommandRecipient* cmd);
void SendCommandToClient(const char* command);

bool g_WaitForConnect = true;

#ifdef RAD_WIN32
#include <gui/win32/window.hpp>
#endif


class SplashScreen
{
public:
    SplashScreen() {}
    ~SplashScreen() {}

    void Setup(Kernel* k)
    {
        display = k->NewDisplay(k->GetMainWindow());

        display->SetDriver("pddidx8d");
        display->SetResolution(640,480,16);
        display->SetFullscreen(false);
        display->Initialize();

        p3d::InstallDefaultLoaders();
        p3d::loadManager->GetP3DHandler()->Load(new tFileMem((unsigned char*)p3dcube, sizeof(p3dcube)), p3d::inventory);
        tPointCamera* camera = new tPointCamera;
        tDirectionalLight* light = new tDirectionalLight;

        view = new tView;
        view->AddRef();

        light->SetDirection(rmt::Vector(-1,-1,1));
        camera->SetPosition(rmt::Vector(0,0,-2));
        view->SetCamera(camera);
        view->AddLight(light);
        view->SetAmbientLight(tColour(64,64,64));

        rotate = 0.0f;
    }

    void Display(void)
    {
        tDrawable* draw = p3d::find<tDrawable>("pCubeShape1");
        p3d::context->BeginFrame();
        view->BeginRender();
        p3d::stack->Push();
        p3d::stack->RotateY(rotate);
        
        if(draw)
            draw->Display();

        p3d::stack->Pop();

        char title[256];
        sprintf(title, "Pure3D Viewer %s", ViewerVersionString());
        p3d::pddi->DrawString(title, 35,35);
        p3d::pddi->DrawString("Waiting for connection...", 35,55);
        view->EndRender();
        p3d::context->EndFrame();

        rotate += 0.002f;
    }

    void Shutdown(void)
    {
        p3d::loadManager->RemoveAllHandlers();
        view->Release();
        delete display;
    }

private:
    ::Display* display;
    tView* view;
    float rotate;

};

Kernel* g_kernel = NULL;
SplashScreen g_splashScreen;
TestPattern g_testPattern;

Server::Server(Kernel* k)
{
    kernel = k;
    console = NULL;
}

void Server::Initialize(Arguments* args, Settings*)
{
    settings = new Settings;

    if(g_WaitForConnect)
    {
        InStream* file = kernel->OpenFileIn("server.ini");
        if(file)
        {
            TextInStream serverIni(file);
            settings->LoadFile("server.ini", &serverIni);
        }

        file = kernel->OpenFileIn("server_user.ini");
        if(file)
        {
            TextInStream serverUserIni(file);
            settings->LoadFile("server_user.ini", &serverUserIni);
        }
    }

    settings->SetDominant("server_user.ini");

    display = kernel->NewDisplay(kernel->GetMainWindow());
    interpreter = new Console::ObjectScripter;

    display->SetDriver("pddidx8d");
    display->SetResolution(640,480,16);
    display->SetFullscreen(false);
    display->Configure(settings);

    g_testPattern.Setup(interpreter);

    interpreter->SetClosure("s_set", settings, &Settings::SetString);
    interpreter->SetClosure("s_dumpSettings", this, &Server::DumpSettings);
    interpreter->SetClosure("s_display_init", display, &Display::Initialize);
    interpreter->SetClosure("s_exit", kernel, &Kernel::Exit);
    interpreter->SetFunction("s_clientCommand", SendCommandToClient);

#ifndef RAD_WIN32
    kernel->CreateInput("");
    bindings = new Input::ConsoleBindings(this, kernel->GetInput());
    bindings->SetConsole(NULL);
    interpreter->SetClosure("s_bind", bindings, &Input::ConsoleBindings::Bind);

    bindings->Bind("JOY0_STICK0_X",    "camSetRotateX");
    bindings->Bind("JOY0_STICK0_Y",    "camSetRotateY");

    bindings->Bind("JOY0_STICK1_X",    "camSetMoveX");
    bindings->Bind("JOY0_STICK1_Y",    "camSetMoveY");

    bindings->Bind("+JOY0_DPAD_UP",     "camSetZoom 1");
    bindings->Bind("+JOY0_DPAD_DOWN",   "camSetZoom -1");
    bindings->Bind("-JOY0_DPAD_UP",     "camSetZoom 0");
    bindings->Bind("-JOY0_DPAD_DOWN",   "camSetZoom 0");

    bindings->Bind("+JOY0_BUTTON_L", "prevObj");
    bindings->Bind("+JOY0_BUTTON_R", "nextObj");

    bindings->Bind("+JOY0_BUTTON_START", "help 1");
    bindings->Bind("-JOY0_BUTTON_START", "help 0");

    //bindings->Bind("+JOY0_BUTTON0",  "s_clientCommand echo test");
    /*
    bindings->Bind("+JOY0_DPAD_UP",    "printMessage JOY0_DPAD_UP");
    bindings->Bind("+JOY0_DPAD_DOWN",  "printMessage JOY0_DPAD_DOWN");
    bindings->Bind("+JOY0_DPAD_LEFT",  "printMessage JOY0_DPAD_LEFT");
    bindings->Bind("+JOY0_DPAD_RIGHT", "printMessage JOY0_DPAD_RIGHT");

    bindings->Bind("+JOY0_BUTTON0",  "printMessage JOY0_BUTTON0");
    bindings->Bind("+JOY0_BUTTON1",  "printMessage JOY0_BUTTON1");
    bindings->Bind("+JOY0_BUTTON2",  "printMessage JOY0_BUTTON2");
    bindings->Bind("+JOY0_BUTTON3",  "printMessage JOY0_BUTTON3");
    bindings->Bind("+JOY0_BUTTON4",  "printMessage JOY0_BUTTON4");
    bindings->Bind("+JOY0_BUTTON5",  "printMessage JOY0_BUTTON5");
    bindings->Bind("+JOY0_BUTTON6",  "printMessage JOY0_BUTTON6");

    bindings->Bind("+JOY0_BUTTON_L",       "printMessage JOY0_BUTTON_L");
    bindings->Bind("+JOY0_BUTTON_R",       "printMessage JOY0_BUTTON_R");
    bindings->Bind("+JOY0_BUTTON_START",   "printMessage JOY0_BUTTON_START");
    bindings->Bind("+JOY0_BUTTON_SELECT",  "printMessage JOY0_BUTTON_SELECT");
    bindings->Bind("+JOY0_BUTTON_STICK0",  "printMessage JOY0_BUTTON_STICK0");
    bindings->Bind("+JOY0_BUTTON_STICK1",  "printMessage JOY0_BUTTON_STICK1");
    */
#endif

    display->Initialize();

    viewer = new Viewer(kernel);

    viewer->AttachContext(display->GetContext());
    viewer->Setup();
    viewer->Configure(settings, interpreter);
 
    if(kernel->GetMainWindow())
        kernel->GetMainWindow()->Show(true);

    //SRR2
    RoadManager::GetInstance();  //This is the first call
}

void Server::DumpSettings(void)
{
#ifdef RAD_PC
    settings->UnbindAll();
#endif
    if(settings->GetBool("settings.save"))
    {
        TextOutStream serverUserIni(kernel->OpenFileOut("server_user.ini"));
        settings->SaveFile("server_user.ini", &serverUserIni);
    }
}

void Server::Shutdown(void)
{

    DumpSettings();

    viewer->Shutdown();

    delete interpreter;
    delete settings;
    delete viewer;
    delete display;
    
    //SRR2
    RoadManager::GetInstance()->Init( RoadManager::SHUTDOWN );  //Shutdown
    RoadManager::Destroy();

}

void Server::Tick(float time)
{
     ServiceDebugCom(interpreter);

     if(kernel->GetInput())
        kernel->GetInput()->IssueEvents();

     viewer->Display(time);
}

void Server::Command(const char* c)
{
    interpreter->Command(c);
}

void Server::AttachConsole(Console::Console* c)
{
    console = c;
    viewer->AttachConsole(c);
}

// ---------------------------------------------------

int ServerMain(Kernel* kernel, Arguments* args)
{
    g_kernel = kernel;

    char title[256];
    sprintf(title, "Pure3D Viewer %s (Compiled %s, by %s, against %s#%s)", ViewerVersionString(), compileTime, compileUser, compileServer, compileChangelist);

    Window* window = kernel->NewWindow(title);
    kernel->SetMainWindow(window);
    if(window)
        window->Show(true);

//    g_splashScreen.Setup(kernel);
    SetupDebugCom();
//    g_splashScreen.Shutdown();


    Server* server = new Server(kernel); 
    server->Initialize(args, NULL);

    kernel->SetMainShell(server);

    Time lastTime = kernel->SystemTime();

    while(kernel->Idle())
    {
        Time tmp = lastTime;
        lastTime = kernel->SystemTime();
        Time delta = lastTime - tmp;
        float time = float(delta.AsMicroseconds()) / 1000;

        server->Tick(time);
    }

    server->Shutdown();
    delete server;
    delete window;
    ShutdownDebugCom();
    return 0;
}

#include <raddebugcommunication.hpp>
#include <radfile.hpp>
#include <radtime.hpp>

#include <utility/queue.hpp>
#include <utility/string.hpp>

const unsigned char PACKET_SERVER_COMMAND = 1;
const unsigned char PACKET_CLIENT_COMMAND = 2;
const unsigned char PACKET_ACK = 255;

IRadDbgComChannel* dbgChannel = NULL;

static int nCommands;
static char commands[256][256];
static bool s_attached = false;

class DisplayStatusCallback : public IRadDbgComChannelStatusCallback,
                              public IRadDbgComChannelSendCallback,
                              public IRadDbgComChannelReceiveCallback
{
  public:
    DisplayStatusCallback(  );
    virtual ~DisplayStatusCallback( void );
    virtual void OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage );
    virtual void OnSendComplete( bool Successful );
    virtual void OnReceiveComplete( bool Successful, unsigned int bytesReceived );

    virtual void AddRef( void ) {}
    virtual void Release( void ) {}

    Queue<String> sendQueue;

    void Send(void);

  private:
    bool sending;
    unsigned ackCount;

    char   m_RxBuffer[ 10 * 1024 ]; // Senta
    char   m_TxBuffer[ 10 * 1024 ]; // Senta

    unsigned int m_Count;
    unsigned int m_RxCount;
    unsigned int m_RefCount;
}* statusCallback = NULL;

void ClientCommand(const char*);

void SendCommandToClient(const char* command)
{
#ifdef RAD_WIN32
    ClientCommand(command);
#else
    statusCallback->sendQueue.Enqueue(String(command));
#endif
}

DisplayStatusCallback::DisplayStatusCallback( )
{
    sending = true;
    ackCount = 0;
}

DisplayStatusCallback::~DisplayStatusCallback( void )
{
}

void DisplayStatusCallback::OnStatusChange( IRadDbgComChannel::ConnectionState connectionState, const char* pMessage )
{
    static char outbuf[ 200 ];

    if( connectionState == IRadDbgComChannel::Detached )
    {
        sprintf( outbuf, "State: [Detached], Message: [%s]\n",pMessage );
    }

    else if( connectionState == IRadDbgComChannel::Detaching )
    {
        sprintf( outbuf, "State: [Detaching], Message: [%s]\n",pMessage );
    }   
    else if( connectionState == IRadDbgComChannel::Attaching )
    {
        sprintf( outbuf, "State: [Attaching], Message: [%s]\n",pMessage );
    }
    else if( connectionState == IRadDbgComChannel::Attached )
    {
        sprintf( outbuf, "State: [Attached], Message: [%s]\n",pMessage );
        m_RxCount = 0;
        m_Count = 0;
        s_attached = true;
        dbgChannel->ReceiveAsync( m_RxBuffer, sizeof( m_RxBuffer ), this );

        sendQueue.Enqueue(String("echo \"Remote server connected!\""));
        sending = false;
        Send();
    }   

    rDebugString( outbuf );
}

void DisplayStatusCallback::Send(void)
{
   if(sending)
      return;

   int pos = 0;
   while(ackCount)
   {
       m_TxBuffer[pos++] = PACKET_ACK;
       ackCount--;
   }

   while(!sendQueue.Empty() && (pos < (sizeof(m_TxBuffer) - 257) ))
   {
      String s = sendQueue.Dequeue();
      int len = s.GetLength();
      m_TxBuffer[pos++] = PACKET_CLIENT_COMMAND;
      m_TxBuffer[pos++] = len;
      memcpy(&m_TxBuffer[pos], (const char*)s, len);
      pos += len;
   }

   if(pos)
   {
      dbgChannel->SendAsync((void*) m_TxBuffer, pos, this);
      sending = true;
   }
};

void DisplayStatusCallback::OnSendComplete( bool successful )
{
    sending = false;
    
    if( !successful )
    {
        rDebugString( "Send Failed\n" );
    }
}

void DisplayStatusCallback::OnReceiveComplete( bool successful, unsigned int bytesReceived )
{
    if( successful )
    {
        char* walk;
        char tmp[256];
        walk = m_RxBuffer;

        while(bytesReceived > 0)
        {
             int type = *walk++;

             P3DASSERT(type == PACKET_SERVER_COMMAND);
             {
                 int len = *walk;
                 walk++;
                 memcpy(tmp, walk, len);
                 tmp[len] = 0;
                 strcpy(commands[nCommands++], tmp);
                 walk += len;
                 bytesReceived -= len + 2;
             }
        }

        ackCount++;
        dbgChannel->ReceiveAsync( (void*) m_RxBuffer, sizeof( m_RxBuffer ), this );
    }
    else
    {
        rDebugString( "Receive Failed \n" );
    }
}

void SetupDebugCom(void)
{
    statusCallback = new DisplayStatusCallback;

#ifndef RAD_GAMECUBE
    radDbgComTargetCreateChannel(0xee11, &dbgChannel);
    rAssert( dbgChannel != NULL );
    dbgChannel->RegisterStatusCallback( statusCallback );
    dbgChannel->Attach( );

    if(g_WaitForConnect)
    {
        while(!s_attached)
        {
            radDbgComService();
#ifdef RAD_WIN32
            g_kernel->Idle();
#endif
//            g_splashScreen.Display();
        }
    }

#else
    if(g_WaitForConnect)
    {
        int which = 0;
        while(!s_attached)
        {
            radDbgComGameCubeInitInfo channelInfo;
            channelInfo.m_HioChannel = which % 3;
            switch(which % 3)
            {
                case 0:
                    rDebugString( "Trying to connect on channel 0 (DDH)\n" );
                    break;

                case 1:
                    rDebugString( "Trying to connect on channel 1 (GDEV)\n" );
                    break;

                case 2:
                    rDebugString( "Trying to connect on channel 2 (GBOX)\n" );
                    break;
            }
            radDbgComTargetInitialize( HostIO, radDbgComDefaultPort, &channelInfo );                
            which++;

            unsigned time = radTimeGetMilliseconds();

            radDbgComTargetCreateChannel(0xee11, &dbgChannel);
            rAssert( dbgChannel != NULL );
            dbgChannel->RegisterStatusCallback( statusCallback );
            dbgChannel->Attach( );

            rDebugString( "Waiting...\n" );
            while((!s_attached) && ((radTimeGetMilliseconds() - time) < 2000))
            {
//                g_splashScreen.Display();
                radDbgComService();
            }
            rDebugString( "Time elapsed, detaching...\n" );
        
            if(!s_attached)
            {
                rDebugString( "1\n" );
                dbgChannel->Detach();
                rDebugString( "2\n" );
                dbgChannel->RegisterStatusCallback( NULL );
                rDebugString( "3\n" );
                dbgChannel->Release( );
                rDebugString( "4\n" );
                radDbgComTargetTerminate();
                rDebugString( "5\n" );
            }
        }
    }
#endif

#ifndef RAD_WIN32
    // once the communication channel is established, init the filesystem
    // on PC, we won't be using the remote drive, so we don't need to worry
    radFileInitialize();
//    radDriveMount( );
//    radDriveMount( "REMOTEDRIVE:" );
    if(g_WaitForConnect)
    {
        radFileSetConnectTimeOut( 100000 );
        IRadDrive* drive = NULL;
        radDriveOpen(&drive, "REMOTEDRIVE:");
        drive->WaitForCompletion();
    }
#endif
}

void ShutdownDebugCom(void)
{
    dbgChannel->Detach();
    dbgChannel->RegisterStatusCallback( NULL );
    dbgChannel->Release( );

    delete statusCallback;
}

void ServiceDebugCom(CommandRecipient* shell)
{
    radDbgComService();

    if(statusCallback)
        statusCallback->Send();
    
    if(nCommands)
    {
        if(shell)
        {
            for(int i = 0; i < nCommands; i++)
            {
                shell->Command(commands[i]);
            }
            nCommands = 0;
        }
    }
}


#include <console/commandline.hpp>

namespace Log
{
    Console::RealBuffer text;

    void Setup(void)
    {
    }

    void Shutdown(void)
    {
    }

    void Echo(const char* c)
    {
        text.Echo(c);
    }

    Console::Buffer* GetText(void)
    {
        return &text;
    }
};
