/*===========================================================================
    meshprocess.cpp
    created: Jan 21, 2000
    Greg Mayer

    Copyright (c) 2000-2001 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#pragma warning( disable : 4786 )   // that annoying "identifier was truncated in the debug information" warning.

#include <maya/MFnMesh.h>
#include <maya/MFnSkinCluster.h>
#include <maya/MFloatPointArray.h>
#include <maya/MIntArray.h>
#include <maya/MGlobal.h>
#include <maya/MDagPath.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MPointArray.h>
#include <maya/MDistance.h>
#include <maya/MFnSet.h>
#include <maya/MSelectionList.h>
#include <maya/MDagPathArray.h>

#include "tlTriangle.hpp"
#include "tlTriMesh.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlVertex.hpp"
#include "tlIndexedVertex.hpp"
#include "tlIndexedSkinVertex.hpp"
#include "tlSkin.hpp"
#include "tlShader.hpp"

#include "meshprocess.hpp"
#include "exporterutility.hpp"
#include "exportFunctions.hpp"
#include "deformerExpression.hpp"
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

//------------------------
MeshProcess::MeshProcess(tlInventory *inv) :
    mInventory(inv)
{
    mMaterialProcessor = new MaterialProcess;
}


//-------------------------
MeshProcess::~MeshProcess()
{
    delete mMaterialProcessor;
}


//*******************************************************
//
// Mesh Process
// Append Tri Mesh
//
//
bool MeshProcess::AppendTriMesh(tlTriMesh *mesh1, tlTriMesh *mesh2, bool delete_appended)
{

    // get the faces table from the new mesh
    const tlTable<tlTriangle*> &faces = mesh2->GetFaces();

    // compute the new size of the final_mesh so that there is only one resize
    int new_size = mesh1->GetFaces().Count() + faces.Count();
    mesh1->Resize(new_size);

    // add the new mesh to the final mesh
    int i;
    for (i = 0; i < faces.Count(); i++)
    {
        if (delete_appended) mesh1->AddFace(faces[i]);
        else
        {
            tlTriangle *newtri = new tlTriangle(faces[i]);
            mesh1->AddFace(newtri);
        }
    }

    if (delete_appended) delete mesh2; // does not delete the faces

    return true;
}


int compare(const void* str1, const void* str2)
{
    return stricmp(*(const char**)str1, *(const char**)str2);
}


//*******************************************************
//
// Mesh Process
// Build Tri Mesh
//
//
tlTriMesh *MeshProcess::BuildTriMesh(const MDagPath &meshpath, int mesh_index, bool isSkin, tlTable<tlIndexedSkinVertex *> **vertex_lookup, MStatus* pStatus)
{
    MStatus                     status = MS::kSuccess;

    MFnMesh                     fnMesh(meshpath);
    int instance = meshpath.instanceNumber();
    char *meshname = ExporterOptions::BuildNodeName( fnMesh.name() );
    MString fullPathName = meshpath.fullPathName();

    if ( fnMesh.numPolygons() < 1 )
    {
//        MString msg;
//        msg = "Warning: Mesh ";
//        msg += meshpath.fullPathName();
//        msg += " has no polygons.  It will be ignored.\n";
//        MGlobal::displayWarning(msg);
            gExportLog.Add( CExportLogEntry( ExportLog::kInvalidGeometry, meshpath ) );
        
        if ( pStatus != NULL )
        {
            *pStatus = status;
        }

        return NULL;
    }

    MStringArray materialNameList = mMaterialProcessor->Process( meshpath, instance, mInventory, &status);
    if ( status != MS::kSuccess )
    {
        if ( pStatus != NULL ) *pStatus = status;
        return NULL;
    }
    
    //the above line may have changed the time (for texture animations, etc.)
    //we need to reset the deformer before we get the mesh points
    
    DeformerExpression::ResetMixer();

    // If Maya's time has been changed then the MDagPath and MObject handles it gave us originally may
    // have become invalid.  Re-acquire to ensure they are valid.
    MSelectionList              shits;
    status = MGlobal::getSelectionListByName( fullPathName, shits );
    if ( status != MS::kSuccess ) CDEBUG << " !! MeshProcess::BuildTriMesh -> FAILED to re-acquire DagPath !! " << endl;
    MDagPath                    giggles;
    shits.getDagPath( 0, giggles );     // Since I'm interested in shaders, always use Instance 0
    fnMesh.setObject( giggles );

    MObjectArray   shaders;
    MIntArray      shader_poly_index;

//    //
//    // This function will BOMB if the surface is invalid.
//    // There's nothing that I can find to detect such a case,
//    // so I'll just catch the bomb and carry on.
//    // From Bryan Ewerts other code =)
//    //
//    try
//    {
//        MFnMesh                 fnMesh( giggles, &status );
//        status = fnMesh.getConnectedShaders(instance, shaders, shader_poly_index);
//    }
//    catch ( ... )
//    {
//        status = MS::kFailure;
//        if ( pStatus != NULL ) *pStatus = status;
//        gExportLog.Add( CExportLogEntry( ExportLog::kGetConnectedShadersException, meshpath ) );
//        return NULL;
//    }

    status = MShadingGroup::GetAssignedShaders( giggles, instance, shaders, shader_poly_index );
    if ( status != MS::kSuccess )
    {
        if ( pStatus != NULL ) *pStatus = status;
        gExportLog.Add( CExportLogEntry( ExportLog::kGetConnectedShadersException, meshpath ) );
        return NULL;
    }

    if ( shaders.length() == 0 )
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kNoShadingGroup, meshpath ) );
        if ( pStatus != NULL ) *pStatus = status;
        return NULL;
    }

    // for flipping the winding order of the tris
    int reorder[3] = { 0, 2, 1 };


    if (meshpath.isInstanced() && !isSkin)
    {
        // ? will we always hit instance 0 first ?
        // shouldn't rely on this
        
        // check if there is a mesh in toollib with the standard name already
        tlPrimGroupMesh *pgmesh = toollib_find<tlPrimGroupMesh>(mInventory, meshname);
        
        if (pgmesh)
        { 
            // instances will just refer to the same mesh
            if ( pStatus != NULL ) *pStatus = status;
            return NULL;
        }
    }

    MFloatPointArray  verts;
    MFloatVectorArray normals;
    MColorArray       colours;

    status = fnMesh.getPoints(verts, MSpace::kWorld);
    bool has_verts = (status == MStatus::kSuccess);
    if (has_verts && (vertex_lookup != NULL))
    {
        (*vertex_lookup) = new tlTable<tlIndexedSkinVertex *>[verts.length()];
    }

    status = fnMesh.getNormals(normals, MSpace::kWorld);
    bool has_normals = (status == MStatus::kSuccess);

    MStringArray uvSetNames;
    int uvSets = fnMesh.numUVSets();
    if (uvSets > tlVertex::MAX_VERT_UV)
    {
//        MString msg;
//        msg = "Warning: Number of UV sets greater than maximum";
//        
//        MGlobal::displayWarning(msg);
        gExportLog.Add( CExportLogEntry( ExportLog::kMaxUVSetsExceeded, meshpath ) );
        uvSets = tlVertex::MAX_VERT_UV;
    }

    bool has_uvs = (uvSets > 0);
    status = fnMesh.getUVSetNames(uvSetNames);

    //sort UV names alphabetically
    int i;
    const size_t UVSET_NAME_MAX_CHARS = 256;
    char** tempNames = new char*[uvSets];
    for (i = 0; i < uvSets; i++)
    {
        tempNames[i] = new char[UVSET_NAME_MAX_CHARS];
        memset(tempNames[i], 0, sizeof(char)*UVSET_NAME_MAX_CHARS);
    }

    // BUG FIX!  08 Mar 2002
    // MStringArray::get() copies the _pointer_ to the element, not the data!
    // Use strcpy() instead.
    for (i =0; i < uvSets; i++)
    {
        strncpy( tempNames[i], uvSetNames[i].asChar(), (UVSET_NAME_MAX_CHARS-1) );
    }

    qsort((void*)tempNames, uvSetNames.length(), sizeof(char*), compare);

    // BUG FIX!  08 Mar 2002
    // Because of MStringArray::get() pointer-copying above, MStringArray::set()
    // was corrupting one or both arrays.
    // To be explicitly clear I'm clearing the array and rebuilding it.
    uvSetNames.clear();
    for (i =0; i < uvSets; i++)
    {
        uvSetNames.append( tempNames[i] );
    }

    // FIX MEMORY LEAK!  08 Mar 2002
    // Delete each array in tempNames
    for (i = 0; i < uvSets; i++)
    {
        delete [] tempNames[i];
    }
    delete[] tempNames;
    tempNames = NULL;
    
    // Eventually we want to be able to get the number of CBV channels from Maya.
    // For now just assume only one channel was created for this mesh.
    int colourSets = 1;

    status = fnMesh.getVertexColors(colours);
    bool has_colours = (status == MStatus::kSuccess);

    colourSets = rmt::Min(colourSets, (int)tlVertex::MAX_VERT_COLOUR); // Max number of CBV channels.

    MItMeshPolygon polyit(meshpath);

    int poly_count = fnMesh.numPolygons();

    // set the base vertexFormat flag for the mesh.
    // this could be modified on a per material basis.

    unsigned long int vertexFormat = PDDI_V_C;
    
    if(has_normals) { vertexFormat |= PDDI_V_NORMAL; }
    if(has_uvs)     { vertexFormat |= (uvSets & PDDI_V_UVMASK); }
    if(isSkin)      { vertexFormat |= PDDI_V_INDICES | PDDI_V_WEIGHTS; }
    if(has_colours) { vertexFormat |= PDDI_V_COLOUR; }
    if(colourSets > 1)
    {
        vertexFormat &= ~PDDI_V_COLOUR; // Remvoe single colour flag.
        vertexFormat |= PDDI_V_COLOUR2; // Add Multi CBV flag.
        vertexFormat |= PDDI_V_COLOUR_MASK&(colourSets<<PDDI_V_COLOUR_MASK_OFFSET); // Set the number colours.
    }

    bool bCastShadow = true;
  
    MPlug plugAttr = fnMesh.findPlug( "castsShadows", &status );
    status = plugAttr.getValue( bCastShadow );

    tlTriMesh *trimesh = new tlTriMesh;    // MEMORY LEAK FIXED: 31 May 2002
    trimesh->SetName(meshname);
    trimesh->SetCastShadow( bCastShadow );

    // this should speed things up !! :)
    trimesh->Resize(poly_count * 2); // assume worst case, all quads

    // Allocate everything before we start, and NOT in each loop!
    float2 (*uvs)[3] = new float2[uvSets][3];
    tlUV* uv = new tlUV[uvSets];
    tlColour* colour = new tlColour[colourSets];
    bool* this_poly_has_textures = new bool[uvSets];

    for (polyit.reset() ; !polyit.isDone(); polyit.next() )
    {
        int poly_index = polyit.index();
        
        if (!polyit.hasValidTriangulation())
        {
//            MString msg = "Skipping poly ";
//            msg += poly_index;
//            msg += ", has no valid triangulation!";
//            MGlobal::displayWarning(msg);
            gExportLog.Add( CExportLogEntry( ExportLog::kInvalidGeometryTriangulation, meshpath ) );
            continue;
        }

        // Confirm that this polygon is assigned to a shader
        int mat_index = shader_poly_index[poly_index];
        if ( mat_index < 0 )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kPolygonNotAssignedToShader, meshpath ) );
            continue;
        }

        int tri_count;
        polyit.numTriangles(tri_count);

        // Iterate through the triangles of this face
        int t;
        for (t = 0; t < tri_count; t++)
        {
            MPointArray unused;
            MIntArray   object_vert_index;

            status = polyit.getTriangle(t, unused, object_vert_index);
               
            int vi[3];       // vertex index
            int ni[3];       // normal index
            MColor c[3]; // vertex colours
            
            memset((void*)this_poly_has_textures, 0, sizeof(bool)*uvSets);

            // convert face relative index to mesh relative index
            int a;
            for (a = 0; a < 3; a++)
            {
                int local_index = -1;
                int b;
                for (b = 0; b < polyit.polygonVertexCount(); b++) 
                {
                    if (polyit.vertexIndex(b) == object_vert_index[a]) 
                    {
                        local_index = b;
                        break;
                    }
                }

                vi[a] = object_vert_index[a];
                if (has_normals) ni[a] = polyit.normalIndex(local_index);
                if (has_uvs)     
                {
                    for(i = 0 ; i < uvSets; i++)
                    {
                        if(polyit.hasUVs(uvSetNames[i]))
                        {
                            polyit.getUV(local_index, uvs[i][a], &uvSetNames[i]);
                            this_poly_has_textures[i] = true;
                        }
                        else
                        {
                            this_poly_has_textures[i] = false;
                        }
                    }
                }
                if (has_colours) polyit.getColor(c[a], local_index);   // I can't get the colour index
            }

            // allocate a triangle and set its material
            tlTriangle *tri = new tlTriangle;
            // Note: This will be a *decorated* name (see ExporterOptions::BuildShaderName)
            const char* matname = materialNameList[mat_index].asChar();
            tri->SetMaterial( matname );
            tlShader* shader = toollib_find<tlShader>(mInventory, matname );

            unsigned int vertexNeeds = 0;
            unsigned int vertexMask = ~0;
            unsigned int vertexUVCount = 0;
            if(shader)
            {
                vertexNeeds = shader->VertexNeeds();
                vertexMask = shader->VertexMask();
                tri->SetVertexShader(shader->GetVertexShader());
            }

            // Just filter the UV count from 'vertexNeeds'
            // and the PDDI_V_UVMASK and carry on.
            // ** NOTE: This causes a Lambert shader to have 0 UVSets.
            vertexUVCount = vertexNeeds & PDDI_V_UVMASK;
            // vertexColourCount

            tri->SetVertexFormat((((vertexFormat | vertexNeeds) & vertexMask) & ~PDDI_V_UVMASK) | vertexUVCount);

            tlPoint  coord;
            tlPoint  normal;

            // stuff vertex info
            for (a = 0; a < 3; a++)
            {
                
                // Coord XYZ
                coord.x =  verts[vi[a]].x;
                coord.y =  verts[vi[a]].y;
                coord.z = -verts[vi[a]].z; // swap handedness

                // Normal
                if (has_normals)
                {
                    normal.x =  normals[ni[a]].x;
                    normal.y =  normals[ni[a]].y;
                    normal.z = -normals[ni[a]].z; // swap handedness
                }
                else
                {
                    normal.x = 0.0F;
                    normal.y = 1.0F;
                    normal.z = 0.0F;
                }

                int i;
                // UVs
                for(i = 0; i < uvSets; i++)
                {
                    if (has_uvs && this_poly_has_textures[i])
                    {
                        uv[i].u = uvs[i][a][0];
                        uv[i].v = uvs[i][a][1];
                    }
                    else
                    {
                        uv[i].u = 0.0F;
                        uv[i].v = 0.0F;
                    }
                }

                // Colours
                for(i = 0; i < colourSets; i++)
                {
                    if (has_colours)
                    {
                        colour[i].red   = c[a].r;
                        colour[i].green = c[a].g;
                        colour[i].blue  = c[a].b;
                        colour[i].alpha = c[a].a;               
                        
                        if (colour[i].red   < 0.0F) colour[i].red   = 0.0F;
                        if (colour[i].green < 0.0F) colour[i].green = 0.0F;
                        if (colour[i].blue  < 0.0F) colour[i].blue  = 0.0F;
                        if (colour[i].alpha < 0.0F) colour[i].alpha = 0.0F;
                        
                        if (colour[i].red   > 1.0F) colour[i].red   = 1.0F;
                        if (colour[i].green > 1.0F) colour[i].green = 1.0F;
                        if (colour[i].blue  > 1.0F) colour[i].blue  = 1.0F;
                        if (colour[i].alpha > 1.0F) colour[i].alpha = 1.0F;
                    }
                    else
                    {
                        colour[i].red   = 0.5f;
                        colour[i].green = 0.5f;
                        colour[i].blue  = 0.5f;
                        colour[i].alpha = 1.0f;
                    }
                }

                tlVertex *v = NULL;
                if (isSkin) 
                {
                    tlIndexedSkinVertex *ivert = new tlIndexedSkinVertex;
                    ivert->SetVertexIndex(vi[a]);
                    ivert->SetFaceIndex( poly_index );
                    v = ivert;
                    if (vertex_lookup != NULL) (*vertex_lookup)[vi[a]].Append(ivert);
                }
                else
                {
                    tlIndexedVertex *ivert = new tlIndexedVertex;
                    ivert->SetVertexIndex(vi[a]);
                    ivert->SetFaceIndex( poly_index );
                    // FIX THIS: vi[a] isn't the uv index.  Should we still be using indexed verts?
                    // At the moment, deformers rely on indexed verts.  We should change this.
                    // Nothing seems to use the UV index though, perhaps we should remove it
                    // from the indexed vertex?
                    ivert->SetUVIndex(vi[a]);
                    v = ivert;
                }

                // stuff the vertex with the piecewise info
                v->SetCoord(coord);
                v->SetNormal(normal);
                int j;
                for(j = 0; j < colourSets; j++)
                {
                    v->SetColour(colour[j], j);
                }
                for(j = 0; j < uvSets; j++)
                {
                    v->SetUV(j, uv[j]);
                }

                // Bug fix #236: Copy the triangle vertex format to each individual vertex.
                // This is required for optimal processing within tlVertex::VertexCompare()
                v->SetVertexFormat( tri->GetVertexFormat() );

                // swap face ordering
                tri->SetVertex(reorder[a], v);
            }

            // check to see if tangents and binormals are required
            // Bug fix #492: Use _bitwise_ &/| not _logical_ &&/|| !!
            if(vertexNeeds & (PDDI_V_TANGENT | PDDI_V_BINORMAL))
            {
                tri->SetTangentBinormal();
            }
            
            // add this tri to the mesh
            trimesh->AddFace(tri);

        } // each tri in poly

    } // each poly

    // Free everything when done, and NOT in each loop!
    delete[] colour;
    delete[] uv;        // tlUV*
    delete[] uvs;       // float2*
    delete[] this_poly_has_textures;    // bool*

    trimesh->AverageCommonBinormals();

    if ( pStatus != NULL ) *pStatus = status;
    return trimesh;
}

