//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"kernel.hpp"

#include<interface/io.hpp>
#include<interface/display.hpp>
#include<interface/commandrecipient.hpp>

#define PS2EE 1

#include <viewer/viewer.hpp>
#include <console/objectscripter.hpp>

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>

#include <eekernel.h>
#include <libgraph.h>
#include <sifdev.h>
#include <sifrpc.h>

#include<config/arguments.hpp>
#include<config/settings.hpp>

#include<file/bufferstream.hpp>

#include<p3d/platform.hpp>
#include<p3d/utility.hpp>

#include<input/ps2/inputps2.hpp>

#include <radfile.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radmemory.hpp>
#include <raddebugcommunication.hpp>
#include <raddebugwatch.hpp>
#include <radthread.hpp>
#include <radload/radload.hpp>

int debugInt;
bool isTool;

class PS2Display : public Display
{
public:
    PS2Display(Window* w)
    {
        context = NULL;
        x = 640;
        y = 448;
        bpp = 32;
    }

    ~PS2Display(void)
    {
//        p3d::platform->DestroyContext(context);
    }

    void Configure(Settings* settings)
    {
        settings->Bind("display.ps2.x", &x);
        settings->Bind("display.ps2.y", &y);
        settings->Bind("display.ps2.bpp", &bpp);
        settings->Bind("display.ps2.lockToVsync", &init.lockToVsync);
        settings->Bind("display.ps2.asyncSwap", &init.asyncSwap);
    }

    void SetDriver(char* d)
    {
    }

    void SetResolution(unsigned X, unsigned Y, unsigned BPP)
    {
        x = X;
        y = Y;
        bpp = BPP;
    }

    void SetFullscreen(bool f)
    {
    }

    void Initialize(void)
    {
        init.xsize = x;

        if(!p3d::context)
        {
            context = p3d::platform->CreateContext(&init); // go do the initilization
        }
        else
        {
            context = p3d::context;
//            p3d::display->InitDisplay(&init);
        }
    }

    tContext* GetContext(void)
    {
        return context;
    }

private:
    tContext* context;
    unsigned x,y,bpp;
    tContextInitData init;
};

#define SCECdINIT        0x00    /* disk chk       */
#define SCECdCD         1
extern "C" int sceCdInit(int init_mode);
extern "C" int sceCdMmode( int media );

PS2::PS2()
{
    void* p = malloc(60000000);
    isTool = p != NULL;
    if(p) free(p);
    debugInt = isTool;

    /*
    sceSifInitRpc(0);
    // Media type: CD-ROM -- the type should not change until we either release or have to go onto DVD
    sceCdInit(SCECdINIT); 
    sceCdMmode(SCECdCD); 
    //sceCdMmode(SCECdDVD);

    // Reboot IOP, replace default modules
    while(!sceSifRebootIop("cdrom0:\\IOPRP214.IMG;1"))
//    while(!sceSifRebootIop("host0:IOPRP214.IMG"))
    {
        //nothing
    }
    while(!sceSifSyncIop())
    {
        //nothing
    }

    // Reset the cdrom system and filesystem since we have soft-booted the PS2 
    sceSifInitRpc(0);
    sceCdInit(SCECdINIT);
    sceCdMmode(SCECdCD); 
    //sceCdMmode(SCECdDVD);
    sceFsReset();
*/
    if(!isTool)
    {
        radPlatformInitialize( "\\IRX\\", IOPMediaCDVD, GameMediaCD, "IOPRP254.IMG");
    }
    else
    {
        radPlatformInitialize( "\\", IOPMediaHost,  GameMediaCD, NULL);
    }

    /*
    int retval;
    if((retval = sceSifLoadModule("cdrom0:\\SIO2MAN.IRX;1", 0, NULL)) < 0)
//    if((retval = sceSifLoadModule("host0:SIO2MAN.IRX", 0, NULL)) < 0)
    {
        printf("error loading module sio2man.irx (%d)\n", retval);
        exit(-10);
    }
    */

    radTimeInitialize();

    if(!isTool)
    {
        radDbgComTargetInitialize( FireWire );
    }
    else
    {
        radDbgComTargetInitialize( Deci );
    }

    radDbgWatchInitialize_Macro( ( "\\" ) );

    radLoadInitialize();
    
    platform = tPlatform::Create();
    assert(platform);

    shell = NULL;

//    radThreadInitialize( 50 );

    input = new Input::PS2;
}


PS2::~PS2()
{

    radTimeTerminate();
    radFileTerminate();
    radDbgComTargetTerminate();
    radPlatformTerminate();
    tPlatform::Destroy(platform);
}

void PS2::CreateInput(char*)
{
}

Input::Driver* PS2::GetInput(void)
{
    return input;
}


Window* PS2::NewWindow(char* title)
{
    return NULL;
}

void PS2::SetMainWindow(Window* win)
{
}

Window* PS2::GetMainWindow(void) 
{ 
    return NULL;
};

Display* PS2::NewDisplay(Window* window)
{
    return new PS2Display(window);
}

void PS2::Sleep(Time t)
{
    /*
    Time start = SystemTime();
    Time current = SystemTime();
    while((current - start) < t)
    {
    }
    */
}

Time PS2::SystemTime(void)
{
    return Time((P3D_S64)radTimeGetMicroseconds(), Time::MICROSECONDS);
}

class OpenFileInStream : public InStream
{
    public:
        OpenFileInStream(const char* filename)
        {
            good = false;
            char filename2[256]= "REMOTEDRIVE:";
            strcat(filename2, filename);
            file = NULL;
            radFileOpen( &file, filename2, false, OpenExisting, NormalPriority, 100*1024);

            if(file)
            {
                file->WaitForCompletion();
                good = file->IsOpen();
            }
        }

        ~OpenFileInStream()
        {
            if(file)
                file->Release();
        }

        void Get(unsigned size, void* data)
        {
            if(size != 0)
            {
                file->ReadAsync(data, size);
                file->WaitForCompletion();
            }
        }

        unsigned GetPosition(void)
        {
            unsigned position;
            file->GetPositionAsync(&position );
            file->WaitForCompletion();
            return position;
        }

        unsigned GetLength(void)
        {
            unsigned len;
            file->GetSizeAsync(&len);
            file->WaitForCompletion();
            return len;
        }

        void Advance(unsigned p)
        {
            int pos = int(p);
            file->SetPositionAsync(GetPosition()+pos );
            file->WaitForCompletion();
        }

        bool good;

    private:
        IRadFile* file;
};

InStream*  PS2::OpenFileIn(const char* filename)
{

    OpenFileInStream* in = new OpenFileInStream(filename);
    if(!in->good)
    {
        delete in;
        return NULL;
    }
    return new BufferStream(in);
}

class OpenFileOutStream : public OutStream
{
    public:
        OpenFileOutStream(const char* filename, bool trunc)
        {
            good = true;
        }

        ~OpenFileOutStream()
        {
        }

        void Put(unsigned count, void* data)
        {
        }

        bool good;

    private:
};

OutStream* PS2::OpenFileOut(const char* filename, bool trunc)
{
    OpenFileOutStream* out = new OpenFileOutStream(filename, trunc);
    if(!out->good)
    {
        delete out;
        return NULL;
    }
    return out;
}

const char* PS2::UserName(void)
{
    return "nobody";
}

const char* PS2::MachineName(void)
{
    return "ps2";
}

bool PS2::Idle(void)
{
    radFileService();
    return true;
}

void PS2::Message(const char* channel, const char * message, bool idle)
{
    if(shell)
    {
        char tmp[256] = "echo ";
        strcat(tmp, message);
        shell->Command(tmp);
    }
}

void PS2::Exit(ExitMode )
{
}

const char* PS2::GetWorkingDirectory(void)
{
    return workingDirectory;
}

void PS2::SetWorkingDirectory(const char* w)
{
    strcpy(workingDirectory,w);
}
