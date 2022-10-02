/*===========================================================================
    File:: tlQuat.hpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLQUAT_HPP
#define _TLQUAT_HPP

#include <assert.h>
#include "tlPoint.hpp"

class ostream;
class tlQuat;
class tlAngAxis;
class tlFile;

#ifndef TWOPI
#define TWOPI 6.28318530718f
#endif

const float QUATERNION_COMPRESSION_FACTOR = 32767.0f;
const float QUATERNION_INVERSE_COMPRESSION_FACTOR = 1.0f/32767.0f;

float DotProduct(const tlQuat& a, const tlQuat& b);
tlQuat operator*(float, const tlQuat&);   // multiply by scalar
tlQuat operator*(const tlQuat&, float);   // multiply by scalar
tlQuat operator/(const tlQuat&, float);   // divide by scalar
tlQuat Inverse(const tlQuat& q);  // Inverse of quaternion (1/q)
tlQuat Conjugate(const tlQuat& q); 
tlQuat LogN(const tlQuat& q);
tlQuat Exp(const tlQuat& q);
tlQuat Slerp(const tlQuat& p, const tlQuat& q, float t);
tlQuat LnDif(const tlQuat& p, const tlQuat& q);
tlQuat QCompA(const tlQuat& qprev,const tlQuat& q, const tlQuat& qnext);
tlQuat Squad(const tlQuat& p, const tlQuat& a, const tlQuat &b, const tlQuat& q, float t); 
tlQuat qorthog(const tlQuat& p, const tlPoint& axis);
tlQuat squadrev(
        float angle,   // angle of rotation 
        const tlPoint& axis, // the axis of rotation 
        const tlQuat& p,     // start quaternion 
        const tlQuat& a,     // start tangent quaternion 
        const tlQuat& b,     // end tangent quaternion 
        const tlQuat& q,     // end quaternion 
        float t     // parameter, in range [0.0,1.0] 
        );

void RotateMatrix(tlMatrix& mat, const tlQuat& q);   
void PreRotateMatrix(tlMatrix& mat, const tlQuat& q);
tlQuat QFromAngAxis(float ang, const tlPoint& axis);
void AngAxisFromQ(const tlQuat& q, float *ang, tlPoint& axis);
float QangAxis(const tlQuat& p, const tlQuat& q, tlPoint& axis);
void DecomposeMatrix(const tlMatrix& mat, tlPoint& p, tlQuat& q, tlPoint& s);
tlQuat TransformQuat(const tlMatrix &m, const tlQuat&q );
tlQuat IdentQuat();

tlPoint QuatToEuler(const tlQuat& quaternion);
tlQuat EulerToQuat(const tlPoint& euler);

ostream &operator<<(ostream&, const tlQuat&); 

//*****************************************************************************
// tlQuat
//*****************************************************************************
class tlQuat : public rmt::Quaternion
{
public:
    // Constructors
    tlQuat(){}
    tlQuat(float W, float X, float Y, float Z) : rmt::Quaternion(W, X, Y, Z) {}
    tlQuat(double W, double X, double Y, double Z) : rmt::Quaternion((float)W, (float)X, (float)Y, (float)Z) {}
    tlQuat(const tlQuat& a) : rmt::Quaternion(a.w, a.x, a.y, a.z) {} 
    tlQuat(float af[4]) : rmt::Quaternion(af[0], af[1], af[2], af[3]) {}
    tlQuat(const tlAngAxis& aa);
    tlQuat(const tlMatrix& mat);
    tlQuat(float rx, float ry, float rz);      //create a quaternion from 3 rotation radian

    // Access operators
    float& operator[](int i) { assert((i<4)&&(i>=0)); return ((float*)this)[i]; }
    const float& operator[](int i) const { assert((i<4)&&(i>=0)); return ((float*)this)[i]; }     

    // Conversion function
    operator float*() { return(&x); }

    // Unary operators
    tlQuat operator-() const { return(tlQuat(-x,-y,-z,-w)); } 
    tlQuat operator+() const { return *this; } 

    // Assignment operators
    tlQuat& operator=(const tlQuat& a) { w = a.w;  x = a.x;  y = a.y;  z = a.z;  return *this; }
    tlQuat& operator-=(const tlQuat& a) { w -= a.w;  x -= a.x;  y -= a.y;  z -= a.z;  return *this; }
    tlQuat& operator+=(const tlQuat& a) { w += a.w;  x += a.x;  y += a.y;  z += a.z;  return *this; }
    tlQuat& operator*=(const tlQuat& a);
    tlQuat& operator/=(const tlQuat& a);
    tlQuat& operator*=(float a) { w *= a;  x *= a;  y *= a;  z *= a;  return *this; } 
    tlQuat& operator/=(float a) { assert(a!=0.0f);  float inv = 1.0f/a;  w *= inv;  x *= inv;  y *= inv;  z *= inv;  return *this; }

    // Binary operators
    tlQuat operator-(const tlQuat& b) const { return tlQuat(w-b.w, x-b.x, y-b.y, z-b.z); }
    tlQuat operator+(const tlQuat& b) const { return tlQuat(w+b.w, x+b.x, y+b.y, z+b.z); }
    tlQuat operator*(const tlQuat& b) const;
    tlQuat operator/(const tlQuat& b) const;
    tlQuat operator*(float b) const { return tlQuat(w*b, x*b, y*b, z*b); }
    tlQuat operator/(float b) const { assert(b!=0.0f);  float inv = 1.0f/b;  return tlQuat(w*inv, x*inv, y*inv, z*inv); }

    tlQuat& MakeClosest(const tlQuat& qto);

    // Comparison
    int operator==(const tlQuat& a) const;

    void Identity() { x = y = z = 0.0f; w = 1.0f; }
    int IsIdentity() const;
    void Normalize();  // normalize
    void MakeMatrix(tlMatrix &mat) const;

    tlQuat Interpolate(const tlQuat& q, float t) const;

    // File IO methods
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    friend ostream& operator<<(ostream& os, const tlQuat& q);
};


//*****************************************************************************
// tlQuat
//*****************************************************************************
class tlCompressedQuat
{
    public :
        tlCompressedQuat()
        {
            tlQuat quat;
            quat.Identity();
            Compress( quat );
        }

        tlCompressedQuat(tlQuat quat)
        {
            Compress(quat);
        }

        void Compress(tlQuat quat)
        {
            w = static_cast<short>( quat.w * QUATERNION_COMPRESSION_FACTOR );
            x = static_cast<short>( quat.x * QUATERNION_COMPRESSION_FACTOR );
            y = static_cast<short>( quat.y * QUATERNION_COMPRESSION_FACTOR );
            z = static_cast<short>( quat.z * QUATERNION_COMPRESSION_FACTOR );
        }

        tlQuat UnCompress() const
        {
            tlQuat quat;
            quat.w = static_cast<float>( w ) * QUATERNION_INVERSE_COMPRESSION_FACTOR;
            quat.x = static_cast<float>( x ) * QUATERNION_INVERSE_COMPRESSION_FACTOR;
            quat.y = static_cast<float>( y ) * QUATERNION_INVERSE_COMPRESSION_FACTOR;
            quat.z = static_cast<float>( z ) * QUATERNION_INVERSE_COMPRESSION_FACTOR;
            return quat;
        }

        // Comparison
        int operator==(const tlCompressedQuat& a) const;

        // File IO methods
        void Read(tlFile* f);
        void Write(tlFile* f);
        void Print(int index, int indent = 0);
        void PrintFormatted(int index, int indent = 0);
        void Init();

        bool GetFieldValue(char*, int) const;
        static bool GetFieldUpdatable();
        bool SetFieldValue(const char*);

        friend ostream& operator<<(ostream& os, const tlCompressedQuat& q);

        short w,x,y,z;
};

//*****************************************************************************
// tlAngAxis
//*****************************************************************************
class tlAngAxis {
public:
    tlPoint axis;
    float angle;

    tlAngAxis() {}
    tlAngAxis(const tlPoint& axis,float angle) {this->axis=axis;this->angle=angle;}  
    tlAngAxis(const tlQuat &q);
    int GetNumRevs();
    void SetNumRevs(int num);
};

#endif

