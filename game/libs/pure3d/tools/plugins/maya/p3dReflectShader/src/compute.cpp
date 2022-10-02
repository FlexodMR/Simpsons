/*===========================================================================
    File: compute.cpp



    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include <math.h>
#include <maya/MDataBlock.h>
#include <maya/MDataHandle.h>
#include <maya/MDagPath.h>
#include <maya/MArrayDataHandle.h>
#include <maya/MFnStringData.h>
#include <maya/MFnStringArrayData.h>
#include <maya/MFnLightDataAttribute.h>
#include <maya/MFloatVector.h>
#include <maya/MVector.h>
#include <maya/MPoint.h>
#include <maya/MQuaternion.h>
#include <maya/MMatrix.h>
#include <maya/MMaterial.h>
#include <maya/MDrawData.h>
#include <maya/MDGMessage.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnDagNode.h>
#include <maya/MFnTransform.h>
#include <maya/MFnCamera.h>
#include <maya/MAnimUtil.h>
#include "../../common/inc/mayaResolveName.hpp"

#include <maya/MItDependencyNodes.h>
#include <maya/MGlobal.h>
#include <maya/MFnPlugin.h>

#include "p3dReflectShader.hpp"

#include <radmath/radmath.hpp>
#include <pddienum.hpp>

extern "C" const char* GetVersionStr(const char* moduleName);

const bool useDepth = true;

//
// Comput the output value for new added attributes
//
/////////////////////////////////////////////////////////////////////////////
MStatus P3DReflectShader::compute_output(
const MPlug&      plug,
        MDataBlock& block )
{
    MStatus                     status;

//    if ( plug == aUVCoord ||
//         plug == aUCoord ||
//         plug == aVCoord
//       )
//    {
//        float2 uv = { 0, 0 };
//
//        MDataHandle inUVHandle = block.inputValue( aUVCoord );
//        float2& inUV = inUVHandle.asFloat2();
//
//        CDEBUG << "UV (0): { " << inUV[0] << ", " << inUV[1] << " }" << endl;
//
//        MDataHandle outUVHandle = block.outputValue( aUVCoord );
//        float2& outUV = outUVHandle.asFloat2();
//        outUV[0] = uv[0];
//        outUV[1] = uv[1];
//        outUVHandle.setClean();
//
//        return MS::kSuccess;
//    }

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

        MFloatVector surfaceColor;

    // ----------------  Sample original colour  ----------------

        surfaceColor  = block.inputValue( aColor ).asFloatVector();

    // ----------------  get current UV  ----------------

        MDataHandle uH = block.inputValue( aUCoord, &status );
        MDataHandle vH = block.inputValue( aVCoord, &status );
        float oldU = uH.asFloat();
        float oldV = vH.asFloat();

    // ----------------  shift UV to where we need it  ----------------

        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();

        float newU = static_cast<float>( asin( surfaceNormal[0] / rmt::PI + 0.5 ) );
        float newV = static_cast<float>( asin( surfaceNormal[1] / rmt::PI + 0.5 ) );

        MDataHandle outUV = block.outputValue( aUVCoord );

        outUV.set( newU, newV );

    // ----------------  Calculate the appropriate colour  ----------------

        surfaceColor  = block.inputValue( aColor ).asFloatVector();

    // ----------------  Restore UV to original values  ----------------

        outUV.set( oldU, oldV );

        resultColor = MFloatVector( 0.0, 1.0, 0.0 ); // surfaceColor;

//        // get sample surface shading parameters
//        MFloatVector& surfaceNormal = block.inputValue( aNormalCamera ).asFloatVector();
//        MFloatVector& faceNormal = block.inputValue( aTriangleNormalCamera ).asFloatVector();
//
//        MFloatVector& cameraPosition = block.inputValue( aPointCamera ).asFloatVector();
//
//        MFloatVector& ambientColor  = block.inputValue( aAmbient ).asFloatVector();
//        MFloatVector& diffuseColor  = block.inputValue( aDiffuse ).asFloatVector();
//        MFloatVector& emissiveColor = block.inputValue( aEmissive ).asFloatVector();
//        MFloatVector& specularColor  = block.inputValue( aSpecular ).asFloatVector();
//
//        float shininess = block.inputValue( aShininess ).asFloat();
//        short shademode = block.inputValue( aShadeMode ).asShort();
//
//        float specularR, specularG, specularB;
//        float diffuseR, diffuseG, diffuseB;
//        diffuseR = diffuseG = diffuseB = specularR = specularG = specularB = 0.0f;
//
//        // get light list
//        MArrayDataHandle lightData = block.inputArrayValue( aLightData );
//        int numLights = lightData.elementCount();
//
//        // iterate through light list and get ambient/diffuse values
//        for( int count=1; count <= numLights; count++ )
//        {
//            MDataHandle currentLight = lightData.inputValue();
//            MFloatVector& lightIntensity = currentLight.child(aLightIntensity).asFloatVector();
//
//            // find ambient component
//            if( currentLight.child(aLightAmbient).asBool() ) {
//                diffuseR += lightIntensity[0] * ambientColor[0];
//                diffuseG += lightIntensity[1] * ambientColor[1];
//                diffuseB += lightIntensity[2] * ambientColor[2];
//            }
//
//            // find diffuse and specular component
//            if( currentLight.child(aLightDiffuse).asBool() )
//            {
//                MFloatVector& lightDirection = currentLight.child(aLightDirection).asFloatVector();
//
//                float cosln;
//                if(shademode == 0)       // PDDI_FLAT
//                {
//                    // flat
//                    cosln = lightDirection * faceNormal;
//                }
//                else
//                {
//                    cosln = lightDirection * surfaceNormal;
//                }
//
//                if( cosln > 0.0f )  // calculate only if facing light
//                {
//                    diffuseR += lightIntensity[0] * cosln * diffuseColor[0];
//                    diffuseG += lightIntensity[1] * cosln * diffuseColor[1];
//                    diffuseB += lightIntensity[2] * cosln * diffuseColor[2];
//                }
//
//                cameraPosition.normalize();
//
//                if( cosln > 0.0f ) // calculate only if facing light
//                {
//                    float RV = ( ( (2*surfaceNormal) * cosln ) - lightDirection ) * cameraPosition;
//                    if( RV < 0.0 ) RV = -RV;
//
//                    if ( shininess < 0 ) shininess = -shininess;
//
//                    float s = powf( RV, shininess );
//
//                    specularR += lightIntensity[0] * s * specularColor[0];
//                    specularG += lightIntensity[1] * s * specularColor[1];
//                    specularB += lightIntensity[2] * s * specularColor[2];
//                }
//            }
//            if( !lightData.next() ) break;
//        }
//
//        // factor incident light with surface color and add emissive
//        resultColor[0] = ( diffuseR * surfaceColor[0] ) + specularR + emissiveColor[0];
//        resultColor[1] = ( diffuseG * surfaceColor[1] ) + specularG + emissiveColor[1];
//        resultColor[2] = ( diffuseB * surfaceColor[2] ) + specularB + emissiveColor[2];


        // set output color attribute
        MDataHandle outColorHandle = block.outputValue( aOutColor );
        MFloatVector& outColor = outColorHandle.asFloatVector();
        outColor = resultColor;
        outColorHandle.setClean();

        MFloatVector& transparency = block.inputValue( aInTrans ).asFloatVector();

        // set output transparency
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

// Maya v4 uses 'int'.
#if ( MAYA_API_VERSION >= 400 )
        int& value = outHandle.asLong();
#else
// Maya v3 uses 'long'.
        long& value = outHandle.asLong();
#endif

        bool dynamicallyLit = block.inputValue( aDynamicallyLit ).asBool();

        // If .dynamicallyLit is animated, assume it is TRUE at some point.
        MPlug   dynLitPlug( thisMObject(), aDynamicallyLit );
        if ( MAnimUtil::isAnimated( dynLitPlug ) )
        {
            dynamicallyLit = true;
        }

        // set the value of aVertexNeeds
        value = PDDI_V_NORMAL | PDDI_V_UVCOUNT1;    // 17;      // see \pure3d\pddi\pddienum.hpp

        if( !dynamicallyLit )
        {
            value |= PDDI_V_COLOUR;             // see \pure3d\pddi\pddienum.hpp
        }

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
        long& value = outHandle.asLong();
#endif

        // By default, allow everything.
        value = ~0;

        bool dynamicallyLit = block.inputValue( aDynamicallyLit ).asBool();

        // If .dynamicallyLit is animated, assume it is TRUE at some point.
        MPlug   dynLitPlug( thisMObject(), aDynamicallyLit );
        if ( MAnimUtil::isAnimated( dynLitPlug ) )
        {
            dynamicallyLit = true;
        }

        unsigned int mask = 0;

        // If not dynamically lit, include Colour in mask.
        if ( !dynamicallyLit )
        {
            mask |= PDDI_V_COLOUR;
        }

        // Always export Normals.
        mask |= PDDI_V_NORMAL;

        // Allow 2 UVSets
        mask |= PDDI_V_UVCOUNT2;

        // If settings do not activate Colour, turn off Colour mask
        if ( !(mask & PDDI_V_COLOUR ) ) value &= ~PDDI_V_COLOUR;

        // Twiddle bits to assemble mask
        value = ( value & ~PDDI_V_UVMASK ) | ( mask & PDDI_V_UVMASK );

        outHandle.setClean();

        return MS::kSuccess;
    }
    else
        return MS::kUnknownParameter;

}

MStatus P3DReflectShader::bind(const MDrawRequest& request, M3dView& view)
{
    MStatus status;

// ----------------  Retrieve colours from Maya Material  ----------------

    float diffuse_color[4];
    float specular_color[4];

    status = getFloat3(aDiffuse, diffuse_color);
    diffuse_color[3] = 1.0;
    if (!status)
    {
        return status;
    }

    status = getFloat3(aSpecular, specular_color);
    specular_color[3] = 1.0;
    if (!status)
    {
        return status;
    }

// ----------------  Begin OpenGL  ----------------

    view.beginGL();

// ----------------  Store current OpenGL states  ----------------

    glPushAttrib( GL_CURRENT_BIT |
                  GL_LIGHTING_BIT |
                  GL_ENABLE_BIT |
                  GL_TEXTURE_BIT |
                  GL_COLOR_BUFFER_BIT | // blending functions
                  GL_DEPTH_BUFFER_BIT );

    glPushClientAttrib(GL_CLIENT_VERTEX_ARRAY_BIT);

// ----------------  Set Diffuse colour  ----------------

    glColorMaterial(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE);
    glEnable(GL_COLOR_MATERIAL);

    glColor4fv(diffuse_color);

//    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP);
//    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP);
//    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
//    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
//    glTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_PRIORITY, 1.0f );

// ----------------  Set Specular colour  ----------------

//  glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, specular_color);

    // Set up a default shininess
    //
//  glMaterialf(GL_FRONT_AND_BACK, GL_SHININESS, 100.0);

// ----------------  Done OpenGL  ----------------

    view.endGL();

    return MS::kSuccess;
}

MStatus P3DReflectShader::unbind(const MDrawRequest& request, M3dView& view)
{
// ----------------  Begin OpenGL  ----------------

    view.beginGL();

// ----------------  Restore OpenGL states  ----------------

    glPopClientAttrib();
    glPopAttrib();

// ----------------  Done OpenGL  ----------------

    view.endGL();

    return MS::kSuccess;
}

MStatus P3DReflectShader::geometry( const MDrawRequest& request,
                                 M3dView& view,
                                 int prim,
                                 unsigned int writable,
                                 int indexCount,
                                 const unsigned int * indexArray,
                                 int vertexCount,
                                 const float * vertexArray,
                                 int normalCount,
                                 const float ** normalArrays,
                                 int colorCount,
                                 const float ** colorArrays,
                                 int texCoordCount,
                                 const float ** texCoordArrays)
{

    MStatus                     status;

// ----------------  Get transform matrix from object being drawn  ----------------

    MDagPath    dag = request.multiPath();
    if ( !dag.hasFn( MFn::kTransform ) )
    {
        dag.pop();
    }

    MMatrix dagMatrix = dag.inclusiveMatrix();

// ----------------  Get transform matrix from camera  ----------------

    MDagPath    cameraDag;
    view.getCamera( cameraDag );
    MMatrix cameraMatrix = cameraDag.inclusiveMatrix();
    cameraDag.pop();

//    MFnTransform                fnCameraMatrix( cameraDag, &status );
//    MMatrix cameraRotMatrix = fnCameraMatrix.transformationMatrix();

    MFnTransform    fnCameraTransform( cameraDag );
    MQuaternion     quat;
    fnCameraTransform.getRotation( quat, MSpace::kWorld );
    MMatrix cameraRotMatrix = quat.asMatrix();
//    MVector         cameraPos( fnCameraTransform.translation( MSpace::kWorld ) );

// ----------------  Enable OpenGL GL_VERTEX_ARRAY  ----------------

    glVertexPointer(3, GL_FLOAT, 0, vertexArray);
    glEnableClientState(GL_VERTEX_ARRAY);

    float * normals = NULL;
    float * texCoords = NULL;
    float * refNormals = NULL;
    float * refTexCoords = NULL;

    int i, n, t, w;

// ----------------  Enable OpenGL GL_NORMAL_ARRAY  ----------------

    if (normalCount > 0)
    {
        // Normals are post-multiplied by DAG's inverse matrix.

        normals = new float [ vertexCount * 3 ];
        refNormals = new float [ vertexCount * 3 ];

        for ( i = 0; i < vertexCount; i++ )
        {
            n = i * 3;

            normals[n+0] = normalArrays[0][n+0];
            normals[n+1] = normalArrays[0][n+1];
            normals[n+2] = normalArrays[0][n+2];

            // Calculate perturbed normals for spherical map.
            // I tried OpenGL's GL_TEXTURE_GEN_x but the results were unsatisfactory.

            // Reflection vector: R = V - 2(V dot N)N

            MVector V( vertexArray[n+0], vertexArray[n+1], vertexArray[n+2] );
            V = V * dagMatrix * cameraMatrix.inverse();
            V.normalize();

            MVector     N( normalArrays[0][n+0], normalArrays[0][n+1], normalArrays[0][n+2] );
            N = N * dagMatrix * cameraRotMatrix.inverse();
            N.normalize();

            MVector     R( V - 2.0 * ( V * N ) * N );

            refNormals[n+0] = static_cast<float>( R.x );
            refNormals[n+1] = static_cast<float>( R.y );
            refNormals[n+2] = static_cast<float>( R.z );
        }

        glNormalPointer(GL_FLOAT, 0, normals );
        glEnableClientState(GL_NORMAL_ARRAY);
    }

// ----------------  Enable OpenGL GL_TEXTURE_COORD_ARRAY  ----------------

    if ( texCoordCount > 0 )
    {
        texCoords = new float [ vertexCount * NUM_TEX_COORDS_PER_VERTEX ];
        refTexCoords = new float [ vertexCount * NUM_TEX_COORDS_PER_VERTEX ];

        float u = 0.0f;
        float v = 0.0f;

        // Query type of reflection shader
        int reflectType;
        MFnDependencyNode       fnDependNode( thisMObject() );
        MPlug reflectTypePlug = fnDependNode.findPlug( "reflectType" );
        reflectTypePlug.getValue( reflectType );

        for ( i = 0; i < vertexCount; i++ )
        {
            t = i * NUM_TEX_COORDS_PER_VERTEX;
            n = i * 3;
            w = i * 2;

            texCoords[t+0] = texCoordArrays[0][w+0];
            texCoords[t+1] = ( 1.0F - texCoordArrays[0][w+1] );

            // Calculate perturbed texture coordinates for spherical map.
            // I tried OpenGL's GL_TEXTURE_GEN_x but the results were unsatisfactory.
            float x = refNormals[n+0];
            float y = refNormals[n+1];
            float z = refNormals[n+2];

            switch ( reflectType )
            {
                case 0:     // environment
                {
                    u = (x+1.0f)/2.0f;
                    v = (y+1.0f)/2.0f;
                    break;
                }
                case 1:     // sphere map
                {
                    float m = 2.0F * static_cast<float>( sqrt( ( x * x ) + ( y * y ) + ( ( z+1 ) * ( z+1 ) ) ) );

                    u = ( x / m ) + 0.5F;
                    v = ( y / m ) + 0.5F;
                    break;
                }

            }

//            float u = static_cast<float>( asin( refNormals[n+0] / rmt::PI ) + 0.5 );
//            float v = static_cast<float>( asin( refNormals[n+1] / rmt::PI ) + 0.5 );

            refTexCoords[t+0] = u;
            refTexCoords[t+1] = v;      // ( 1.0F - v );
        }

        glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    }


// ----------------  Prepare for textures  ----------------

    glEnable( GL_TEXTURE_2D );
    glEnable(GL_CULL_FACE);     // Do not draw inside of cube

// ----------------  Draw elements  ----------------

    // -------  Apply Colour Map  --------

    if (useDepth)
    {
        glEnable( GL_DEPTH_TEST );
        glDepthFunc(GL_LEQUAL);
        glDepthMask(GL_TRUE);
    }
    else
    {
        glDisable( GL_DEPTH_TEST );
    }

    glDisable(GL_BLEND);

    BindColor();

    // Load Maya's texture coordinates for colour map
    glTexCoordPointer( NUM_TEX_COORDS_PER_VERTEX, GL_FLOAT, 0, texCoords );

    glDrawElements(prim, indexCount, GL_UNSIGNED_INT, indexArray);

    // -------  Apply Reflection Map  --------

    glDisable(GL_LIGHTING);
    glTexEnvi( GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE );

    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE,GL_ONE);
    if (useDepth)
    {
        glDepthFunc(GL_EQUAL);
        glDepthMask(GL_FALSE);
    }

    if ( BindReflect() )
    {
        // Load perturbed texture coordinates for reflection map
        glTexCoordPointer( NUM_TEX_COORDS_PER_VERTEX, GL_FLOAT, 0, refTexCoords );

        glDrawElements(prim, indexCount, GL_UNSIGNED_INT, indexArray);
    }

    glDisable( GL_BLEND );

    // -------  Restore OpenGL states  --------

    glDisable(GL_CULL_FACE);        // Do not draw inside of cube


    // If glDrawRangeElements is available, you may be able to
    // get slightly better efficiency from:
    //
    // glDrawRangeElements(prim, 0, vertexCount - 1,
    //                     indexCount, GL_UNSIGNED_INT, indexArray);
    //
    // since we know that all the indices will be in the range from
    // 0 to vertexCount - 1.

// ----------------  Disable OpenGL states for additional tweaks  ----------------

    glDisable( GL_TEXTURE_2D );
    glDisable(GL_LIGHTING);
    glDisable(GL_COLOR_MATERIAL);
    glDisableClientState( GL_VERTEX_ARRAY );

// ----------------  Draw the normals  ----------------

//    glEnable( GL_DEPTH_TEST );
//    glDepthFunc( GL_LESS );
//    glDepthMask( GL_FALSE );
//
//    glColor4f( 1.0, 0.0, 1.0, 1.0 );
//    glBegin( GL_LINES );
//    for ( i = 0; i < vertexCount; i++ )
//    {
//        n = ( i * 3 );
//
//        float nx = ( refNormals[n+0] * 10.0F );
//        float ny = ( refNormals[n+1] * 10.0F );
//        float nz = ( refNormals[n+2] * 10.0F );
//
//        glVertex3f( vertexArray[n+0], vertexArray[n+1], vertexArray[n+2] );
//        glVertex3f( vertexArray[n+0] + nx, vertexArray[n+1] + ny, vertexArray[n+2] + nz );
//    }
//
//    glEnd();

// ----------------  Delete the normals array  ----------------

    delete [] refTexCoords;
    delete [] texCoords;
    delete [] refNormals;
    delete [] normals;

    return MS::kSuccess;
}

bool Pure3dShaderExists( const MString& name )
{
    MItDependencyNodes          itNodes( MFn::kDependencyNode );

    for ( /* nothing */; !itNodes.isDone(); itNodes.next() )
    {
        MObject                 depNode = itNodes.item();
        MFnDependencyNode       fnDependNode( depNode );

        if ( fnDependNode.typeId() == P3DReflectShader::id )
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
void P3DReflectShaderCB(MObject &node, void*)
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
            MGlobal::displayError("Failed in pure3dReflectShader Callback!");
            return ;
        }
    }       // if ( Pure3DShaderExists )
}

//
// Intialize plugin:
/////////////////////////////////////////////////////////////////////////////
MStatus initializePlugin( MObject obj )
{
//   const MString UserClassify( "shader/surface" );
   const MString UserClassify( "shader/surface/utility" );

    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );

    MFnPlugin plugin( obj, "Radical - Pure3D", GetVersionStr("p3dReflectShader.mll"), "Any");
    //named $registername because maya will reformat $shadername into P 3d Simple Shader

    plugin.registerNode( "pure3dReflectShader", P3DReflectShader::id,
                                 P3DReflectShader::creator, P3DReflectShader::initialize,
                                 MPxNode::kHwShaderNode, &UserClassify );

//    plugin.registerNode( "pure3dReflectShader", P3DReflectShader::id,
//                                 P3DReflectShader::creator, P3DReflectShader::initialize,
//                                 MPxNode::kDependNode, &UserClassify );

    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);
    callbackid = MDGMessage::addNodeAddedCallback(P3DReflectShaderCB, "pure3dReflectShader", NULL, NULL);
    return MS::kSuccess;
}

//
// Unintialize plugin:
/////////////////////////////////////////////////////////////////////////////
MStatus uninitializePlugin( MObject obj )
{
    MMessage::removeCallback( callbackid );

//    const MString UserClassify( "shader/surface" );
   const MString UserClassify( "shader/surface/utility" );
    MString command( "if( `window -exists createRenderNodeWindow` )  {refreshCreateRenderNodeWindow(\"" );

    MFnPlugin plugin( obj );
    plugin.deregisterNode( P3DReflectShader::id );

    command += UserClassify;
    command += "\");}\n";

    MGlobal::executeCommand(command);

    return MS::kSuccess;
}
