/*===========================================================================
    File:: tlPoint.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlPoint.hpp"
#include "tlFile.hpp"
#include "tlMatrix.hpp"
#include "porc.hpp"

#include <math.h>
#include <assert.h>
#include <string.h>

#include <iostream>

#define EQUAL( a, b, e )        ( ( a >= b - e ) && ( a <= b + e ) )

float 
Length(const tlPoint& v)
{
    return v.Length();
}

float 
LengthSquared(const tlPoint& v)
{
    float len = v.Length();
    return len*len;
}

float 
DotProd(const tlPoint& a, const tlPoint& b)
{
    return (a.x*b.x) + (a.y*b.y) + (a.z*b.z);
}

tlPoint
CrossProd(const tlPoint& a, const tlPoint& b)
{
    return tlPoint( a.y*b.z-a.z*b.y, a.z*b.x-a.x*b.z, a.x*b.y-a.y*b.x );; 
}

tlPoint
Normalize(const tlPoint& a)
{
    tlPoint p(a);
    p.Normalize();
    return p;
}

tlPoint
TriNormal( const tlPoint& a, const tlPoint& b, const tlPoint& c)
{
    tlPoint v1 = b - a;
    tlPoint v2 = c - b;
    return Normalize(CrossProd(v1,v2));
}

tlPoint QuadNormal( const tlPoint& a, const tlPoint& b, const tlPoint& c, const tlPoint& d)
{
    tlPoint Result[4];
    tlPoint r(0.0f,0.0f,0.0f);
    
    Result[0] =  CrossProd(a,b);
    Result[1] =  CrossProd(b,c);
    Result[2] =  CrossProd(c,d);
    Result[3] =  CrossProd(d,a);
 
    for (int i = 0; i < 4; i++)
    {
        r += Result[i];
    }

    r *= 0.25f;
    
    return Normalize(r);
}

int Compare(const tlPoint& p1, const tlPoint& p2)
{
    return p1.Compare(p2);
}

tlPoint operator*(float f, const tlPoint& a) 
{ 
    return(tlPoint(a.x*f, a.y*f, a.z*f)); 
}

tlPoint operator*(const tlPoint& a, float f) 
{ 
    return(tlPoint(a.x*f, a.y*f, a.z*f)); 
}

tlPoint operator/(const tlPoint& a, float f) 
{ 
    assert(f!=0.0f);
    return(tlPoint(a.x/f, a.y/f, a.z/f)); 
}

std::ostream& operator<<(std::ostream& os, const tlPoint& p) 
{ 
    return os << " x : " << p.x << " y : " << p.y << " z : " << p.z; 
}

float 
Length(const tlPoint2D& v)
{
    return v.Length();
}

float 
LengthSquared(const tlPoint2D& v)
{
    float len = v.Length();
    return len*len;
}

tlPoint2D
Normalize(const tlPoint2D& a)
{
    tlPoint2D p(a);
    p.Normalize();
    return p;
}

int Compare(const tlPoint2D& p1, const tlPoint2D& p2)
{
    return p1.Compare(p2);
}

tlPoint2D operator*(float f, const tlPoint2D& a) 
{ 
    return(tlPoint2D(a.x*f, a.y*f)); 
}

tlPoint2D operator*(const tlPoint2D& a, float f) 
{ 
    return(tlPoint2D(a.x*f, a.y*f)); 
}

tlPoint2D operator/(const tlPoint2D& a, float f) 
{ 
    assert(f!=0.0f);
    return(tlPoint2D(a.x/f, a.y/f)); 
}

std::ostream& 
operator<<(std::ostream& os, const tlPoint2D& p) 
{ 
    return os << " x : " << p.x << " y : " << p.y; 
}

//*****************************************************************************
// tlPoint
//*****************************************************************************
tlPoint
tlPoint::operator*(const tlMatrix& b) const
{
    tlPoint result;

    result.x = 
        x*b.element[0][0] + 
        y*b.element[1][0] + 
        z*b.element[2][0] + 
        b.element[3][0];

    result.y = 
        x*b.element[0][1] + 
        y*b.element[1][1] + 
        z*b.element[2][1] + 
        b.element[3][1];

    result.z = 
        x*b.element[0][2] + 
        y*b.element[1][2] + 
        z*b.element[2][2] + 
        b.element[3][2];

    float w  = 
        x*b.element[0][3] + 
        y*b.element[1][3] + 
        z*b.element[2][3] + 
        b.element[3][3];

    w = 1.0f / w;

    result.x *= w;
    result.y *= w;
    result.z *= w;

    return result;
}

int 
tlPoint::Compare(const tlPoint& p) const
{
    // returns -1, 0, 1
    if(x < p.x)
    {
        return -1;
    }
    if(x > p.x)
    {
        return 1;
    }
    // x == p.x
    
    if(y < p.y)
    {
        return -1;
    }
    if(y > p.y)
    {
        return 1;
    }
    // y == p.y

    if(z < p.z)
    {
        return -1;
    }
    if(z > p.z)
    {
        return 1;
    }
    // z == p.z
    
    return 0;
}


float
tlPoint::LargestComponent() const
{
    float maxval = 0.0f;

    if( fabs(x) > maxval )
    {
        maxval = (float)fabs(x);
    }
    if( fabs(y) > maxval )
    {
        maxval = (float)fabs(y);
    }
    if( fabs(z) > maxval )
    {
        maxval = (float)fabs(z);
    }
    return maxval;
}

unsigned char
tlPoint::NormalNumber() const
{
    int minidx=0;
    float minvalue=3;
    tlPoint v1(*this);
    v1.Normalize();

    for(int i = 0;i < porcbits; i++ )
    {
        tlPoint v2(porcupine[i][0],porcupine[i][1],porcupine[i][2]);
        tlPoint v3 = v1 - v2;
        float dist = LengthSquared(v3);
        if( dist < minvalue )
        {
            minvalue = dist;
            minidx = i;
        }
    }
    assert( minidx < porcbits );
    return minidx;
}

void 
tlPoint::Read(tlFile* f)
{
    *this = f->GetPoint();
}

void
tlPoint::Write(tlFile* f)
{
    f->PutPoint(*this);
}

void
tlPoint::Print(int index, int indent)
{
    printf("%*s%4d %8.4f %8.4f %8.4f\n",indent,"", index, x, y, z);
}

void
tlPoint::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void
tlPoint::Init()
{
    x = y = z = 0.0f;
}

bool
tlPoint::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "%8.4f, %8.4f, %8.4f", x, y, z);
    strncpy(val, buf, len);

    return true;
}

bool
tlPoint::GetFieldUpdatable()
{
    return true;
}

bool
tlPoint::SetFieldValue(const char* value)
{
    float x2, y2, z2;

    sscanf( value, "%f, %f, %f", &x2, &y2, &z2 );
    x = x2;
    y = y2;
    z = z2;
    return true;
}

//*****************************************************************************
// tlPoint2D
//*****************************************************************************
bool
tlPoint2D::Equal(const tlPoint2D& p, float epsilon ) const
{
    return (EQUAL( x, p.x, epsilon ) && EQUAL( y, p.y, epsilon ));
}

int 
tlPoint2D::Compare(const tlPoint2D& p) const
{
    // returns -1, 0, 1
    if(x < p.x)
    {
        return -1;
    }
    if(x > p.x)
    {
        return 1;
    }
    // x == p.x
    
    if(y < p.y)
    {
        return -1;
    }
    if(y > p.y)
    {
        return 1;
    }
    // y == p.y
    
    return 0;
}

float 
tlPoint2D::Length() const
{
    return sqrtf(x*x + y*y);
}

void
tlPoint2D::Normalize()
{
    float len = Length();
    if (len!=0.0f)
    {
        *this /= len;
    }
    else 
    {
        x = 1.0f;
        y = 0.0f;
    }
}

tlPoint2D 
tlPoint2D::Interpolate(const tlPoint2D& p, float t) const
{
    tlPoint2D result;
    
    result.x = (p.x * t) + (x * (1.0f - t));
    result.y = (p.y * t) + (y * (1.0f - t));

    return result;
}

void 
tlPoint2D::Read(tlFile* f)
{
    x = f->GetFloat();
    y = f->GetFloat();
}

void
tlPoint2D::Write(tlFile* f)
{
    f->PutFloat(x);
    f->PutFloat(y);
}

void
tlPoint2D::Print(int index, int indent)
{
    printf("%*s%4d %8.4f %8.4f\n",indent,"", index, x, y);
}

void
tlPoint2D::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void
tlPoint2D::Init()
{
    x = y = 0.0f;
}

bool
tlPoint2D::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "%8.4f, %8.4f", x, y);
    strncpy(val, buf, len);

    return true;
}

bool
tlPoint2D::GetFieldUpdatable()
{
    return true;
}

bool
tlPoint2D::SetFieldValue(const char* value)
{
    sscanf( value, "%f, %f", &x, &y );
    return true;
}



