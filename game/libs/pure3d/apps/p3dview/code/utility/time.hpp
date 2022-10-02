//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_TIME_HPP
#define _VIEWER_TIME_HPP

#include <p3d/p3dtypes.hpp>

class Time
{
public:
    enum Unit { HOURS, MINUTES, SECONDS, MILLISECONDS, MICROSECONDS};

public:
    
    inline Time() : microseconds(0) { };
    Time(float amount, Unit units);
    Time(P3D_S64 amount, Unit units);
    
    float    AsHours(void)        { return float(microseconds / (1000 * 1000)) / (60 * 60); }
    float    AsMinutes(void)      { return float(microseconds / 1000) / (1000 * 60); }
    float    AsSeconds(void)      { return float(microseconds) / (1000 * 1000); } 
    unsigned AsMilliseconds(void) { return (unsigned)(microseconds / 1000); } 
    P3D_S64  AsMicroseconds(void)  { return microseconds; }

    Time operator-(const Time& t) { return Time(microseconds - t.microseconds); }
    Time operator+(const Time& t) { return Time(microseconds + t.microseconds); }
    Time operator>(const Time& t) { return microseconds > t.microseconds; }
    Time operator<(const Time& t) { return microseconds < t.microseconds; }

protected :
    Time(P3D_S64 ns) : microseconds(ns) {};
    P3D_S64 microseconds;
};



#endif


