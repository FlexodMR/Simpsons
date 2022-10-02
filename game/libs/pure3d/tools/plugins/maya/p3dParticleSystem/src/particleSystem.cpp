//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "particleSystem.hpp"

#include <maya/MStatus.h>
#include <maya/MObject.h>
#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include <maya/MDGMessage.h>
#include <windows.h>
#include "particleShape.hpp"
#include "particleUtility.hpp"
#include "particleConstants.hpp"

static MCallbackId pointSpriteShaderCallbackId;

MStatus initializePlugin( MObject obj )
{ 
    char version_str[256]; 

    GetModuleFileName(GetModuleHandle("p3dParticleSystem.mll"), version_str, 256);
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
    status = plugin.registerShape( "p3dEmitterShape", PPS::p3dEmitterShape::id,
                                    &PPS::p3dEmitterShape::creator,
                                    &PPS::p3dEmitterShape::initialize,
                                    &PPS::p3dEmitterShapeUI::creator  );
    if (!status)  
    {
      status.perror("register Emitter Shape");
      return status;
    }

    status = plugin.registerNode( "p3dEmitterBlendStateNode", PPS::p3dEmitterBlendStateNode::id,
                                    &PPS::p3dEmitterBlendStateNode::creator,
                                    &PPS::p3dEmitterBlendStateNode::initialize );
    if (!status) 
    {
      status.perror("register Emitter Blend State Node");
      return status;
    }

    status = plugin.registerShape( "p3dPartSystemShape", PPS::p3dPartSystemShape::id,
                                    &PPS::p3dPartSystemShape::creator,
                                    &PPS::p3dPartSystemShape::initialize,
                                    &PPS::p3dPartSystemShapeUI::creator  );
    if (!status) 
    {
      status.perror("register Particle System Shape");
      return status;
    }

    plugin.registerCommand("p3dIsParticleSystemCmd",PPS::isParticleSystemCmd::creator);
    if (!status) 
    {
      status.perror("register Is Particle System Cmd");
      return status;
    }

    plugin.registerCommand("p3dIsParticleEmitterCmd",PPS::isParticleEmitterCmd::creator);
    if (!status) 
    {
      status.perror("register Is Particle Emitter Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetParticleSystemListCmd",PPS::getParticleSystemListCmd::creator);
    if (!status) 
    {
      status.perror("register Get Particle System List Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetParentParticleSystemCmd",PPS::getParentParticleSystemCmd::creator);
    if (!status) 
    {
      status.perror("register Get Parent Particle System Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetSelectedParticleSystemCmd",PPS::getSelectedParticleSystemCmd::creator);
    if (!status) 
    {
      status.perror("register Get Selected Particle System Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetSelectedParticleEmitterCmd",PPS::getSelectedParticleEmitterCmd::creator);
    if (!status) 
    {
      status.perror("register Get Selected Particle Emitter Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetParticleShapeNodeCmd",PPS::getShapeNodeCmd::creator);
    if (!status) 
    {
      status.perror("register Get Particle Shape Node Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetParticleTransformNodeCmd",PPS::getTransformNodeCmd::creator);
    if (!status) 
    {
      status.perror("register Get Particle Transform Node Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetParticleSurfaceShaderCmd",PPS::getSurfaceShaderCmd::creator);
    if (!status) 
    {
      status.perror("register Get Particle Surface Shader Cmd");
      return status;
    }

    plugin.registerCommand("p3dGetCurrentUnitsCmd",PPS::getCurrentUnitsCmd::creator);
    if (!status) 
    {
      status.perror("register Get Current Units Cmd");
      return status;
    }

    MString command = MString( "p3dParticleInstall;" ); // mel script in scripts/other
    MStatus statusOfGUI;
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install particle system specific interfaces!\n");
    }

    PPS::p3dEmitterShape::tagCallbackId = MDGMessage::addNodeAddedCallback( PPS::p3dEmitterShape::TagCallback, "p3dEmitterShape", NULL, &status );
    PPS::p3dPartSystemShape::tagCallbackId = MDGMessage::addNodeAddedCallback( PPS::p3dEmitterShape::TagCallback, "p3dPartSystemShape", NULL, &status );

    return MS::kSuccess;

}

MStatus uninitializePlugin( MObject obj)
{
    MFnPlugin plugin( obj );
    MStatus status;

    status = plugin.deregisterNode( PPS::p3dEmitterShape::id );
    if (!status) 
    {
      status.perror("deregister Emitter Shape");
      return status;
    }

    status = plugin.deregisterNode( PPS::p3dEmitterBlendStateNode::id );
    if (!status) 
    {
      status.perror("deregister Emitter Blend State Node");
      return status;
    }

    status = plugin.deregisterNode( PPS::p3dPartSystemShape::id );
    if (!status) 
    {
      status.perror("deregister Particle System Shape");
      return status;
    }

    status = plugin.deregisterCommand("p3dIsParticleSystemCmd");
    if (!status) 
    {
      status.perror("deregister Is Particle System Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dIsParticleEmitterCmd");
    if (!status) 
    {
      status.perror("deregister Is Particle Emitter Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetParticleSystemListCmd");
    if (!status) 
    {
      status.perror("deregister Get Particle System List Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetParentParticleSystemCmd");
    if (!status) 
    {
      status.perror("deregister Get Parent Particle System Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetSelectedParticleSystemCmd");
    if (!status) 
    {
      status.perror("deregister Get Selected Particle System Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetSelectedParticleEmitterCmd");
    if (!status) 
    {
      status.perror("deregister Get Selected Particle Emitter Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetParticleShapeNodeCmd");
    if (!status) 
    {
      status.perror("deregister Get Particle Shape Node Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetParticleTransformNodeCmd");
    if (!status) 
    {
      status.perror("deregister Get Particle Transform Node Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dGetParticleSurfaceShaderCmd");
    if (!status) 
    {
      status.perror("deregister Get Particle Surface Shader Cmd");
      return status;
    }
  
    status = plugin.deregisterCommand("p3dGetCurrentUnitsCmd");
    if (!status) 
    {
      status.perror("deregister Get Currrent Units Cmd");
      return status;
    }

    MDGMessage::removeCallback( PPS::p3dPartSystemShape::tagCallbackId );
    MDGMessage::removeCallback( PPS::p3dEmitterShape::tagCallbackId );

    return MS::kSuccess;
}
 
