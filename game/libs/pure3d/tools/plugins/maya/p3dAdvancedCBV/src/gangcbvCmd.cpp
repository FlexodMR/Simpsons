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

#include "../inc/gangcbvCmd.h"
#include "../inc/gangChannels.hpp"
#include "../inc/p3dAdvancedCBV_flags.h"

#include "../inc/utility.hpp"

#include <mayaDagSelection.hpp>

#include <maya/MSyntax.h>
#include <maya/MArgDatabase.h>
#include <maya/MStringArray.h>
#include <maya/MItSelectionList.h>
#include <maya/MDagPath.h>
#include <maya/MItMeshVertex.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MFnComponent.h>
#include <maya/MFnSingleIndexedComponent.h>
#include <maya/MFnDoubleIndexedComponent.h>


#include <maya/MGlobal.h>

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

gangcbv::gangcbv()
:   mbHelp( false )
{}

gangcbv::~gangcbv()
{
}


//===========================================================================
// Member Functions
//===========================================================================

void gangcbv::Help( void ) const
{
    MString     help( "gangcbv [options] [objects]\n" );

    help = help + "\t" + kHelpFlag + "|" + kHelpFlagLong + " -> Display this help\n";

    MGlobal::displayInfo( help );    
}

MStatus gangcbv::doIt( const MArgList& args )
{
	MStatus status = MS::kSuccess;

    status = parseArgs( args );

    if ( status != MS::kSuccess ) return status;

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

MStatus gangcbv::redoIt()
{
    MStatus                     status;

    MGlobal::executeCommand( "waitCursor -state on", false, false );

    MStringArray                strings;
    mSelection.getSelectionStrings( strings );

    CMayaDagSelection           dagSelection;
    dagSelection.Build( mSelection );

    unsigned int groups = dagSelection.NumGroups();

    CGangChannels               gang;

    MPlug vcRGB;    // .vertexColorRGB  (compound)
        MPlug vcR;      // .vertexColorR    (float)
        MPlug vcG;      // .vertexColorG    (float)
        MPlug vcB;      // .vertexColorB    (float)
    MPlug va;       // .vertexAlpha     (float)

    MPlug vfc;      // .vertexFaceColor (array)
        MPlug vfcR;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorR  (float)
        MPlug vfcG;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorG  (float)
        MPlug vfcB;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorB  (float)
    MPlug vfa;     // .vertexFaceColor[n].vertexFaceAlpha (float)

    MDGModifier* pModifier = NULL;

    unsigned int g, v, f;
    for ( g = 0; g < groups; g++ )
    {
        CMayaDagComponents* pDagComponents = dagSelection.Group( g );

        MDagPathArray           dagArray;
        pDagComponents->GetDagArray( dagArray );
        mCurrentDag = dagArray[0];  // Any instances do not matter.. the shape will be the same.
        if ( mCurrentDag.hasFn( MFn::kTransform ) ) mCurrentDag.extendToShape();

        pDagComponents->GetVtxIndices( mVertexIndices );
        pDagComponents->GetVtxFaceIndices( mVtxArray, mFaceArray );

    // ----------------  Trace upstream to connected polyColorPerVertex node  ----------------

        MObject pcpv = findPolyColorPerVertex( mCurrentDag, &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayWarning( "No upstream polyColorPerVertex for mesh " + mCurrentDag.fullPathName() );
            continue;
        }

    // ----  Find .colorPerVertex compound plug ----

        MFnDependencyNode       fnDependNode( pcpv, &status );
        MPlug cpvPlug = fnDependNode.findPlug( "colorPerVertex", &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayError( "Could not get .colorPerVertex plug" );
            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return status;
        }

        MPlug vcPlug = cpvPlug.child( 0, &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayError( "Could not get .vertexColor plug" );
            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return status;
        }

    // ----------------  For each selected vertexFace index, find polyColorPerVertex.vertexFaceColor plug  ----------------

        for ( v = 0; v < mVtxArray.length(); v++ )
        {
            MPlug vcElement = vcPlug.elementByLogicalIndex( mVtxArray[v], &status );
            if ( status != MS::kSuccess )
            {
                CDEBUG << "Could not get .vertexColor[" << mVtxArray[v] << "]" << endl;
                continue;
            }

            vfc = vcElement.child(2);

            for ( f = 0; f < mFaceArray.length(); f++ )
            {
                vcElement = vfc.elementByLogicalIndex( mFaceArray[v], &status );
                if ( status != MS::kSuccess )
                {
                    CDEBUG << "Could not get .vertexColor.vertexFaceColor[" << mFaceArray[f] << "]" << endl;
                    continue;
                }

                vfcR = vcElement.child(0).child(0);
                vfcG = vcElement.child(0).child(1);
                vfcB = vcElement.child(0).child(2);
                vfa  = vcElement.child(1);

                gang.SetVertexColor( vfcR, CGangChannels::kRed );
                gang.SetVertexColor( vfcG, CGangChannels::kGreen );
                gang.SetVertexColor( vfcB, CGangChannels::kBlue );
                gang.SetVertexColor( vfa,  CGangChannels::kAlpha );
            }
        }

    // ----------------  For each selected vertex index, find polyColorPerVertex.vertexColor plug  ----------------

        for ( v = 0; v < mVertexIndices.length(); v++ )
        {
            MPlug vcElement = vcPlug.elementByLogicalIndex( mVertexIndices[v], &status );
            if ( status != MS::kSuccess )
            {
                CDEBUG << "Could not get .vertexColor[" << mVertexIndices[v] << "]" << endl;
                continue;
            }

            vcRGB = vcElement.child( 0, &status );
                vcR = vcRGB.child( 0, &status );
                vcB = vcRGB.child( 1, &status );
                vcG = vcRGB.child( 2, &status );
            va    = vcElement.child( 1, &status );

            gang.SetVertexColor( vcR, CGangChannels::kRed );
            gang.SetVertexColor( vcG, CGangChannels::kGreen );
            gang.SetVertexColor( vcB, CGangChannels::kBlue );
            gang.SetVertexColor( va,  CGangChannels::kAlpha );

            // Ganging .vtx implies ganging .vtxFace

            vfc   = vcElement.child( 2, &status );

            // .vertexFaceColor[n].vertexFaceColor array may have several elements
            int numElements = vfc.numElements();
            while ( numElements-- )
            {
                vfcR = vfc[numElements].child(0).child(0);
                vfcG = vfc[numElements].child(0).child(1);
                vfcB = vfc[numElements].child(0).child(2);
                vfa = vfc[numElements].child(1);

                gang.SetVertexColor( vfcR, CGangChannels::kRed );
                gang.SetVertexColor( vfcG, CGangChannels::kGreen );
                gang.SetVertexColor( vfcB, CGangChannels::kBlue );
                gang.SetVertexColor( vfa, CGangChannels::kAlpha );
            }
        }

//        for ( i = 0; i < mVtxArray.length(); i++ )
//        {
//            MPlug vcElement = vcPlug.elementByLogicalIndex( mVertexIndices[i], &status );
//            if ( status != MS::kSuccess )
//            {
//                CDEBUG << "Could not get .vertexColor[" << mVertexIndices[i] << "]" << endl;
//                continue;
//            }
//
//            MPlug vfc;      // .vertexFaceColor (array)
//                MPlug vfcR;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorR  (float)
//                MPlug vfcG;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorG  (float)
//                MPlug vfcB;     // .vertexFaceColor[n].vertexFaceColorRGB.vertexFaceColorB  (float)
//            MPlug vfa;     // .vertexFaceColor[n].vertexFaceAlpha (float)
//
//            vfc   = vcElement.child( 2, &status );
//
//            // .vertexFaceColor[n].vertexFaceColor array may have several elements
//            int numElements = vfc.numElements();
//            while ( numElements-- )
//            {
//                vfcR = vfc[numElements].child(0).child(0);
//                vfcG = vfc[numElements].child(0).child(1);
//                vfcB = vfc[numElements].child(0).child(2);
//                vfa = vfc[numElements].child(1);
//
//                gang.SetVertexColor( vfcR, CGangChannels::kRed );
//                gang.SetVertexColor( vfcG, CGangChannels::kGreen );
//                gang.SetVertexColor( vfcB, CGangChannels::kBlue );
//                gang.SetVertexColor( vfa, CGangChannels::kAlpha );
//            }
//        }

    }

    // ----------------  ** Now Reassign **  ----------------

    for ( g = 0; g < groups; g++ )
    {
        CMayaDagComponents* pDagComponents = dagSelection.Group( g );

        MDagPathArray           dagArray;
        pDagComponents->GetDagArray( dagArray );
        mCurrentDag = dagArray[0];  // Any instances do not matter.. the shape will be the same.
        if ( mCurrentDag.hasFn( MFn::kTransform ) ) mCurrentDag.extendToShape();

        pDagComponents->GetVtxIndices( mVertexIndices );
        pDagComponents->GetVtxFaceIndices( mVtxArray, mFaceArray );

    // ----------------  Trace upstream to connected polyColorPerVertex node  ----------------

        MObject pcpv = findPolyColorPerVertex( mCurrentDag, &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayWarning( "No upstream polyColorPerVertex for mesh " + mCurrentDag.fullPathName() );
            continue;
        }

    // ----  Find .colorPerVertex compound plug ----

        MFnDependencyNode       fnDependNode( pcpv, &status );
        MPlug cpvPlug = fnDependNode.findPlug( "colorPerVertex", &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayError( "Could not get .colorPerVertex plug" );
            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return status;
        }

        MPlug vcPlug = cpvPlug.child( 0, &status );
        if ( status != MS::kSuccess )
        {
            MGlobal::displayError( "Could not get .vertexColor plug" );
            MGlobal::executeCommand( "waitCursor -state off", false, false );
            return status;
        }

    // ----------------  Disconnect any VERTEX driven and connect to common animCurve  ----------------

        pModifier = mModifierStack.DGModifier();

        for ( v = 0; v < mVertexIndices.length(); v++ )
        {
            MPlug vcElement = vcPlug.elementByLogicalIndex( mVertexIndices[v], &status );
            if ( status != MS::kSuccess )
            {
                CDEBUG << "Could not get .vertexColor[" << mVertexIndices[v] << "]" << endl;
                continue;
            }

            vcRGB = vcElement.child( 0, &status );
                vcR = vcRGB.child( 0, &status );
                vcB = vcRGB.child( 1, &status );
                vcG = vcRGB.child( 2, &status );
            va    = vcElement.child( 1, &status );
            vfc   = vcElement.child( 2, &status );

            // .vertexFaceColor[n].vertexFaceColor array may have several elements
            int numElements = vfc.numElements();
            while ( numElements-- )
            {
                vfcR = vfc[numElements].child(0).child(0);
                vfcG = vfc[numElements].child(0).child(1);
                vfcB = vfc[numElements].child(0).child(2);
                vfa = vfc[numElements].child(1);

                // Only disconnect a channel if a common "gang" animCurve will be connected below.
                if ( gang.Has( CGangChannels::kRed ) )
                {
                    // 'false' means "do not perform MDGModifier.doIt()"
                    gang.ConnectVertexColor( vfcR, CGangChannels::kRed, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kGreen ) )
                {
                    gang.ConnectVertexColor( vfcG, CGangChannels::kGreen, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kBlue ) )
                {
                    gang.ConnectVertexColor( vfcB, CGangChannels::kBlue, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kAlpha) )
                {
                    gang.ConnectVertexColor( vfa, CGangChannels::kAlpha, pModifier, false );
                }
            }

            // NOTE: Connecting the animCurve to the .vertexColor.vertexColorR/G/B plugs
            //       does not seem to work to animate all .vtxFace components associated
            //       to the vertex.  Must connect to each individual .vtxFace plug.

        }

        pModifier->doIt();
        pModifier = NULL;   // Now don't touch!

    // ----------------  Disconnect any VertexFACE driven and connect to common animCurve  ----------------

        pModifier = mModifierStack.DGModifier();

        for ( v = 0; v < mVtxArray.length(); v++ )
        {
            MPlug vcElement = vcPlug.elementByLogicalIndex( mVtxArray[v], &status );
            if ( status != MS::kSuccess )
            {
                CDEBUG << "Could not get .vertexColor[" << mVtxArray[v] << "]" << endl;
                continue;
            }

            vfc = vcElement.child(2);

            for ( f = 0; f < mFaceArray.length(); f++ )
            {
                vcElement = vfc.elementByLogicalIndex( mFaceArray[v], &status );
                if ( status != MS::kSuccess )
                {
                    CDEBUG << "Could not get .vertexColor.vertexFaceColor[" << mFaceArray[f] << "]" << endl;
                    continue;
                }

                vfcR = vcElement.child(0).child(0);
                vfcG = vcElement.child(0).child(1);
                vfcB = vcElement.child(0).child(2);
                vfa  = vcElement.child(1);

                // Only disconnect a channel if a common "gang" animCurve will be connected below.
                if ( gang.Has( CGangChannels::kRed ) )
                {
                    // 'false' means "do not perform MDGModifier.doIt()"
                    gang.ConnectVertexColor( vfcR, CGangChannels::kRed, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kGreen ) )
                {
                    gang.ConnectVertexColor( vfcG, CGangChannels::kGreen, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kBlue ) )
                {
                    gang.ConnectVertexColor( vfcB, CGangChannels::kBlue, pModifier, false );
                }
                if ( gang.Has( CGangChannels::kAlpha) )
                {
                    gang.ConnectVertexColor( vfa, CGangChannels::kAlpha, pModifier, false );
                }
            }
        }

        pModifier->doIt();
        pModifier = NULL;   // Now don't touch!

    }

    MGlobal::executeCommand( "waitCursor -state off", false, false );

	return MS::kSuccess;
}

MStatus gangcbv::undoIt()
{
    MStatus     status;
    
    MGlobal::executeCommand( "waitCursor -state on", false, false );

    status = mModifierStack.Undo();
    mModifierStack.Clear();

    MGlobal::executeCommand( "waitCursor -state off", false, false );

	return status;
}

void* gangcbv::creator()
{
	return new gangcbv();
}

bool gangcbv::isUndoable() const
{
	return (!mbHelp);
}

//===========================================================================
// gangcbv::newSyntax
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
MSyntax gangcbv::newSyntax( void )
{
    MSyntax                     syntax;

    syntax.useSelectionAsDefault( true );
    syntax.setObjectType( MSyntax::kSelectionList, 1 );

    syntax.addFlag( kHelpFlag, kHelpFlagLong, MSyntax::kNoArg );

    return syntax;
}

//===========================================================================
// gangcbv::parseArgs
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
MStatus gangcbv::parseArgs( const MArgList& args )
{
    MStatus                     status;

    MArgDatabase                argdata( syntax(), args );

    status = argdata.getObjects( mSelection );

    if ( argdata.isFlagSet( kHelpFlag ) )
    {
        mbHelp = true;
    }

    return status;
}
