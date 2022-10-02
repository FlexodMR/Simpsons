//=============================================================================
// Copyright (c) 2003 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GC_EXTVISIBILITYTEST
#define _GC_EXTVISIBILITYTEST

#include <pddi/pddiext.hpp>

class gcContext;
class gcDevice;
class gcTexture;
class pddiShader;

class gcExtVisibilityTest : public pddiExtVisibilityTest
{
public:
	gcExtVisibilityTest(gcContext *c);

    virtual unsigned MaxIndex(void);

    virtual void Begin(void);
    virtual void End(unsigned);
    virtual unsigned Result(unsigned);
    virtual bool CurrentlyTestingVisiblity(void);

protected:
    
    virtual ~gcExtVisibilityTest();
    
    
    unsigned mNumPixelsWritten;
    
};


#endif  //_GC_EXTFRAMEBUFFEREFFECTS

