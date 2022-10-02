//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <pddi/ps2/external/misc.hpp>

double ps2Ftod(float f)
{
    return (double)f;
}

float ps2Dtof(double d)
{
    return (float)d;
}

float ps2Atof(const char* s)
{
    return (float)atof(s);
}

float ps2Fabs(float f)
{
    return (float)fabs(f);
}
