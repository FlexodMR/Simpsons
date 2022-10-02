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
#include <maya/MGlobal.h>
#include <maya/MFnPlugin.h>
#include "p3dPrelitShader.hpp"


//
// Comput the output value for new added attributes
// 
/////////////////////////////////////////////////////////////////////////////
MStatus P3DPrelitShader::compute_output(
const MPlug&      plug,
        MDataBlock& block ) 
{ 
    if( plug == aOutColor || 
         plug == aOutColorR ||
         plug == aOutColorG ||
         plug == aOutColorB ||
         plug == aOutTrans || 
         plug == aOutTransR ||
         plug == aOutTransG ||
         plug == aOutTransB )
    {
        MFloatVector resultColor(0.0f,0.0f,0.0f);

        MFloatVector& surfaceColor  = block.inputValue( aColor ).asFloatVector();

        float& xhigh  = block.inputValue( axHighRenderRegion ).asFloat();
        float& yhigh  = block.inputValue( axHighRenderRegion ).asFloat();

        // get sample surface shading parameters
        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();
        MFloatVector& cameraPosition = block.inputValue( aPointCamera ).asFloatVector();

        float diffuseR, diffuseG, diffuseB;
        diffuseR = diffuseG = diffuseB = 0.0f;

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
                diffuseR += lightIntensity[0];
                diffuseG += lightIntensity[1];
                diffuseB += lightIntensity[2];
            }

            // find diffuse and specular component
            if( currentLight.child(aLightDiffuse).asBool() )
            {
                MFloatVector& lightDirection = currentLight.child(aLightDirection).asFloatVector();

                float cosln = lightDirection * surfaceNormal;

                if( cosln > 0.0f )  // calculate only if facing light
                {
                    diffuseR += lightIntensity[0] * cosln;
                    diffuseG += lightIntensity[1] * cosln;
                    diffuseB += lightIntensity[2] * cosln;
                }

                cameraPosition.normalize();
            }
            if( !lightData.next() ) break;
        }
        
        // Let's see if we can detect whether we need prelighting

        bool prelighting = true;

        if((xhigh != 256) || (yhigh != 256))
        {
            prelighting = false;
        }

        if(prelighting)
        {
            // incident light only
            resultColor[0] = diffuseR;
            resultColor[1] = diffuseG;
            resultColor[2] = diffuseB;
        }
        else
        {
            // incident light * surfaceColor 
            resultColor[0] = diffuseR * surfaceColor[0];
            resultColor[1] = diffuseG * surfaceColor[1];
            resultColor[2] = diffuseB * surfaceColor[2];
        }

        // set ouput color attribute
        MDataHandle outColorHandle = block.outputValue( aOutColor );
        MFloatVector& outColor = outColorHandle.asFloatVector();
        outColor = resultColor;
        outColorHandle.setClean();

        MFloatVector transparency;   // opaque

        // set ouput transparency
        MDataHandle outTransHandle = block.outputValue( aOutTrans );
        MFloatVector& outTrans = outTransHandle.asFloatVector();
        outTrans = transparency;
        outTransHandle.setClean();
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
        long& value = outHandle.asLong();

        //To do:  set the value of aVertexNeeds

        outHandle.setClean();

        return MS::kSuccess;
    }
    else if(plug == aVertexMask)
    {
        MDataHandle outHandle = block.outputValue( aVertexMask );
        long& value = outHandle.asLong();

        //To do:  set the value of aVertexNeeds

        outHandle.setClean();

        return MS::kSuccess;
    }
    else
    {
        return MS::kUnknownParameter;
    }
}

static MCallbackId callbackid;
void P3DPrelitShaderCB(MObject &node, void*)
{
    MStatus stat;
    MString      command;
    MStringArray arrayResult;
    MFnDependencyNode depnode(node);

    command = MString("string $p3dsimpletmp = \"FixHWTextureInfo ") + depnode.name() + "\";\n"
              + MString("evalDeferred \"FixHWTextureInfo ") + depnode.name() + "\";\n"
              + MString("evalDeferred \"scriptJob -con ") 
              + depnode.name() + MString(".color $p3dsimpletmp;\"");
    stat = MGlobal::executeCommand(command, arrayResult);
    if (stat != MS::kSuccess) 
    {
        MGlobal::displayError("Failed in pure3dPrelitShader Callback!");
        return ;
    }
}

//
// Intialize plugin:
/////////////////////////////////////////////////////////////////////////////
MStatus initializePlugin( MObject obj )
{ 
    const MString UserClassify( "shader/surface" );
    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );

    MFnPlugin plugin( obj, "Radical - Pure3D", "0.01", "Any");
    //named $registername because maya will reformat $shadername into P 3d Simple Shader
    plugin.registerNode( "pure3dPrelitShader", P3DPrelitShader::id, 
                                 P3DPrelitShader::creator, P3DPrelitShader::initialize,
                                 MPxNode::kDependNode, &UserClassify );
    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);
    callbackid = MDGMessage::addNodeAddedCallback(P3DPrelitShaderCB, "pure3dPrelitShader", NULL, NULL);
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
    plugin.deregisterNode( P3DPrelitShader::id );

    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    return MS::kSuccess;
}

