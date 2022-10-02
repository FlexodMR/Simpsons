//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PARTICLE_UTILITY_HPP_
#define _PARTICLE_UTILITY_HPP_

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


namespace P3DParticleSystem
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

template <class T> void GetMaxOfList (int& index, T& value, T* list, int size)
{
    T temp = list[0];
    value = 0.0;
    index = 0;
    for (int i = 0; i < size; i++)
    {
        if (list[i]>temp)
        {
            temp = list[i];
            index = i;
        }
    }
    value = list[index];
}

class getCurrentUnitsCmd : public MPxCommand
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class getSurfaceShaderCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

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

class isParticleSystemCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class isParticleEmitterCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class getParticleSystemListCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

bool getParentParticleSystem(MDagPath emitterDagPath, MDagPath &partSysDagPath);

class getParentParticleSystemCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class getSelectedParticleSystemCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

class getSelectedParticleEmitterCmd : public MPxCommand 
{
public:
     MStatus        doIt( const MArgList& args );
     static void*   creator();
};

}; //namespace P3DParticleSystem

#endif //_PARTICLE_UTILITY_HPP_
