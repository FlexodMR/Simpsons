//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PS2DEBUG_HPP_
#define _PS2DEBUG_HPP_

#include <pddi/buildconfig.hpp>
#include <pddi/base/debug.hpp>

#ifdef RAD_DEBUG
    #define PS2DBG(X) X
#else
    #define PS2DBG(X)
#endif

namespace Debug
{
    void DumpVU1(unsigned start = 0x0, unsigned end = 0x4000, unsigned char* mem = 0);
    void DumpVU1RegsI();
    void DumpVU1RegsF();
}

#endif // _PS2DEBUG_HPP_
