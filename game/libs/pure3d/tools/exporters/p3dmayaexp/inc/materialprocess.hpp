/*===========================================================================
    meshprocess.hpp
    created: Feb. 4, 2000
    Torre Zuk

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#ifndef _MATERIALPROCESS_HPP
#define _MATERIALPROCESS_HPP

#include <maya/MFnMesh.h>
#include <maya/MColor.h>

#include "tlInventory.hpp"

#include "exporteroptions.hpp"

// based on Greg M. process model

class tlShader;


// this structure holds what we extract from Maya
// it is filled and then used to create a toollib material

typedef struct
{
    float r;
    float g;
    float b;
    float a;
} MtlColor;



class MaterialProcess
{
public:
    MaterialProcess();
    ~MaterialProcess();

    // 14 Nov 2002: Interface change: No longer accepts (const char* pShaderName).
    MString StoreShader(MObject& shaderNode, const MDagPath& path, tlInventory* tlInv, MStatus* pStatus = NULL);

    bool FindShadingNode(MString shaderName, MObject& shadingNode);
    bool FindShadingNode(MObject object, MObject& shadingNode);
    MStringArray Process( const MDagPath &meshpath, int, tlInventory *inv, MStatus* pStatus = NULL );
    MString findTextureName( MObject shaderNode );

private:
    tlShader* BuildPDDIShaderFromPluginShader(MString& shaderName,
                                                            MFnDependencyNode& fnShader,
                                                            const MDagPath& path,
                                                            tlInventory* tlInv);

    tlShader* BuildPDDIShaderFromLambertShader(MString& shaderName,
                                                             MFnDependencyNode& fnShader,
                                                             const MDagPath& path,
                                                             tlInventory* tlInv, bool lambert);

    tlShader* BuildPDDIShaderFromLayeredShader(MString& shaderName,
                                                             MFnDependencyNode& fnShader,
                                                             const MDagPath& path,
                                                             tlInventory* tlInv);

    tlShader* BuildPDDIShader(MString& shaderName,
                                      MFnDependencyNode& fnShader,
                                      const MDagPath& path,
                                      tlInventory* inv);

    void ProceduralResolution(MFnDependencyNode& fnShader, int& xres, int& yres);
    bool ExtractTextures(MObject& shaderNode,
                                MFnDependencyNode& fnShader,
                                const MDagPath& path,
                                tlShader* shader,
                                tlInventory* inv);
    void ExtractAttribute(MPlug& plug, tlShader* shader);
};


#endif // _MATERIALPROCESS_HPP

