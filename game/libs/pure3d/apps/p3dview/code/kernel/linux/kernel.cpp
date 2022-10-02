//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"kernel.hpp"

#include <interface/io.hpp>
#include <viewer/viewer.hpp>
#include <console/objectscripter.hpp>

#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <malloc.h>

#include <config/arguments.hpp>
#include <config/settings.hpp>

#include <p3d/platform.hpp>
#include <p3d/utility.hpp>

int  Linux::nCommands = 0;
char Linux::commands [256][256];

class LinuxDisplay : public Display
{
public:
    LinuxDisplay(Window* w)
    {
        context = NULL;
        render = NULL;
        x = 640;
        y = 448;
        bpp = 32;

        first = true;
    }

    ~LinuxDisplay(void)
    {
        //if(render)
        //   render->Freeze();

        p3d::platform->DestroyContext(context);
    }

    void Configure(Settings* settings)
    {
        settings->Bind("display.linux.x", &x);
        settings->Bind("display.linux.y", &y);
        settings->Bind("display.linux.bpp", &bpp);
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
        if(first)
        {
            first = false;
            
            init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
            init.xsize = x;
            init.ysize = y;
            init.bpp = bpp;

            context = p3d::platform->CreateContext(&init); // go do the initilization

            if(render)
            {
                render->Setup();
            }
        }
    }

    tContext* GetContext(void)
    {
        return context;
    }

    void SetRender(Render* r)
    {
        render = r;
    }

    Render* GetRender(void)
    {
        return render;
    }

private:
    tContext* context;
    Render* render;

    bool first;

    unsigned x,y,bpp;
    tContextInitData init;
};


Linux::Linux()
{
    platform = tPlatform::Create();
    assert(platform);

    shell = NULL;

    /*
        sockaddr_in addr;
        sockaddr connection;
        int dummy;
        
        serverSocket = socket(AF_INET, SOCK_STREAM, PF_INET);
        
        addr.sin_family = AF_INET;
        addr.sin_port = htons(42291);
        addr.sin_addr.s_addr = INADDR_ANY;
        
        bind(serverSocket, (sockaddr*)&addr, sizeof(sockaddr_in));
        listen(serverSocket,2);
    
        setsockopt(serverSocket, SOL_SOCKET, SO_NBIO, &dummy, sizeof(dummy));
        connectionSocket = accept(serverSocket, &connection, &dummy);
    */
}


Linux::~Linux()
{
    tPlatform::Destroy(platform);
}

void Linux::CreateInput(char*)
{
}

Input::Driver* Linux::GetInput(void)
{
    return NULL;
}


Window* Linux::NewWindow(char* title)
{
    return NULL;
}

void Linux::SetMainWindow(Window* win)
{
}

Window* Linux::GetMainWindow(void) 
{ 
    return NULL;
};

Display* Linux::NewDisplay(Window* window)
{
    return new LinuxDisplay(window);
}

void Linux::Sleep(unsigned t)
{
}

unsigned Linux::Time(void)
{
    // TODO
    return 0;
}

InStream*  Linux::OpenFileIn(const char* filename)
{
    class In : public InStream
    {
        public:
            In(const char* filename)
            {
                handle = fopen(filename, "r");
                good = (handle != NULL);
            }

            ~In()
            {
                if(handle)
                {
                    fclose(handle);
                }
            }

            void Get(unsigned size, void* data)
            {
                fread(data, size, 1, handle);
            }

            unsigned GetPosition(void)
            {
                return (unsigned)ftell(handle);
            }

            unsigned GetLength(void)
            {
                // TODO
                return 0;
            }

            void Advance(unsigned p)
            {
                fseek(handle, (long) p, SEEK_CUR);
            }

            bool good;

        private:
            FILE* handle;
    };

    In* in = new In(filename);
    if(!in->good)
    {
        delete in;
        return NULL;
    }
    return in;
}

OutStream* Linux::OpenFileOut(const char* filename, bool trunc)
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

const char* Linux::UserName(void)
{
    return "nobody";
}

const char* Linux::MachineName(void)
{
    return "linux";
}

bool Linux::Idle(void)
{
    if(nCommands)
    {
        if(shell)
        {
            for(int i = 0; i < nCommands; i++)
            {
                shell->Command(commands[i]);
            }
        }
        nCommands = 0;
    }
    return true;
}

void Linux::Message(const char* channel, const char * message, bool idle)
{
    if(shell)
    {
        char tmp[256] = "echo ";
        strcat(tmp, message);
        shell->Command(tmp);
    }
}

void Linux::Exit(ExitMode )
{
}

const char* Linux::GetWorkingDirectory(void)
{
    return workingDirectory;
}

void Linux::SetWorkingDirectory(const char* w)
{
    strcpy(workingDirectory,w);
}

void Linux::AddCommand(char* c) 
{ 
    strcpy(commands[nCommands++], c); 
}

