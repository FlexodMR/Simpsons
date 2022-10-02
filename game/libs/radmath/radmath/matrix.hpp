//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _RADMATH_MATRIX_HPP
#define _RADMATH_MATRIX_HPP

#include <radmath/buildconfig.hpp>
#include <radmath/vector.hpp>
#include <radmath/quaternion.hpp>
#include <math.h>

namespace RadicalMathLibrary
{

// 4x4 matrix
class Matrix
{
public:
    friend class Vector;
    friend class Vector4;

    Matrix() { /* */ }
    Matrix( float _m00, float _m01, float _m02, float _m03,
            float _m10, float _m11, float _m12, float _m13,
            float _m20, float _m21, float _m22, float _m23,
            float _m30, float _m31, float _m32, float _m33 );

    // set matrix to identity
    void Identity(void);

    // sub-matrix identities
    void IdentityRotation(void);    // the rotation (upper left 3x3)
    void IdentityTranslation(void); // the translation (4th row)
    void IdentityProjection(void);  // the projection (4th column)

    Vector&  Row(int i)              { return *(Vector*)m[i]; }
    Vector4& Row4(int i)             { return *(Vector4*)m[i]; }
    const Vector4& Row4(int i) const { return *(const Vector4*)m[i]; }
    const Vector& Row(int i) const   { return *(const Vector*)m[i]; }

    void FillTranslate(const Vector& vector); // rotation and projection are unchanged

    // all other Fill* functions destroy rotation component

    // universal rotation matrix build function
    // generates a matrix rotation <angle> around Axis <vector>
    void FillRotation(const Vector& vector, float angle);
    void FillRotation(const Quaternion& quat);

    // Euler angle building functions
    void FillRotateX(float angle);
    void FillRotateY(float angle);
    void FillRotateZ(float angle);
    void FillRotateXYZ(float anglex, float angley, float anglez);
    void FillRotateYZX(float anglex, float angley, float anglez);

    void FillScale(float xScale, float yScale, float zScale);
    void FillScale(float scaleFactor)    { FillScale(scaleFactor,scaleFactor,scaleFactor); }
    void FillScale(const Vector& vector) { FillScale(vector.x, vector.y, vector.z); }

    // Heading matrix functions
    void FillHeading(const Vector& heading, const Vector& vup);
    void FillHeadingXZ(const Vector& heading);
    void FillHeadingYZ(const Vector& heading);
    void FillHeadingXY(const Vector& heading);
    void FillReflection(const Vector& point, const Vector& normal);
    void SetPerspective(const float fov, const float aspect, const float pnear, const float pfar);

    // matrix ops
    void Invert(void);       // invert the matrix
    void Invert(const Matrix& i)      { *this = i; Invert(); }
    void InvertOrtho(void);  // invert, assuming the matrix is orthogonal
    void InvertOrtho(const Matrix& i) { *this = i;  InvertOrtho(); }
    
    void OrthoNormal(void);  // make the matrix ortho-normal
    void OrthoNormal(const Matrix& i) { *this = i;  OrthoNormal(); }
    bool IsOrthoNormal();       // is the matrix ortho-normal?

    void Transpose(void);   // transpose the elements of the matrix
    void Transpose(const Matrix& i)   { *this = i;  Transpose(); }

    void Mult(const Matrix& a, const Matrix& b);
    inline void Mult(const Matrix& i) { Matrix t; t.Mult(*this, i); *this = t; }

#ifdef RAD_PS2
#ifdef PS2MW
    inline void MultAligned(const Matrix& a, const Matrix& b)
    {

        register float *pma = (register float *)a.m;
        register float *pmb = (register float *)b.m;

        assert((((int)&m) & 0x0F) == 0);
        assert((((int)&a.m) & 0x0F) == 0);
        assert((((int)&b.m) & 0x0F) == 0);

        asm
        {
            // Load Matrix A into VF1-VF4

            lqc2 vf24, 0x00(pmb)
            lqc2 vf25, 0x10(pmb)
            lqc2 vf26, 0x20(pmb)
            lqc2 vf27, 0x30(pmb)

            lqc2 vf28, 0x00(pma)
            lqc2 vf29, 0x10(pma)
            lqc2 vf30, 0x20(pma)
            lqc2 vf31, 0x30(pma)

            .set noreorder
            vcallms vu0_mulmatrix
            qmtc2.i  $0, vf0
            .set reorder

            // aligned save
            sqc2 vf28,  0(this)
            sqc2 vf29, 16(this)  
            sqc2 vf30, 32(this) 
            sqc2 vf31, 48(this) 
        }
    }
#else
    inline void MultAligned(const Matrix& a, const Matrix& b)
    {
        assert((((int)&m) & 0x0F) == 0);
        assert((((int)&a.m) & 0x0F) == 0);
        assert((((int)&b.m) & 0x0F) == 0);

        asm __volatile__ ("
            # Load Matrix A into VF1-VF4

            lqc2 vf24, 0x00(%0)
            lqc2 vf25, 0x10(%0)
            lqc2 vf26, 0x20(%0)
            lqc2 vf27, 0x30(%0)

            lqc2 vf28, 0x00(%1)
            lqc2 vf29, 0x10(%1)
            lqc2 vf30, 0x20(%1)
            lqc2 vf31, 0x30(%1)

            .set noreorder
            vcallms vu0_mulmatrix
            qmtc2.i  $0, vf0
            .set reorder

            # aligned save
            sqc2 vf28,  0(%2)
            sqc2 vf29, 16(%2)  
            sqc2 vf30, 32(%2) 
            sqc2 vf31, 48(%2) 

        ": // Outputs
         : "r" (&b), "r" (&a), "r" (&m)  // Inputs
         : "memory" ); // Clobber list
    }
#endif
#endif

#ifdef RAD_PS2
    inline void MultFull(const Matrix& a, const Matrix& b) { Mult(a, b); }
    inline void MultFull(const Matrix& i)                  { Mult(i); }
#else
    void MultFull(const Matrix& a, const Matrix& b);
    void MultFull(const Matrix& i) { Matrix t; t.MultFull(*this, i); *this = t; }
#endif

    // transform vector(s) through a matrix
    void Transform(const Vector& src, Vector* dest) const;
    void Transform(int n, const Vector* src, Vector* dest) const;

    void Transform(const Vector4& src, Vector4* dest) const;
    void Transform(int n, const Vector4* src, Vector4* dest) const;

    void RotateVector(const Vector& src, Vector* dest) const;
    void RotateVector(int n, const Vector* src, Vector* dest) const;

    void GetHeading(Vector& v){ v=Row(2); }

    // Unfortunately, no one can be told what this function is. 
    // You have to see it for yourself.   
    void ThereIsNoSpoon(void);

    // c[row][column]
    float m[4][4];
};

}

namespace rmt = RadicalMathLibrary;

#endif
