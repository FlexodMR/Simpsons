//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <maya/MFnPlugin.h>
#include <maya/MMessage.h>
#include <maya/MGlobal.h>
#include <maya/MIntArray.h>
#include <windows.h>
#include "boundingShape.hpp"
#include "boundingShapeUI.hpp"
#include "boundingUtility.hpp"
#include "boundingFactoryCommands.hpp"
#include "boundingConstants.hpp"
#include "boundingVolume.hpp"
#include "p3dCloneBoundingVolume.hpp"


MStatus initializePlugin( MObject obj )
{ 

    char version_str[256];

    GetModuleFileName(GetModuleHandle("p3dBoundingVolume.mll"), version_str, 256);
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
    status = plugin.registerShape( "p3dBoundVolShape", PBV::p3dBoundVolShape::id,
                                    &PBV::p3dBoundVolShape::creator,
                                    &PBV::p3dBoundVolShape::initialize,
                                    &PBV::p3dBoundVolShapeUI::creator  );
    if (!status) 
    {
      status.perror("register Bounding Volume Shape");
      return status;
    }

    status = plugin.registerShape( "p3dBoundNodeShape", PBV::p3dBoundNodeShape::id,
                                    &PBV::p3dBoundNodeShape::creator,
                                    &PBV::p3dBoundNodeShape::initialize,
                                    &PBV::p3dBoundNodeShapeUI::creator  );
    if (!status) 
    {
      status.perror("register Bounding Node Shape");
      return status;
    }

    status = plugin.registerCommand("p3dIsBoundVolCmd",PBV::isBoundVolCmd::creator);
    if (!status) 
    {
      status.perror("register isBoundVolCmd");
      return status;
    }

    status = plugin.registerCommand("p3dIsBoundNodeCmd",PBV::isBoundNodeCmd::creator);
    if (!status) 
    {
      status.perror("register isBoundNodeCmd");
      return status;
    }

    status = plugin.registerCommand("p3dObjValidToBoundCmd",PBV::objValidToBoundCmd::creator);
    if (!status) 
    {
      status.perror("register objValidToBoundCmd");
      return status;
    }

    status = plugin.registerCommand("p3dCreateHiddenNameAttrCmd",PBV::createHiddenNameAttrCmd::creator);
    if (!status) 
    {
      status.perror("register createHiddenNameAttrCmd");
      return status;
    }

    plugin.registerCommand("p3dGetBoundShapeNodeCmd",PBV::getShapeNodeCmd::creator);
    if (!status) 
    {
      status.perror("register Get Bound Shape Node Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetBoundTransformNodeCmd",PBV::getTransformNodeCmd::creator);
    if (!status) 
    {
      status.perror("register Get Bound Transform Node Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetBoundFirstLevelKidsCmd",PBV::getBoundFirstLevelKidsCmd::creator);
    if (!status) 
    {
      status.perror("register Get First Level Kids Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetBoundTransformValuesCmd",PBV::getBoundTransformValuesCmd::creator);
    if (!status) 
    {
      status.perror("register p3dGetBoundTransformValuesCmd");
      return status;
    }

    plugin.registerCommand("p3dcreateBoundingVolumeCmd",PBV::createBoundingVolumeCmd::creator);
    if (!status) 
    {
      status.perror("register p3dcreateBoundingVolumeCmd");
      return status;
    }

    plugin.registerCommand("p3dCloneBoundingVolumeCmd", PBV::p3dCloneBoundingVolumeCmd::creator);
    if (!status) 
    {
      status.perror("register Clone Bounding Volume Cmd");
      return status;
    }

    plugin.registerCommand("p3dcreateBoundingVolumeFromSelectedComponentsCmd",PBV::createBoundingVolumeFromSelectedComponentsCmd::creator);
    if (!status) 
    {
      status.perror("register p3dcreateBoundingVolumeFromSelectedComponentsCmd");
      return status;
    }
    
    plugin.registerCommand("p3dcreateBoundingVolumeFromSelectedCurveCmd",PBV::createBoundingVolumeFromSelectedCurveCmd::creator);
    if (!status) 
    {
      status.perror("register p3dcreateBoundingVolumeFromSelectedCurveCmd");
      return status;
    }

    plugin.registerCommand("p3dcreateBoundingVolumeOnJointCmd",PBV::createBoundingVolumeOnJointCmd::creator);
    if (!status) 
    {
      status.perror("register p3dcreateBoundingVolumeOnJointCmd");
      return status;
    }

    plugin.registerCommand("p3dcreateBoundingVolume4PointBox",PBV::createBoundingVolume4PointBox::creator);
    if (!status) 
    {
      status.perror("register p3dcreateBoundingVolume4PointBox");
      return status;
    }   

    MString command;
    MStatus statusOfGUI;

    command = MString( "p3dBoundVolInstall;" ); // mel script in scripts/other
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
    fprintf(stderr, "\nERROR: failed to install bounding volume specific interfaces (p3dBoundVolInstall.mel)!\n");
    }

    command = MString( "p3dtags \"\";" ); // mel script in scripts/other
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install p3d specific interfaces (p3dtags.mel)!\n");
    }

    return MS::kSuccess;
}
 
MStatus uninitializePlugin( MObject obj)
{
    MFnPlugin plugin( obj );
    MStatus status;

    status = plugin.deregisterNode( PBV::p3dBoundVolShape::id );
    if (!status) 
    {
      status.perror("deregister boundingVolumeShape");
      return status;
    }

    status = plugin.deregisterNode( PBV::p3dBoundNodeShape::id );
    if (!status) 
    {
      status.perror("deregister boundingNodeShape");
      return status;
    }

    status = plugin.deregisterCommand("p3dIsBoundVolCmd");
    if (!status) 
    {
      status.perror("deregister isBoundVolCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dIsBoundNodeCmd");
    if (!status) 
    {
      status.perror("deregister isBoundNodeCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dObjValidToBoundCmd");
    if (!status) 
    {
      status.perror("deregister objValidToBoundCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dCreateHiddenNameAttrCmd");
    if (!status) 
    {
      status.perror("deregister createHiddenNameAttrCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetBoundShapeNodeCmd");
    if (!status) 
    {
      status.perror("deregister Get Bound Shape Node Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetBoundTransformNodeCmd");
    if (!status) 
    {
      status.perror("deregister Get Bound Transform Node Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetBoundFirstLevelKidsCmd");
    if (!status) 
    {
      status.perror("deregister Get Bound First Level Kids Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetBoundTransformValuesCmd");
    if (!status) 
    {
      status.perror("deregister Get Bound Transform Values Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dcreateBoundingVolumeCmd");
    if (!status) 
    {
      status.perror("deregister p3dcreateBoundingVolumeCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dCloneBoundingVolumeCmd");
    if (!status) 
    {
      status.perror("deregister p3dCloneBoundingVolumeCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dcreateBoundingVolumeFromSelectedComponentsCmd");
    if (!status) 
    {
      status.perror("deregister p3dcreateBoundingVolumeFromSelectedComponentsCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dcreateBoundingVolumeFromSelectedCurveCmd");
    if (!status) 
    {
      status.perror("deregister p3dcreateBoundingVolumeFromSelectedCurveCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dcreateBoundingVolumeOnJointCmd");
    if (!status) 
    {
      status.perror("deregister p3dcreateBoundingVolumeOnJointCmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dcreateBoundingVolume4PointBox");
    if (!status) 
    {
      status.perror("deregister p3dcreateBoundingVolume4PointBox");
      return status;
    }

    return MS::kSuccess;
}

