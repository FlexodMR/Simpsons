//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     15 October, 2002
//
// Component:   p3dTagsCallback.cpp
//
// Description: Maya callback responsible for adding 'p3dtags' to specified
//              node. Initiated from Exporter's "materialgui.cpp" and
//              Pure3D Shaders.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

#include <maya/MObject.h>
#include <maya/MStatus.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnDagNode.h>
#include <maya/MFileIO.h>
#include <maya/MGlobal.h>

#include <maya/MPlug.h>
#include <maya/MFnAttribute.h>

#include "../../../plugins/maya/common/inc/mayaResolveName.hpp"

#include <bewert_debug.h>

void p3dTagsCallback(MObject &node, void*)
{
    // add p3d specific material attributes

    MStatus stat;

    bool bDAG = node.hasFn( MFn::kDagNode );
    bool bDG = node.hasFn( MFn::kDependencyNode );

    // try and use MEL script gui
    MString      command;

    MString                     tagName = "";
    if ( bDAG )
    {
        MFnDagNode                  fnDagNode( node );
        tagName = fnDagNode.fullPathName();
    }
    else if ( bDG )
    {
        MFnDependencyNode       fnDependNode( node );
        tagName = fnDependNode.name();
    }

// ---- DEBUG DIAGNOSTICS ----

//    {
//        MFnDependencyNode       fnDependNode( node, &stat );
//        if ( stat == MS::kSuccess && fnDependNode.typeName() == "mesh" )
//        {
//            MString foo = "p3dTagsCallback( " + fnDependNode.name() + " )";
//
//            MPlug vaPlug = fnDependNode.findPlug( "hasVertexAnimation", &stat );
//            if ( stat == MS::kSuccess )
//            {
//                foo += "Initiated p3dtags callback on object that possesses '.hasVertexAnimation' attribute! -> " + fnDependNode.name();
//            }
//
//            MGlobal::displayInfo( foo );
//        }
//    }

// ---- END DEBUG ----

    // If no valid name was found, DO NOT attempt a tag.
    if ( tagName != "" )
    {
        // An attempt to fix the dreaded "crash on save" bug:
        
        // Make an educated guess as to what this node will be called
        // by the time the deferred command is executed.
        MString                 resolvedName;

        // TRUE == Resolve on a 'deferred' command.
        ResolveName( tagName, resolvedName, bDAG, true ); 

        // !! WARNING !!
        // ** Always defer this call! **
        // When Maya introduces Construction History for a node, it does so by 
        // duplicating, in-place, the current node and setting its '.intermediateObject'
        // attribute to TRUE. However, at this point all user-dynamic attributes
        // have _not_ been added to the node, so any `attributeQuery -exists`
        // call in "p3dtags" returns FALSE and will add the attributes.
        // Evidence suggests that Maya then blindly copies any dynamic attributes 
        // from the original node, resulting in non-unique attributes names,
        // and a corrupt node.

        command = "evalDeferred \"p3dtags \\\"";
        command += resolvedName;
        command += "\\\"\";";

        stat = MGlobal::executeCommand(command, false, true);
        if (stat != MS::kSuccess) 
        {
            MGlobal::displayError( MString( "Failed to add Pure3D tags to node: " ) + tagName );
        }
    }
}

