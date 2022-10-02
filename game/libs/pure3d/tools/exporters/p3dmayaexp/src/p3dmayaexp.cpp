/*===========================================================================
    p3dmayaexp.cpp
    created: Dec 2, 1999
    Greg Mayer

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MGlobal.h>
#include <maya/MFnDagNode.h>
#include <maya/MItDag.h>
#include <maya/MObject.h>
#include <maya/MDagPath.h>
#include <maya/MStatus.h>
#include <maya/MString.h>
#include <maya/MFnPlugin.h>
#include <maya/MArgList.h>
#include <maya/MPoint.h>
#include <maya/MVector.h>
#include <maya/MMatrix.h>
#include <maya/MTransformationMatrix.h>
#include <maya/MColor.h>
#include <maya/MDGMessage.h>

#include <stdio.h>
#include <string.h>
#include <typeinfo.h>

#include "p3dmayaexp.hpp"
#include "exporterutility.hpp"
#include "exporteroptions.hpp"
#include "quickviewer.hpp"
#include "quickexporter.hpp"
#include "fileAttrib.hpp"
#include "animnode.hpp"
#include "deformerExpression.hpp"
#include "p3dExportSceneCmd.h"
#include "saveParanoiaCmd.hpp"

#include "tlString.hpp"

#include <iostream.h>

static const unsigned int NUM_EXECUTE_MEL = 2;
static const char* executeMel[NUM_EXECUTE_MEL] = 
{
    "p3dMayaExporterInstall;",
    "p3dtags \"\";"
};

static const unsigned int NUM_SOURCE_MEL = 29;
static const char* sourceMel[NUM_SOURCE_MEL] = 
{
    "AEtransformTemplate",  // Source Maya's version first
    "AEtransformP3dRevision",
    "AEshapeTemplate",      // Source Maya's version first
    "AEp3dShapeTemplate",
    "AEmeshTemplate",       // Source Maya's version first
    "AEmeshP3dRevision",
    "AElambertTemplate",    // Source Maya's version first
    "AElambertP3dRevision",
    "AEphongTemplate",      // Source Maya's version first
    "AEphongP3dRevision",
    "AEblinnTemplate",      // Source Maya's version first
    "AEblinnP3dRevision",
    "AELightCommon",        // Source Maya's version first
    "AEp3dLightCommon",
    "AEp3dAnimationOptimizationTemplate",
    "AEp3dEventAnimTemplate",
    "AEp3dExporterOptionsShapeTemplate",
    "AEp3dExportSettingNodeTemplate",
    "AEp3dRenderStatsTemplate",
    "AEp3dVertexAnimationTemplate",
    "animChannelTable",
    "animRangePanel",
    "p3dexpoptsgui",
    "p3dFrameLayout",
    "p3dMatAttr",
    "p3dMayaExporterTools",
    "p3dtags",
    "viewLog",
    "FileMenu_SaveItem"
};

//----------------------
p3dMayaExp::p3dMayaExp()
{
}


//-----------------------
p3dMayaExp::~p3dMayaExp()
{
    ClearCache();
}


//-------------------------
void* p3dMayaExp::creator()
{
    return new p3dMayaExp();
}

void p3dMayaExp::ClearCache( void ) const
{
    // *** TODO: The following Clear() is currently in THREE different places:
    //              p3dmayaexp.cpp
    //              quickexporter.cpp
    //              quickviewer.cpp
    //     Find someway to centralize it!

    // Clear cached Animation nodes and AnimRanges.
    AnimNode::Reset();
    // Clear previously cached Textures.
    TextureAnimNode::Clear();
    // Clear cached Expression animations and mixers.
    DeformerExpression::Clear();
}

//-------------------------------------------------------------------------------
MStatus p3dMayaExp::reader(const MFileObject& file, const MString& optionsString,
                                    FileAccessMode mode)
{
    fprintf(stderr, "\np3dMayaExp::reader called in error\n");
    return MS::kFailure;
}


//-------------------------------------
bool p3dMayaExp::haveReadMethod() const
{
    return false;
}


//--------------------------------------
bool p3dMayaExp::haveWriteMethod() const
{
    return true;
}


//------------------------------------------
MString p3dMayaExp::defaultExtension() const
{
    MString defext("p3d");
    return defext;
}


//----------------------------------
bool p3dMayaExp::canBeOpened() const
{
    return false;
}


//--------------------------------------------------------------------------------
MPxFileTranslator::MFileKind p3dMayaExp::identifyFile(const MFileObject& fileName,
                                                                        const char* buffer,
                                                                        short size) const
{
    // for now we'll just look at the extension; later, we could actually look at the first few
    // bytes and see if they look like a valid p3d file

    const char* name = fileName.name().asChar();
    int length = strlen(name);

    if(length > 4 && _stricmp(name + (length - 4), ".p3d"))
    {
        return kIsMyFileType;
    }
    else
    {
        return kNotMyFileType;
    } 

}

//-------------------------------------------------------------------------------
MStatus p3dMayaExp::writer(const MFileObject &file, const MString &optionsString,
                                    FileAccessMode mode)
{
    MStatus                             status = MS::kSuccess;

    ClearCache();

    ExporterOptions                      options;
    MString                              optionsStr;
    MGlobal::executeCommand(MString("P3DGetExportOptions()"),optionsStr);
    options.Initialize(optionsStr);

    // if mode == MPxFileTranslator::kExportActiveAccessMode, 
    // then the Export Selection menu item was chosen
    ExporterOptions::SetExportSelection(mode == MPxFileTranslator::kExportActiveAccessMode);

    // the .asChar() gets built on the stack and get overwritten on return so dup it
    //char *fname = strnew(file.fullName().asChar());

    // 08 Apr 2002 (v16.15) - pass full path to Exporter Options.
    ExporterOptions::SetFilename(file.fullName().asChar());

    P3dExportToFile(ExporterOptions::Filename(), &status);

    //strdelete(fname);

    // I always like to explicitly indicate when the operation was 
    // cancelled due to a user abort request.
    if ( gProgress.IsInterrupted() )
    {
        MGlobal::displayWarning( "Operation cancelled by user." );
        //        status = MS::kSuccess;
    }

    return status;
} 

//----------------------
// dll entry/exit points
//----------------------


//-----------------------------------
MStatus initializePlugin(MObject obj)
{ 
    MStatus status;
    MStatus statusOfGUI;
    MString command;
    unsigned int m;

    char* version_str = GetVersionStr("p3dmayaexp.mll"); 

    MFnPlugin plugin (obj, "Pure3D Exporter", version_str, "Any");

    strdelete(version_str);

    status = plugin.registerFileTranslator( "pure3D",            // translator name
                                            NULL,                // pathname of icon for file tyep   
                                            p3dMayaExp::creator, // creator fucntion
                                            "P3DExpOptsGUI",     // name of MEL script used to display options
                                            NULL,                // default options
                                            false);              // requires Full Mel - for readers only
    if(status != MS::kSuccess)
    {
        fprintf(stderr, "\nERROR: failed to register file translator pure3D!\n");
    }

    status = plugin.registerShape( "p3dExporterOptionsShape", exporterOptionsShape::id,
                                   &exporterOptionsShape::creator,
                                   &exporterOptionsShape::initialize,
                                   &exporterOptionsShapeUI::creator  );
    if (!status) 
    {
        status.perror("register exporter Options Shape");
        return status;
    }

    status = plugin.registerNode( "p3dExportSettingNode", exportSettingNode::id,
                                  &exportSettingNode::creator,
                                  &exportSettingNode::initialize );
    if (!status) 
    {
        status.perror("register export Setting Node");
        return status;
    }
    
    status = plugin.registerCommand( "P3DExportScene",p3dExportSceneCmd::creator, p3dExportSceneCmd::newSyntax);
    if (!status) 
    {
        status.perror("FAILED to register P3DExportScene command.");
        return status;
    }
    
    status = plugin.registerCommand("p3dQuickViewerCmd",quickViewerCmd::creator);
    if (!status) 
    {
        status.perror("register quick Viewer Cmd");
        return status;
    }
    
    status = plugin.registerCommand("p3dQuickExporterCmd",quickExporterCmd::creator);
    if (!status) 
    {
        status.perror("register quick Exporter Cmd");
        return status;
    }

    status = plugin.registerCommand("fileAttribQuery",FileAttribQueryCmd::creator, FileAttribQueryCmd::newSyntax);
    if (!status) 
    {
        status.perror("FAILED to register fileAttribQuery.");
        return status;
    }

     // Register p3dEventAnim and p3dEventKey node.
     // These are used to extract Event Animation (arbitrary data keys).
     status = plugin.registerNode( "p3dEventAnim", CEventAnim::id, CEventAnim::creator, CEventAnim::initialize );
     if (!status) 
     {
          status.perror("FAILED to register p3dEventAnim");
     }

     status = plugin.registerNode( "p3dEventKey", CEventKey::id, CEventKey::creator, CEventKey::initialize );
     if (!status) 
     {
          status.perror("FAILED to register p3dEventKey");
     }

// -----  saveParanoiaCmd --------

    status = plugin.registerCommand( "saveParanoia", saveParanoiaCmd::creator );
    if (!status) 
    {
        status.perror("FAILED to register saveParanoia command.");
        return status;
    }
    


    command = MString( "p3dMayaExporterInstall;" ); // mel script in scripts/other
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install p3d exporter tools (p3dMayaExporterInstall.mel)!\n");
    }

    // we will setup up p3d exporting attribute overrides & additions here
    // I don't know if there is a nice way of undoing it, which could be done
    // in unitializePlugin if discovered
    
    command = MString( "p3dtags \"\";" ); // mel script in scripts/other
    statusOfGUI = MGlobal::executeCommand( command );
    if ( MS::kSuccess != statusOfGUI )
    {
        fprintf(stderr, "\nERROR: failed to install p3d specific interfaces (p3dtags.mel)!\n");
    }

    // --------  Execute initialization MEL commands  ----------------

    for ( m = 0; m < NUM_EXECUTE_MEL; m++ )
    {
        statusOfGUI = MGlobal::executeCommand( executeMel[m] );
        if ( MS::kSuccess != statusOfGUI )
        {
            fprintf(stderr, "\nERROR: failed to execute MEL: %s\n", executeMel[m]);
        }
    }

    // --------  Source support MEL scripts  ----------------

    for ( m = 0; m < NUM_SOURCE_MEL; m++ )
    {
        command = MString( "source " ) + sourceMel[m];
        statusOfGUI = MGlobal::executeCommand( command );
        if ( MS::kSuccess != statusOfGUI )
        {
            fprintf(stderr, "\nERROR: failed to source MEL: %s\n", sourceMel[m]);
        }
    }

    SetupQuickViewer();

    // ** Bug #600 - Disabled ** : 11 Apr 2002 : v16.15
//    MGlobal::startErrorLogging();
    
    return status;
}


//-------------------------------------
MStatus uninitializePlugin(MObject obj)
{
    MStatus status;


    // all callbacks must be removed before deregistering associated plugin
    materialGUI::removeCallbacks();
    transformGUI::removeCallbacks();


    MFnPlugin plugin(obj);
    status = plugin.deregisterFileTranslator("pure3D");

    status = plugin.deregisterNode( exporterOptionsShape::id );
    if (!status) 
    {
      status.perror("register exporter Options Shape");
      return status;
    }

    status = plugin.deregisterNode( exportSettingNode::id );
    if (!status) 
    {
      status.perror("register exportSetting Node");
      return status;
    }

    status = plugin.deregisterCommand("P3DExportScene");
    if (!status) 
    {
      status.perror("FAILED to deregister P3DExportScene command.");
      return status;
    }

    status = plugin.deregisterCommand("p3dQuickViewerCmd");
    if (!status) 
    {
      status.perror("deregister Quick Viewer Cmd");
      return status;
    }

    status = plugin.deregisterCommand("p3dQuickExporterCmd");
    if (!status) 
    {
      status.perror("deregister Quick Exporter Cmd");
      return status;
    }

    status = plugin.deregisterCommand("fileAttribQuery");
    if (!status) 
    {
      status.perror("FAILED to deregister fileAttribQuery");
      return status;
    }

    status = plugin.deregisterNode( CEventAnim::id );
    if (!status) 
    {
      status.perror("Unable to remove p3dEventAnim node definition.");
      return status;
    }

    status = plugin.deregisterNode( CEventKey::id );
    if (!status) 
    {
      status.perror("Unable to remove p3dEventKey node definition.");
      return status;
    }

// -----  saveParanoiaCmd --------

    status = plugin.deregisterCommand("saveParanoia");
    if (!status) 
    {
      status.perror("FAILED to deregister saveParanoia");
      return status;
    }


//    DestroyQuickViewer();

    return status;
}

 

