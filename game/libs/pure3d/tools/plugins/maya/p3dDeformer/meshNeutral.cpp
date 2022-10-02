/*===========================================================================
    p3dDeformer/meshNeutral.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MGlobal.h>
#include <maya/MItGeometry.h>
#include <maya/MDistance.h>
#include <maya/MPoint.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MVectorArray.h>
#include <maya/MFloatArray.h>
#include <maya/MPlugArray.h>
#include <maya/MVector.h>

#include "common.hpp"
#include "utility.hpp"
#include "meshNeutral.hpp"

MTypeId p3dDeformMeshNeutral::id(0x040183);

MObject p3dDeformMeshNeutral::offsets;


p3dDeformMeshNeutral::p3dDeformMeshNeutral()
{
}


p3dDeformMeshNeutral::~p3dDeformMeshNeutral()
{
}


void* p3dDeformMeshNeutral::creator()
{
    return new p3dDeformMeshNeutral();
}


MStatus p3dDeformMeshNeutral::initialize()
{
    MFnTypedAttribute attr;
    
    // offsets
    offsets = attr.create("offsets", "ofs", MFnData::kVectorArray);
    attr.setReadable(true);
    attr.setWritable(true);
    attr.setStorable(true);
    attr.setKeyable(false);

    MStatus status;

    status = addAttribute(offsets);
    P3D_DEFORM_STATUS(status);

    status = attributeAffects(p3dDeformMeshNeutral::offsets,
                                      p3dDeformMeshNeutral::outputGeom);
    P3D_DEFORM_STATUS(status);

    return MS::kSuccess;
}


MStatus p3dDeformMeshNeutral::deform(MDataBlock& block,
                                                 MItGeometry& itor,
                                                 const MMatrix&,
                                                 unsigned int)
{
    MStatus status;

    MDataHandle ofsData = block.inputValue(offsets, &status);
    P3D_DEFORM_STATUS(status);

    MFnVectorArrayData ofsArray(ofsData.data(), &status);
    if (!status)
    {
        // data was null, which is valid at creation time
        return MS::kSuccess;
    }

    unsigned vtxCount = ofsArray.length(&status);
    P3D_DEFORM_STATUS(status);
    
    long itorCount = itor.count(&status);
    P3D_DEFORM_STATUS(status);

    if (vtxCount > (unsigned)itorCount)
    {
        vtxCount = (unsigned)itorCount;
    }

    // set vertex positions
        
    for (unsigned i = 0; i < vtxCount; ++i)
    {
        MPoint p = itor.position(MSpace::kObject, &status);
        P3D_DEFORM_STATUS(status);
    
        
        
        MVector offset = ofsArray[i];

        // set mesh vertex position
        MPoint p_tweak = p;
        p_tweak.x += MDistance::uiToInternal(offset.x);
        p_tweak.y += MDistance::uiToInternal(offset.y);
        p_tweak.z += MDistance::uiToInternal(offset.z);

        status = itor.setPosition(p_tweak, MSpace::kObject);
        P3D_DEFORM_STATUS(status);
        
        status = itor.next();
        P3D_DEFORM_STATUS(status);
    }

    return MS::kSuccess;
}


// End of file.

