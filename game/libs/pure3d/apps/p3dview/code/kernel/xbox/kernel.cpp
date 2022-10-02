//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"kernel.hpp"

#include<xtl.h>
#include<xbdm.h>

#include<config/arguments.hpp>
#include<config/settings.hpp>

#include<p3d/platform.hpp>
#include<p3d/utility.hpp>

#include<interface/io.hpp>
#include<interface/display.hpp>
#include<interface/commandrecipient.hpp>

#include<input/xbox/inputxbox.hpp>
#include<file/bufferstream.hpp>

#include <raddebugcommunication.hpp>

#include <radfile.hpp>
#include <radtime.hpp>
#include <radmemory.hpp>

#include <radthread.hpp>

class XBoxDisplay : public Display
{
public:
    XBoxDisplay(Window* w)
    {
        context = NULL;
        x = 640;
        y = 480;
        bpp = 32;
    }

    ~XBoxDisplay(void)
    {
//        p3d::platform->DestroyContext(context);
    }

    void Configure(Settings* settings)
    {
        settings->Bind("display.xbox.x", &x);
        settings->Bind("display.xbox.y", &y);
        settings->Bind("display.xbox.bpp", &bpp);
        settings->Bind("display.xbox.lockToVsync", &init.lockToVsync);
        settings->Bind("display.xbox.asyncSwap", &init.asyncSwap);
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

        init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
        init.xsize = x;
        init.ysize = y;
        init.bpp = bpp;
        init.antiAlias = tContextInitData::SUPERSAMPLE_4_GAUSSIAN;
//         init.preFilter = tContextInitData::R5G6B5;
        init.enableSnapshot = true;

        if(!p3d::context)
        {
            context = p3d::platform->CreateContext(&init); // go do the initilization
        }
        else
        {
            context = p3d::context;
            p3d::display->InitDisplay(&init);
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


XBox::XBox()
{
    platform = tPlatform::Create();
    shell = NULL;

    userName[0] = 0;
    machineName[0] = 0;

    QueryPerformanceCounter((LARGE_INTEGER*)&startTime);
    QueryPerformanceFrequency((LARGE_INTEGER*)&frequency);

    radTimeInitialize();
    radDbgComTargetInitialize(WinSocket);
//    radThreadInitialize( 50 );
    radLoadInitialize();

    input = new Input::XBox;
}


XBox::~XBox()
{
    tPlatform::Destroy(platform);
    WSACleanup();
#ifdef XBOX_ALPHA
    XnetCleanup();
#else
    XNetCleanup();
#endif
}

void XBox::CreateInput(char*)
{
}

Input::Driver* XBox::GetInput(void)
{
    return input;
}


Window* XBox::NewWindow(char* title)
{
    return NULL;
}

void XBox::SetMainWindow(Window* win)
{
}

Window* XBox::GetMainWindow(void) 
{ 
    return NULL;
};

Display* XBox::NewDisplay(Window* window)
{
    return new XBoxDisplay(window);
}

void XBox::Sleep(Time t)
{
    ::Sleep(t.AsMilliseconds());
}

Time XBox::SystemTime(void)
{
    // Get elapsed time using Windows performance counter
    __int64 currentTime;
    QueryPerformanceCounter((LARGE_INTEGER*)&currentTime);
    currentTime -= startTime;
    currentTime *= 1000000;
    return Time(P3D_S64(currentTime / frequency), Time::MICROSECONDS);
}

InStream*  XBox::OpenFileIn(const char* filename)
{
    class In : public InStream
    {
        public:
            In(const char* filename)
            {
                good = false;
                radFileOpen( &file, filename, false, OpenExisting, NormalPriority, 100*1024);

                if(!file)
                {
                    char filename2[256]= "REMOTEDRIVE:";
                    strcat(filename2, filename);
                    file = NULL;
                    radFileOpen( &file, filename2, false, OpenExisting, NormalPriority, 100*1024);

                }

                if(file)
                {
                    file->WaitForCompletion();
                    good = file->IsOpen();
                }
            }

            ~In()
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

    In* in = new In(filename);
    if(!in->good)
    {
        delete in;
        return NULL;
    }
    return new BufferStream(in);
}

OutStream* XBox::OpenFileOut(const char* filename, bool trunc)
{
    class Out : public OutStream
    {
        public:
            Out(const char* filename, bool trunc)
            {
                good = true;
            }

            ~Out()
            {
            }

            void Put(unsigned count, void* data)
            {
            }

            bool good;

        private:
    };

    Out* out = new Out(filename, trunc);
    if(!out->good)
    {
        delete out;
        return NULL;
    }
    return out;
}

const char* XBox::UserName(void)
{
    return "nobody";
}

const char* XBox::MachineName(void)
{
    return "xbox";
}

bool XBox::Idle(void)
{
    radFileService();
    return true;
}

void XBox::Message(const char* channel, const char * message, bool idle)
{
    if(shell)
    {
        char tmp[256] = "echo ";
        strcat(tmp, message);
        shell->Command(tmp);
    }
}

void XBox::Exit(ExitMode)
{
}

const char* XBox::GetWorkingDirectory(void)
{
    return workingDirectory;
}

void XBox::SetWorkingDirectory(const char* w)
{
    strcpy(workingDirectory,w);
}


