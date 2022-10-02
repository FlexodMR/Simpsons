//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     12 July, 2002
// Modified:    12 July, 2002
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

#include "../inc/hilitecbvCmd.h"
#include "../inc/p3dAdvancedCBV_flags.h"

#include "../inc/hsv.h"
#include "../inc/utility.hpp"

#include <maya/MSyntax.h>
#include <maya/MArgDatabase.h>
#include <maya/MStringArray.h>
#include <maya/MItSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MItMeshVertex.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MFnComponent.h>
#include <maya/MFnMesh.h>

#include <maya/MGlobal.h>

#include <math.h>       // fabs()

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

hilitecbv::hilitecbv()
:   mbHelp( false ),
    mTolerance( 0.0 ),
    mbExpandMode( false ),
    mbVtxFace( false ),
    mbRed( false ),
    mbGreen( false ),
    mbBlue( false ),
    mbHue( false ),
    mbSaturation( false ),
    mbValue( false ),
    mbAlpha( false )
{
}

hilitecbv::~hilitecbv()
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

void hilitecbv::Help( void ) const
{
    MString     help( "hilitecbv [options] [objects]\n" );

    help = help + "\t" + kRGBFlag + " [red] [green] [blue] -> Specify RGB color (no alpha)\n";
    help = help + "\t" + kRGBAFlag + " [red] [green] [blue] [alpha] -> Specify RGBA color\n";
    help = help + "\t" + kRedFlag + " -> Compare Red component (switch)\n";
    help = help + "\t" + kGreenFlag + " -> Compare Green component (switch)\n";
    help = help + "\t" + kBlueFlag + " -> Compare Blue component (switch)\n";

    help = help + "\t" + kHueFlag + " -> Compare Hue (switch)\n";
    help = help + "\t" + kSaturationFlag + "|" + kSaturationFlagLong + " -> Compare Saturation (switch)\n";
    help = help + "\t" + kValueFlag + "|" + kValueFlagLong + " -> Compare Value (switch)\n";

    help = help + "\t" + kToleranceFlag + "|" + kToleranceFlagLong + " [tolerance] -> The tolerance to allow for a match\n";

    help = help + "\t" + kExpandModeFlag + "|" + kExpandModeFlagLong + " -> Expand Mode (default is Filter Mode) (switch)\n";

    help = help + "\t" + kVtxFlag + "|" + kVtxFlagLong + " -> Hilite .vtx components (default) (switch)\n";
    help = help + "\t" + kVtxFaceFlag + "|" + kVtxFaceFlagLong + " -> Hilite .vtxFace components (switch)\n";

    help = help + "\t" + kHelpFlag + "|" + kHelpFlagLong + " -> Display this help\n";

    MGlobal::displayInfo( help );    
}

MStatus hilitecbv::doIt( const MArgList& args )
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
    }
    else
    {
        status = redoIt();
    }

	return status;
}

MStatus hilitecbv::redoIt()
{
    MGlobal::getActiveSelectionList( mUndoSelection );

    MGlobal::executeCommand( "waitCursor -state on", false, false );

    unsigned int numGroups;

    MIntArray                   vertexIndices;
    MIntArray                   vtxArray;
    MIntArray                   faceArray;

    MSelectionList          targetList;

    numGroups = mDagSelection.NumGroups();
    while ( numGroups-- )
    {
        CMayaDagComponents* pComponents = mDagSelection.Group( numGroups );

        MDagPathArray           dagArray;
        pComponents->GetDagArray( dagArray );

        pComponents->ConvertEdgeToVtx();
        pComponents->ConvertFaceToVtx();

        if ( mbExpandMode )
        {
            pComponents->SelectAllVtx();
        }

        if ( mbVtxFace )
        {
            pComponents->ConvertVtxToVtxFace();
        }

        pComponents->GetVtxIndices( vertexIndices );
        pComponents->GetVtxFaceIndices( vtxArray, faceArray );

        MFnMesh                 fnMesh( dagArray[0] );
        unsigned int v;

        MColorArray             vtxFaceColors;
        MColorArray             vtxColors;

        fnMesh.getVertexColors( vtxColors );
        fnMesh.getFaceVertexColors( vtxFaceColors );

        for ( v = 0; v < vertexIndices.length(); v++ )
        {
            MColor              color( vtxColors[ vertexIndices[v] ] );
            // Clamp
            color.r = __max( 0.0F, __min( 1.0F, color.r ) );
            color.g = __max( 0.0F, __min( 1.0F, color.g ) );
            color.b = __max( 0.0F, __min( 1.0F, color.b ) );

            if ( IsWithinTolerance( color ) )
            {
                MString         target( dagArray[0].fullPathName() );
                target = target + ".vtx[";
                target = target + vertexIndices[v];
                target = target + "]";

                targetList.add( target );
            }
        }

        for ( v = 0; v < vtxArray.length(); v++ )
        {
            // Get face-relative vertex index
            int localIndex;
            localIndex = faceRelativeVertexIndex( dagArray[0], faceArray[v], vtxArray[v] );

            // Get index into vtxFace colors
            int colorIndex;
            fnMesh.getFaceVertexColorIndex( faceArray[v], localIndex, colorIndex );

            MColor              color( vtxFaceColors[ colorIndex ] );
            // Clamp
            color.r = __max( 0.0F, __min( 1.0F, color.r ) );
            color.g = __max( 0.0F, __min( 1.0F, color.g ) );
            color.b = __max( 0.0F, __min( 1.0F, color.b ) );
            color.a = __max( 0.0F, __min( 1.0F, color.a ) );

            if ( IsWithinTolerance( color ) )
            {
                MString         target( dagArray[0].fullPathName() );
                target = target + ".vtxFace[";
                target = target + vtxArray[v];
                target = target + "][";
                target = target + faceArray[v];
                target = target + "]";

                targetList.add( target );
            }

        }

    }

    MGlobal::setActiveSelectionList( targetList );

    MGlobal::executeCommand( "waitCursor -state off", false, false );

	return MS::kSuccess;
}

MStatus hilitecbv::undoIt()
{
    MStatus     status = MS::kSuccess;
    
    MGlobal::setActiveSelectionList( mUndoSelection );

	return status;
}

void* hilitecbv::creator()
{
	return new hilitecbv();
}

bool hilitecbv::isUndoable() const
{
	return ( !mbHelp );
}

//===========================================================================
// hilitecbv::newSyntax
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
MSyntax hilitecbv::newSyntax( void )
{
    MSyntax                     syntax;

    syntax.useSelectionAsDefault( true );
    syntax.setObjectType( MSyntax::kSelectionList, 0 );

    syntax.addFlag( kHelpFlag, kHelpFlagLong, MSyntax::kNoArg );

    syntax.addFlag( kRGBFlag, kRGBFlag, MSyntax::kDouble, MSyntax::kDouble, MSyntax::kDouble );
    syntax.addFlag( kRGBAFlag, kRGBAFlag, MSyntax::kDouble, MSyntax::kDouble, MSyntax::kDouble, MSyntax::kDouble );

    syntax.addFlag( kRedFlag, kRedFlag, MSyntax::kNoArg );
    syntax.addFlag( kGreenFlag, kGreenFlag, MSyntax::kNoArg );
    syntax.addFlag( kBlueFlag, kBlueFlag, MSyntax::kNoArg );

    syntax.addFlag( kHueFlag, kHueFlag, MSyntax::kNoArg );
    syntax.addFlag( kSaturationFlag, kSaturationFlagLong, MSyntax::kNoArg );
    syntax.addFlag( kValueFlag, kValueFlagLong, MSyntax::kNoArg );

    syntax.addFlag( kToleranceFlag, kToleranceFlagLong, MSyntax::kDouble );
    syntax.addFlag( kExpandModeFlag, kExpandModeFlagLong, MSyntax::kNoArg );
    syntax.addFlag( kVtxFlag, kVtxFlagLong, MSyntax::kNoArg );
    syntax.addFlag( kVtxFaceFlag, kVtxFaceFlagLong, MSyntax::kNoArg );

    return syntax;
}

//===========================================================================
// hilitecbv::parseArgs
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
MStatus hilitecbv::parseArgs( const MArgList& args )
{
    MStatus                     status = MS::kSuccess;

    MArgDatabase                argdata( syntax(), args );

    if ( argdata.isFlagSet( kHelpFlag ) )
    {
        mbHelp = true;
        return status;
    }

    MSelectionList              selList;
    status = argdata.getObjects( selList );
    mDagSelection.Build( selList );

    if ( argdata.isFlagSet( kRGBFlag ) )
    {
        double r, g, b;
        argdata.getFlagArgument( kRGBFlag, 0, r );
        argdata.getFlagArgument( kRGBFlag, 1, g );
        argdata.getFlagArgument( kRGBFlag, 2, b );
        mRGBA = MColor( static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), 1.0 );
    }

    if ( argdata.isFlagSet( kRGBAFlag ) )
    {
        double r, g, b, a;
        argdata.getFlagArgument( kRGBAFlag, 0, r );
        argdata.getFlagArgument( kRGBAFlag, 1, g );
        argdata.getFlagArgument( kRGBAFlag, 2, b );
        argdata.getFlagArgument( kRGBAFlag, 3, a );
        mRGBA = MColor( static_cast<float>(r), static_cast<float>(g), static_cast<float>(b), static_cast<float>(a) );
        mbAlpha = true;
    }

    if ( argdata.isFlagSet( kRedFlag ) )
    {
        mbRed = true;
    }

    if ( argdata.isFlagSet( kGreenFlag ) )
    {
        mbGreen = true;
    }

    if ( argdata.isFlagSet( kBlueFlag ) )
    {
        mbBlue = true;
    }

    if ( argdata.isFlagSet( kHueFlag ) )
    {
        mbHue = true;
    }

    if ( argdata.isFlagSet( kSaturationFlag ) )
    {
        mbSaturation = true;
    }

    if ( argdata.isFlagSet( kValueFlag ) )
    {
        mbValue = true;
    }

    if ( argdata.isFlagSet( kToleranceFlag ) )
    {
        argdata.getFlagArgument( kToleranceFlag, 0, mTolerance );
    }

    if ( argdata.isFlagSet( kExpandModeFlag ) )
    {
        mbExpandMode = true;
    }

    if ( argdata.isFlagSet( kVtxFaceFlag ) )
    {
        mbVtxFace = true;
    }

    return status;
}

bool hilitecbv::IsWithinTolerance( const MColor& color ) const
{
    bool bWithinTolerance = true;
    bool bWasCompared = false;

    double h,s,v;
    double inH,inS,inV;

    RGB2HSV( mRGBA.r, mRGBA.g, mRGBA.b, h, s, v );
    RGB2HSV( color.r, color.g, color.b, inH, inS, inV );

    // Hue is 0-360.. convert to 0-1
    h   /= 360.0;
    inH /= 360.0;

    if ( mbRed )
    {
        bWithinTolerance &= ( fabs( mRGBA.r - color.r ) <= mTolerance );
        bWasCompared = true;
    }

    if ( mbGreen )
    {
        bWithinTolerance &= ( fabs( mRGBA.g - color.g ) <= mTolerance );
        bWasCompared = true;
    }

    if ( mbBlue )
    {
        bWithinTolerance &= ( fabs( mRGBA.b - color.b ) <= mTolerance );
        bWasCompared = true;
    }

    if ( mbAlpha )
    {
        bWithinTolerance &= ( fabs( mRGBA.a - color.a ) <= mTolerance );
        bWasCompared = true;
    }

    if ( mbHue )
    {
        if ( ( inV > 0.01 ) && ( v > 0.01 ) )
        {
            bWithinTolerance &= ( fabs( h - inH ) <= mTolerance );
            bWasCompared = true;
        }
    }

    if ( mbSaturation )
    {
        bWithinTolerance &= ( fabs( s - inS ) <= mTolerance );
        bWasCompared = true;
    }

    if ( mbValue )
    {
        bWithinTolerance &= ( fabs( v - inV ) <= mTolerance );
        bWasCompared = true;
    }

    // If no comparison criteria, match is explictly false.
    bWithinTolerance &= bWasCompared;

    return bWithinTolerance;
}

/*
hilitecbv -rgb 1.0 1.0 0.0 -h -t 0.2;
*/
