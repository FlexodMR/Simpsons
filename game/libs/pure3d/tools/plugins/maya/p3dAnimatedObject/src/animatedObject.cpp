//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "animatedObject.hpp"

#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include <windows.h>
#include "animatedObjectShape.hpp"
#include "animatedObjectUtility.hpp"
#include "animatedObjectConstants.hpp"

MStatus initializePlugin( MObject obj )
{ 
    char version_str[256]; 

    GetModuleFileName(GetModuleHandle("p3dAnimatedObject.mll"), version_str, 256);
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

    status = plugin.registerShape( "p3dAnimatedObjectShape", PAO::p3dAnimatedObjectShape::id,
                                    &PAO::p3dAnimatedObjectShape::creator,
                                    &PAO::p3dAnimatedObjectShape::initialize,
                                    &PAO::p3dAnimatedObjectShapeUI::creator  );
    if (!status) 
    {
      status.perror("register p3dAnimatedObjectShape");
      return status;
    }

    plugin.registerCommand("p3dAnimatedObject_GetShapeNodeCmd",PAO::getShapeNodeCmd::creator);
    if (!status) 
    {
      status.perror("register p3dAnimatedObject_GetShapeNodeCmd");
      return status;
    }

    plugin.registerCommand("p3dAnimatedObject_GetTransformNodeCmd",PAO::getTransformNodeCmd::creator);
    if (!status) 
    {
      status.perror("register p3dAnimatedObject_GetTransformNodeCmd");
      return status;
    }
    
    MString command;
    command = MString( "source p3dAnimatedObjectInstall;\n evalDeferred \"p3dAnimatedObject_Install\"" ); // mel script in scripts/other
    MStatus statusOfGUI;
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install animated object specific interfaces!\n");
    }

    return MS::kSuccess;
}

MStatus uninitializePlugin( MObject obj)
{
    MFnPlugin plugin( obj );
    MStatus status;

    status = plugin.deregisterNode( PAO::p3dAnimatedObjectShape::id );
    if (!status) 
    {
      status.perror("deregister p3dAnimatedObjectShape");
      return status;
    }

    status = plugin.deregisterCommand("p3dAnimatedObject_GetShapeNodeCmd");
    if (!status) 
    {
      status.perror("deregister p3dAnimatedObject_GetShapeNodeCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dAnimatedObject_GetTransformNodeCmd");
    if (!status) 
    {
      status.perror("deregister p3dAnimatedObject_GetTransformNodeCmd");
      return status;
    }

    return MS::kSuccess;
}
 
