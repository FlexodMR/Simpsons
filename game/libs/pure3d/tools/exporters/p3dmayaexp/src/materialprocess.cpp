/*===========================================================================
    meshprocess.hpp
    created: Feb. 4, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#pragma warning( disable : 4786 )   // that annoying "identifier was truncated in the debug information" warning.

#include <maya/MFloatPointArray.h>
#include <maya/MObjectArray.h>
#include <maya/MIntArray.h>
#include <maya/MFnSet.h>
#include <maya/MDagPath.h>
#include <maya/MItDependencyGraph.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MFnMesh.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MPlug.h>
#include <maya/MFnPhongShader.h>
#include <maya/MFnBlinnShader.h>
#include <maya/MFnLambertShader.h>
#include <maya/MFnReflectShader.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnStringArrayData.h>
#include <maya/MGlobal.h>

#include "tlTriangle.hpp"
#include "tlTriMesh.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlVertex.hpp"
#include "tlShader.hpp"
#include "tlSimpleShader.hpp"

#include "materialprocess.hpp"
#include "textureprocess.hpp"
#include "exporterutility.hpp"
#include "exporteroptions.hpp"
#include "exportFunctions.hpp"          // IsExportingCancelled()
#include "scene.hpp"                    // SceneNode::UIScale()
#include "shaderAnimNode.hpp"
#include "maya/inc/mayaShadingGroup.hpp"

#include <bewert_debug.h>

// --------------  BEGIN MEMORY TRACK  ---------------

//#include "memoryTrack.h"
//#ifdef _DEBUG
//#define DEBUG_NEW new(__FILE__, __LINE__)
//#else
//#define DEBUG_NEW new
//#endif
//#define new DEBUG_NEW

// --------------  END MEMORY TRACK  ---------------

#define MAYA_LAMBERT_ID                    1380729165
#define MAYA_PHONG_ID                      1380993103
#define MAYA_LAYERED_SHADER_ID             1280922195


// ---------- global structs


// ---------- local structs

//#include "tlPDDIEnum.hpp"

// ---------- helper functions

enum p3dShaderType
{
    PLUGIN_SHADER,
    LAMBERT_SHADER,
    PHONG_SHADER,
    LAYERED_SHADER
};

p3dShaderType GetTypeOfShader(MFnDependencyNode& nodeFn)
{
    switch (nodeFn.typeId().id())
    {
    case MAYA_LAMBERT_ID:
        return LAMBERT_SHADER;
        break;
    case MAYA_PHONG_ID:
        return PHONG_SHADER;
        break;
    case MAYA_LAYERED_SHADER_ID:
        return LAYERED_SHADER;
        break;
    default:
        return PLUGIN_SHADER;
        break;
    }
}

// helper function for MaterialProcess::Process
MObject FindShader( MObject& setNode )
//
//  Description:
//      Find the shading node for the given shading group set node.
//
{
     MFnDependencyNode fnNode(setNode);
     MPlug shaderPlug = fnNode.findPlug("surfaceShader");

     if (!shaderPlug.isNull())
     {
          MPlugArray connectedPlugs;
          bool asSrc = false;
          bool asDst = true;
          shaderPlug.connectedTo( connectedPlugs, asDst, asSrc );

          if (connectedPlugs.length() != 1)
          {
            gExportLog.Add( CExportLogEntry( ExportLog::kShadingGroupHasNULLSurfaceMaterial, fnNode.name() ) );
          }
          else return connectedPlugs[0].node();
     }

     return MObject::kNullObj;
}

// ---------- classes

//------------------------
MaterialProcess::MaterialProcess()
{
}


//-------------------------
MaterialProcess::~MaterialProcess()
{

}

//finds the shader in the scene that matches the specified name
bool MaterialProcess::FindShadingNode(MString shaderName, MObject& shadingNode)
{
    MStatus status;

    MItDependencyNodes allNodes(MFn::kDependencyNode, &status);
    if (status!=MS::kSuccess)
        return false;

    while (!allNodes.isDone())
    {
        shadingNode = allNodes.item(&status);
        MFnDependencyNode depNode(shadingNode);

        MString currentName = depNode.name();

        if (status!=MS::kSuccess)
            return false;

        if (currentName==shaderName)
            return true;
        allNodes.next();
    }
    return false;
}

//finds the shading group that is associated with the node at the end of the specified dagpath
bool MaterialProcess::FindShadingNode(MObject object, MObject& shadingNode)
{
    MStatus status;
    MFnDependencyNode dependNodeFn(object, &status);
    if (status!=MS::kSuccess)
        return false;
    MPlug inConnectPlug = dependNodeFn.findPlug("instObjGroups", &status);
    if (status!=MS::kSuccess)
        return false;
    MPlug elemPlug = inConnectPlug.elementByLogicalIndex(0, &status);
    if (status!=MS::kSuccess)
        return false;
    MPlugArray plugArray;
    elemPlug.connectedTo(plugArray,false,true,&status);
    if (status!=MS::kSuccess)
        return false;
    if (plugArray.length()==0)
        return false;
    MPlug shaderPlug = plugArray[0];
    shadingNode = FindShader(shaderPlug.node(&status));
    if (status!=MS::kSuccess)
        return false;
    else
        return true;
}

//------------------------------------------------------------------------------------
// ::Process returns an array of toollib multipass material names.  The array
// corresponds to the shader array that would be returned using the input MFnMesh
// and the getConnectedShaders(instanceNum, shaderArray, polyShaderIndex) routine.
// This allows polygon to material name mapping using the polyShaderIndex array
// Materials are stored in the tlInventory passed in.
MStringArray MaterialProcess::Process( const MDagPath& path, int instanceNumber, tlInventory* tlInv, MStatus* pStatus)
{
    MStatus status;
    //MDagPath path;
    MStringArray materialNames;

    MObjectArray shaderArray;
    MIntArray polyShaderIndex;

    MFnMesh                     fnMesh( path, &status );
    if ( status == MS::kSuccess )
    {
//        try
//        {
//            status = fnMesh.getConnectedShaders(instanceNumber, shaderArray, polyShaderIndex);
//        }
//        catch ( ... )
//        {
//    //        MGlobal::displayError( "!! EXCEPTION THROWN !! MFnMesh::getConnectedShaders() -> " + mesh.fullPathName() );
//            gExportLog.Add( CExportLogEntry( ExportLog::kGetConnectedShadersException, path ) );
//            status = MS::kFailure;
//        }
//
//        if (status != MS::kSuccess)
//        {
//            MGlobal::displayError("ERROR: MFnMesh::getConnectedShaders - failed");
//            if ( pStatus != NULL )
//            {
//                *pStatus = status;
//            }
//            return materialNames;
//        }

        status = MShadingGroup::GetAssignedShaders( path, instanceNumber, shaderArray, polyShaderIndex );
        if ( status != MS::kSuccess )
        {
            if ( pStatus != NULL ) *pStatus = status;
            gExportLog.Add( CExportLogEntry( ExportLog::kGetConnectedShadersException, path ) );
            return materialNames;
        }

        // Loop through all the sets.  If the set is a polygonal set, find the
        // shader attached to the and print out the texture file name for the
        // set along with the polygons in the set.
        //

        unsigned int i;
        for ( i=0; i < shaderArray.length(); i++ )
        {
            MObject shaderNodeSet = shaderArray[i];

            //cout << "Shader Node Set Name: " << MFnDependencyNode(shaderNodeSet).name() << endl;

            // process shader for materials

            // First, get the shading node connected to the set.
            MObject shaderNode = FindShader(shaderNodeSet);
            if (shaderNode == MObject::kNullObj)
            {
                materialNames.append( "" );
                continue;
            }

            MString matName = StoreShader(shaderNode, path, tlInv, &status);
            if ( status != MS::kSuccess ) break;

            materialNames.append( matName );

            // Track Materials visited by Export so they can be queried for Game Attributes (i.e. tlGameAttrChunk).
            SceneNode::AddUniqueMaterialNode( matName.asChar() );

            if ( IsExportingCanceled() )
            {
                status = MS::kFailure;
                break;
            }
    //        if (tlInv == NULL) continue;
        }

        // don't bother spewing this error if something else went wrong first.
        if ( ( status == MS::kSuccess ) && ( materialNames.length() != shaderArray.length() ) )
        {
            MGlobal::displayError("Error: Number of material names does not match shader array length");
        }
    }

    if ( pStatus != NULL )
    {
        *pStatus = status;
    }

    return materialNames;
}

//===========================================================================
// MaterialProcess::StoreShader
//===========================================================================
// Description: Builds a tlShader and adds it to the Pure3D Inventory.
//              If the specified Shader is already in the Inventory, it
//              is not added again.
//
// Constraints: 
//
//  Parameters: MObject& shaderNode: The Maya shader node.
//              const MDagPath& path: Path for the object being shaded.
//              tlInventory* inv: Pointer to inventory; tlShader is stored here.
//              MStatus* pStatus: Storage for return status; may be NULL.
//
//      Return: (MString): The name of the shader in Inventory. NOTE: This 
//                         will be the *decorated* name, as constructed in
//                         ExporterOptions::BuildShaderName().
//
//===========================================================================
MString MaterialProcess::StoreShader(MObject& shaderNode, const MDagPath& path, tlInventory* inv, MStatus* pStatus)
{
    MStatus                     status = MS::kSuccess;

    bool bShaderStored = false;

    MFnDependencyNode fnShader( shaderNode, &status);
    if (status != MS::kSuccess)
    {
        MGlobal::displayError( "ERROR: Not a Dependency node: " + fnShader.name() );
        if ( pStatus != NULL ) *pStatus = status;

        return MString("");
    }

    MString shaderName = MString(ExporterOptions::BuildNodeName(fnShader.name()));

    // Build decorated name for Shader
    char decoratedName[256];
    if ( ExporterOptions::BuildShaderName( shaderName.asChar(), decoratedName ) ) shaderName = decoratedName;

    // ** Allocates new shader **
    tlShader* shader = BuildPDDIShader(shaderName, fnShader, path, inv);

    if ( shader != NULL )
    {
        if ( ( !fnShader.isFromReferencedFile() || !ExporterOptions::ExportAnimReferencesOnly() ) &&
             ( ExtractTextures(shaderNode, fnShader, path, shader, inv) )
        )
        {
            if ( inv->Store(shader) == 0 ) bShaderStored = true;
        }

        if ( ExporterOptions::ExportShaderAnimations() && bShaderStored )
        {
            ShaderAnimNode* pShaderAnim = new ShaderAnimNode( shaderName, inv );
            AnimNode::AddNode( pShaderAnim );
        }

        // If new Shader was allocated BUT was not stored in inventory then DELETE it!
        // MEMORY LEAK PATCH: 03 Jun 2002
        if ( !bShaderStored )
        {
            delete shader;
            shader = NULL;
        }
    }
    else
    {
        shaderName.clear();

        CDEBUG << "!! MaterialProcess::StoreShader FAILED !!" << endl;
        status = MS::kFailure;
    }

    if ( pStatus != NULL ) *pStatus = status;
    return shaderName;
}

// This function should be split up into smaller parts

bool
MaterialProcess::ExtractTextures(MObject& shaderNode,
                                            MFnDependencyNode& fnShader,
                                            const MDagPath& path,
                                            tlShader* shader,
                                            tlInventory* inv)
{
    // Create a texture extractor and set it up
    TextureExtract tex_extractor;
    tex_extractor.SetInventory(inv);
    tex_extractor.SetObjectDAGPath( path );

    int procTexWidth;
    int procTexHeight;
    ProceduralResolution(fnShader, procTexWidth, procTexHeight);
    tex_extractor.SetProceduralResolution(procTexWidth, procTexHeight);
    MString textureName;

    bool extracted = false;
    MPlug vPlug;
    MStatus status;
    vPlug = fnShader.findPlug("textureAttributes", &status);
    if (status == MS::kSuccess)
    {
        extracted = true;
        // textureAttributes
        MObject textureAttributesValue;
        status = vPlug.getValue(textureAttributesValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get textureAttributes value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData textureAttributes(textureAttributesValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert textureAttributes value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // texturePlugs
        MObject texturePlugsValue;
        vPlug = fnShader.findPlug("texturePlugs", &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" has no texturePlugs attribute\n");
            MGlobal::displayError(debug);
            return false;
        }
        status = vPlug.getValue(texturePlugsValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get texturePlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData texturePlugs(texturePlugsValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert texturePlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // textureAlphaPlugs
        MObject textureAlphaPlugsValue;
        vPlug = fnShader.findPlug("textureAlphaPlugs", &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" has no textureAlphaPlugs attribute\n");
            MGlobal::displayError(debug);
            return false;
        }
        status = vPlug.getValue(textureAlphaPlugsValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get textureAlphaPlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData textureAlphaPlugs(textureAlphaPlugsValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert textureAlphaPlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // textureVolumeDepthPlugs
        MObject textureVolumeDepthPlugsValue;
        vPlug = fnShader.findPlug("textureVolumeDepthPlugs", &status);
        if (status == MS::kSuccess)
        {
            status = vPlug.getValue(textureVolumeDepthPlugsValue);
        }
        MFnStringArrayData textureVolumeDepthPlugs(textureVolumeDepthPlugsValue);

        int len1 = textureAttributes.length();
        int len2 = texturePlugs.length();
        int len3 = textureAlphaPlugs.length();

        if((len1 != len2) || (len2 != len3) || (len3 != len1))
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" texture arrays have different lengths\n");
            MGlobal::displayError(debug);
            return false;
        }

        for(int a = 0; a < textureAttributes.length(); a++)
        {
            if (a<textureVolumeDepthPlugs.length())
            {
/*
                MFnDependencyNode temp;
                temp.setObject(shaderNode);
                const char* name = temp.name().asChar();
                const char* plugname = textureVolumeDepthPlugs[a].asChar();
                MPlug plug = temp.findPlug(textureVolumeDepthPlugs[a].asChar());
*/
                vPlug = fnShader.findPlug(textureVolumeDepthPlugs[a].asChar());
#ifdef MAYA3_0
                long depth = 1;
#endif
#ifdef MAYA4_0
                int depth = 1;
#endif
                vPlug.getValue(depth);
                tex_extractor.Extract(shaderNode, texturePlugs[a].asChar(), textureAlphaPlugs[a].asChar(), depth, textureName);
            }

            else
            {
//                CDEBUG << "Extracting texture for channel: " << texturePlugs[a] << endl;

                tex_extractor.Extract(shaderNode, texturePlugs[a].asChar(), textureAlphaPlugs[a].asChar(), 1, textureName);
            }
            shader->SetTextureParam(textureAttributes[a].asChar(), textureName.asChar());
        }

    }

    // Now do the same for attributes created from MEL
    vPlug = fnShader.findPlug("shaderTextureAttributes", &status);
    if (status == MS::kSuccess)
    {
        extracted = true;

        // shaderTextureAttributes
        MObject shaderTextureAttributesValue;
        status = vPlug.getValue(shaderTextureAttributesValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get shaderTextureAttributes value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData shaderTextureAttributes(shaderTextureAttributesValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert shaderTextureAttributes value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // shaderTexturePlugs
        MObject shaderTexturePlugsValue;
        vPlug = fnShader.findPlug("shaderTexturePlugs", &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" has no shaderTexturePlugs attribute\n");
            MGlobal::displayError(debug);
            return false;
        }
        status = vPlug.getValue(shaderTexturePlugsValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get shaderTexturePlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData shaderTexturePlugs(shaderTexturePlugsValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert shaderTexturePlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // shaderTextureAlphaPlugs
        MObject shaderTextureAlphaPlugsValue;
        vPlug = fnShader.findPlug("shaderTextureAlphaPlugs", &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" has no shaderTextureAlphaPlugs attribute\n");
            MGlobal::displayError(debug);
            return false;
        }
        status = vPlug.getValue(shaderTextureAlphaPlugsValue);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to get shaderTextureAlphaPlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }
        MFnStringArrayData shaderTextureAlphaPlugs(shaderTextureAlphaPlugsValue, &status);
        if (status != MS::kSuccess)
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" failed to convert shaderTextureAlphaPlugs value\n");
            MGlobal::displayError(debug);
            return false;
        }

        // shaderTextureVolumeDepthPlugs
        MFnStringArrayData shaderTextureVolumeDepthPlugs;
        vPlug = fnShader.findPlug("shaderTextureVolumeDepthPlugs", &status);
        if (status == MS::kSuccess)
        {
            MObject shaderTextureVolumeDepthPlugsValue;
            status = vPlug.getValue(shaderTextureVolumeDepthPlugsValue);
            if (status == MS::kSuccess)
            {
                status = shaderTextureVolumeDepthPlugs.setObject(shaderTextureVolumeDepthPlugsValue);
            }
        }

        int len1 = shaderTextureAttributes.length();
        int len2 = shaderTexturePlugs.length();
        int len3 = shaderTextureAlphaPlugs.length();

        if((len1 != len2) || (len2 != len3) || (len3 != len1))
        {
            MString debug;
            debug = MString("shader \"") + shader->GetName() + MString("\" shaderTexture arrays have different lengths\n");
            MGlobal::displayError(debug);
            return false;
        }

        for(int a = 0; a < shaderTextureAttributes.length(); a++)
        {
            if (a<shaderTextureVolumeDepthPlugs.length())
            {
#ifdef MAYA3_0
                long depth = 1;
#endif
#ifdef MAYA4_0
                int depth = 1;
#endif

                vPlug = fnShader.findPlug(shaderTextureVolumeDepthPlugs[a].asChar(), &status);
                vPlug.getValue(depth);
                tex_extractor.Extract(shaderNode, shaderTexturePlugs[a].asChar(), shaderTextureAlphaPlugs[a].asChar(), depth, textureName);
            }
            else
            {
                tex_extractor.Extract(shaderNode, shaderTexturePlugs[a].asChar(), shaderTextureAlphaPlugs[a].asChar(), 1, textureName);
            }
            shader->SetTextureParam(shaderTextureAttributes[a].asChar(), textureName.asChar());
        }
    }

    if(!extracted)
    {
        extracted = true;

        // This is probably a lambert shader
        tex_extractor.Extract(shaderNode, "color", "transparency", 1, textureName);
        shader->SetTextureParam("TEX", textureName.asChar());
    }

    return extracted;
}

// return the desired procedural resolution for this shader in xres and yres parameters
void
MaterialProcess::ProceduralResolution(MFnDependencyNode& fnShader, int& xres, int& yres)
{
    MStatus status;
    MPlug vPlug;
    short intVal;
    p3dShaderType shaderType = GetTypeOfShader(fnShader);
    switch (shaderType)
    {
        case PLUGIN_SHADER:
        {
            vPlug = fnShader.findPlug("proceduralXRes", &status);
            if (MS::kSuccess == status)
            {
                vPlug.getValue(intVal);
                xres = ExporterOptions::ProceduralTextureResolutionX();
                if (intVal > 0)
                {
                    xres = powersOf2i[intVal - 1];
                }
            }
            vPlug = fnShader.findPlug("proceduralYRes", &status);
            if (MS::kSuccess == status)
            {
                vPlug.getValue(intVal);
                yres = ExporterOptions::ProceduralTextureResolutionY();
                if (intVal > 0)
                {
                    yres = powersOf2i[intVal - 1];
                }
            }
        }
        break;

        case LAMBERT_SHADER:
        case PHONG_SHADER:
        case LAYERED_SHADER:
        {
            vPlug = fnShader.findPlug("p3dProceduralTexXRes", &status);
            if (MS::kSuccess == status)
            {
                vPlug.getValue(intVal);
                xres = ExporterOptions::ProceduralTextureResolutionX();
                if (intVal > 1)
                {
                    xres = (1 << (intVal - 1));
                }
            }
            vPlug = fnShader.findPlug("p3dProceduralTexYRes", &status);
            if (MS::kSuccess == status)
            {
                vPlug.getValue(intVal);
                yres = ExporterOptions::ProceduralTextureResolutionY();
                if (intVal > 1)
                {
                    yres = (1 << (intVal - 1));
                }
            }
        }
        break;
    }
}

tlShader*
MaterialProcess::BuildPDDIShaderFromPluginShader(   MString& shaderName,
                                                    MFnDependencyNode& fnShader,
                                                    const MDagPath& path,
                                                    tlInventory* tlInv )
{
    MStatus status;
    MPlug vPlug = fnShader.findPlug("pddiShaderName", &status);
    if (status != MS::kSuccess)
    {
        MGlobal::displayError("ERROR: Invalid pure3d Shader! " + fnShader.name() + " has no pddiShaderName attribute!");
        return NULL;
    }

    MString pddiShaderName;
    vPlug.getValue(pddiShaderName);

    MString debug;

    tlShader* shader = new tlShader();
    shader->SetName( shaderName.asChar() );
    shader->SetShaderType(pddiShaderName.asChar());

    // Special-case for p3dReflectShader - may be configured to "environment" or "spheremap"
    bool bIsReflectSphereMap = false;
    if ( pddiShaderName == "environment" )
    {
        int reflectType;
        MPlug reflectTypePlug = fnShader.findPlug( "reflectType" );
        reflectTypePlug.getValue( reflectType );
        if ( reflectType == 1 ) // "spheremap" type
        {
            bIsReflectSphereMap = true;
            shader->SetShaderType( "spheremap" );
        }
    }

    vPlug = fnShader.findPlug("vertexShaderName", &status);
    if (status == MS::kSuccess)
    {
        MString vertexShaderName;
        vPlug.getValue(vertexShaderName);
        shader->SetVertexShader(vertexShaderName.asChar());
    }

    bool isShaderTranslucent = false;
    vPlug = fnShader.findPlug("isTranslucent", &status);
    if (status == MS::kSuccess)
    {
        vPlug.getValue(isShaderTranslucent);
    }
    shader->SetTranslucency(isShaderTranslucent);

#ifdef MAYA3_0
    long vertvalue;
#endif
#ifdef MAYA4_0
    int vertvalue;
#endif
    vPlug = fnShader.findPlug("vertexNeeds", &status);
    if (status == MS::kSuccess)
    {
        vPlug.getValue(vertvalue);
        shader->SetVertexNeeds(vertvalue);
    }
    vPlug = fnShader.findPlug("vertexMask", &status);
    if (status == MS::kSuccess)
    {
        vPlug.getValue(vertvalue);
        shader->SetVertexMask(vertvalue);
    }

    vPlug = fnShader.findPlug("shaderExport", &status);
    if(!vPlug.isCompound())
    {
        MGlobal::displayError("shaderExport is not a compound attribute");
        return NULL;
    }

    unsigned int childCount = vPlug.numChildren();

    for(unsigned int i = 0; i < childCount ; i++)
    {
        MPlug child = vPlug.child(i);

        // Okay, now we have the child, we just need to get it's attribute name,
        // and it's contents

        ExtractAttribute(child, shader);
    }

    vPlug = fnShader.findPlug("shaderAttributes", &status);
    if (status == MS::kSuccess)
    {
        // Found a plugin shader attribute array

        //addAttr -dt stringArray -ln shaderAttributes pure3dSimpleShader1;
        //setAttr pure3dSimpleShader1.shaderAttributes -type stringArray 3 "TST1" "TST2" "TST3";
        //addAttr -ln TST1 -at double  -dv 1.2 pure3dSimpleShader1;
        //addAttr -ln TST3 -at bool  pure3dSimpleShader1;

        //debug = MString("shader \"") + shaderName + MString("\" has custom attributes\n");
        //MGlobal::displayInfo(debug);

        MObject value;
        vPlug.getValue(value);
        MFnStringArrayData shaderAttributes(value);

        for(int a = 0; a < shaderAttributes.length(); a++)
        {
            debug = MString("Attribute \"") + shaderAttributes[a] + MString("\"\n");
            MGlobal::displayInfo(debug);
            vPlug = fnShader.findPlug(shaderAttributes[a], &status);
            if (status == MS::kSuccess)
            {
                ExtractAttribute(vPlug, shader);
            } else {
                debug = MString("Attribute \"") + shaderAttributes[a] + MString("\" not found...\n");
                MGlobal::displayWarning(debug);
            }
        }
    }

    // Special case for 'toon' shader and toon outline
    if ( pddiShaderName == "toon" )
    {
        float twth = shader->GetFloatParam( "TWTH" );

        // Get bounding volume for mesh
        MFnMesh fnMesh( path );
        MBoundingBox bbox = fnMesh.boundingBox();
        MVector mx = bbox.max() * SceneNode::UIScale();

        twth = mx.length() * twth / 10.0;

        shader->SetFloatParam( "TWTH", twth );
    }

    return shader;
}

void
MaterialProcess::ExtractAttribute(MPlug& plug, tlShader* shader)
{
    MObject attribute = plug.attribute();

    // for now, assume it's numeric
    MFnNumericAttribute fnAttrib(attribute);

    switch(fnAttrib.unitType())
    {
        case MFnNumericData::kBoolean:
        {
            bool value;
            plug.getValue(value);
            shader->SetIntParam(fnAttrib.name().asChar(), (int)value);
        }
        break;
        case MFnNumericData::kShort:
        {
            short value;
            plug.getValue(value);
            shader->SetIntParam(fnAttrib.name().asChar(), value);
        }
        break;
        case MFnNumericData::kLong:
        {
        #ifdef MAYA3_0
            long value;
        #endif
        #ifdef MAYA4_0
            int value;
        #endif

            plug.getValue(value);
            shader->SetIntParam(fnAttrib.name().asChar(), value);
        }
        break;
        case MFnNumericData::kFloat:
        {
            float value;
            plug.getValue(value);
            shader->SetFloatParam(fnAttrib.name().asChar(), value);
        }
        break;

        case MFnNumericData::kDouble:
        {
            double value;
            plug.getValue(value);
            shader->SetFloatParam(fnAttrib.name().asChar(), static_cast<float>(value) );
        }
        break;
        case MFnNumericData::k3Float:
        {
            tlColour colour;
            if(plug.numChildren() == 3)
            {
                plug.child(0).getValue(colour.red);
                plug.child(1).getValue(colour.green);
                plug.child(2).getValue(colour.blue);
            }else{
                MGlobal::displayInfo("Colour Attribute doesn't have 3 components!");
            }

            // Special case for emissiveAlpha
            MStatus status;
            MString name = plug.name();
            MStringArray split;
            name.split( '.', split );
            if ( split[1] == "EMIS" )
            {
                MFnDependencyNode           fnDependNode( plug.node() );
                MPlug alphaPlug = fnDependNode.findPlug( "emissiveAlpha", &status );
                if ( status == MS::kSuccess )
                {
                    alphaPlug.getValue( colour.alpha );
                }
            }

            shader->SetColourParam(fnAttrib.name().asChar(), colour);
        }
        break;
    }
}

tlShader*
MaterialProcess::BuildPDDIShaderFromLambertShader( MString& shaderName,
                                                   MFnDependencyNode& fnShader,
                                                   const MDagPath& path,
                                                   tlInventory* tlInv, bool lambert )
{
    tlSimpleShader* shader = new tlSimpleShader();  // SOURCE OF MEMORY LEAK: 31 May 2002
    shader->SetName( shaderName.asChar() );
    shader->SetShaderType("simple");

    MString debug;
    //debug = MString("PDDI shader \"") + shaderName + MString("\" : simple\n");
    //MGlobal::displayInfo(debug);

    MStatus stat;

    bool    boolVal;
    short   intVal;

    MPlug vPlug;
    MFnLambertShader lambertFn(fnShader.object());

    // p3d lit
    vPlug = lambertFn.findPlug("p3dLit", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(boolVal);
        shader->SetIsLit(boolVal);
        if(boolVal)
        {
            shader->SetVertexNeeds(shader->VertexNeeds() | PDDI_V_NORMAL);
            shader->SetVertexMask(shader->VertexMask() & ~PDDI_V_COLOUR);
        }else{
            shader->SetVertexNeeds(shader->VertexNeeds() | PDDI_V_COLOUR);
            shader->SetVertexMask(shader->VertexMask() & ~PDDI_V_NORMAL);
        }
    }

    // p3d shade mode
    vPlug = lambertFn.findPlug("p3dShadeMode", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(intVal);
        shader->SetShadeMode(intVal);
    }

    // p3d blend mode
    vPlug = lambertFn.findPlug("p3dBlendMode", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(intVal);
        shader->SetBlendMode(intVal);
        if(intVal != PDDI_BLEND_NONE)
        {
            shader->SetTranslucency(true);
        }
    }

    // Added by Bryan Ewert on 06 Mar 2002
    // Lambert conversions support 1 UVSet.
    shader->SetVertexNeeds( ( shader->VertexNeeds() & ~PDDI_V_UVMASK ) | 1 );

    //  p3d UV mode
    vPlug = lambertFn.findPlug("p3dUVMode", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(intVal);
        shader->SetUVMode(intVal);
    }

    //  p3d Filter Mode
    vPlug = lambertFn.findPlug("p3dFilterMode", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(intVal);
        shader->SetFilterMode(intVal);
    }

    // P3d Alpha test
    vPlug = lambertFn.findPlug("p3dAlphaTest", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(boolVal);
        shader->SetAlphaTest(boolVal);
    }

    // p3d Alpha Compare mode
    vPlug = lambertFn.findPlug("p3dAlphaCompareMode", &stat);
    if (MS::kSuccess == stat)
    {
        vPlug.getValue(intVal);
        shader->SetAlphaCompare(intVal);
    }

    float factor = 1.0;
    float specintense = 0.0;
    float rolloff = 0.0;
    float shiny=0.0;
    float transparency[3];
    float diffuse[3];
    float emission[3];
    float color[3];
    float ambient[3];
    float specular[3];

    //lambert material
    if (lambert)
    {
        //
        // Standard maya values
        //
        MColor mcolor;
        mcolor = lambertFn.color(&stat);
        mcolor.get(color);

        // Diffuse in Maya becomes diffuse coefficient... confirm...
        //
        float factor = lambertFn.diffuseCoeff(&stat);

        // Calculate diffuse value
        //
        for(int i = 0; i < 3; i++)
        {
            diffuse[i] = factor * color[i];
        }

        MColor mincan;
        mincan = lambertFn.incandescence(&stat);
        mincan.get(emission);

        MColor mtrans;
        mtrans = lambertFn.transparency(&stat);
        mtrans.get(transparency);

        MColor mambient;
        mambient = lambertFn.ambientColor(&stat);
        mambient.get(ambient);

        MString connected;
        TextureLayer::TextureConnectionType type;
        if (TextureExtract::GetConnection(shaderName, MString("color"), connected, type))
        {
            shader->SetDiffuse(tlColour(factor,factor,factor,1.0f));
        }
        else
        {
            shader->SetDiffuse(tlColour(diffuse[0],diffuse[1],diffuse[2],1.0f));
        }
        shader->SetAmbient(tlColour(ambient[0],ambient[1],ambient[2]));
        shader->SetEmissive(tlColour(emission[0],emission[1],emission[2]));
        shader->SetShininess(0.0f);
        shader->SetSpecular(tlColour(0.0f,0.0f,0.0f));
    }
    //phong material
    else
    {
        MFnPhongShader phongFn(fnShader.object());

        MColor mcolor;
        mcolor = phongFn.color(&stat);
        mcolor.get(color);

        // Diffuse in Maya becomes diffuse coefficient... confirm...
        //
        factor = phongFn.diffuseCoeff(&stat);

        // Calculate diffuse value
        //
        for(int i = 0; i < 3; i++)
        {
            diffuse[i] = factor * color[i];
        }

        MColor mincan;
        mincan = phongFn.incandescence(&stat);
        mincan.get(emission);

        MColor mtrans;
        mtrans = phongFn.transparency(&stat);
        mtrans.get(transparency);

        MColor mambient;
        mambient = phongFn.ambientColor(&stat);
        mambient.get(ambient);

        MColor mspecular;
        mspecular = phongFn.specularColor(&stat);
        mspecular.get(specular);
        specintense = phongFn.reflectivity(&stat);

        MString connected;
        TextureLayer::TextureConnectionType type;
        if (TextureExtract::GetConnection(shaderName, MString("color"), connected, type))
        {
            shader->SetDiffuse(tlColour(factor,factor,factor,1.0f));
        }
        else
        {
            shader->SetDiffuse(tlColour(diffuse[0],diffuse[1],diffuse[2],1.0f));
        }
        shader->SetAmbient(tlColour(ambient[0],ambient[1],ambient[2]));
        shader->SetEmissive(tlColour(emission[0],emission[1],emission[2]));
        shader->SetShininess(phongFn.cosPower());
        shader->SetSpecular(tlColour(specular[0]*specintense,specular[1]*specintense,specular[2]*specintense));
    }

    unsigned long supportedUVSets = shader->VertexMask() & PDDI_V_UVMASK;
    unsigned long neededUVSets = shader->VertexNeeds() & PDDI_V_UVMASK;

    return shader;
}

tlShader*
MaterialProcess::BuildPDDIShaderFromLayeredShader( MString& shaderName,
                                                   MFnDependencyNode& fnShader,
                                                   const MDagPath& path,
                                                   tlInventory* tlInv )
{
    tlSimpleShader* shader = new tlSimpleShader();
    shader->SetName( shaderName.asChar() );

    shader->SetShaderType("simple");

    MString debug;
    //debug = MString("PDDI shader \"") + shaderName + MString("\" : simple\n");
    //MGlobal::displayInfo(debug);

    shader->SetDiffuse(tlColour(0.5f,0.5f,0.5f,0.0f));
    shader->SetAmbient(tlColour(0.5f,0.5f,0.5f));
    shader->SetEmissive(tlColour(0.0f,0.0f,0.0f));
    shader->SetShininess(0.0f);
    shader->SetSpecular(tlColour(0.0f,0.0f,0.0f));
    return shader;
}

tlShader*
MaterialProcess::BuildPDDIShader(MString& shaderName,
                                            MFnDependencyNode& fnShader,
                                            const MDagPath& path,
                                            tlInventory* tlInv)
{
    MStatus status;
    MPlug   vPlug;

    switch (GetTypeOfShader(fnShader))
    {
        case PLUGIN_SHADER:
        {
            return BuildPDDIShaderFromPluginShader(shaderName, fnShader, path, tlInv);
        }
        break;

        case LAMBERT_SHADER:
        {
            return BuildPDDIShaderFromLambertShader(shaderName, fnShader, path, tlInv, true);
        }
        break;
        case PHONG_SHADER:
        {
            return BuildPDDIShaderFromLambertShader(shaderName, fnShader, path, tlInv, false);
        }
        break;
        case LAYERED_SHADER:
        {
            return BuildPDDIShaderFromLayeredShader(shaderName, fnShader, path, tlInv);
        }
        break;
    }
    return NULL;
}

