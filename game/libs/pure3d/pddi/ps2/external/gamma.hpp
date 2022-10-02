//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GAMMA_HPP_INCLUDED
#define GAMMA_HPP_INCLUDED

#include <pddi/ps2/ps2buildconfig.hpp>


#ifdef PS2_USE_GAMMA_TABLES

extern const unsigned char gammaTableNTSC32[];
extern const unsigned char gammaTableNTSC16[];
extern const unsigned char gammaTablePAL32[];
extern const unsigned char gammaTablePAL16[];

void GammaCorrectionTable256(double gamma, unsigned char gtable[256]);
void GammaCorrectionTable32(double gamma, unsigned char gtable[32]);

#endif

#endif // GAMMA_HPP_INCLUDED
