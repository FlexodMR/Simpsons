//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     12 July, 2002
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

#include "../inc/tweakcbvCmd.hpp"
#include "../inc/p3dAdvancedCBV_flags.h"
#include "../inc/hsv.h"
#include "../inc/utility.hpp"

#include <maya/MSyntax.h>
#include <maya/MArgDatabase.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MItMeshVertex.h>
#include <maya/MGlobal.h>
#include <maya/MFnMesh.h>

#include <math.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

tweakcbvUndo::tweakcbvUndo( const MDagPath& dag )
{
    SetDag( dag );
}

tweakcbvUndo::~tweakcbvUndo()
{
    MFnMesh                     fnMesh( mDag );

    fnMesh.setFaceVertexColors( mFaceVtxColors, mFaceIndices, mVtxIndices );
}

//===========================================================================
// Member Functions
//===========================================================================

void tweakcbvUndo::SetDag( const MDagPath& dag )
{
//    mVtxColors.clear();
    mFaceVtxColors.clear();
    mFaceIndices.clear();
    mVtxIndices.clear();

    mDag = dag;

    MFnMesh                     fnMesh( dag );
//    fnMesh.getVertexColors( mVtxColors );
    fnMesh.getFaceVertexColors( mFaceVtxColors );

    // FaceVtxColors are stored F0V0, F0V1.. F0Vn, F1V0, etc... 

    MItMeshPolygon              itFace( dag );
    int                         vertexCount;
    int                         index;
    for ( /* nothing */; !itFace.isDone(); itFace.next() )
    {
        vertexCount = itFace.polygonVertexCount();

        for ( index = 0; index < vertexCount; index++ )
        {
            mFaceIndices.append( itFace.index() );
            mVtxIndices.append( itFace.vertexIndex( index ) );
        }
    }
}

void tweakcbvUndo::GetVtxColors( MColorArray& colors ) const
{
    colors = mFaceVtxColors;
}

//===========================================================================
// Constructor / Destructor
//===========================================================================

tweakcbv::tweakcbv()
:   mbHelp( false ),
    mbDebug( false ),
    mbQuery( false ),
    mppUndo( NULL ),
    mbDoSomething( false ),
    mUndoSize( 0 ),
    mBlend( 1.0 ),
    mRed( 0.0 ),
    mbRed( false ),
    mGreen( 0.0 ),
    mbGreen( false ),
    mBlue( 0.0 ),
    mbBlue( false ),
    mAlpha( 0.0 ),
    mbAlpha( false ),
    mHue( 0.0 ),
    mbHue( false ),
    mSaturation( 0.0 ),
    mbSaturation( false ),
    mValue( 0.0 ),
    mbValue( false ),
    mGamma( 1.0 ),
    mbGamma( false ),
    mContrast( 0.0 ),
    mbContrast( false ),
    mBrightness( 0.0 ),
    mbBrightness( false ),
    mbVtxFace( true ),
    mbAbsolute( false )
{
}

tweakcbv::~tweakcbv()
{
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

void tweakcbv::Debug( const CMayaDagComponents* pDagComponents ) const
{
    MDagPathArray               dagArray;
    MIntArray                   vertexIndices;
    MIntArray                   vtxArray;
    MIntArray                   faceArray;
    unsigned int                v;

    pDagComponents->GetDagArray( dagArray );

    pDagComponents->GetVtxIndices( vertexIndices );
    pDagComponents->GetVtxFaceIndices( vtxArray, faceArray );

    if ( vertexIndices.length() > 0 )
    {
        MString                 result;
        result = "Vertex:";

        for ( v = 0; v < vertexIndices.length(); v++ )
        {
            result = result + " [";
            result = result + vertexIndices[v];
            result = result + "]";
            if ( v < ( vertexIndices.length() - 1 ) ) result = result + ",";
        }

        MGlobal::displayInfo( result + "\n" );
    }    

    if ( vtxArray.length() > 0 )
    {
        MString                 result;
        result = "VertexFace:";

        for ( v = 0; v < vtxArray.length(); v++ )
        {
            result = result + " [";
            result = result + vtxArray[v];
            result = result + "][";
            result = result + faceArray[v];
            result = result + "]";
            if ( v < ( vtxArray.length() - 1 ) ) result = result + ",";
            result = result + " ";
        }

        MGlobal::displayInfo( result + "\n" );
    }    
}

void tweakcbv::TweakColor( const MColor& source, MColor& result ) const
{
    double r, g, b, a;
    double h,s,v;
    r = source.r;
    g = source.g;
    b = source.b;
    a = source.a;

    r = __max( 0.0, __min( 1.0, r ) );
    g = __max( 0.0, __min( 1.0, g ) );
    b = __max( 0.0, __min( 1.0, b ) );
    a = __max( 0.0, __min( 1.0, a ) );

//    CDEBUG << "INPUT: { " << r << ", " << g << ", " << b << " }";

    RGB2HSV( r, g, b, h, s, v );

    if ( mbAbsolute )
    {
        if ( mbHue )        h = mHue;
        if ( mbSaturation)  s = mSaturation;
        if ( mbValue )      v = mValue;
    }
    else
    {
        h += mHue;
        s += mSaturation;
        v += mValue;
    }

    // Hue wraps around
    while ( h > 360.0 ) h -= 360.0;
    while ( h < 0.0 )   h += 360.0;
    s = __max( 0.0, __min( 1.0, s ) );
    v = __max( 0.0, __min( 1.0, v ) );

    HSV2RGB( h, s, v, r, g, b );

    // Apply gamma first
    double power = 0.0;
    if ( mbGamma )
    {
        if ( mGamma > 0.0 )
        {
            power = 1.0 / mGamma;
            r = (float)pow(r, power);
            g = (float)pow(g, power);
            b = (float)pow(b, power);
        }
        else
        {
            r = g = b = 0.0;
        }
    }
    
    tlColour    colour( static_cast<float>(r), static_cast<float>(g), static_cast<float>(b) );

    if ( mbContrast )   colour.AdjustContrast( mMeanColour, static_cast<float>(mContrast) );
    if ( mbBrightness ) colour.AdjustBrightness( static_cast<float>(mBrightness) );

    r = colour.red;
    g = colour.green;
    b = colour.blue;

    if ( mbAbsolute )
    {
        if ( mbRed )        r = mRed;
        if ( mbGreen )      g = mGreen;
        if ( mbBlue )       b = mBlue;
        if ( mbAlpha )      a = mAlpha;
    }
    else
    {
        r += mRed;
        g += mGreen;
        b += mBlue;
        a += mAlpha;
    }

    r = __max( 0.0, __min( 1.0, r ) );
    g = __max( 0.0, __min( 1.0, g ) );
    b = __max( 0.0, __min( 1.0, b ) );
    a = __max( 0.0, __min( 1.0, a ) );

//    CDEBUG << " -> { " << r << ", " << g << ", " << b << " }" << endl;


    if ( mBlend < 1.0 )
    {
        r = ( r * mBlend ) + ( source.r * ( 1.0 - mBlend ) );
        g = ( g * mBlend ) + ( source.g * ( 1.0 - mBlend ) );
        b = ( b * mBlend ) + ( source.b * ( 1.0 - mBlend ) );
        a = ( a * mBlend ) + ( source.a * ( 1.0 - mBlend ) );
    }

    result = MColor( MColor::kRGB, r, g, b, a );
}

void tweakcbv::Help( void ) const
{
    MString     help( "hilitecbv [options] [objects]\n" );

    help = help + "\t" + kQueryFlag + " -> Query average RGBA for selected components (switch)\n";
    help = help + "\t" + kRedFlag + " [offset] -> Modify red by specified offset\n";
    help = help + "\t" + kGreenFlag + " [offset] -> Modify green by specified offset\n";
    help = help + "\t" + kBlueFlag + " [offset] -> Modify blue by specified offset\n";
    help = help + "\t" + kAlphaFlag + " [offset] -> Modify alpha by specified offset\n";
    help = help + "\t" + kBlendFlag + " [factor] -> Blend factor (0.0 - 1.0)\n";

    help = help + "\t" + kHueFlag + " [offset] -> Modify hue by specified offset\n";
    help = help + "\t" + kSaturationFlag + "|" + kSaturationFlagLong + " [offset] -> Modify saturation by specified offset\n";
    help = help + "\t" + kValueFlag + "|" + kValueFlagLong + " [offset] -> Modify value by specified offset\n";

    help = help + "\t" + kGammaFlag + "|" + kGammaFlagLong + " [offset] -> Apply the specified gamma adjustment (1.0 is neutral)\n";
    help = help + "\t" + kContrastFlag + "|" + kContrastFlagLong + " [offset] -> Apply the specified contrast adjustment\n";
    help = help + "\t" + kBrightnessFlag + "|" + kBrightnessFlagLong + " [offset] -> Apply the specified brightness adjustment\n";

    help = help + "\t" + kAbsoluteFlag + "|" + kAbsoluteFlagLong + " -> Set value instead of applying offset (switch)\n";

    help = help + "\t" + kVtxFlag + "|" + kVtxFlagLong + " -> Modify .vtx components instead of .vtxFace (switch)\n";

    help = help + "\t" + kHelpFlag + "|" + kHelpFlagLong + " -> Display this help\n";

    MGlobal::displayInfo( help );    
}

MStatus tweakcbv::doIt( const MArgList& args )
{
	MStatus status = MS::kSuccess;

    status = parseArgs( args );

    if ( status != MS::kSuccess ) 
    {
        MGlobal::displayError( "Arguments incomplete or invalid." );
        return status;
    }
    
    if ( mbHelp )
    {
        Help();
        return status;
    }
    else
    {
        if ( mbDoSomething ) status = redoIt();
    }

	return status;
}

MStatus tweakcbv::redoIt()
{
    MStatus                     status = MS::kSuccess;

    MGlobal::executeCommand( "waitCursor -state on", false, false );

    MDagPath                    object;
    MObject                     component;
    MDagPathArray               dagArray;
    MIntArray                   vertexIndices;  // .vtx
    MIntArray                   vtxArray;       // .vtxFace
    MIntArray                   faceArray;      // .vtxFace
    unsigned int                group;
    unsigned int                v;

    // Store mean colour for selected components
    double                      avgR, avgG, avgB, avgA;
    unsigned int                numAvg = 0;
    avgR = avgG = avgB = avgA = 0.0f;

    // ----------------  Prepare Undo  ----------------

    unsigned int                numGroups;
    numGroups = mDagSelection.NumGroups();
    mppUndo = new tweakcbvUndo* [ numGroups ];
    mUndoSize = numGroups;
    memset( mppUndo, 0, numGroups * sizeof( tweakcbvUndo* ) );

    // Generate Undo
    for ( group = 0; group < mDagSelection.NumGroups(); group++ )
    {
        CMayaDagComponents* pDagComponents = mDagSelection.Group( group );
        pDagComponents->GetDagArray( dagArray );

        mppUndo[group] = new tweakcbvUndo( dagArray[0] );
    }

    // ----------------  Assign mean colour  ----------------

    for ( group = 0; group < mDagSelection.NumGroups(); group++ )
    {
        CMayaDagComponents* pDagComponents = mDagSelection.Group( group );
        pDagComponents->GetDagArray( dagArray );

        // Convert non-vertex components
        pDagComponents->ConvertEdgeToVtx();
        pDagComponents->ConvertFaceToVtxFace();

        if ( mbVtxFace )
        {
            pDagComponents->ConvertVtxToVtxFace();
        }

        if ( mbDebug ) Debug( pDagComponents );

        MFnMesh                 fnMesh( dagArray[0] );
        MItMeshVertex           itVertex( dagArray[0] );

        pDagComponents->GetVtxIndices( vertexIndices );
        pDagComponents->GetVtxFaceIndices( vtxArray, faceArray );

    // ----------------  Cache current state  ----------------

        MColorArray             currentVtxColors;
        MColorArray             currentVtxFaceColors;

        try
        {
            fnMesh.getVertexColors( currentVtxColors );
            fnMesh.getFaceVertexColors( currentVtxFaceColors );
        }
        catch ( ... )
        {
            MGlobal::displayError( "!! BARF !! Internal Maya Error !!" );
            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return MS::kFailure;
        }

    // ----------------  .vtx components  ----------------

        MColorArray             tweakColors;
        MIntArray               tweakVtxIndices;
        MIntArray               tweakFaceIndices;
        MColor                  result;

        for ( v = 0; v < vertexIndices.length(); v++ )
        {
            avgR += currentVtxColors[ vertexIndices[v] ].r;
            avgG += currentVtxColors[ vertexIndices[v] ].g;
            avgB += currentVtxColors[ vertexIndices[v] ].b;
            avgA += currentVtxColors[ vertexIndices[v] ].a;
        }
        numAvg += vertexIndices.length();

    // ----------------  .vtxFace components  ----------------

        for ( v = 0; v < faceArray.length(); v++ )
        {
            int colorIndex;
            int localIndex = faceRelativeVertexIndex( dagArray[0], faceArray[v], vtxArray[v] );
            fnMesh.getFaceVertexColorIndex( faceArray[v], localIndex, colorIndex );

            avgR += currentVtxFaceColors[colorIndex].r;
            avgG += currentVtxFaceColors[colorIndex].g;
            avgB += currentVtxFaceColors[colorIndex].b;
            avgA += currentVtxFaceColors[colorIndex].a;
        }
        numAvg += faceArray.length();
    }

    if ( numAvg > 0 )
    {
        avgR /= numAvg;
        avgG /= numAvg;
        avgB /= numAvg;
        avgA /= numAvg;

        avgR = __max( 0.0f, __min( 1.0f, avgR ) );
        avgG = __max( 0.0f, __min( 1.0f, avgG ) );
        avgB = __max( 0.0f, __min( 1.0f, avgB ) );
        avgA = __max( 0.0f, __min( 1.0f, avgA ) );
    }

    mMeanColour = tlColour( static_cast<float>(avgR), static_cast<float>(avgG), static_cast<float>(avgB), static_cast<float>(avgA) );

    // If user has requested Query mode, return data and cancel Undo.
    if ( mbQuery )
    {
        appendToResult( avgR );
        appendToResult( avgG );
        appendToResult( avgB );
        appendToResult( avgA );

        double h, s, v;
        RGB2HSV( avgR, avgG, avgB, h, s, v );

        appendToResult( h / 360.0 );
        appendToResult( s );
        appendToResult( v );

        // ::isUndoable() returns FALSE if query mode is true.
        // Maya will immediately destroy the instance when this returns.

        MGlobal::executeCommand( "waitCursor -state off", false, false );

        return status;
    }

//    CDEBUG << "Mean colour: { " << avgR << ", " << avgG << ", " << avgB << " }" << endl;

    for ( group = 0; group < mDagSelection.NumGroups(); group++ )
    {
        CMayaDagComponents* pDagComponents = mDagSelection.Group( group );
        pDagComponents->GetDagArray( dagArray );

        // Convert non-vertex components
        pDagComponents->ConvertEdgeToVtx();
        pDagComponents->ConvertFaceToVtxFace();

        if ( mbVtxFace )
        {
            pDagComponents->ConvertVtxToVtxFace();
        }

        MFnMesh                 fnMesh( dagArray[0] );
        MItMeshVertex           itVertex( dagArray[0] );

        pDagComponents->GetVtxIndices( vertexIndices );
        pDagComponents->GetVtxFaceIndices( vtxArray, faceArray );

    // ----------------  Cache current state  ----------------

        MColorArray             currentVtxColors;
        MColorArray             currentVtxFaceColors;

        try
        {
            fnMesh.getVertexColors( currentVtxColors );
            fnMesh.getFaceVertexColors( currentVtxFaceColors );
        }
        catch ( ... )
        {
            MGlobal::displayError( "!! BARF !! Internal Maya Error !!" );

            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return MS::kFailure;
        }

    // ----------------  Tweak .vtx components  ----------------

        MColorArray             tweakColors;
        MIntArray               tweakVtxIndices;
        MIntArray               tweakFaceIndices;
        MColor                  result;

        for ( v = 0; v < vertexIndices.length(); v++ )
        {
            TweakColor( currentVtxColors[ vertexIndices[v] ], result );

            tweakColors.append( result );
            tweakVtxIndices.append( vertexIndices[v] );
        }

        fnMesh.setVertexColors( tweakColors, tweakVtxIndices );

        tweakColors.clear();
        tweakVtxIndices.clear();

    // ----------------  Tweak .vtxFace components  ----------------

        for ( v = 0; v < faceArray.length(); v++ )
        {
            int colorIndex;
            int localIndex = faceRelativeVertexIndex( dagArray[0], faceArray[v], vtxArray[v] );
            fnMesh.getFaceVertexColorIndex( faceArray[v], localIndex, colorIndex );

            TweakColor( currentVtxFaceColors[colorIndex], result );

            tweakColors.append( result );
            tweakVtxIndices.append( vtxArray[v] );
            tweakFaceIndices.append( faceArray[v] );
        }

        fnMesh.setFaceVertexColors( tweakColors, tweakFaceIndices, tweakVtxIndices );

        tweakColors.clear();
        tweakVtxIndices.clear();
        tweakFaceIndices.clear();

    } 

    MGlobal::executeCommand( "waitCursor -state off", false, false );
        
	return MS::kSuccess;
}

MStatus tweakcbv::undoIt()
{
    MStatus     status = MS::kSuccess;
    
    MGlobal::executeCommand( "waitCursor -state on", false, false );

    while ( mUndoSize-- )
    {
        delete mppUndo[mUndoSize];
    }

    delete [] mppUndo;
    mppUndo = NULL;

    mUndoSize = 0;

    MGlobal::executeCommand( "waitCursor -state off", false, false );

	return status;
}

void* tweakcbv::creator()
{
	return new tweakcbv();
}

bool tweakcbv::isUndoable() const
{
	return ( !mbQuery );
}

//===========================================================================
// tweakcbv::newSyntax
//===========================================================================
// Description: 
//
// Constraints: 
//
//  Parameters: 
//
//      Return: 
//
//===========================================================================
MSyntax tweakcbv::newSyntax( void )
{
    MSyntax                     syntax;

    syntax.useSelectionAsDefault( true );
    syntax.setObjectType( MSyntax::kSelectionList, 0 );

    syntax.addFlag( kDebugFlag, kDebugFlag, MSyntax::kNoArg);
    syntax.addFlag( kHelpFlag, kHelpFlagLong, MSyntax::kNoArg);
    syntax.addFlag( kQueryFlag, kQueryFlagLong, MSyntax::kNoArg);

    syntax.addFlag( kBlendFlag, kBlendFlagLong, MSyntax::kDouble );

    syntax.addFlag( kRedFlag, kRedFlag, MSyntax::kDouble );
    syntax.addFlag( kGreenFlag, kGreenFlag, MSyntax::kDouble );
    syntax.addFlag( kBlueFlag, kBlueFlag, MSyntax::kDouble );
    syntax.addFlag( kAlphaFlag, kAlphaFlag, MSyntax::kDouble );

    syntax.addFlag( kHueFlag, kHueFlag, MSyntax::kDouble );
    syntax.addFlag( kSaturationFlag, kSaturationFlag, MSyntax::kDouble );
    syntax.addFlag( kValueFlag, kValueFlag, MSyntax::kDouble );

    syntax.addFlag( kGammaFlag, kGammaFlag, MSyntax::kDouble );
    syntax.addFlag( kContrastFlag, kContrastFlag, MSyntax::kDouble );
    syntax.addFlag( kBrightnessFlag, kBrightnessFlag, MSyntax::kDouble );

    syntax.addFlag( kVtxFlag, kVtxFlagLong, MSyntax::kNoArg );
    syntax.addFlag( kAbsoluteFlag, kAbsoluteFlagLong, MSyntax::kNoArg );

    return syntax;
}

//===========================================================================
// tweakcbv::parseArgs
//===========================================================================
// Description: 
//
// Constraints: 
//
//  Parameters: 
//
//      Return: 
//
//===========================================================================
MStatus tweakcbv::parseArgs( const MArgList& args )
{
    MStatus                     status = MS::kSuccess;

    MArgDatabase                argdata( syntax(), args );

    MSelectionList              selList;
    status = argdata.getObjects( selList );
    mDagSelection.Build( selList );

    if ( argdata.isFlagSet( kHelpFlag ) )
    {
        mbHelp = true;
    }

    if ( argdata.isFlagSet( kDebugFlag ) )
    {
        mbDebug = true;
    }

    if ( argdata.isFlagSet( kQueryFlag ) )
    {
        mbQuery = true;
        mbDoSomething = true;
    }


    if ( argdata.isFlagSet( kBlendFlag ) )
    {
        argdata.getFlagArgument( kBlendFlag, 0, mBlend );
        mBlend = __min( 1.0, __max( 0.0, mBlend ) );
    }

    if ( argdata.isFlagSet( kRedFlag ) )
    {
        argdata.getFlagArgument( kRedFlag, 0, mRed );
        mbRed = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kGreenFlag ) )
    {
        argdata.getFlagArgument( kGreenFlag, 0, mGreen );
        mbGreen = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kBlueFlag ) )
    {
        argdata.getFlagArgument( kBlueFlag, 0, mBlue );
        mbBlue = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kAlphaFlag ) )
    {
        argdata.getFlagArgument( kAlphaFlag, 0, mAlpha );
        mbAlpha = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kHueFlag ) )
    {
        argdata.getFlagArgument( kHueFlag, 0, mHue );
        mHue *= 360.0;
        mbHue = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kSaturationFlag ) )
    {
        argdata.getFlagArgument( kSaturationFlag, 0, mSaturation );
        mbSaturation = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kValueFlag ) )
    {
        argdata.getFlagArgument( kValueFlag, 0, mValue );
        mbValue = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kGammaFlag ) )
    {
        argdata.getFlagArgument( kGammaFlag, 0, mGamma );
        mbGamma = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kContrastFlag ) )
    {
        argdata.getFlagArgument( kContrastFlag, 0, mContrast );
        mContrast *= 100.0;     // tlColour() values mimic Photoshop, which act as percentage.
        mbContrast = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kBrightnessFlag ) )
    {
        argdata.getFlagArgument( kBrightnessFlag, 0, mBrightness );
        mBrightness *= 100.0;     // tlColour() values mimic Photoshop, which act as percentage.
        mbBrightness = true;
        mbDoSomething = true;
    }

    if ( argdata.isFlagSet( kVtxFlag ) )
    {
        mbVtxFace = false;
    }

    if ( argdata.isFlagSet( kAbsoluteFlag ) )
    {
        mbAbsolute = true;
    }

    return status;
}

/*
tweakcbv -rgb 1.0 1.0 0.0 -h -t 0.2;
*/
