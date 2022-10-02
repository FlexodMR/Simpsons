/*===========================================================================
    File:: tlUV.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlUV.hpp"
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <math.h>

#include "tlFile.hpp"

int tlUV::Compare(const tlUV& uv)
{
    if(u < uv.u)
    {
        return -1;
    }
    if(u > uv.u)
    {
        return 1;
    }
    
    if(v < uv.v)
    {
        return -1;
    }
    if(v > uv.v)
    {
        return 1;
    }

    return 0;

}

bool
tlUV::Equal(const tlUV& uv, float epsilon)
{
    if(fabs(u - uv.u) > epsilon)
    {
        return false;
    }
    if(fabs(v - uv.v) > epsilon)
    {
        return false;
    }
    return true;
}

const tlUV& 
tlUV::Interpolate(const tlUV& uv, float t) const
{
    static tlUV result;
    
    result.u = (uv.u * t) + (u * (1.0f - t));
    result.v = (uv.v * t) + (v * (1.0f - t));

    return result;
}


void 
tlUV::Read(tlFile* f)
{
    *this = f->GetUV();
}

void
tlUV::Write(tlFile* f)
{
    f->PutUV(*this);
}

void
tlUV::Print(int index, int indent)
{
    printf("%*s%4d %8.4f %8.4f\n",indent,"", index, u, v);
}

void
tlUV::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void
tlUV::Init()
{
    u = v = 0.0f;
}

bool tlUV::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "U(%8.4f), V(%8.4f)", u, v);
    strncpy(val, buf, len);

    return true;
}

bool
tlUV::GetFieldUpdatable()
{
    return true;
}

bool
tlUV::SetFieldValue(const char* value )
{
    float u2, v2;

    sscanf( value, "%f, %f", &u2, &v2 );
    u = u2;
    v = v2;   
    return true;
}

