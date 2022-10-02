//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     01 November, 2002
//
// Component:   mayaShadingGroup.cpp
//
// Description: A utility class to work with Maya Shading Groups and
//              (eventually) Materials and Textures.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/mayaShadingGroup.hpp"

#include <maya/MFnMesh.h>

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



//===========================================================================
// COPY Constructor / Assignment
//===========================================================================


//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// MShadingGroup::GetAssignedShaders  (static)
//===========================================================================
// Description: Finds the _actual_ shaders assigned to a mesh object.
//              MFnMesh::getConnectedShaders() includes those that have latent
//              connections to the mesh, but don't necessarily contribute to
//              its shading.
//
//              Accessor function to private method.
//
//  Parameters: const MDagPath & obDagPath: The mesh to query.
//              int instanceNumber: Maya instance for the DAG.
//              MObjectArray & obaShadingGroups: Storage for the returned array.
//              MIntArray& indices: Face indices mapping to each Shading Group.
//
//      Return: (MStatus): The usual.
//
//===========================================================================
MStatus MShadingGroup::GetAssignedShaders( const MDagPath & obDagPath, int instanceNumber, MObjectArray& shaders, MIntArray& indices )
{
    MStatus                     status;

    shaders.clear();
    indices.clear();

    MDagPath                    obShape( obDagPath );
    if ( obShape.hasFn( MFn::kTransform ) )
    {
        obShape.extendToShape();
    }

    MFnMesh                     fnMesh( obShape, &status );
    if ( status == MS::kSuccess )
    {
        MObjectArray            obaConnectedShaders;
        MIntArray               obaFaces;
        unsigned                s;

        // This function will BOMB if the surface is invalid.
        // There's nothing that I can find to detect such a case,
        // so I'll just catch the bomb and carry on.
        try
        {
            fnMesh.getConnectedShaders( instanceNumber, obaConnectedShaders, obaFaces );
        }
        catch ( ... )
        {
            return MS::kFailure;
        }

        // Now go through all Faces and tally which Shaders are used
        MIntArray               obaShaderUseCount( obaConnectedShaders.length(), 0 );
        for ( s = 0; s < obaFaces.length(); s++ )
        {
            if ( obaFaces[s] >= 0 )     // if <0 then face has no shader assignment
            {
                obaShaderUseCount[obaFaces[s]]++;       // add 1 to use count for Shader index
            }
        }

        // Build a mapping table for the indices
        MIntArray               indexMap( obaConnectedShaders.length(), -1 );
        unsigned int map = 0;
        for ( s = 0; s < obaConnectedShaders.length(); s++ )
        {
            MFnDependencyNode               fnShader( obaConnectedShaders[s] );

            if ( obaShaderUseCount[s] > 0 )
            {
                shaders.append( obaConnectedShaders[s] );
                indexMap[s] = map++;
            }
        }

        // Remap all the indices
        for ( s = 0; s < obaFaces.length(); s++ )
        {
            indices.append( ( obaFaces[s] >= 0 ) ? indexMap[obaFaces[s]] : (-1) );
        }
    }

    return status;
}

//===========================================================================
// MShadingGroup::FindUnnecessaryShaders  (static)
//===========================================================================
// Description: Finds the shaders attached to a mesh object which aren't
//              actually assigned to the mesh.
//
//              Accessor function to private method.
//
//  Parameters: const MDagPath & obDagPath: The mesh to query.
//              int instanceNumber: Maya instance for the DAG.
//              MObjectArray & obaShadingGroups: Storage for the returned array.
//
//      Return: (MStatus): The usual.
//
//===========================================================================
MStatus MShadingGroup::FindUnnecessaryShaders( const MDagPath & obDagPath, int instanceNumber, MObjectArray & obaShadingGroups )
{
    MStatus                     status;

    obaShadingGroups.clear();

    MDagPath                    obShape( obDagPath );
    if ( obShape.hasFn( MFn::kTransform ) )
    {
        obShape.extendToShape();
    }

    MFnMesh                     fnMesh( obShape, &status );
    if ( status == MS::kSuccess )
    {
        MObjectArray            obaConnectedShaders;
        MIntArray               obaFaces;
        unsigned                s;

        // This function will BOMB if the surface is invalid.
        // There's nothing that I can find to detect such a case,
        // so I'll just catch the bomb and carry on.
        try
        {
            fnMesh.getConnectedShaders( instanceNumber, obaConnectedShaders, obaFaces );
        }
        catch ( ... )
        {
            return MS::kFailure;
        }

        // Now go through all Faces and tally which Shaders are used
        MIntArray               obaShaderUseCount( obaConnectedShaders.length(), 0 );
        for ( s = 0; s < obaFaces.length(); s++ )
        {
            if ( obaFaces[s] >= 0 )     // if <0 then face has no shader assignment
            {
                obaShaderUseCount[obaFaces[s]]++;       // add 1 to use count for Shader index
            }
        }

        for ( s = 0; s < obaShaderUseCount.length(); s++ )
        {
            if ( obaShaderUseCount[s] == 0 )
            {
                obaShadingGroups.append( obaConnectedShaders[s] );
            }
        }
    }

    return status;
}
