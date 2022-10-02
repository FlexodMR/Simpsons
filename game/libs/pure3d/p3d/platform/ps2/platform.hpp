//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLATFORM_HPP
#define _PLATFORM_HPP

#include <p3d/buildconfig.hpp>
#include <p3d/platform/ps2/plat_types.hpp>
#include <pddi/pddi.hpp>
#include <pddi/ps2/external/misc.hpp>

void* malloc_uncached(const int nBytes);
void free_uncached(void* ptr);

class tContext;
class tFile;

class tContextInitData : public pddiDisplayInit
{
public:
    tContextInitData();
};


class tPlatform
{
public:
    tPlatform();
    ~tPlatform();

    // platform creation/destruction
    static tPlatform* Create();
    static void Destroy(tPlatform*)  { /* */ }
    static tPlatform* GetPlatform(void);

    // context creation/destruction
    tContext* CreateContext(tContextInitData*);
    void DestroyContext(tContext*) { /* */ }

    // active context control
    void SetActiveContext(tContext* c) { context = c; }
    tContext* GetActiveContext(void)   { return context; }

private:
    // files
    tFile* OpenFile(const char* filename);

private:
    tContext* context;
};

// this is to get rid of warnings from the compiler
double ps2Ftod(float f);
float  ps2Dtof(double d);
float  ps2Atof(const char* s);
float  ps2Fabs(float f);

#endif
