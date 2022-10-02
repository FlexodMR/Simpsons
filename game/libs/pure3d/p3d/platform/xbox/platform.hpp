//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLATFORM_HPP
#define _PLATFORM_HPP

#include <p3d/buildconfig.hpp>
#include <p3d/platform/xbox/plat_types.hpp>
#include <pddi/pddi.hpp>

#include <malloc.h>

static const int P3D_MAX_CONTEXTS = 4;

class tContext;
class tFile;
class tPolySkinLoader;

class tContextInitData : public pddiDisplayInit
{
public:
    tContextInitData();
};

class tPlatform
{
public:
    // platform creation/destruction
    static tPlatform* Create();
    static void Destroy(tPlatform*); 
    static tPlatform* GetPlatform(void);

    // context creation/destruction
    tContext* CreateContext(tContextInitData*);
    void DestroyContext(tContext*);

    // active context control
    void SetActiveContext(tContext*);
    tContext* GetActiveContext(void)  { return currentContext; }

    // Time
    P3D_U64 GetTimeFreq(void);
    P3D_U64 GetTime(void);

private:
    // files
    tFile* OpenFile(const char* filename);

private:
    tPlatform();
    ~tPlatform();

    static tPlatform* InternalCreate(void* instance);
    static tPlatform* currentPlatform;

    tContext* currentContext;
};

#endif

