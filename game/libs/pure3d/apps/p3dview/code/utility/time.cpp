//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <utility/time.hpp>

static inline P3D_S64 IntTime(P3D_S64 amount, Time::Unit units)
{
    switch(units)
    {
        case Time::HOURS:
            return amount * 60 * 60 * 1000 * 1000;
            break;
        case Time::MINUTES:
            return amount * 60 * 1000 * 1000;
            break;
        case Time::SECONDS:
            return amount * 1000 * 1000;
            break;
        case Time::MILLISECONDS:
            return amount * 1000;
            break;
        case Time::MICROSECONDS:
            return amount;
            break;
    }

    return 0;
}

Time::Time(float amount, Unit units)
{
    switch(units)
    {
        case HOURS:
            microseconds = P3D_S64(amount * 60.0f * 60.0f) * 1000 * 1000;
            break;
        case MINUTES:
            microseconds = P3D_S64(amount * 60.0f * 1000.0f) * 1000;
            break;
        case SECONDS:
            microseconds = P3D_S64(amount * 1000.0f * 1000);
            break;
        case MILLISECONDS:
            microseconds = P3D_S64(amount * 1000.0f);
            break;
        case MICROSECONDS:
            microseconds = P3D_S64(amount);
            break;
        default:
            microseconds = 0;
            break;
    }
}

Time::Time(P3D_S64 amount, Unit units)
{
    microseconds = IntTime(amount, units);
}

