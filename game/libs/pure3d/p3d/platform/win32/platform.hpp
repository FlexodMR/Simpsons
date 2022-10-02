//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLATFORM_HPP
#define _PLATFORM_HPP

#include <p3d/buildconfig.hpp>
#include <p3d/platform/win32/plat_types.hpp>
#include <pddi/pddi.hpp>

#include <malloc.h>

static const int P3D_MAX_CONTEXTS = 4;

class tContext;
class tFile;
class tPolySkinLoader;
class tTask;

class tContextInitData : public pddiDisplayInit
{
public:
    void*             hwnd;          // window handle
    unsigned          adapterID;     // display to use
    char              PDDIlib[128];  // PDDI library path

    tContextInitData();
};

class tPlatformContext
{
public :
    tContext* context;
    void* windowHandle;
    void* pddiLib;

    tPlatformContext() { context = 0; windowHandle = 0; pddiLib = 0; }
};

class tPlatform
{
public:
    // platform creation/destruction
    static tPlatform* Create(void* instance);
    static void Destroy(tPlatform*); 
    static tPlatform* GetPlatform(void);

    // context creation/destruction
    tContext* CreateContext(tContextInitData*);
    void DestroyContext(tContext*);

    // active context control
    void SetActiveContext(tContext*);
    tContext* GetActiveContext(void)  { return currentContext; }

    // Platform specific funtions
    bool ProcessWindowsMessage(void* win, unsigned msg, unsigned wparam, int lparam);

    // Time
    P3D_U64 GetTimeFreq(void);
    P3D_U64 GetTime(void);

private:
    // files
    tFile* OpenFile(const char* filename);

private:
    tPlatform(void* instance);
    ~tPlatform();

    static tPlatform* InternalCreate(void* instance);
    static tPlatform* currentPlatform;

    void* instance;
    tContext* currentContext;

    int nContexts;
    tPlatformContext contexts[P3D_MAX_CONTEXTS];
};

#endif

