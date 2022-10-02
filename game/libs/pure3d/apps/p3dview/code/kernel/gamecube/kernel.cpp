//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"kernel.hpp"

#include<config/arguments.hpp>
#include<config/settings.hpp>
//#include<net/socket.hpp>

#include<p3d/platform.hpp>
#include<p3d/utility.hpp>

#include<dolphin/gx.h>
#include<dolphin/vi.h>
#include<dolphin/dvd.h>

#include<interface/io.hpp>
#include<interface/display.hpp>
#include<interface/commandrecipient.hpp>
#include<file/bufferstream.hpp>

#include <gcDriver.hpp>
#include <string.h>

#include <radfile.hpp>
#include <radplatform.hpp>
#include <radtime.hpp>
#include <radmemory.hpp>
#include <raddebugcommunication.hpp>
#include <radthread.hpp>

class GameCubeDisplay : public Display
{
public:
    GameCubeDisplay(Window* w)
    {
        context = NULL;
        x = 640;
        y = 448;
        bpp = 32;
    }

    ~GameCubeDisplay(void)
    {
//        p3d::platform->DestroyContext(context);
    }

    void Configure(Settings* settings)
    {
        init.lockToVsync = true;

        settings->Bind("display.gamecube.x", &x);
        settings->Bind("display.gamecube.y", &y);
        settings->Bind("display.gamecube.bpp", &bpp);
        settings->Bind("display.gamecube.lockToVsync", &init.lockToVsync);
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
        init.bufferMask  = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH | PDDI_BUFFER_STENCIL;
        init.xsize       = x;       // Xsize multiple of 16
        init.ysize       = y;       // ysize multiple of two
        init.pal         = false;   // true for pal
        init.fieldmode   = false;   // true for interlaced display ysize <= MAXY / 2
        init.aa          = false;   // true for anti-alising, only works if fieldmode && ysize <= 264
        init.progressive = false;   // true for non-interlaced display

        if(!p3d::context)
        {
            context = p3d::platform->CreateContext(&init); // go do the initilization
        }
        else
        {
            context = p3d::context;
//            p3d::display->InitDisplay(&init);
        }

        GXSetVerifyLevel(GX_WARN_NONE);
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


GameCube::GameCube()
{

    VIInit();
    DVDInit();
    
    platform = tPlatform::Create();
    PDDIASSERT(platform);

    shell = NULL;


    userName[0] = 0;
    machineName[0] = 0;


    radTimeInitialize();
//    radDbgComTargetInitialize(HostIO);

//    radThreadInitialize( 50 );
    radLoadInitialize();
   
}


GameCube::~GameCube()
{
    radTimeTerminate();
    radFileTerminate();
//    radDbgComTargetTerminate();
    radPlatformTerminate();
    tPlatform::Destroy(platform);
}

void GameCube::CreateInput(char*)
{
    driver = new gcDriver;
}

Input::Driver* GameCube::GetInput(void)
{
    return driver;
}


Window* GameCube::NewWindow(char* title)
{
    return NULL;
}

void GameCube::SetMainWindow(Window* win)
{
}

Window* GameCube::GetMainWindow(void) 
{
    return NULL;
}

Display* GameCube::NewDisplay(Window* window)
{
    return new GameCubeDisplay(window);
}

void GameCube::Sleep(Time t)
{
    // senta ::Sleep(float(t) / 100);
}

Time GameCube::SystemTime(void)
{
    return Time((P3D_S64)radTimeGetMicroseconds(), Time::MICROSECONDS);
}


InStream*  GameCube::OpenFileIn(const char* filename)
{
    class In : public InStream
    {
        public:
            In(const char* filename)
            {
//                radFileOpen( &file, filename);
                file = NULL;
                
                if(!file)
                {
                    char filename2[256]= "REMOTEDRIVE:";
                    strcat(filename2, filename);
                    file = NULL;
                    radFileOpen( &file, filename2);
                }
                good = file != NULL;
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
                 //  printf("Size %d\n", size);

                 //  for(int i = 0 ; i < size ; i++)
                 //  {
                 //     printf("0x%08x %02x\n",  i, ((unsigned char*)data)[i]);
                 //  }

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


/*
class In : public InStream
{
    public:
        In(const char* filename)
        {
            radFileOpen( &file, filename);
         
            if(!file)
            {
                char filename2[256]= "REMOTEDRIVE:";
                strcat(filename2, filename);
                file = NULL;
                radFileOpen( &file, filename2);
            }
            good = file != NULL;
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

InStream* GameCube::OpenFileIn(const char* filename)
{
    In* in = new In(filename);
    
    if(!in->good)
    {
        delete in;
        return NULL;
    }
    
    return new BufferStream(in);
}
*/

OutStream* GameCube::OpenFileOut(const char* filename, bool trunc)
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

/*
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
};


OutStream* GameCube::OpenFileOut(const char* filename, bool trunc)
{
    Out* out = new Out(filename, trunc);
    if(!out->good)
    {
        delete out;
        return NULL;
    }
    return out;
}
*/

const char* GameCube::UserName(void)
{
    return "nobody";
}

const char* GameCube::MachineName(void)
{
    return "gamecube";
}

bool GameCube::Idle(void)
{
    radFileService();
    return true;
}

void GameCube::Message(const char* channel, const char * message, bool idle)
{
    if(shell)
    {
        char tmp[256] = "echo ";
        strcat(tmp, message);
        shell->Command(tmp);
    }
}

void GameCube::Exit(ExitMode)
{
}

const char* GameCube::GetWorkingDirectory(void)
{
    return workingDirectory;
}

void GameCube::SetWorkingDirectory(const char* w)
{
    strcpy(workingDirectory,w);
}

