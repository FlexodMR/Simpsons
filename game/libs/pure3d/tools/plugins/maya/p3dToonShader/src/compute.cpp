/*===========================================================================
    File: compute.cpp



    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <math.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MFnStringData.h>
#include <maya/MFnStringArrayData.h>
#include <maya/MFnLightDataAttribute.h>
#include <maya/MFloatVector.h>
#include <maya/MPlug.h>
#include <maya/MPlugArray.h>
#include <maya/MDGMessage.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MSelectionList.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MGlobal.h>
#include <maya/MFnPlugin.h>

#include "p3dToonShader.hpp"
#include "../../common/inc/mayaResolveName.hpp"

#include <maya/inc/mayaRamp.hpp>
#include <pddi/pddienum.hpp>
#include <tlColour.hpp>

#include <bewert_debug.h>
#include <iomanip.h>

// #define ENABLE_CELL_TABLE

extern "C" const char* GetVersionStr(const char* moduleName);

#ifdef ENABLE_CELL_TABLE    // --------  CELL TABLE  --------
static const int CELL_TABLE_RESOLUTION = 64;
static float cellTable[CELL_TABLE_RESOLUTION];
#endif                      // --------  CELL TABLE  --------

static MFloatVector storedColor;

enum ToonStyles
{
    kToonStyleToonCell = 0,
    kToonStyleCell,
    kToonStyleToon
};

//===========================================================================
// HSV2RGB
//===========================================================================
// Description: Converts HSV color space to RGB color space.
//
//                  H = 0.0 - 360.0
//                  S = 0.0 - 1.0
//                  V = 0.0 - 1.0
//
//                  R = 0.0 - 1.0
//                  G = 0.0 - 1.0
//                  B = 0.0 - 1.0
//
// Constraints: I wanted to use tlColour::HSV functions, but they were
//              completely wack-o, so I've integrated my own.
//
//  Parameters: double H,S,V: Hue, Saturation and Value.
//              double &R, &G, &B: Storage for resulting Red, Green and Blue.
//
//      Return: (void)
//
//===========================================================================
void HSV2RGB(double H, double S, double V, double& R, double& G, double& B)
{
    if (S == 0.0)
    {
        R = G = B = V;
    }
    else
    {
        if (H == 360.0)
            H = 0;
        H /= 60.0;
        int i = (int)floor(H);
        double f = H - (double)i;
        double p = V*(1.0-S);
        double q = V*(1.0-(S*f));
        double t = V*(1.0-(S*(1.0-f)));
        switch (i) {
        case 0:
            R = V; G = t; B = p;
            break;
        case 1:
            R = q; G = V; B = p;
            break;
        case 2:
            R = p; G = V; B = t;
            break;
        case 3:
            R = p; G = q; B = V;
            break;
        case 4:
            R = t; G = p; B = V;
            break;
        case 5:
            R = V; G = p; B = q;
            break;
        }
    }
}

//===========================================================================
// HSV2RGB
//===========================================================================
// Description: Converts RGB color space to HSV color space.
//
//                  R = 0.0 - 1.0
//                  G = 0.0 - 1.0
//                  B = 0.0 - 1.0
//
//                  H = 0.0 - 360.0
//                  S = 0.0 - 1.0
//                  V = 0.0 - 1.0
//
// Constraints: I wanted to use tlColour::HSV functions, but they were
//              completely wack-o, so I've integrated my own.
//
//  Parameters: double R, G, B: Red, Green and Blue.
//              double &H, &S, &V: Storage for Hue, Saturation and Value.
//
//      Return: (void)
//
//===========================================================================
void RGB2HSV(double R, double G, double B, double& H, double& S, double& V)
{
    double cmax, cmin, delta;

    cmin = __min(__min(R, G), B);
    cmax = __max(__max(R, G), B);

    V = cmax;
    if ( V == 0.0 )
    {
        S = 0.0;
        H = 0.0;
        return;
    }

    S = (cmax-cmin) / cmax;

    H = 0.0;
    delta = cmax-cmin;
    if ( (S > 0.0) && (delta > 0.0) )
    {
        if ( R == cmax )
        {
            if ( G >= B )
            {
                H = ( G - B ) / delta;
            }
            else
            {
                H = ( ( G - B + delta ) / delta ) + 5;
            }
        }
        if ( G == cmax )
        {
            if ( B > R )
            {
                H = 2 + ( ( B - R ) / delta );
            }
            else
            {
                H = 1 + ( ( B - R + delta ) / delta );
            }
        }
        if ( B == cmax )
        {
            if ( R > G )
            {
                H = 4 + ( ( R - G ) / delta );
            }
            else
            {
                H = 3 + ( ( R - G + delta ) / delta );
            }
        }

        H *= 60;
        if (H < 0.0)
            H += 360;
    }
}

#ifdef ENABLE_CELL_TABLE    // --------  CELL TABLE  --------

MStatus FindRamp( const MObject& me, MObject& ramp )
{
    memset( cellTable, 0, sizeof(float)*CELL_TABLE_RESOLUTION );

    MStatus                     status;

    MFnDependencyNode           fnDependNode( me );

    MPlug nodeStatePlug = fnDependNode.findPlug( "inRampColor", &status );
    if ( status == MS::kSuccess )
    {
        MPlugArray              connectedTo;
        if ( nodeStatePlug.connectedTo( connectedTo, true /* asDst */, true ) )
        {
            if ( ( connectedTo.length() > 0 ) && ( connectedTo[0].node().apiType() == MFn::kRamp ) )
            {
                ramp = connectedTo[0].node();
                return MS::kSuccess;
            }
        }
    }

    return MS::kFailure;
}

MStatus FillRamp( MObject& me )
{
    MStatus                     status;

    MObject ramp;
    status = FindRamp( me, ramp );
    if ( status != MS::kSuccess ) return status;

    CMayaRamp   mayaRamp( ramp );

    unsigned int i;
    for ( i = 0; i < CELL_TABLE_RESOLUTION; i++ )
    {
        MColor color;
        float ratio = i / (float)CELL_TABLE_RESOLUTION;
        mayaRamp.GetColorAt( ratio, color );

        cellTable[i] = color.g;
    }

    return status;
}

#endif                      // --------  CELL TABLE  --------

//
// Comput the output value for new added attributes
//
/////////////////////////////////////////////////////////////////////////////
MStatus P3DToonShader::compute_output( const MPlug&  plug, MDataBlock& block )
{
    static int countdown = 0;

#ifdef ENABLE_CELL_TABLE    // --------  CELL TABLE  --------

//    CDEBUG << "P3DToonShader::compute_output( " << plug.name() << " )" << endl;

    if ( plug == aOutRampColor ||
         plug == aOutRampColorR ||
         plug == aOutRampColorG ||
         plug == aOutRampColorB
        )
    {
        CDEBUG << "  ++ compute Ramp color... ";

        MDataHandle hOutColor = block.outputValue( aOutRampColor );

        MStatus                 status = MS::kSuccess;
        status = FillRamp( thisMObject() );

        hOutColor.setClean();

        return MS::kSuccess;
    }

#endif                      // --------  CELL TABLE  --------

    if( plug == aOutColor   ||
        plug == aOutColorR  ||
        plug == aOutColorG  ||
        plug == aOutColorB  ||
        plug == aOutTrans   ||
        plug == aOutTransR  ||
        plug == aOutTransG  ||
        plug == aOutTransB )
    {
        if ( !countdown-- )
        {
            CDEBUG << "!!! ::compute( " << plug.name() << " ) !!!" << endl;
            countdown = 25;
        }

#ifdef ENABLE_CELL_TABLE    // --------  CELL TABLE  --------

        // Trigger .outRampColor if necessary
        // Note: This requires use of MPlug -- MDataBlock will NOT trigger a refresh of a dirty plug!
        MFnDependencyNode fnMe( thisMObject() );
        MPlug myOutRampColor = fnMe.findPlug( "outRampColor" );
        float outRampColorR;
        myOutRampColor.child(0).getValue( outRampColorR );

#endif                      // --------  CELL TABLE  --------

        MFloatVector resultColor(0.0f,0.0f,0.0f);

        MFloatVector& surfaceColor  = block.inputValue( aColor ).asFloatVector();

        // get sample surface shading parameters
        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();
        MFloatVector& faceNormal = block.inputValue( aTriangleNormalCamera ).asFloatVector();

        MFloatVector& cameraPosition = block.inputValue( aPointCamera ).asFloatVector();
        cameraPosition.normalize();

        MFloatVector& ambientColor  = block.inputValue( aAmbient ).asFloatVector();
        MFloatVector& diffuseColor  = block.inputValue( aDiffuse ).asFloatVector();
        MFloatVector& emissiveColor = block.inputValue( aEmissive ).asFloatVector();
        MFloatVector& specularColor  = block.inputValue( aSpecular ).asFloatVector();
        float shininess = block.inputValue( aShininess ).asFloat();
        short shademode = block.inputValue( aShadeMode ).asShort();

        float specularR, specularG, specularB;
        float diffuseR, diffuseG, diffuseB;
        diffuseR = diffuseG = diffuseB = specularR = specularG = specularB = 0.0f;

        // get light list
        MArrayDataHandle lightData = block.inputArrayValue( aLightData );
        int numLights = lightData.elementCount();

        // iterate through light list and get ambient/diffuse values
        for( int count=1; count <= numLights; count++ )
        {
            MDataHandle currentLight = lightData.inputValue();
            MFloatVector& lightIntensity = currentLight.child(aLightIntensity).asFloatVector();

            // find ambient component
            if( currentLight.child(aLightAmbient).asBool() ) {
                diffuseR += lightIntensity[0] * ambientColor[0];
                diffuseG += lightIntensity[1] * ambientColor[1];
                diffuseB += lightIntensity[2] * ambientColor[2];
            }

            // find diffuse and specular component
            if( currentLight.child(aLightDiffuse).asBool() )
            {
                MFloatVector& lightDirection = currentLight.child(aLightDirection).asFloatVector();

                float cosln;
                if(shademode == 0)       // PDDI_FLAT
                {
                    // flat
                    cosln = lightDirection * faceNormal;
                }
                else
                {
                    cosln = lightDirection * surfaceNormal;
                }

                if( cosln > 0.0f )  // calculate only if facing light
                {
                    diffuseR += lightIntensity[0] * cosln * diffuseColor[0];
                    diffuseG += lightIntensity[1] * cosln * diffuseColor[1];
                    diffuseB += lightIntensity[2] * cosln * diffuseColor[2];
                }

                if( cosln > 0.0f ) // calculate only if facing light
                {
                    float RV = ( ( (2*surfaceNormal) * cosln ) - lightDirection ) * cameraPosition;
                    if( RV < 0.0 ) RV = -RV;

                    if ( shininess < 0 ) shininess = -shininess;

                    float s = powf( RV, shininess );

                    specularR += lightIntensity[0] * s * specularColor[0];
                    specularG += lightIntensity[1] * s * specularColor[1];
                    specularB += lightIntensity[2] * s * specularColor[2];
                }
            }
            if( !lightData.next() ) break;
        }

        // factor incident light with surface color and add emissive
        resultColor[0] = ( diffuseR * surfaceColor[0] ) + specularR + emissiveColor[0];
        resultColor[1] = ( diffuseG * surfaceColor[1] ) + specularG + emissiveColor[1];
        resultColor[2] = ( diffuseB * surfaceColor[2] ) + specularB + emissiveColor[2];

    // ----------------  CELL SHADING  ----------------

        // Find the 'ramp' node
        MStatus                 status;

        // Now convert luminosity to use cell table
        MDataHandle hToonStyle = block.inputValue( aToonStyle );
        short& toonStyle = hToonStyle.asShort();

        if ( toonStyle == kToonStyleToonCell || toonStyle == kToonStyleCell )
        {
            MDataHandle hCellLevels = block.inputValue( aCellLuminanceLevels );
            short cellLevels = hCellLevels.asShort();

            double h,s,v;
            double r,g,b;

            r = resultColor[0];
            g = resultColor[1];
            b = resultColor[2];

            RGB2HSV( r, g, b, h, s, v );

            v = __min( 1.0, v );

#ifdef ENABLE_CELL_TABLE    // --------  CELL TABLE  --------

            int index = (int)(v * ( CELL_TABLE_RESOLUTION - 1 ));
            double newV = cellTable[index];

#else

            double newV = floor( ( v * cellLevels ) + 0.5 ) / cellLevels;

#endif                      // --------  CELL TABLE  --------

            HSV2RGB( h, s, newV, r, g, b );

            resultColor[0] = static_cast<float>(r);
            resultColor[1] = static_cast<float>(g);
            resultColor[2] = static_cast<float>(b);
        }

    // ----------------  TOON OUTLINE  ----------------

        if ( toonStyle == kToonStyleToonCell || toonStyle == kToonStyleToon )
        {
            MDataHandle hToonLineWidth = block.inputValue( aToonLineWidth );
            float toonLineWidth = hToonLineWidth.asFloat();

            MDataHandle hToonSilhouette = block.inputValue( aToonSilhouette );
            MFloatVector& silhouette = hToonSilhouette.asFloatVector();

            if ( fabs( cameraPosition * surfaceNormal ) < toonLineWidth )
            {
                resultColor[0] = silhouette[0];
                resultColor[1] = silhouette[1];
                resultColor[2] = silhouette[2];
            }
        }

    // ----------------  OUTPUT  ----------------

        // set output color attribute
        MDataHandle outColorHandle = block.outputValue( aOutColor );
        MFloatVector& outColor = outColorHandle.asFloatVector();
        outColor = resultColor;
        outColorHandle.setClean();

        MFloatVector& transparency = block.inputValue( aInTrans ).asFloatVector();

        // set ouput transparency
        MDataHandle outTransHandle = block.outputValue( aOutTrans );
        MFloatVector& outTrans = outTransHandle.asFloatVector();
        outTrans = transparency;
        outTransHandle.setClean();

      return MS::kSuccess;
    }
    else if(plug == aIsTranslucent)
    {
        MDataHandle outHandle = block.outputValue( aIsTranslucent );
        short& value = outHandle.asShort();
        value = block.inputValue( aBlendMode ).asShort() != 0;
        outHandle.setClean();

        return MS::kSuccess;
    }
    else if(plug == aVertexNeeds)
    {
        MDataHandle outHandle = block.outputValue( aVertexNeeds );

// Maya v4 uses 'int' for its declaration for overloaded MDataHandle::set().
#if ( MAYA_API_VERSION >= 400 )
        int& value = outHandle.asLong();
#else
// Maya v3 uses 'long'.
        long &value = outHandle.asLong( );
#endif

        // Shader always supplies POSITIONS, ONE UVSET, and NORMALS
        value = PDDI_V_T | PDDI_V_NORMAL;

        outHandle.setClean();

        return MS::kSuccess;
    }
    else if(plug == aVertexMask)
    {
        MDataHandle outHandle = block.outputValue( aVertexMask );

// Maya v4 uses 'int' for its declaration for overloaded MDataHandle::set().
#if ( MAYA_API_VERSION >= 400 )
        int& value = outHandle.asLong();
#else
// Maya v3 uses 'long'.
        long & value = outHandle.asLong( );
#endif

        // Shader must not allow COLOUR
        value = ~PDDI_V_COLOUR;

        // Shader must provide only 1 UVSet
        value &= ~PDDI_V_UVMASK;
        value |= PDDI_V_UVCOUNT1;

        outHandle.setClean();

        return MS::kSuccess;
    }

    return MS::kUnknownParameter;

}

bool Pure3dShaderExists( const MString& name )
{
    MItDependencyNodes          itNodes( MFn::kDependencyNode );

    for ( /* nothing */; !itNodes.isDone(); itNodes.next() )
    {
        MObject                 depNode = itNodes.item();
        MFnDependencyNode       fnDependNode( depNode );

        if ( fnDependNode.typeId() == P3DToonShader::id )
        {
            if ( fnDependNode.name() == name )
            {
                return true;
            }
        }
    }

    return false;
}

static MCallbackId callbackid;
void P3DToonShaderCB(MObject &node, void*)
{
    MStatus stat;
    MString      command;
    MStringArray arrayResult;
    MString      resolvedName;
    MFnDependencyNode depnode(node);

    MString     nodeName = depnode.name();

    if ( Pure3dShaderExists( nodeName ) )
    {
        ResolveName( nodeName, resolvedName, false /* not DAG */, true /* Deferred */ );
        nodeName = resolvedName;

        command = MString("evalDeferred \"if ( `objExists " + resolvedName + "` ) { string $p3dsimpletmp = `FixHWTextureInfo ") + resolvedName + "`; "
                  + MString("scriptJob -con ") + resolvedName + MString(".color $p3dsimpletmp; }\"");

        stat = MGlobal::executeCommand(command, arrayResult);
        if (stat != MS::kSuccess)
        {
            MGlobal::displayError("Failed in pure3dToonShader Callback!");
            return ;
        }
    }       // if ( Pure3DShaderExists )
}

//
// Intialize plugin:
/////////////////////////////////////////////////////////////////////////////
MStatus initializePlugin( MObject obj )
{
    const MString UserClassify( "shader/surface" );

    MFnPlugin plugin( obj, "Radical - Pure3D", GetVersionStr("p3dToonShader.mll"), "Any");
    //named $registername because maya will reformat $shadername into P 3d Toon Shader
    plugin.registerNode( "pure3dToonShader", P3DToonShader::id,
                                 P3DToonShader::creator, P3DToonShader::initialize,
                                 MPxNode::kDependNode, &UserClassify );

    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );
    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    callbackid = MDGMessage::addNodeAddedCallback(P3DToonShaderCB, "pure3dToonShader", NULL, NULL);
    return MS::kSuccess;
}

//
// Unintialize plugin:
/////////////////////////////////////////////////////////////////////////////
MStatus uninitializePlugin( MObject obj )
{
    MMessage::removeCallback( callbackid );

    const MString UserClassify( "shader/surface" );
    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );

    MFnPlugin plugin( obj );
    plugin.deregisterNode( P3DToonShader::id );

    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    return MS::kSuccess;
}

