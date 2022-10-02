//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _DEBUG_HPP_
#define _DEBUG_HPP_


#include <pddi/buildconfig.hpp>

// PDDI Debugging support
#if defined (RAD_WIN32) || defined (RAD_XBOX)
    #define pddiBreak() { __asm { int 3 } }
#endif

#ifdef RAD_PS2
    #define pddiBreak() { asm( ".word 0x0000004d"); }
#endif

#ifdef RAD_GAMECUBE
    #define pddiBreak(){ asm(trap); }
#endif

#ifdef RAD_LINUX
    #define pddiBreak() { exit(0); }
#endif


#ifdef PDDI_USE_ASSERTS
#ifdef  PDDI_USE_STD_ASSERTS
#include <assert.h>
    #define PDDIASSERT(c) assert(c)
    #define PDDIASSERTMSG(c, msg, mod) assert(c && msg)
#else
    bool pddiAssertFailed(const char *file, int line, const char *cond, const char *msg=0, const char *module=0);
    #define PDDIASSERT(c) if(!(c)) { if(pddiAssertFailed(__FILE__, __LINE__, #c)) { pddiBreak(); }}
    #define PDDIASSERTMSG(c, msg, mod) if(!(c)) { if(pddiAssertFailed(__FILE__, __LINE__, #c,  (msg), (mod))) { pddiBreak();}}
#endif
#else
    #define PDDIASSERT(c)
    #define PDDIASSERTMSG(c, msg, mod)
#endif //P3DDEBUG

#endif
