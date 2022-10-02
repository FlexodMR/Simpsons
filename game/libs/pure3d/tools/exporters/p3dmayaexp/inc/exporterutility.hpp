/*===========================================================================
    utility.hpp
    created: Feb. 7, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _EXPORTER_UTILITY_HPP
#define _EXPORTER_UTILITY_HPP

#include "tlSkeleton.hpp"
#include "tlPoseAnim.hpp"
#include "tlMatrix.hpp"

#include <maya/MDagPath.h>
#include <maya/MMatrix.h>
#include <maya/MFnDagNode.h>
#include <maya/MAnimControl.h>
#include <maya/MTransformationMatrix.h>
#include <iostream.h>

#include "exporteroptions.hpp"

class tlInventory;

const int VISIBLE = 0;
const int INVISIBLE = 1;
const int ANIMATED = 2;

const double LINEAR_TOLERANCE = 1.0e-8;
const double TRANSLATION_TOLERANCE = 1.0e-8;
const double ROTATION_TOLERANCE = 0.0;

extern const char * objectName( MObject object );

extern const char * objectType( MObject object );

#define CheckStatusReturn(msg) if(!status) { cout << msg << endl; return; }
#define CheckStatusReturnFalse(msg) if(!status) { cout << msg << endl; return false; }
#define CheckStatusContinue(msg) if(!status) { cout << msg << endl; continue; }

#define CheckStatusReturnNULL(msg) if(!status) { cout << msg << endl; return NULL; }

const int CLAMP_MIN  = 0x01;
const int CLAMP_MAX  = 0x02;
const int CLAMP_BOTH = 0x03;

template <class T> void ClampValue (T& value, T minVal, T maxVal, int clampType)
{
    if (value>maxVal)
    {
        if ((clampType==CLAMP_BOTH)||(clampType==CLAMP_MAX))
            value = maxVal;
    }
    else if (value<minVal)
    {
        if ((clampType==CLAMP_BOTH)||(clampType==CLAMP_MIN))
            value = minVal;
    }
}

const float PI_2   = 3.14159265358979323846f * 2.0f;

// convert from/to radians and degrees
inline float RadianToDeg(const float a)
{
    return a * (360.0f / PI_2);
}

inline float DegToRadian(const float a)
{
    return a * (PI_2 / 360.0f);
}

inline bool IsPow2(int i)
{
    return (i & (i - 1)) == 0;
}

// get the frame rate of an animation as viewed by the user
extern float GetFrameRate( const MTime& time );

void GenerateMaterial(tlInventory* tlInvPointer, char* materialName);

char* GetVersionStr(const char* moduleName);

// ** BEGIN OBSOLETE ** 04 Sep 2002 ** No longer used **
/*
void CartesianToSpherical(float x, float y, float z, float* magnitude, float* angletheta, float* anglephi);
void SphericalToCartesian(float fRadius, float fTheta, float fPhi, float* x, float* y, float* z);
bool ExportMesh(MDagPath &path, tlInventory *tlinv);
void SortSkeletonsAndAnimationsAndSkins(tlInventory* toollibInventory);
*/
// ** END OBSOLETE ** 04 Sep 2002 ** No longer used **

#endif

