/*===========================================================================
    File:: tlUV.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLUV_HPP
#define _TLUV_HPP

class tlFile;
#include <radmath/radmath.hpp>

class tlUV : public rmt::Vector2 
{
public:
    inline tlUV() : rmt::Vector2 (0.0f, 0.0f) {}
    inline tlUV(float a, float b) : rmt::Vector2 (a, b) {}
    inline tlUV(const rmt::Vector2& a) : rmt::Vector2(a) {} 

public :

    // Binary operators
    inline  tlUV operator-(const tlUV&) const;
    inline  tlUV operator+(const tlUV&) const;

    inline int operator==(const tlUV& uv) const { return ((uv.u==u)&&(uv.v==v)); }

    int tlUV::Compare(const tlUV& uv);  // return -1, 0 or 1

    bool tlUV::Equal(const tlUV& uv, float epsilon = 1.0f/8192.0f);  // return true if uvs differ by less than epsilon

    const tlUV& Interpolate(const tlUV& uv, float t) const;

    // File IO methods
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

};

int Compare(const tlUV& uv1, const tlUV& uv2);

inline tlUV
tlUV::operator-(const tlUV& b) const
{
    return(tlUV(u-b.u,v-b.v));
}

inline tlUV
tlUV::operator+(const tlUV& b) const
{
    return(tlUV(u+b.u,v+b.v));
}

inline tlUV
operator*(float f, const tlUV& a)
{
    return(tlUV(a.u*f, a.v*f));
}

inline tlUV
operator*(const tlUV& a, float f)
{
    return(tlUV(a.u*f, a.v*f));
}

#endif

