/*===========================================================================
    transformgui.cpp
    created: Jul. 14, 2000
    Eric Honsch                           

    Modified: 29 Nov 2001
            By: Bryan Ewert

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include <maya/MObject.h>
#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>
#include <maya/MDagPath.h>
#include <maya/MPlug.h>
#include <maya/MDGMessage.h>
#include <maya/MEventMessage.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnMatrixAttribute.h>
#include <maya/MFnTransform.h>
#include <maya/MFloatVector.h>
#include <maya/MFnGenericAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnStringData.h>

#include <assert.h>

#include "transformgui.hpp"

//the callback id list  
MIntArray transformGUI::callbackIds;

// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
// × 
// ×  GLOBAL FUNCTIONS
// × 
// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

//===========================================================================
// addStringAttribute
//===========================================================================
// Description: Adds a user-defined string attribute to the node wrapped
//              by the specified MFnTransform function set.
//
// Constraints: 
//
// Parameters:  MFnTransform& mfnTransform: MFnTransform function set that
//                                          wraps the node to which the
//                                          attribute will be added.
//              const char* long_name: The long name for the attribute.
//              const char* short_name: The short name for the attribute.
//              const char* default_string: The initial string value
//                                          assigned to the attribute.
//
// Return:      (bool): TRUE if attribute added successfully; else FALSE.
//
//===========================================================================
bool addStringAttribute
(
    MFnTransform   &mfnTransform,
    const char *long_name,
    const char *short_name,
    const char *default_string
)
{
     MStatus stat;

     // MUST assert that the attribute doesn't already exist!
     // For example, duplicating a node generates a "Node Added" message,
     // and thus invokes the "Node Added" callback.  If the object
     // being duplicated already has the Pure3D attribute then a 
     // _duplicate_ of the attributes -- with the same names -- are added
     // and Maya gets very confused!

     MPlug       plug;
     plug = mfnTransform.findPlug( long_name, &stat );
     if ( stat != MS::kSuccess )
     {
          MString longName(long_name);
          MString shortName(short_name);
          MString defaultString(default_string);

          //
          // Set the default data for the attribute
          //
          MFnStringData fnDefaultStringData;
          MObject defaultStringData = fnDefaultStringData.create(defaultString, &stat); 

          if(MS::kSuccess != stat )
          {
             MGlobal::displayWarning( "Couldn't create default value for transform node" );
             defaultStringData = MObject::kNullObj;
          }

          //
          // Now create the attribute
          //
          MFnTypedAttribute fnAttr;

          MObject newAttr = fnAttr.create( longName, shortName, MFnData::kString, defaultStringData, &stat);

          if(MS::kSuccess != stat ) 
          {
             MGlobal::displayError("Error creating new attribute");
             return false;
          }


          stat = mfnTransform.addAttribute( newAttr, MFnDependencyNode::kLocalDynamicAttr );
          if (stat != MS::kSuccess) 
          {
             MGlobal::displayError("function set does not have a valid object, or the addition of the new attribute failed!");
             return false;
          }
     }

    //
    // We are Happy
    //
    return true;

}
 

//===========================================================================
// addNumericAttribute
//===========================================================================
// Description: Adds a user-defined numeric attribute of the specified type
//              to the node wrapped by the specified MFnTransform function set.
//
// Constraints: 
//
// Parameters:  MFnTransform& mfnTransform: MFnTransform function set that
//                                          wraps the node to which the
//                                          attribute will be added.
//              const char* long_name: The long name for the attribute.
//              const char* short_name: The short name for the attribute.
//              MFnNumericData::Type unitType: The Maya numeric type for
//                                             the new attribute.
//              double defaultValue: The initial value assigned to the attribute.
//
// Return:      (bool): TRUE if attribute added successfully; else FALSE.
//
//===========================================================================
bool addNumericAttribute
(
    MFnTransform   &mfnTransform,
    const char *long_name,
    const char *short_name,
    MFnNumericData::Type unitType, 
    double defaultValue = 0.0
)
{
     MStatus stat;

     // MUST assert that the attribute doesn't already exist!
     // For example, duplicating a node generates a "Node Added" message,
     // and thus invokes the "Node Added" callback.  If the object
     // being duplicated already has the Pure3D attribute then a 
     // _duplicate_ of the attributes -- with the same names -- are added
     // and Maya gets very confused!

     MPlug       plug;
     plug = mfnTransform.findPlug( long_name, &stat );
     if ( stat != MS::kSuccess )
     {
          MString longName(long_name);
          MString shortName(short_name);

          MFnNumericAttribute fnAttr;

          MObject newAttr = fnAttr.create( longName, shortName, unitType, defaultValue, &stat);
          if(MS::kSuccess != stat ) 
          {
             MGlobal::displayError("Error creating new attribute");
             return false;
          }

          stat = mfnTransform.addAttribute( newAttr, MFnDependencyNode::kLocalDynamicAttr );
          if (stat != MS::kSuccess) 
          {
             MGlobal::displayError("function set does not have a valid object, or the addition of the new attribute failed!");
             return false;
          }
     }

     //
     // We are Happy
     //
     return true;
}

// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
// × 
// ×  CALLBACKS
// × 
// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

//===========================================================================
// transformNodeCB
//===========================================================================
// Description: MDGMessage (NodeAdded) callback on 'transform' nodes.
//
//              Adds the following P3D attributes to transform node
//              whose creation initiated this callback:
//
//                  p3dBooleanAttributes
//                  p3dExtraJointSortOrder
//                  p3dMappedJoint
//              
//
// Constraints: 
//
// Parameters:  MObject& node: The newly created Transform node (provided by Maya).
//              void*: Callback user-data - NOT USED.
//
// Return:      (void)
//
//===========================================================================
//create the callback
void transformNodeCB(MObject &node, void*)
{

    //
    // Going to add some custom attributes to the node
    //
    MFnTransform mfnTransform( node );

    //
    // Now add this attribute to the node... note that 
    // this will return success if the node was already added.
    // and values set in the gui will be saved.
    //

    const MString nodeName( mfnTransform.name() );

 
    // All boolean options are now compressed into one attribute
    addNumericAttribute( mfnTransform, "p3dBooleanAttributes", "p3dBooleanAttributes", MFnNumericData::kLong, 0.0 );
    addNumericAttribute( mfnTransform, "p3dExtraJointSortOrder", "p3dExtraJointSortOrder", MFnNumericData::kShort, 0.0 );
    addStringAttribute( mfnTransform, "p3dMappedJoint", "p3dMappedJoint", nodeName.asChar());



    // Here are the old boolean attributes 
    /*
    addNumericAttribute( mfnTransform, "p3dScenegraphRoot", "p3dScenegraphRoot", MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dSkeletonRoot",   "p3dSkeletonRoot",   MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dTraversalStop",  "p3dTraversalStop",  MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dNoCull",         "p3dNoCull",         MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dPreserveBoneLength", "p3dPreserveBoneLength", MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dXAxisMirror", "p3dxam", MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dYAxisMirror", "p3dyam", MFnNumericData::kBoolean, 0.0 );
    addNumericAttribute( mfnTransform, "p3dZAxisMirror", "p3dzam", MFnNumericData::kBoolean, 0.0 );
    */
} 


//===========================================================================
// selectionCB
//===========================================================================
// Description: MEventMessage callback on "SelectionChanged".
//
//              Adds the following P3D attributes to the first selected
//              node in the selection list (transform only):
//
//                  p3dBooleanAttributes
//                  p3dExtraJointSortOrder
//                  p3dMappedJoint
//
// Constraints: Only the first item in the global selection list is
//              considered, and only if it's a transform node.
//
// Parameters:  (void*): Callback user data - NOT USED.
//
// Return:      (void)
//
//===========================================================================
void transformNodeSelectionCB(void*)
{
     MStatus                     status;

     MSelectionList              selList;
     MGlobal::getActiveSelectionList( selList );

     // only concerned about first item in list
     MDagPath                    dagPath;
     selList.getDagPath( 0, dagPath );

     if ( dagPath.hasFn( MFn::kTransform ) )
     {
          MFnTransform mfnTransform( dagPath.node() );
          const MString nodeName( mfnTransform.name() );

          addNumericAttribute( mfnTransform, "p3dBooleanAttributes", "p3dBooleanAttributes", MFnNumericData::kLong, 0.0 );
          addNumericAttribute( mfnTransform, "p3dExtraJointSortOrder", "p3dExtraJointSortOrder", MFnNumericData::kShort, 0.0 );
          addStringAttribute( mfnTransform, "p3dMappedJoint", "p3dMappedJoint", nodeName.asChar());
     }
}

// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
// × 
// ×  CLASS DEFINITION FOR transformGUI
// × 
// ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

//===========================================================================
// transformGUI::transformGUI()     [constructor]
//===========================================================================
// Description: Creates two MMessage callbacks:
//
//                  MDGMessage on NodeAdded for 'transform' nodes.
//                  MEventMessage on "SelectionChanged".
//
//===========================================================================
transformGUI::transformGUI()
{   

     //
     // Add Callbacks on joint Node creation
     //
     MStatus     stat;
     MCallbackId id;
     MString     nodeType;

     // Add joint node callback
     nodeType = "transform"; 
     id = MDGMessage::addNodeAddedCallback(transformNodeCB, nodeType, NULL, &stat);
     // If the callback was successfully added then add the
     // callback id to our callback table so it can be removed
     // when the plugin is unloaded.
     if (stat)
     {
          callbackIds.append(id);
     }
     else
     {
          MGlobal::displayError("MDGMessage.addCallback failed");
     }

     // 29 Nov 2001
     // What is a scene is loaded that had transforms created without
     // the Exporter plug-in loaded to generate the attributes?
     id = MEventMessage::addEventCallback( "SelectionChanged", transformNodeSelectionCB, NULL, &stat );
     if ( stat == MS::kSuccess )
     {
          callbackIds.append( id );
     }
     else
     {
          MGlobal::displayError("MDGMessage.addCallback failed");
     }

}

transformGUI::~transformGUI() 
{
}


//===========================================================================
// transformGUI::removeCallbacks
//===========================================================================
// Description: Removes the callbacks added by this object's constructor.
//
// Constraints: What happens if more than one transformGUI object is 
//              created?
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
// this must be called before deregistering a plugin which has added
// callbacks    
void transformGUI::removeCallbacks( void )
{
     //remove all the callbacks
     for (unsigned int i=0; i<callbackIds.length(); i++ ) 
     {
          MMessage::removeCallback( (MCallbackId)callbackIds[i] );
     }

     // The callbacks don't exist anymore.. CLEAR THE LIST!
     callbackIds.clear();
}


