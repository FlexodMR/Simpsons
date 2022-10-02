/*===========================================================================
    p3dDeformer/main.cpp

    Copyright (c)2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <fstream.h>
#include <maya/MFnPlugin.h>
#include <maya/MGlobal.h>
#include <maya/MSceneMessage.h>
#include <maya/MDGMessage.h>
#include <maya/MFloatArray.h>

#include "common.hpp"
#include "utility.hpp"
#include "expressionGroup.hpp"
#include "expressionGroupCreateCmd.hpp"
#include "expressionState.hpp"
#include "expressionStateCreateCmd.hpp"
#include "meshNeutral.hpp"
#include "meshNeutralUpdateCmd.hpp"
#include "snapMesh.hpp"

#include "../common/inc/GetVersionString.hpp"

extern bool P3D_DEBUG_MODE;
static MCallbackId cbFileNew, cbFileOpen;

static const int P3D_SETTINGS_BUFSIZE = 128;


/*************************************************************************
//    Description:    To turn on debugging , add a "Debug 1" to the end of existing 
// settings in the p3dDeformerSettings.txt file in the user's script directory.
// This method parses the settings file.
//
// Parameters: none
//
// Returns: true if debug flag is present and set to 1
//
***************************************************************************/
bool isDebug()
{

    ifstream file;
    MString cmd = "internalVar -userScriptDir";
    MString scriptDir;
    MGlobal::executeCommand (cmd, scriptDir);
    scriptDir += "p3dDeformerSettingsv16.txt";

    file.open(scriptDir.asChar());
    
    if(file.fail())
    {
       MGlobal::displayError("Failed to open p3dDeformerSettings.txt");
        return false;
    }

    char settings[P3D_SETTINGS_BUFSIZE];

    file.getline(settings, P3D_SETTINGS_BUFSIZE);
    char* tmp = strstr( settings, "Debug" );    
    if (tmp == NULL) return false; //no DEBUG flag in settings file
    else
    {
        char* value = strtok(tmp, " ");
        while (value != NULL)
        {
            if(*value == '1') return true;
            value = strtok(NULL, " ");
        }
    }
    return false;
}

static void p3dDeformFileCallback(void* /* clientData*/ )
{
    
    // need to do an immediate evaluation, since newly opened nodes may
    // have identical names to old closed ones

    MGlobal::executeCommand("p3dDeformUIClearStateList "
                                    "p3dDeformer "
                                    "p3dDeformExpressionScrollColumnForm");
    
    MGlobal::executeCommand("eval p3dDeformSetupNoCreate");

}

MStatus initializePlugin(MObject obj)
{
    const unsigned int maxBytes = 256;
    char version_str[maxBytes];
    GetVersionString("p3dDeformer.mll", version_str, maxBytes);

    MStatus status;
    MFnPlugin plugin(obj, "Radical Entertainment", version_str, "Any");

    plugin.registerCommand("p3dDeformSnapMesh",
                                  p3dDeformSnapMeshCmd::creator);
    plugin.registerCommand("p3dDeformMeshNeutralUpdate",
                                  p3dDeformMeshNeutralUpdateCmd::creator);
    plugin.registerCommand("p3dDeformExpressionGroupCreate",
                                  p3dDeformExpressionGroupCreateCmd::creator);
    plugin.registerCommand("p3dDeformExpressionStateCreate",
                                  p3dDeformExpressionStateCreateCmd::creator);
    plugin.registerCommand("p3dDeformExpressionStateSetPose",
                                    p3dDeformExpressionStateSetPoseCmd::creator);
    plugin.registerCommand("p3dDeformExpressionGroupResetPose",
                                    p3dDeformExpressionGroupResetPoseCmd::creator);
    plugin.registerCommand("p3dDeformExpressionStateAddExtraKeys",
                                    p3dDeformExpressionStateAddExtraKeysCmd::creator);
    plugin.registerCommand("p3dDeformExpressionStateSetKey",
                                    p3dDeformExpressionStateSetKeyCmd::creator);
    plugin.registerCommand("p3dDeformCopyOffsets",
                                    p3dDeformCopyOffsetsCmd::creator);
    plugin.registerCommand("p3dDeformUpdateExpression",
                                    p3dDeformUpdateExpressionCmd::creator);
    plugin.registerCommand("p3dDeformPruneExpression",
                                    p3dDeformPruneExpressionCmd::creator);
    plugin.registerCommand("p3dDeformTestState",
                                    p3dDeformTestStateCmd::creator);
    plugin.registerCommand("p3dDeformExpressionGroupSave",
                                    p3dDeformExpressionGroupSaveCmd::creator);
    plugin.registerCommand("p3dDeformExpressionGroupRead",
                                    p3dDeformExpressionGroupReadCmd::creator);


    status = plugin.registerNode("p3dDeformExpressionState",
                                          p3dDeformExpressionState::id,
                                          p3dDeformExpressionState::creator,
                                          p3dDeformExpressionState::initialize);
    P3D_DEFORM_STATUS(status);


    status = plugin.registerNode("p3dDeformExpressionGroup",
                                          p3dDeformExpressionGroup::id,
                                          p3dDeformExpressionGroup::creator,
                                          p3dDeformExpressionGroup::initialize,
                                          MPxNode::kDeformerNode);
    P3D_DEFORM_STATUS(status);

    status = plugin.registerNode("p3dDeformMeshNeutral",
                                          p3dDeformMeshNeutral::id,
                                          p3dDeformMeshNeutral::creator,
                                          p3dDeformMeshNeutral::initialize,
                                          MPxNode::kDeformerNode);
    P3D_DEFORM_STATUS(status);

    // install callbacks
    cbFileNew = MSceneMessage::addCallback(MSceneMessage::kAfterNew,
                                                        p3dDeformFileCallback,
                                                        0, &status);
    P3D_DEFORM_STATUS(status);

    cbFileOpen = MSceneMessage::addCallback(MSceneMessage::kAfterOpen,
                                                         p3dDeformFileCallback,
                                                         0, &status);
    P3D_DEFORM_STATUS(status);

    // install shelf icon
    status = MGlobal::executeCommand("p3dDeformInstall");
    P3D_DEFORM_STATUS(status);

    //set debug mode
    //open file and read debug state
    if (isDebug())
    {
        MGlobal::displayInfo("DEBUG MODE SELECTED");
       P3D_DEBUG_MODE = true;
    }

    return status;
}


MStatus uninitializePlugin(MObject obj)
{
    MStatus status;
    MFnPlugin plugin(obj);

    plugin.deregisterCommand("p3dDeformSnapMesh");
    plugin.deregisterCommand("p3dDeformMeshNeutralUpdate");
    plugin.deregisterCommand("p3dDeformExpressionGroupCreate");
    plugin.deregisterCommand("p3dDeformExpressionStateCreate");
    plugin.deregisterCommand("p3dDeformExpressionStateSetPose");
    plugin.deregisterCommand("p3dDeformExpressionGroupResetPose");
    plugin.deregisterCommand("p3dDeformExpressionStateAddExtraKeys");
    plugin.deregisterCommand("p3dDeformExpressionStateSetKey");
    plugin.deregisterCommand("p3dDeformCopyOffsets");
    plugin.deregisterCommand("p3dDeformUpdateExpression");
    plugin.deregisterCommand("p3dDeformPruneExpression");
    plugin.deregisterCommand("p3dDeformTestState");
    plugin.deregisterCommand("p3dDeformExpressionGroupSave");
    plugin.deregisterCommand("p3dDeformExpressionGroupRead");




    status = plugin.deregisterNode(p3dDeformExpressionState::id);
    P3D_DEFORM_STATUS(status);

    status = plugin.deregisterNode(p3dDeformExpressionGroup::id);
    P3D_DEFORM_STATUS(status);

    status = plugin.deregisterNode(p3dDeformMeshNeutral::id);
    P3D_DEFORM_STATUS(status);

    // deregister callbacks
    status = MSceneMessage::removeCallback(cbFileNew);
    P3D_DEFORM_STATUS(status);
    status = MSceneMessage::removeCallback(cbFileOpen);
    P3D_DEFORM_STATUS(status);
    
    return status;
}


// End of file.

