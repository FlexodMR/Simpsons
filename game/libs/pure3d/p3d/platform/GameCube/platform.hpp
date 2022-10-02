//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLATFORM_HPP
#define _PLATFORM_HPP

#include <p3d/buildconfig.hpp>
#include <p3d/platform/GameCube/plat_types.hpp>
#include <pddi/pddi.hpp>
#include <dolphin/os.h>

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
    tPlatform(void);
    ~tPlatform()                { /**/ }

    // platform creation/destruction
    static tPlatform *Create(void);
    static void Destroy(tPlatform *)  { /* */ } 
    static tPlatform *GetPlatform(void);

    // context creation/destruction
    tContext *CreateContext(tContextInitData *);
    void DestroyContext(tContext*);

    // active context control
    void SetActiveContext(tContext *c) { mContext = c; }
    tContext* GetActiveContext(void)   { return mContext; }

private:
    // files
    tFile* OpenFile(const char* filename);

private:
    tContext *mContext;
};

#endif

