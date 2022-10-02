//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     23 May, 2002
// Modified:    23 May, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "p3dMeshWaveNode.h"

#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MFnMesh.h>
#include <maya/MTime.h>
#include <maya/MFloatArray.h>
#include <maya/MPlugArray.h>
#include <maya/MAnimControl.h>

#include <maya/MGlobal.h>

#include <math.h>
#include <iostream.h>
#include <assert.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

const float PI = 3.14159F;

const float WAVE_AMPLITUDE_DEFAULT = 1.0F;
const float TIME_AMPLITUDE_DEFAULT = 1.0F;

const int   RAINDROP_COUNT_DEFAULT = 8;
const double WAVE_WAVELENGTH_DEFAULT = 1.0;
const double WAVE_WAVEDISTANCE_DEFAULT = 5.0;
const float PERTURB_DAMPING = 0.01F;
const int   PERTURB_FREQUENCY_DEFAULT = 8;
const float PERTURB_AMPLITUDE_DEFAULT = 16.0F;

enum 
{
    WAVE_TYPE_RIPPLE = 0,
    WAVE_TYPE_RAINDROP,
    WAVE_TYPE_WAVE,
    WAVE_TYPE_PERTURB,

    NUM_WAVE_TYPES
};

static const char* WaveTypes[NUM_WAVE_TYPES] =
{
    "ripple",
    "raindrop",
    "wave",
    "perturb"
};

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MTypeId     p3dMeshWave::id( 0x040185 );

MObject     p3dMeshWave::m_inMesh;        
MObject     p3dMeshWave::m_outMesh;
MObject     p3dMeshWave::m_uvSetName;

MObject     p3dMeshWave::m_inTime;       
MObject     p3dMeshWave::m_startTime;       
MObject     p3dMeshWave::m_endTime;       
MObject     p3dMeshWave::m_useTimeSlider;
MObject     p3dMeshWave::m_timeAmplitude;
MObject     p3dMeshWave::m_waveAmplitude;
MObject     p3dMeshWave::m_waveType;
MObject     p3dMeshWave::m_rippleSeamless;
MObject     p3dMeshWave::m_raindropCount;
MObject     p3dMeshWave::m_raindropSeamless;
MObject     p3dMeshWave::m_waveSource;
MObject     p3dMeshWave::m_waveDirection;
MObject     p3dMeshWave::m_waveDistance;
MObject     p3dMeshWave::m_wavelength;
MObject     p3dMeshWave::m_waveSeamless;
MObject     p3dMeshWave::m_waveTile;
MObject     p3dMeshWave::m_perturbGridSize;
MObject     p3dMeshWave::m_perturbFrequency;
MObject     p3dMeshWave::m_perturbAmplitude;

//===========================================================================
// Constructor / Destructor
//===========================================================================

p3dMeshWave::p3dMeshWave()
:   mWaveAmplitude( 0.1F ),
    mTimeAmplitude( 0.1F ),
    mStartTime( MTime( 0.0 ) ),
    mEndTime( MTime( 30.0 ) ),
    mUseTimeSlider( true ),
    mRippleSeamless( false ),
    mRaindropCount( RAINDROP_COUNT_DEFAULT ),
    mRaindropSeamless( false ),
    mWaveDirection( MVector( 1.0, 0.0, 0.0 ) ),
    mWaveSource( MPoint( 0.0, 0.0, 0.0 ) ),
    mWaveDistance( -1.0 ),
    mWavelength( 5.0 ),
    mWaveSeamless( false ),
    mWaveTile( false ),
    mPerturbFrequency( PERTURB_FREQUENCY_DEFAULT ),
    mPerturbAmplitude( PERTURB_AMPLITUDE_DEFAULT ),
    mPerturbMapSize( PERTURB_MAP_SIZE_DEFAULT ),
    mPerturbIndex( 0 ),
    mPerturbCount( 0 )
{
    memset( mPerturb2d, 0, sizeof( float* ) * 4 );
    AllocPerturb();
}

p3dMeshWave::~p3dMeshWave()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void p3dMeshWave::Clear( void )
{
    ClearPerturb();
}

void p3dMeshWave::ClearPerturb( void )
{
    delete [] mPerturb2d[0];
    delete [] mPerturb2d[1];
    delete [] mPerturb2d[2];
    delete [] mPerturb2d[3];

    memset( mPerturb2d, 0, sizeof( float* ) * 4 );
}

void p3dMeshWave::AllocPerturb( int perturbMapSize )
{
    ClearPerturb();

    unsigned int perturbSquare = perturbMapSize * perturbMapSize;

    mPerturb2d[0] = new float[ perturbSquare ]; // U displacement
    mPerturb2d[1] = new float[ perturbSquare ]; // V displacement
    mPerturb2d[2] = new float[ perturbSquare ]; // U displacement
    mPerturb2d[3] = new float[ perturbSquare ]; // V displacement

    memset( mPerturb2d[0], 0, sizeof( float ) * perturbSquare );
    memset( mPerturb2d[1], 0, sizeof( float ) * perturbSquare );
    memset( mPerturb2d[2], 0, sizeof( float ) * perturbSquare );
    memset( mPerturb2d[3], 0, sizeof( float ) * perturbSquare );

    mPerturbMapSize = perturbMapSize;
}

int p3dMeshWave::ValidateUVSetName( MString& uvSetName, MObject& mesh )
{
    int                         uvSet = 0;

    MStatus                     status;

    MFnMesh                     fnMesh( mesh, &status );
    if ( status == MS::kSuccess )
    {
        MStringArray            uvSetNames;
        fnMesh.getUVSetNames( uvSetNames );

        bool                    bValid = false;

        for ( size_t n = 0; n < uvSetNames.length(); n++ )
        {
            if ( uvSetName == uvSetNames[n] )
            {
                bValid = true;
                uvSet = n;
                break;
            }
        }

        // If not found, use first available UVSet.
        if ( !bValid )
        {
            uvSetName = uvSetNames[0];
            uvSet = 0;
        }
    }

    return uvSet;
}

//===========================================================================
// p3dMeshWave::compute
//===========================================================================
// Description: This method computes the value of the given output plug based
//                on the values of the input attributes.
//
// Constraints: 
//
//  Parameters: plug - the plug to compute.
//                data - object that provides access to the attributes 
//              for this node.
//
//      Return: (MStatus): The usual.
//
//===========================================================================
MStatus p3dMeshWave::compute( const MPlug& plug, MDataBlock& data )
{
    MStatus status;
 
    if( plug == m_outMesh )
    {
        MObject me = thisMObject();
        MFnDependencyNode fnDependNode( me );
        MPlug meshPlug = fnDependNode.findPlug( "inMesh" );
        MPlugArray connectPlugs;
        if ( meshPlug.connectedTo( connectPlugs, true /* asDst */, false, &status ) )
        {
            MObject connectMesh;
            status = connectPlugs[0].getValue( connectMesh );

            MDataHandle inputData = data.inputValue( m_inMesh, &status );

            if( status == MS::kSuccess )
            {
                MDataHandle inData;

                MString         uvSetName;
                int             uvSet;

                int             waveType;
                bool            raindropSeamless;
                int             perturbMapSize;
                double          waveDistance;
                double          wavelength;
                bool            waveSeamless;
                MTime           time;

    // --------  Get the user values from the p3dMeshWave plugs  --------

                inData = data.inputValue( m_waveType, &status );
                waveType = inData.asInt();

                inData = data.inputValue( m_uvSetName, &status );
                uvSetName = inData.asString();
                uvSet = ValidateUVSetName( uvSetName, connectMesh );

                inData = data.inputValue( m_inTime, &status );
                time = inData.asTime();

                inData = data.inputValue( m_startTime, &status );
                mStartTime = inData.asTime();

                inData = data.inputValue( m_endTime, &status );
                mEndTime = inData.asTime();

                inData = data.inputValue( m_useTimeSlider, &status );
                mUseTimeSlider = inData.asBool();

                inData = data.inputValue( m_perturbGridSize, &status );
                perturbMapSize = inData.asInt();
                if ( perturbMapSize != mPerturbMapSize )
                {
                    AllocPerturb( perturbMapSize );
                }

                inData = data.inputValue( m_timeAmplitude, &status );
                mTimeAmplitude = inData.asFloat();

                inData = data.inputValue( m_waveAmplitude, &status );
                mWaveAmplitude = inData.asFloat();

                inData = data.inputValue( m_rippleSeamless, &status );
                mRippleSeamless = inData.asBool();

                inData = data.inputValue( m_raindropCount, &status );
                mRaindropCount = inData.asInt();

                inData = data.inputValue( m_raindropSeamless, &status );
                raindropSeamless = inData.asBool();

                inData = data.inputValue( m_waveSource, &status );
                float2& f2WaveSource = inData.asFloat2();

                inData = data.inputValue( m_waveDirection, &status );
                float2& f2WaveDirection = inData.asFloat2();

                inData = data.inputValue( m_waveDistance, &status );
                waveDistance = inData.asDouble();

                inData = data.inputValue( m_wavelength, &status );
                wavelength = inData.asDouble();

                inData = data.inputValue( m_waveSeamless, &status );
                waveSeamless = inData.asBool();

                inData = data.inputValue( m_waveTile, &status );
                mWaveTile = inData.asBool();

                inData = data.inputValue( m_perturbAmplitude, &status );
                mPerturbAmplitude = inData.asFloat();

                inData = data.inputValue( m_perturbFrequency, &status );
                mPerturbFrequency = inData.asInt();

    // --------  Get the kMesh data  --------

                MObject result = inputData.asMesh();

                MFnMesh             fnMesh( connectMesh, &status );
                if ( status != MS::kSuccess )
                {
                    cerr << "Could not get fnMesh for mesh object." << endl;
                    return status;  // Should I do this?
                }

    // --------  Get the UV data  --------

                MStringArray        uvSetNames;
                MFloatArray         uArray;
                MFloatArray         vArray;
                CUVInfo             uvInfo;
                size_t              u;

                fnMesh.getUVSetNames( uvSetNames );
                fnMesh.getUVs( uArray, vArray, &uvSetNames[uvSet] );

                // First pass to get min and max for UVs
                uvInfo.Clear( uArray[0] );

                for ( u = 0; u < uArray.length(); u++ )
                {
                    uvInfo.Add( uArray[u], vArray[u] );
                }

    // --------  Get the Time data  --------

                MTime               inTime( MAnimControl::minTime() );
                MTime               outTime( MAnimControl::maxTime() );
                outTime++;  // Loop first frame is equivalent to one _past_ the last frame.

                double realSeconds = time.as( MTime::kSeconds );
                double realInSeconds = mStartTime.as( MTime::kSeconds );
                double realOutSeconds = mEndTime.as( MTime::kSeconds );

                if ( mUseTimeSlider )
                {
                    realInSeconds = inTime.as( MTime::kSeconds );
                    realOutSeconds = outTime.as( MTime::kSeconds );
                }

                double seconds = realSeconds * mTimeAmplitude;
                double inSeconds = realInSeconds * mTimeAmplitude;
                double outSeconds = realOutSeconds * mTimeAmplitude;
                double maxLife = outSeconds - inSeconds;

                // Clamp output so computation after last frame mimics last frame.
                if ( seconds > outSeconds ) seconds = outSeconds;

    // --------  Apply the algorithm  --------

                switch( waveType )
                {
                    case WAVE_TYPE_RIPPLE:     // ripple
                    {
                        float rippleFactor = 0.1F;  // scale factor so Ripple has similar effect as other algorithms

                        double amplitude = mTimeAmplitude;

                        if ( mRippleSeamless )
                        {
                            double factor = outSeconds - inSeconds;
                            double adjFactor = ( fmod( factor, 1.0 ) > 0.5 ? ceil( factor) : floor( factor ) );
                            amplitude = mTimeAmplitude * adjFactor / factor;

//                            clog << "Scale time by " << amplitude << endl;
                        }

                        if ( seconds <= outSeconds )
                        {
                            // Adjust time relative to minTime
                            double radians = ( realSeconds - realInSeconds ) * amplitude * PI * 2;

                            for ( u = 0; u < uArray.length(); u++ )
                            {
                                // Adjust time amplitude to guarantee seamless

                                uArray[u] = uArray[u] + ( (float)sin( uArray[u] + radians ) * mWaveAmplitude * rippleFactor );
                                vArray[u] = vArray[u] + ( (float)cos( vArray[u] + radians ) * mWaveAmplitude * rippleFactor );
                            }
                        }

                        break;
                    }
                    case WAVE_TYPE_RAINDROP:     // raindrop
                    {
                        if ( raindropSeamless != mRaindropSeamless )
                        {
                            mRaindropCollection.Clear();
                            mRaindropSeamless = raindropSeamless;
                        }

                        if ( mRaindropSeamless )
                        {
                            if ( mRaindropCollection.NumNaturalRaindrops() != (unsigned int)mRaindropCount )
                            {
                                mRaindropCollection.CreateSeamless( inSeconds, outSeconds, mRaindropCount, uvInfo );
                            }
                        }
                        else
                        {
                            if ( seconds < outSeconds )
                            {
                                while ( mRaindropCollection.NumNaturalRaindrops() < (unsigned int)mRaindropCount )
                                {
                                    mRaindropCollection.AddRaindrop( seconds, maxLife, uvInfo );
                                }
                            }
                        }


                        size_t d;

                        for ( d = 0; d < mRaindropCollection.NumRaindrops(); d++ )
                        {
                            CProceduralRaindrop* pDrop = mRaindropCollection.Raindrop( d );
//                                clog << "CALC raindrop #" << d << " @ T+" << ( seconds - pDrop->mInfo.mBirth ) << endl;

                            pDrop->ComputeUV( seconds, mWaveAmplitude, uArray, vArray );
                        }

                        if ( !mRaindropSeamless )
                        {
                            mRaindropCollection.Flush( seconds );
                        }

                        break;
                    }
                    case WAVE_TYPE_WAVE:     // raindrop
                    {
                        float waveFactor = 0.1F;  // scale factor so Wave has similar effect as other algorithms
                        size_t d = 0;

                        MPoint  waveSource( f2WaveSource[0], f2WaveSource[1], 0.0 );
                        MVector waveDirection( f2WaveDirection[0], f2WaveDirection[1], 0.0 );

                        if (    ( mWaveSource != waveSource ) || 
                                ( !mWaveDirection.isEquivalent( waveDirection.normal() ) ) ||
                                ( mWaveDistance != waveDistance ) ||
                                ( mWavelength != wavelength ) ||
                                ( mWaveSeamless != waveSeamless )
                           )
                        {
                            mWaveArray.Clear();
                            mWaveSource = waveSource;
                            mWaveDirection = waveDirection.normal();
                            mWaveDistance = waveDistance;
                            mWavelength = wavelength;
                            mWaveSeamless = waveSeamless;
                        }

                        while( mWaveArray.NumItems() < 1 )
                        {
                            CWaveInfo           info;
                            info.mBirth = seconds;
                            info.mCenter = mWaveSource;
                            info.mNormal = mWaveDirection;
                            info.mDistance = mWaveDistance;
                            info.mWavelength = mWavelength;

                            Wave( info );

                            if ( mWaveSeamless )
                            {
                                mWaveArray(0)->MakeSeamless( inSeconds, outSeconds, mTimeAmplitude );
                            }
                        }

                        if ( seconds <= outSeconds )
                        {
                            for ( d = 0; d < mWaveArray.NumItems(); d++ )
                            {
                                CProceduralWave* pWave = mWaveArray(d);
                                pWave->ComputeUV( seconds, mWaveAmplitude * waveFactor, uArray, vArray );
                            }
                        }

                        if ( mWaveTile )
                        {
                            CProcedural::NormalizeUVs( uArray, vArray );
                        }

                        while ( d-- )
                        {
                            if ( !mWaveArray(d)->IsAlive( seconds ) )
                            {
//                                    clog << "DELETE WAVE #" << d << endl;
                                mWaveArray.DeleteItem( d );
                            }
                        }

                        break;
                    }
                    case WAVE_TYPE_PERTURB:     // perturb
                    {
                        float perturbFactor = 0.1F;

                        if ( seconds <= outSeconds )
                        {
                            if ( fmod( time.value(), mPerturbFrequency ) == 0 )
                            {
                                Perturb();
                            }

                            ProcessPerturb();

                            {
                                for ( u = 0; u < uArray.length(); u++ )
                                {
                                    int uOffset = 0;
                                    int vOffset = 0;

                                    if ( uvInfo.URange() > 0.0F )
                                    {
                                        uOffset = (int)(( uArray[u] - uvInfo.m_minU ) / uvInfo.URange() * (mPerturbMapSize-3) );
                                    }
                                    if ( uvInfo.VRange() > 0.0F )
                                    {
                                        vOffset = (int)(( vArray[u] - uvInfo.m_minV ) / uvInfo.VRange() * (mPerturbMapSize-3) );
                                    }

                                    int offset = ( (uOffset+1) * mPerturbMapSize ) + (vOffset+1);

                                    uArray[u] = uArray[u] + ( mPerturb2d[mPerturbIndex+0][offset] * mWaveAmplitude * perturbFactor );
                                    vArray[u] = vArray[u] + ( mPerturb2d[mPerturbIndex+1][offset] * mWaveAmplitude * perturbFactor );
                                }
                            }
                        }
                        
                        break;
                    }
                        
                }

                MFnMesh         inMesh( result, &status );
                inMesh.setUVs( uArray, vArray, &uvSetNames[uvSet] );
            
                // Get a handle to the output attribute.  This is similar to the
                // "inputValue" call above except that no dependency graph 
                // computation will be done as a result of this call.
                // 
                MDataHandle outputHandle = data.outputValue( p3dMeshWave::m_outMesh );

                // This just copies the input value through to the output.  
                // 
                outputHandle.set( result );
                // Mark the destination plug as being clean.  This will prevent the
                // dependency graph from repeating this calculation until an input 
                // of this node changes.
                // 
                data.setClean(plug);
            }
        }
    } 
    else 
    {
        return MS::kUnknownParameter;
    }

    return status;
}

void* p3dMeshWave::creator()
//
//    Description:
//        this method exists to give Maya a way to create new objects
//      of this type. 
//
//    Return Value:
//        a new object of this type
//
{
    return new p3dMeshWave();
}

MStatus p3dMeshWave::initialize()
//
//    Description:
//        This method is called to create and initialize all of the attributes
//      and attribute dependencies for this node type.  This is only called 
//        once when the node type is registered with Maya.
//
//    Return Values:
//        MS::kSuccess
//        MS::kFailure
//        
{
    // This sample creates a single input float attribute and a single
    // output float attribute.
    //
    MFnTypedAttribute           tAttr;
    MFnUnitAttribute            uAttr;
    MFnNumericAttribute         nAttr;
    MFnEnumAttribute            eAttr;
    MStatus                        status;

    MFnStringData               fnStringData;
    MObject                     obDefaultString;
    obDefaultString = fnStringData.create( "" );

    m_inMesh = tAttr.create( "inMesh", "in", MFnData::kMesh, MObject::kNullObj );
     tAttr.setStorable(false);
     tAttr.setKeyable(false);
    tAttr.setHidden( true );

    m_outMesh = tAttr.create( "outMesh", "out", MFnData::kMesh, MObject::kNullObj );
    tAttr.setWritable(false);
    tAttr.setStorable(false);
    tAttr.setHidden( true );

    m_inTime = uAttr.create( "time", "t", MFnUnitAttribute::kTime, 0.0 );
    // Attribute is read-only because it is an output attribute
    nAttr.setStorable(false);
    // Attribute will not be written to files when this type of node is stored
    nAttr.setKeyable(true);

    m_startTime = uAttr.create( "startTime", "st", MFnUnitAttribute::kTime, 0.0 );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

    m_endTime = uAttr.create( "endTime", "et", MFnUnitAttribute::kTime, 30.0 );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

	m_useTimeSlider = nAttr.create( "useTimeSlider", "uts", MFnNumericData::kBoolean, true );
	nAttr.setStorable(true);
	nAttr.setKeyable(false);

    m_uvSetName = tAttr.create( "uvSetName", "uvsn", MFnData::kString, obDefaultString );
    nAttr.setStorable( true );
    nAttr.setKeyable( false );

    m_waveType = eAttr.create( "waveType", "typ", WAVE_TYPE_RIPPLE );
    for ( size_t i = 0; i < NUM_WAVE_TYPES; i++ )
    {
        eAttr.addField( WaveTypes[i], i );
    }
    eAttr.setStorable(true);
    eAttr.setKeyable(false);

    m_timeAmplitude = nAttr.create( "timeAmplitude", "ta", MFnNumericData::kFloat, TIME_AMPLITUDE_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

    m_waveAmplitude = nAttr.create( "waveAmplitude", "wa", MFnNumericData::kFloat, WAVE_AMPLITUDE_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

    m_rippleSeamless = nAttr.create( "rippleSeamless", "rpsm", MFnNumericData::kBoolean, false );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_raindropCount = nAttr.create( "raindropCount", "rcnt", MFnNumericData::kInt, RAINDROP_COUNT_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);
    nAttr.setMin( 0 );
    nAttr.setMax( 256 );

    m_raindropSeamless = nAttr.create( "raindropSeamless", "rsml", MFnNumericData::kBoolean, false );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_waveSource = nAttr.create( "waveSource", "wsrc", MFnNumericData::k2Float );
    nAttr.setDefault( 0.0, 0.0 );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_waveDirection = nAttr.create( "waveDirection", "wdir", MFnNumericData::k2Float );
    nAttr.setDefault( 1.0, 0.0 );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_wavelength = nAttr.create( "wavelength", "wl", MFnNumericData::kDouble, WAVE_WAVELENGTH_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

    m_waveDistance = nAttr.create( "waveDistance", "wd", MFnNumericData::kDouble, WAVE_WAVEDISTANCE_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(true);

    m_waveSeamless = nAttr.create( "waveSeamless", "wsml", MFnNumericData::kBoolean, false );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_waveTile = nAttr.create( "waveTile", "wtil", MFnNumericData::kBoolean, false );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);

    m_perturbGridSize = nAttr.create( "perturbGridSize", "pgs", MFnNumericData::kInt, PERTURB_MAP_SIZE_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);
    nAttr.setMin( 8 );
    nAttr.setMax( 1024 );

    m_perturbFrequency = nAttr.create( "perturbFrequency", "pfrq", MFnNumericData::kInt, PERTURB_FREQUENCY_DEFAULT );
    nAttr.setStorable(true);
    nAttr.setKeyable(false);
    nAttr.setMin( 1 );
    nAttr.setMax( 32 );

    m_perturbAmplitude = nAttr.create( "perturbAmplitude", "pamp", MFnNumericData::kFloat, PERTURB_AMPLITUDE_DEFAULT );
    // Attribute is read-only because it is an output attribute
    nAttr.setStorable(true);
    // Attribute will not be written to files when this type of node is stored
    nAttr.setKeyable(true);
    nAttr.setMin( 0.0F );
    nAttr.setMax( 32.0F );

    // Add the attributes we have created to the node
    //
    status = addAttribute( m_inMesh );
        if (!status) { status.perror("FAILED to add attribute .inMesh"); return status;}
    status = addAttribute( m_outMesh );
        if (!status) { status.perror("FAILED to add attribute .outMesh"); return status;}
    status = addAttribute( m_inTime );
        if (!status) { status.perror("FAILED to add attribute .time"); return status;}
    status = addAttribute( m_startTime );
        if (!status) { status.perror("FAILED to add attribute .startTime"); return status;}
    status = addAttribute( m_endTime );
        if (!status) { status.perror("FAILED to add attribute .endTime"); return status;}
    status = addAttribute( m_useTimeSlider );
        if (!status) { status.perror("FAILED to add attribute .useTimeSlider"); return status;}
    status = addAttribute( m_uvSetName );
        if (!status) { status.perror("FAILED to add attribute .uvSetName"); return status;}

    status = addAttribute( m_waveType );
        if (!status) { status.perror("FAILED to add attribute .waveType"); return status;}
    status = addAttribute( m_timeAmplitude );
        if (!status) { status.perror("FAILED to add attribute .timeAmplitude"); return status;}
    status = addAttribute( m_waveAmplitude );
        if (!status) { status.perror("FAILED to add attribute .waveAmplitude"); return status;}

    status = addAttribute( m_rippleSeamless );
        if (!status) { status.perror("FAILED to add attribute .rippleSeamless"); return status;}

    status = addAttribute( m_raindropCount );
        if (!status) { status.perror("FAILED to add attribute .raindropCount"); return status;}
    status = addAttribute( m_raindropSeamless );
        if (!status) { status.perror("FAILED to add attribute .raindropSeamless"); return status;}

    status = addAttribute( m_waveSource );
        if (!status) { status.perror("FAILED to add attribute .waveSource"); return status;}
    status = addAttribute( m_waveDirection );
        if (!status) { status.perror("FAILED to add attribute .waveDirection"); return status;}
    status = addAttribute( m_wavelength );
        if (!status) { status.perror("FAILED to add attribute .wavelength"); return status;}
    status = addAttribute( m_waveDistance );
        if (!status) { status.perror("FAILED to add attribute .waveDistance"); return status;}
    status = addAttribute( m_waveSeamless );
        if (!status) { status.perror("FAILED to add attribute .waveSeamless"); return status;}
    status = addAttribute( m_waveTile );
        if (!status) { status.perror("FAILED to add attribute .waveTile"); return status;}

    status = addAttribute( m_perturbGridSize );
        if (!status) { status.perror("FAILED to add attribute .perturbGridSize"); return status;}
    status = addAttribute( m_perturbFrequency );
        if (!status) { status.perror("FAILED to add attribute .perturbFrequency"); return status;}
    status = addAttribute( m_perturbAmplitude );
        if (!status) { status.perror("FAILED to add attribute .perturbAmplitude"); return status;}

    // Set up a dependency between the input and the output.  This will cause
    // the output to be marked dirty when the input changes.  The output will
    // then be recomputed the next time the value of the output is requested.
    //
    status = attributeAffects( m_inMesh, m_outMesh );
        if (!status) { status.perror("attributeAffects: .inMesh -> .outMesh"); return status;}
    status = attributeAffects( m_inTime, m_outMesh );
        if (!status) { status.perror("attributeAffects: .time -> .outMesh"); return status;}
    status = attributeAffects( m_startTime, m_outMesh );
        if (!status) { status.perror("attributeAffects: .startTime -> .outMesh"); return status;}
    status = attributeAffects( m_endTime, m_outMesh );
        if (!status) { status.perror("attributeAffects: .endTime -> .outMesh"); return status;}
    status = attributeAffects( m_useTimeSlider, m_outMesh );
        if (!status) { status.perror("attributeAffects: .useTimeSlider -> .outMesh"); return status;}
    status = attributeAffects( m_uvSetName, m_outMesh );
        if (!status) { status.perror("attributeAffects: .uvSetName -> .outMesh"); return status;}

    status = attributeAffects( m_waveType, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveType -> .outMesh"); return status;}
    status = attributeAffects( m_timeAmplitude, m_outMesh );
        if (!status) { status.perror("attributeAffects: .timeAmplitude -> .outMesh"); return status;}
    status = attributeAffects( m_waveAmplitude, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveAmplitude -> .outMesh"); return status;}

    status = attributeAffects( m_rippleSeamless, m_outMesh );
        if (!status) { status.perror("attributeAffects: .rippleSeamless -> .outMesh"); return status;}

    status = attributeAffects( m_raindropCount, m_outMesh );
        if (!status) { status.perror("attributeAffects: .raindropCount -> .outMesh"); return status;}
    status = attributeAffects( m_raindropSeamless, m_outMesh );
        if (!status) { status.perror("attributeAffects: .raindropSeamless -> .outMesh"); return status;}

    status = attributeAffects( m_waveSource, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveSource -> .outMesh"); return status;}
    status = attributeAffects( m_waveDirection, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveDirection -> .outMesh"); return status;}
    status = attributeAffects( m_wavelength, m_outMesh );
        if (!status) { status.perror("attributeAffects: .wavelength -> .outMesh"); return status;}
    status = attributeAffects( m_waveDistance, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveDistance -> .outMesh"); return status;}
    status = attributeAffects( m_waveSeamless, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveSeamless -> .outMesh"); return status;}
    status = attributeAffects( m_waveTile, m_outMesh );
        if (!status) { status.perror("attributeAffects: .waveTile -> .outMesh"); return status;}

    status = attributeAffects( m_perturbGridSize, m_outMesh );
        if (!status) { status.perror("attributeAffects: .perturbGridSize -> .outMesh"); return status;}
    status = attributeAffects( m_perturbFrequency, m_outMesh );
        if (!status) { status.perror("attributeAffects: .perturbFrequency -> .outMesh"); return status;}
    status = attributeAffects( m_perturbAmplitude, m_outMesh );
        if (!status) { status.perror("attributeAffects: .perturbAmplitude -> .outMesh"); return status;}

    return MS::kSuccess;

}

void p3dMeshWave::ProcessPerturb( void )
{
    int u, v;

    int otherPerturb = 2 - mPerturbIndex;

    if ( mPerturbAmplitude > 0.0F )
    {
        for ( u = 1; u < mPerturbMapSize - 1; u++ )
        {
            for ( v = 1; v < mPerturbMapSize - 1; v++ )
            {
                size_t w = ( u * mPerturbMapSize ) + v;

                mPerturb2d[otherPerturb][w] = ( ( ( mPerturb2d[mPerturbIndex][w-1] + 
                                                    mPerturb2d[mPerturbIndex][w+1] + 
                                                    mPerturb2d[mPerturbIndex][w-mPerturbMapSize] + 
                                                    mPerturb2d[mPerturbIndex][w+mPerturbMapSize] ) / 4.0F ) 
                                                 - mPerturb2d[otherPerturb][w] ) * mTimeAmplitude;

                mPerturb2d[otherPerturb+1][w] = ( ( (   mPerturb2d[mPerturbIndex+1][w-1] + 
                                                        mPerturb2d[mPerturbIndex+1][w+1] + 
                                                        mPerturb2d[mPerturbIndex+1][w-mPerturbMapSize] + 
                                                        mPerturb2d[mPerturbIndex+1][w+mPerturbMapSize] ) / 4.0F ) 
                                                     - mPerturb2d[otherPerturb+1][w] ) * mTimeAmplitude;

                mPerturb2d[otherPerturb][w] -= ( mPerturb2d[otherPerturb][w] * PERTURB_DAMPING );        // damping
                mPerturb2d[otherPerturb+1][w] -= ( mPerturb2d[otherPerturb+1][w] * PERTURB_DAMPING );        // damping

            }
        }
    }
    else
    {
        for ( u = 0; u < mPerturbMapSize; u++ )
        {
            for ( v = 0; v < mPerturbMapSize; v++ )
            {
                size_t w = ( u * mPerturbMapSize ) + v;
                mPerturb2d[otherPerturb][w] = 0.0F;
                mPerturb2d[otherPerturb+1][w] = 0.0F;
            }
        }

        mPerturbCount = 0;
    }

    SwapPerturb();
}

void p3dMeshWave::SwapPerturb( void )
{
    mPerturbIndex = 2 - mPerturbIndex;
}

void p3dMeshWave::Wave( const CWaveInfo& info )
{
    CWaveInfo newInfo( info );
    newInfo.mAmplitude = mWaveAmplitude;
    newInfo.mLife = -1.0;    // Infinite life.

    mWaveArray.AddItem( CProceduralWave( newInfo ) );
}

void p3dMeshWave::Perturb( void )
{
    int uCoord = (int)floor( frand() * ( mPerturbMapSize - 2 ) ) + 1;   // 1 - ( mapSize - 1 )
    int vCoord = (int)floor( frand() * ( mPerturbMapSize - 2 ) ) + 1;   // 1 - ( mapSize - 1 )
    int coord = ( uCoord * mPerturbMapSize ) + vCoord;
    float uTouch = 1.0F - ( frand() * 2.0F ); // -1 to +1
    float vTouch = 1.0F - ( frand() * 2.0F ); // -1 to +1

    assert ( uCoord < mPerturbMapSize );
    assert ( vCoord < mPerturbMapSize );

    mPerturb2d[mPerturbIndex+0][coord] += ( uTouch * mPerturbAmplitude );
    mPerturb2d[mPerturbIndex+1][coord] += ( vTouch * mPerturbAmplitude );

    mPerturbCount++;
}

/*

string $planeA[] = `polyPlane -w 1 -h 1 -sx 10 -sy 10 -ax 0 1 0 -tx 1 -ch 1`; objectMoveCommand;
disconnectAttr ( $planeA[1] + ".output" ) ( $planeA[0] + ".inMesh" ) ;
string $p3dMeshWave = `createNode "p3dMeshWave"`;
connectAttr ( $planeA[1] + ".output" ) ( $p3dMeshWave + ".inMesh" );
connectAttr ( $p3dMeshWave + ".outMesh" ) ( $planeA[0] + ".inMesh" );
connectAttr ( "time1.outTime" ) ( $p3dMeshWave + ".time" );
select $p3dMeshWave $planeA[0];

*/
