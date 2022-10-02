/*===========================================================================
    File:: tlBox.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlBox.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "tlFile.hpp"

bool
tlBox::operator==(const tlBox& b)
{
    return (low == b.low) && (high == b.high);
}

void tlBox::Bound(tlPoint* points, int n)
{
    low = high = points[0];

    for(int i = 0; i < n; i++)
    {
        if(points[i].x > high.x)
            high.x = points[i].x;

        if(points[i].x < low.x)
            low.x = points[i].x;

        if(points[i].y > high.y)
            high.y = points[i].y;

        if(points[i].y < low.y)
            low.y = points[i].y;

        if(points[i].z > high.z)
            high.z = points[i].z;

        if(points[i].z < low.z)
            low.z = points[i].z;
    }
}

void tlBox::AddPoint(const tlPoint& point)
{
    if(point.x > high.x)
        high.x = point.x;

    if(point.x < low.x)
        low.x = point.x;

    if(point.y > high.y)
        high.y = point.y;

    if(point.y < low.y)
        low.y = point.y;

    if(point.z > high.z)
        high.z = point.z;

    if(point.z < low.z)
        low.z = point.z;
}

void tlBox::Bound(tlTable<tlPoint>* pnt)
{
    tlTable<tlPoint> points = *pnt;

    if(points.Count()){
        low = high = points[0];
    }else{
        low = high = tlPoint();
        return;
    }      

    for(int i = 0; i < points.Count(); i++)
    {
        if(points[i].x > high.x)
            high.x = points[i].x;

        if(points[i].x < low.x)
            low.x = points[i].x;

        if(points[i].y > high.y)
            high.y = points[i].y;

        if(points[i].y < low.y)
            low.y = points[i].y;

        if(points[i].z > high.z)
            high.z = points[i].z;

        if(points[i].z < low.z)
            low.z = points[i].z;
    }
}


tlPoint tlBox::Centre(void) const
{
    tlPoint mid = high - low;
    mid.x /= 2;
    mid.y /= 2;
    mid.z /= 2;
    return low + mid;
}

float
tlBox::LargestComponent() const
{
    float l = ((tlPoint)low).LargestComponent();
    float h = ((tlPoint)high).LargestComponent();

    return (l > h) ? l : h;
}

void 
tlBox::Read(tlFile* f)
{
    *this = f->GetBox();
}

void
tlBox::Write(tlFile* f)
{
    f->PutBox(*this);
}

void
tlBox::Print(int index, int indent)
{
    printf("%*sLow: %8.4f %8.4f %8.4f High: %8.4f %8.4f %8.4f\n",indent,"",
             low.x,
             low.y,
             low.z,
             high.x,
             high.y,
             high.z);
}

void
tlBox::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void
tlBox::Init()
{
    high.x = high.y = high.z = 0.0f;
    low.x  = low.y  = low.z  = 0.0f;
}

// Set high to be negative and the low to be positive so that
// no point, p, is Contain(p).
void
tlBox::Invalidate()
{
    high.x = high.y = high.z = -1.0e10f;
    low.x  = low.y  = low.z  =  1.0e10f;
}


bool
tlBox::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Low(%8.8f, %8.8f, %8.8f), High(%8.8f, %8.8f, %8.8f)",
              low.x, low.y, low.z, high.x, high.y, high.z);
    strncpy(val, buf, len);

    return true;
}


bool
tlBox::GetFieldUpdatable()
{
    return false;
}

bool
tlBox::SetFieldValue(const char*)
{
    return false;
}

bool tlBox::Contain( const tlPoint p )
{
    return( p.x >= low.x && p.x <= high.x &&
            p.y >= low.y && p.y <= high.y &&
            p.z >= low.z && p.z <= high.z );
}
