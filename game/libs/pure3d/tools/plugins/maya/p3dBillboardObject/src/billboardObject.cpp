//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "billboardObject.hpp"

#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include <maya/MDGMessage.h>
#include <maya/MFnDependencyNode.h>
#include <windows.h>
#include "billboardObjectShape.hpp"
#include "billboardObjectUtility.hpp"
#include "billboardObjectConstants.hpp"


MStatus initializePlugin( MObject obj )
{ 
    char version_str[256]; 

    GetModuleFileName(GetModuleHandle("p3dBillboardObject.mll"), version_str, 256);
    DWORD version_len, zero_ptr;
    version_len = GetFileVersionInfoSize(version_str, &zero_ptr);
    char* version_data = new char[version_len];
    GetFileVersionInfo(version_str, 0, version_len, version_data);
    VS_FIXEDFILEINFO* vsffi;
    UINT vsffi_len;
    VerQueryValue(version_data, "\\", (void**)(&vsffi), &vsffi_len);
    sprintf(version_str, "%d.%d", (vsffi->dwFileVersionMS >> 16),
                                            (vsffi->dwFileVersionMS & 0x0ffff));
    delete version_data;

    
    MFnPlugin plugin( obj, "Radical Entertainment", version_str, "Any");
    MStatus status;

    status = plugin.registerShape( "p3dBillboardQuadShape", PBO::p3dBillboardQuadShape::id,
                                    &PBO::p3dBillboardQuadShape::creator,
                                    &PBO::p3dBillboardQuadShape::initialize,
                                    &PBO::p3dBillboardQuadShapeUI::creator  );
    if (!status) 
    {
      status.perror("register p3dBillboardQuadShape");
      return status;
    }

    status = plugin.registerShape( "p3dBillboardQuadGroupShape", PBO::p3dBillboardQuadGroupShape::id,
                                    &PBO::p3dBillboardQuadGroupShape::creator,
                                    &PBO::p3dBillboardQuadGroupShape::initialize,
                                    &PBO::p3dBillboardQuadGroupShapeUI::creator  );
    if (!status) 
    {
      status.perror("register p3dBillboardQuadGroupShape");
      return status;
    }

    plugin.registerCommand("p3dBillboardObject_GetShapeNodeCmd",PBO::getShapeNodeCmd::creator);
    if (!status) 
    {
      status.perror("register p3dBillboardObject_GetShapeNodeCmd");
      return status;
    }

    plugin.registerCommand("p3dBillboardObject_GetTransformNodeCmd",PBO::getTransformNodeCmd::creator);
    if (!status) 
    {
      status.perror("register p3dBillboardObject_GetTransformNodeCmd");
      return status;
    }

    MString command;
    command = MString( "source p3dBillboardObjectInstall;\n evalDeferred \"p3dBillboardObject_Install\"" ); // mel script in scripts/other
    MStatus statusOfGUI;
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install billboard object specific interfaces!\n");
    }

    return MS::kSuccess;
}

MStatus uninitializePlugin( MObject obj)
{
    MFnPlugin plugin( obj );
    MStatus status;

    status = plugin.deregisterNode( PBO::p3dBillboardQuadShape::id );
    if (!status) 
    {
      status.perror("deregister p3dBillboardQuadShape");
      return status;
    }

    status = plugin.deregisterNode( PBO::p3dBillboardQuadGroupShape::id );
    if (!status) 
    {
      status.perror("deregister p3dBillboardQuadGroupShape");
      return status;
    }

    status = plugin.deregisterCommand("p3dBillboardObject_GetShapeNodeCmd");
    if (!status) 
    {
      status.perror("deregister p3dBillboardObject_GetShapeNodeCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dBillboardObject_GetTransformNodeCmd");
    if (!status) 
    {
      status.perror("deregister p3dBillboardObject_GetTransformNodeCmd");
      return status;
    }

    return MS::kSuccess;
}
