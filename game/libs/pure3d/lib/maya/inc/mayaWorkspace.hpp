//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     18 April, 2002
// Modified:    18 April, 2002
// Version:     
//
// Component:   mayaWorkspace.hpp
//
// Description: A C++ wrapper class for Maya's "workspace"
//              MEL command, since the API doesn't offer access to this
//              information.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYAWORKSPACE_H  
#define __MAYAWORKSPACE_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MString.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

enum WorkspaceObjectTypeEnum
{
    kObjectScene = 0,

    kNumWorkspaceObjectTypes
};

static const char* WorkspaceObjectTypes[kNumWorkspaceObjectTypes] =
{
    "scene"
};

enum WorkspaceRenderTypeEnum
{
    kRenderImages = 0,
    kRenderSourceImages,
    kRenderClips,
    kRenderAudio,
    kRenderParticles,
    kRenderScenes,
    kRenderDepth,
    kRenderIPRImages,
    kRenderLights,
    kRenderTextures,
    kRenderMEL,

    kNumWorkspaceRenderTypes
};

static const char* WorkspaceRenderTypes[kNumWorkspaceRenderTypes] = 
{
    "images",
    "sourceImages",
    "clips",
    "audio",
    "particles",
    "renderScenes",
    "depth",
    "iprImages",
    "lights",
    "textures",
    "mel"
};

enum WorkspaceFileRuleEnum
{
    kFileDXF = 0,
    kFileDXFexport,
    kFileEPS,
    kFileIGES,
    kFileIGESexport,
    kFileIllustrator,
    kFileOBJ,
    kFileOBJexport,
    kFileRIB,
    kFileRIBexport,
    kFileAliasWire,
    kFileAnimExport,
    kFileAnimImport,
    kFileDiskCache,
    kFileExploreGeo,
    kFileImage,
    kFileMEL,
    kFileMove,
    kFileParticles,
    kFilePure3D,

    kNumWorkspaceFileRules
};

static const char* WorkspaceFileRules[kNumWorkspaceFileRules] =
{
    "DXF",
    "DXFexport",
    "EPS",
    "IGES",
    "IGESexport",
    "Illustrator",
    "OBJ",
    "OBJexport",
    "RIB",
    "RIBexport",
    "aliasWire",
    "animExport",
    "animImport",
    "diskCache",
    "exploreGeo",
    "image",
    "mel",
    "move",
    "particles",
    "pure3D"
};


//===========================================================================
// Interface Definitions
//===========================================================================

class CMayaWorkspace
{
// Constructor / Destructor
public:
    CMayaWorkspace();
    ~CMayaWorkspace();

public:
    static const char*          CurrentWorkspace();

    static void                 BuildPathFromWorkspace( WorkspaceRenderTypeEnum type, const char* inPath, char* outPath, size_t outPathSize );

protected:
    static void                 BuildPathFromWorkspace( const char* workspace, const char* inPath, char* outPath, size_t outPathSize );
    static void                 FixPathForMaya( char* path );

private:
    static MString              mCurrentWorkspace;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MAYAWORKSPACE_H  
