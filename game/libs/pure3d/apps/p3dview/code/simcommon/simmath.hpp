//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _simmath_HPP_
#define _simmath_HPP_

// basic p3d and radlib include  

#include <p3d/p3dtypes.hpp>
#include <radmath/radmath.hpp>
#include <p3d/error.hpp>

#include <simcommon/symmatrix.hpp>

namespace sim
{

#define VERY_SMALL   0.000001f
#define VERY_LARGE   1.0e9f
#define RELA_SMALL   (VERY_SMALL*10.0f)
#define RELA_LARGE   (VERY_LARGE/2.0f)
#define MILLI_EPS    0.001f
#define MICRO_EPS    0.000001f

// set i to the next index as 012012...
#define NXTI(i) ((i)>=2 ? 0 : (i)+1)

template <class TYPE>
    inline TYPE Average(TYPE a, TYPE b)
{
    return (a + b) / TYPE(2);
}

template <class TYPE>
    inline bool BetweenP(TYPE val, TYPE precision, TYPE minv, TYPE maxv)
{
    return val-precision > minv && val+precision < maxv;
}

template <class TYPE>
    inline bool Between(TYPE val, TYPE minv, TYPE maxv)
{
    return val > minv && val < maxv;
}

template <class TYPE>
    inline TYPE ClampBetween(TYPE val, TYPE minv, TYPE maxv)
{
    P3DASSERT(minv<=maxv);
    val = Min(val,maxv);
    return Max(val,minv);
}

inline float ACosSafe(float a)
{
    return (a >= 1.0f ? 0 : rmt::ACos(a));
}

inline bool ShortToBool(short s) { return (s)==0 ? false : true; }

inline float GetVectorComponent( const rmt::Vector& in_v, int ind )
{
    P3DASSERT(ind >= 0 && ind <=2);
    return *(((float*)&in_v)+ind);
    //switch(ind){ case 0:return in_v.x ; case 1:return in_v.y; default:return in_v.z;}
}

inline void SetVectorComponent( rmt::Vector& in_v, int ind, float val )
{
    P3DASSERT(ind >= 0 && ind <=2);
    *(((float*)&in_v)+ind) = val;
    //switch( ind ){ case 0: in_v.x = val;return;case 1: in_v.y = val; return; default: in_v.z = val;}
}

int GetIndexOfMaxVectorComponent( const rmt::Vector& in_v, bool in_bInAbs );
int GetIndexOfMinVectorComponent( const rmt::Vector& in_v, bool in_bInAbs );

// some math functions
// built the skew matrix from the vector, used to simulate a cross product of a vector with a matrix
//void PhSkewMat(const rmt::Vector& v, rmt::Matrix &m);

// mult the matrix with f
void ScaleRotMatrix(float f, const rmt::Matrix& m, rmt::Matrix& r);
float ComputeScaleFromMatrix(const rmt::Matrix& m, float epsilon = MILLI_EPS);

// do the cross product of a vector with a matrix, faster than to use PhSkewMat explicitely
//void PhVecCrossMatrix(const rmt::Vector& v, const rmt::Matrix& m, rmt::Matrix& r);

// add update the given rotation matrix r(t) to r(t+dt) considering v as wdt
void UpdateRotMatrix(const rmt::Vector& v, rmt::Matrix& r);
void UpdateRotMatrixSafe(const rmt::Vector& v, rmt::Matrix& r, float safemax);

// compute the normal and transverse component of v according to the normal n
void VecNT(const rmt::Vector& v, const rmt::Vector& n, rmt::Vector& vn, rmt::Vector& vt);

// compute the angular speed w from the two successive rotation matrix r0 and r1 and time step dt
void WFromRotMatrix(rmt::Vector& w, const rmt::Matrix& r0, const rmt::Matrix& r1, float dt);

void InverseNComponent(rmt::Vector& v, const rmt::Vector& n);

bool WDtToQuat(const rmt::Vector& wdt, rmt::Quaternion& q);
void AngleToQuat(float angle, const rmt::Vector& axis, rmt::Quaternion& q);

void ComputePointMassInertia(SymMatrix& inertia, rmt::Vector& pos, float mass);

// epsilon represent a power of 10
inline float TruncateToEpsilon(float mScale, float epsilon=0.001f) { return float(floor(mScale/epsilon))*epsilon; }

void SimCheckValue(float val);

inline void SimCheckVector(const rmt::Vector& check)
{
    SimCheckValue(check.x);
    SimCheckValue(check.y);
    SimCheckValue(check.z);
}

bool SameMatrix(const rmt::Matrix& m1, const rmt::Matrix& m2, float epsilon = MICRO_EPS);
bool SameTranslation(const rmt::Matrix& m1, const rmt::Matrix& m2, float epsilon = MICRO_EPS);
bool SameRotation(const rmt::Matrix& m1, const rmt::Matrix& m2, float epsilon = MICRO_EPS);

bool BuildRotationFromTo( const rmt::Vector& in_vctFrom, const rmt::Vector& in_vctTo, rmt::Quaternion &o_quat, bool &o_Flip, float inMinAng=0.0f, float inMaxAng=rmt::PI_2 );
bool BuildRotationFromTo( const rmt::Vector& in_vctFrom, const rmt::Vector& in_vctTo, rmt::Matrix &o_mat, bool &o_Flip, float inMinAng=0.0f, float inMaxAng=rmt::PI_2 );

void CopyRotation(const rmt::Matrix& source, rmt::Matrix& dest);
rmt::Vector PerpComponent(const rmt::Vector& v1, const rmt::Vector& v2);
void AxisAngle(const rmt::Vector& v1, const rmt::Vector& v2, rmt::Vector& axis, float& angle);
rmt::Vector float2Vec(const float*);

//#define ConstMatrixVector(mat, row) (*(rmt::Vector*)&(mat.m[row]))
inline const rmt::Vector& ConstMatrixVector(const rmt::Matrix& m, int row)
{
    return (*(rmt::Vector*)&(m.m[row]));
}
//rmt::Matrix& LeftMult(const rmt::Matrix& a);

} // sim

#endif // _simmath_HPP_


