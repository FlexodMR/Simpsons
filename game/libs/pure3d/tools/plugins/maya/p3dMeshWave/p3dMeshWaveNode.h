#ifndef _p3dMeshWaveNode
#define _p3dMeshWaveNode
//
// Copyright (C) 2002 Radical Entertainment 
// 
// File: p3dMeshWaveNode.h
//
// Dependency Graph Node: p3dMeshWave
//
// Author: Maya SDK Wizard
//

#include <maya/MPxNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MTypeId.h> 
#include <listArray/listArray.hpp>

#include "raindrop.hpp"
#include "wave.hpp"

static const int PERTURB_MAP_SIZE_DEFAULT = 256;

class p3dMeshWave : public MPxNode
{
public:
                                p3dMeshWave();
    virtual                        ~p3dMeshWave(); 

    virtual MStatus                compute( const MPlug& plug, MDataBlock& data );

    static  void*                creator();
    static  MStatus                initialize();

    void                        Clear( void );

public:

    static  MObject                m_inMesh;
    static  MObject                m_outMesh;
    static  MObject             m_startTime;
    static  MObject             m_endTime;
    static  MObject             m_useTimeSlider;
    static  MObject             m_inTime;
    static  MObject             m_uvSetName;

    static  MObject             m_waveType;
    static  MObject             m_timeAmplitude;
    static  MObject             m_waveAmplitude;
    static  MObject             m_rippleSeamless;
    static  MObject             m_raindropCount;
    static  MObject             m_raindropSeamless;
    static  MObject             m_waveSource;
    static  MObject             m_waveDirection;
    static  MObject             m_waveDistance;
    static  MObject             m_wavelength;
    static  MObject             m_waveSeamless;
    static  MObject             m_waveTile;
    static  MObject             m_perturbGridSize;
    static  MObject             m_perturbFrequency;
    static  MObject             m_perturbAmplitude;


    // The typeid is a unique 32bit indentifier that describes this node.
    // It is used to save and retrieve nodes of this type from the binary
    // file format.  If it is not unique, it will cause file IO problems.
    //
    static    MTypeId        id;

protected:
    float                       mTimeAmplitude;
    float                       mWaveAmplitude;
    MTime                       mStartTime;
    MTime                       mEndTime;
    bool                        mUseTimeSlider;

    bool                        mRippleSeamless;

    int                         mRaindropCount;
    bool                        mRaindropSeamless;

    MPoint                      mWaveSource;
    MVector                     mWaveDirection;
    double                      mWaveDistance;
    double                      mWavelength;
    bool                        mWaveSeamless;
    bool                        mWaveTile;
    
    int                         mPerturbMapSize;
    int                         mPerturbCount;
    int                         mPerturbFrequency;
    float                       mPerturbAmplitude;

private:
    CRaindropCollection         mRaindropCollection;
    CListArray<CProceduralWave> mWaveArray;

    void                        Wave( const CWaveInfo& info );

    int                         ValidateUVSetName( MString& uvSetName, MObject& mesh );
    void                        AllocPerturb( int waveMapSize = PERTURB_MAP_SIZE_DEFAULT );
    void                        ClearPerturb( void );
    void                        Perturb( void );
    void                        ProcessPerturb( void );
    void                        SwapPerturb( void );
    int                         mPerturbIndex;
    float*                      mPerturb2d[4];
};

#endif
