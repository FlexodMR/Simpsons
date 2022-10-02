/*===========================================================================
    File:: tlPoint.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#ifndef _TLPOINT_HPP
#define _TLPOINT_HPP

#include <radmath/radmath.hpp>
#include <math.h>
#include <assert.h>

class ostream;

class tlFile;
class tlMatrix;
class tlPoint;
class tlPoint2D;

float Length(const tlPoint& v);
float LengthSquared(const tlPoint& v);
float DotProd(const tlPoint& a, const tlPoint& b);
tlPoint CrossProd(const tlPoint& a, const tlPoint& b);
tlPoint Normalize(const tlPoint& a); // Return a unit vector.
tlPoint TriNormal(const tlPoint& a, const tlPoint& b, const tlPoint& c);
tlPoint QuadNormal(const tlPoint& a, const tlPoint& b, const tlPoint& c, const tlPoint& d);
int Compare(const tlPoint& p1, const tlPoint& p2); // returns -1, 0, 1
ostream& operator<<(ostream& os, const tlPoint& p);

float Length(const tlPoint2D& a);
float LengthSquared(const tlPoint2D& v);
tlPoint2D Normalize(const tlPoint2D& a); // Return a unit vector.
int Compare(const tlPoint2D& p1, const tlPoint2D& p2); // returns -1, 0, 1
tlPoint2D operator*(float f, const tlPoint2D& a);
tlPoint2D operator*(const tlPoint2D& a, float f);
tlPoint2D operator/(const tlPoint2D& a, float f);
ostream& operator<<(ostream& os, const tlPoint2D& p);

//*****************************************************************************
// tlPoint
//*****************************************************************************
class tlPoint : public rmt::Vector
{
public:
    // Constructors
    tlPoint(): rmt::Vector(0.0f, 0.0f, 0.0f) {};
    tlPoint(double X, double Y, double Z) : rmt::Vector(((float)X), ((float)Y), ((float)Z)) {}
    tlPoint(int X, int Y, int Z) : rmt::Vector(((float)X), ((float)Y), ((float)Z)) {}
    tlPoint(const rmt::Vector& a) : rmt::Vector(a) {} 
    tlPoint(float af[3]) : rmt::Vector((af[0]), (af[1]), (af[2])) {}

    // Binary operators
    tlPoint operator*(const tlMatrix& b) const; // MATRIX MULTIPLY

    // comparison funciton for sorting points
    int Compare(const tlPoint& p) const;

    // Other useful methods
    void Normalize(void) { NormalizeSafe(); } // always call safe radmath normalize
    float LargestComponent() const;           // return the largest absolute x, y or z
    unsigned char NormalNumber() const;       // Return the closest normal from the porcupine 

    // File IO methods
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    friend ostream& operator<<(ostream& os, const tlPoint& p);
};

//*****************************************************************************
// tlPoint2D
//*****************************************************************************
class tlPoint2D : public rmt::Vector2
{
public:
    // Constructors
    tlPoint2D() : rmt::Vector2(0.0f, 0.0f) {}
    tlPoint2D(float a, float b) : rmt::Vector2(a, b) {}
    tlPoint2D(double X, double Y) : rmt::Vector2((float)X, (float)Y) {}
    tlPoint2D(int X, int Y, int Z) : rmt::Vector2((float)X, (float)Y) {}
    tlPoint2D(const tlPoint2D& a) : rmt::Vector2(a.x, a.y) {} 
    tlPoint2D(float af[2]) : rmt::Vector2(af[0], af[1]) {}
    tlPoint2D(const rmt::Vector2& a) : rmt::Vector2(a) {} 

    // Access operators (using ugly hack)
    float& operator[](int i) { assert((i<2)&&(i>=0)); return (&x)[i]; }     
    const float& operator[](int i) const { assert((i<2)&&(i>=0)); return (&x)[i]; }  

    // Conversion function
    operator float*() { return(&x); }

    // Unary operators
    tlPoint2D operator-() const { return(tlPoint2D(-x,-y)); } 
    tlPoint2D operator+() const { return *this; } 

    // Assignment operators
    tlPoint2D& operator=(const tlPoint2D& a) { x = a.x;  y = a.y;  return *this; }
    tlPoint2D& operator-=(const tlPoint2D& a) { x -= a.x;  y -= a.y;  return *this; }
    tlPoint2D& operator+=(const tlPoint2D& a) { x += a.x;  y += a.y;  return *this; }
    tlPoint2D& operator*=(const tlPoint2D& a) { x *= a.x;  y *= a.y;  return *this; }
    tlPoint2D& operator/=(const tlPoint2D& a) { x /= a.x;  y /= a.y;  return *this; }
    tlPoint2D& operator*=(float a) { x *= a;  y *= a;  return *this; }
    tlPoint2D& operator/=(float a) { assert(a!=0.0f);  float inv = 1.0f/a;  x *= inv;  y *= inv;  return *this; }

    // Binary operators
    tlPoint2D operator-(const tlPoint2D& b) const { return tlPoint2D(x-b.x, y-b.y); }
    tlPoint2D operator+(const tlPoint2D& b) const { return tlPoint2D(x+b.x, y+b.y); }
    tlPoint2D operator*(const tlPoint2D& b) const { return tlPoint2D(x*b.x, y*b.y); }
    tlPoint2D operator/(const tlPoint2D& b) const { return tlPoint2D(x/b.x, y/b.y); }
    tlPoint2D operator*(float b) { return tlPoint2D(x*b, y*b); }
    tlPoint2D operator/(float b) { assert(b!=0.0f);  float inv = 1.0f/b;  return tlPoint2D(x*inv, y*inv); }

    // Test for equality
    int operator==(const tlPoint2D& p) const { return ((p.x==x) && (p.y==y)); }
    bool Equal( const tlPoint2D& p, float epsilon ) const;
    int Compare(const tlPoint2D& p) const;

    // Other useful methods
    float Length() const;
    void Normalize();
    tlPoint2D Interpolate(const tlPoint2D& p, float t) const;
    
    // File IO methods
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    friend ostream& operator<<(ostream& os, const tlPoint2D& p);
};

const tlPoint Origin(0.0f,0.0f,0.0f);

#endif

