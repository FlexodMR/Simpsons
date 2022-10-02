//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ANIMATED_OBJECT_UTILITY_HPP_
#define _ANIMATED_OBJECT_UTILITY_HPP_

#include <iostream.h>
#include <maya/MStatus.h>
#include <maya/MPxCommand.h>
#include <maya/MArgList.h>
#include <maya/MFnDagNode.h>

#define CHECKRESULT_FAILURE(STAT,MSG)       \
     if ( MS::kSuccess != STAT )     \
     {                               \
          cerr << MSG << endl;        \
          return MS::kFailure;        \
     }

#define CHECKRESULT_NULL(STAT,MSG)       \
     if ( MS::kSuccess != STAT )     \
     {                               \
          cerr << MSG << endl;        \
          return NULL;                \
     }

#define CHECKRESULT_RETURN(STAT,MSG)       \
     if ( MS::kSuccess != STAT)      \
     {                               \
          cerr << MSG << endl;        \
          return;                     \
     }


namespace P3DAnimatedObject
{

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

bool GetShapeNodeFn(MDagPath dagPath, MFnDagNode &shapeNodeFn);

class getShapeNodeCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool GetTransformNodeFn(MDagPath dagPath, MFnDagNode &transformNodeFn);

class getTransformNodeCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool IsType(const MDagPath &dagPath, unsigned type);

bool IsType(const MObject &obj, unsigned type);

}; //namespace P3DAnimatedObject

#endif //_ANIMATED_OBJECT_UTILITY_HPP_
