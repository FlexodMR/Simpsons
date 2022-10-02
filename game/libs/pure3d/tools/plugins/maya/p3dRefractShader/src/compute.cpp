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
#include <maya/MDGMessage.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MSelectionList.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MGlobal.h>
#include <maya/MFnPlugin.h>
#include "p3dRefractShader.hpp"
#include "../../common/inc/mayaResolveName.hpp"

#include <pddi/pddienum.hpp>

extern "C" const char* GetVersionStr(const char* moduleName);

//
// Comput the output value for new added attributes
// 
/////////////////////////////////////////////////////////////////////////////
MStatus P3DRefractShader::compute_output( const MPlug&  plug, MDataBlock& block ) 
{ 
    if( plug == aOutColor   || 
        plug == aOutColorR  ||
        plug == aOutColorG  ||
        plug == aOutColorB  ||
        plug == aOutTrans   || 
        plug == aOutTransR  ||
        plug == aOutTransG  ||
        plug == aOutTransB )
    {
        MFloatVector resultColor(0.0f,0.0f,0.0f);

        MFloatVector& surfaceColor  = block.inputValue( aColor ).asFloatVector();

        // get sample surface shading parameters
        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();
        MFloatVector& faceNormal = block.inputValue( aTriangleNormalCamera ).asFloatVector();

        MFloatVector& cameraPosition = block.inputValue( aPointCamera ).asFloatVector();

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

                cameraPosition.normalize();

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


        // set ouput color attribute
        MDataHandle outColorHandle = block.outputValue( aOutColor );
        MFloatVector& outColor = outColorHandle.asFloatVector();
        outColor = resultColor;
        outColorHandle.setClean();

//        MFloatVector& transparency = block.inputValue( aInTrans ).asFloatVector();
//
//        // set ouput transparency
//        MDataHandle outTransHandle = block.outputValue( aOutTrans );
//        MFloatVector& outTrans = outTransHandle.asFloatVector();
//        outTrans = transparency;
//        outTransHandle.setClean();

      return MS::kSuccess;
    }
    else if(plug == aIsTranslucent)
    {
        MDataHandle outHandle = block.outputValue( aIsTranslucent );
        short& value = outHandle.asShort();

        // Shader is always Translucent.
        value = true;

        outHandle.setClean();

        return MS::kSuccess; 
    }
    else if(plug == aVertexNeeds)
    {
        MDataHandle outHandle = block.outputValue( aVertexNeeds );

// Maya v4 uses 'int'.
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

// Maya v4 uses 'int'.
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

        if ( fnDependNode.typeId() == P3DRefractShader::id )
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
void P3DRefractShaderCB(MObject &node, void*)
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
            MGlobal::displayError("Failed in pure3dRefractShader Callback!");
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

    MFnPlugin plugin( obj, "Radical - Pure3D", GetVersionStr("p3dRefractShader.mll"), "Any");
    //named $registername because maya will reformat $shadername into P 3d Refract Shader
    plugin.registerNode( "pure3dRefractShader", P3DRefractShader::id, 
                                 P3DRefractShader::creator, P3DRefractShader::initialize,
                                 MPxNode::kDependNode, &UserClassify );

    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );
    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    callbackid = MDGMessage::addNodeAddedCallback(P3DRefractShaderCB, "pure3dRefractShader", NULL, NULL);
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
    plugin.deregisterNode( P3DRefractShader::id );

    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    return MS::kSuccess;
}

