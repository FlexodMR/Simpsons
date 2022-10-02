//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<interface/kernel.hpp>
#include<kernel/gamecube/kernel.hpp>
#include<config/arguments.hpp>
#include<stdlib.h>

#include<dolphin/os.h>
#include<dolphin/dvd.h>
#include<dolphin/vi.h>

#include<radplatform.hpp>


int ServerMain(Kernel* kernel, Arguments* args);

GameCube* kernel;

void main(void)
{
    radPlatformInitialize();

    Arguments args("");
    kernel = new GameCube;
    kernel->SetWorkingDirectory("D:\\");

    int rc = ServerMain(kernel, &args);
    delete kernel;
}


char* compileInfo = "";
char* compileChangelist = "";
char* compileTime = "";
char* compileUser = "";
char* compileServer = "";


#define HEAP_ID 0

extern "C"
{
    void *malloc (unsigned int size);
    void free(void *mem);

    void *malloc (unsigned int size)
    {
        void* result = OSAllocFromHeap(HEAP_ID, size);
        return result;
    }
    void free(void *mem)
    {
        OSFreeToHeap(HEAP_ID, mem);
    }
}

