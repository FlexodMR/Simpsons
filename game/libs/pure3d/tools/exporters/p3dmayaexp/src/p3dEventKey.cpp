//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 7, 2001
//
// Component:   p3dEventAnim Maya dependency node.
//
// Description: Implementation for the p3dEventAnim Maya dependency node.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "p3dEventKey.h"

#include <maya/MFnMessageAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MDataHandle.h>
#include <maya/MPlug.h>
#include <maya/MGlobal.h>

#include <iostream.h>
#include <assert.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MTypeId                                 CEventKey::id( gP3DEventKeyID );  // See //depot/Development/documentation/Pure3D/Maya/MayaTypeIds.xls


MObject                                 CEventKey::m_Name;
MObject                                 CEventKey::m_Time;
MObject                                 CEventKey::m_Parameter;
MObject                                 CEventKey::m_Key;
MObject                                 CEventKey::m_Type;
MObject                                 CEventKey::m_Data;
MObject                                 CEventKey::m_DataBool;
MObject                                 CEventKey::m_DataInt;
MObject                                 CEventKey::m_DataFloat;
MObject                                 CEventKey::m_DataVector;

MObject                                 CEventKey::m_Connect;

//===========================================================================
// Constructor / Destructor
//===========================================================================

CEventKey::CEventKey()
{
}

CEventKey::~CEventKey()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CEventKey::compute
//===========================================================================
// Description: This is the standard ::compute() method for Maya nodes.
//
// Constraints: 
//
// Parameters:  
//
// Return:      
//
//===========================================================================
MStatus CEventKey::compute( const MPlug & plug, MDataBlock & data )
{
     MStatus                             status = MS::kUnknownParameter;

     if  (
                ( plug == m_DataBool ) ||
                ( plug == m_DataInt ) ||
                ( plug == m_DataFloat ) ||
                ( plug == m_DataVector )
          )
     {
          MDataHandle inputData = data.inputValue( m_Data, &status );
          if( status == MS::kSuccess )
          {
                MString                     stringValue;

                MPlug                       dataPlug( plug.parent().child(kEventKeyAttrData) );

                dataPlug.getValue( stringValue );

                // Note: Must use this function's MPlug argument as .outputValue!
                // Attempting to use just m_KeyDataBool doesn't work, presumably
                // because it is part of an array and without a specific MPlug
                // into that array Maya doesn't know where to write the output value.
                MDataHandle outputData = data.outputValue( plug, &status );
                if ( status == MS::kSuccess )
                {
                     if ( plug == m_DataBool )
                     {
                          bool                boolValue = 0;
                          if ( stringValue.toLowerCase() == "true" )
                          {
                                boolValue = true;
                          }
                          else
                          {
                                sscanf( stringValue.asChar(), "%d", &boolValue );
                          }
                          outputData.set( boolValue );
                     }
                     else if ( plug == m_DataInt )
                     {
// Maya v4 uses 'int' for its declaration for overloaded MDataHandle::set().
#if ( MAYA_API_VERSION >= 400 )
                          int                 intValue = 0;
#else
// Maya v3 uses 'long'.
                          long                intValue = 0;
#endif
                          if ( stringValue.toLowerCase() == "true" )
                          {
                                intValue = 1;
                          }
                          else    // if string value is "false" then leave at default of zero.
                          if ( stringValue.toLowerCase() != "false" )
                          {
                                sscanf( stringValue.asChar(), "%d", &intValue );
                          }
                          outputData.set( intValue );
                     }
                     else if ( plug == m_DataFloat )
                     {
                          float               floatValue = 0.0F;
                          if ( stringValue.toLowerCase() == "true" )
                          {
                                floatValue = 1.0F;
                          }
                          else    // if string value is "false" then leave at default of zero.
                          if ( stringValue.toLowerCase() != "false" )
                          {
                                sscanf( stringValue.asChar(), "%f", &floatValue );
                          }
                          outputData.set( floatValue );
                     }
                     else if ( plug == m_DataVector )
                     {
                          float3               vector;
                          vector[0] = vector[1] = vector[2] = 0.0F;
                          sscanf( stringValue.asChar(), "%f %f %f", &vector[0], &vector[1], &vector[2] );
                          outputData.set( vector[0], vector[1], vector[2] );
                     }

                     status = data.setClean( plug );
                }
                else
                {
                     cerr << "!! FAILED to get output DataHandle for .keyData<type> !!" << endl;
                }
          }
          else
          {
                cerr << "!! FAILED to get input DataHandle for .keyData !!" << endl;
          }
     }

     return status;
}

//===========================================================================
// CEventKey::creator
//===========================================================================
// Description: This is the standard ::creator() method for Maya nodes.
//
// Return:      (void*) The new CEventKey object.
//
//===========================================================================
void* CEventKey::creator()
{
     return new CEventKey;
}

//===========================================================================
// CEventKey::initialize()
//===========================================================================
// Description: Creates all of the attributes for this node.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (MStatus): The usual.
//
//===========================================================================
MStatus CEventKey::initialize()
{
     MStatus                             status = MS::kSuccess;

     MFnMessageAttribute                 mAttr;
     MFnNumericAttribute                 nAttr;
     MFnTypedAttribute                   tAttr;
     MFnUnitAttribute                    uAttr;
     MFnCompoundAttribute                cAttr;
     MFnEnumAttribute                    eAttr;

     m_Name = tAttr.create( "name", "n", MFnData::kString, MObject::kNullObj, &status );
     addAttribute( m_Name );

     m_Time = uAttr.create( "time", "t", MFnUnitAttribute::kTime, 0.0, &status );
     uAttr.setKeyable( false );
     addAttribute( m_Time );

     m_Parameter = nAttr.create( "parameter", "p", MFnNumericData::kLong, 0, &status );
     nAttr.setKeyable( false );
     nAttr.setConnectable( false );
     addAttribute( m_Parameter );

     m_Type = eAttr.create( "type", "typ", CEventKey::kString, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .type" );
     eAttr.addField( "boolean",      CEventKey::kBoolean );
     eAttr.addField( "int",          CEventKey::kInt );
     eAttr.addField( "float",        CEventKey::kFloat );
     eAttr.addField( "vector",       CEventKey::kVector );
     eAttr.addField( "string",       CEventKey::kString );
     eAttr.setKeyable( false );
     eAttr.setConnectable( false );
     addAttribute( m_Type );

     // ** DATA **

     m_Data = tAttr.create( "data", "d", MFnData::kString, MObject::kNullObj, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to create .data" );
     tAttr.setHidden( true );
     status = addAttribute( m_Data );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .data" );

     m_DataBool = nAttr.create( "dataBool", "db", MFnNumericData::kBoolean, 0, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .dataBool" );
     nAttr.setHidden( true );
     nAttr.setWritable( false );
     nAttr.setStorable( false );
     addAttribute( m_DataBool);


     m_DataInt = nAttr.create( "dataInt", "di", MFnNumericData::kLong, 0, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .dataInt" );
     nAttr.setHidden( true );
     nAttr.setWritable( false );
     nAttr.setStorable( false );
     addAttribute( m_DataInt );

     m_DataFloat = nAttr.create( "dataFloat", "df", MFnNumericData::kFloat, 0, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .dataFloat" );
     nAttr.setHidden( true );
     nAttr.setWritable( false );
     nAttr.setStorable( false );
     addAttribute( m_DataFloat );

     m_DataVector = nAttr.create( "dataVector", "dv", MFnNumericData::k3Float, 0, &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .dataVector" );
     nAttr.setHidden( true );
     nAttr.setWritable( false );
     nAttr.setStorable( false );
     addAttribute( m_DataVector );

     m_Key = cAttr.create( "key", "k", &status );
     if ( status != MS::kSuccess ) MGlobal::displayError( "! FAILED ! to add .key" );
     cAttr.setArray( true );
     cAttr.setHidden( true );
     cAttr.addChild( m_Type );
     cAttr.addChild( m_Data );
     cAttr.addChild( m_DataBool );
     cAttr.addChild( m_DataInt );
     cAttr.addChild( m_DataFloat );
     cAttr.addChild( m_DataVector );
     addAttribute( m_Key );

     m_Connect = mAttr.create( "connect", "con", &status );
     cAttr.setReadable( false );
     addAttribute( m_Connect );

     // Set up associations to allow bool, int, float and vector attributes
     // to be calculated in the ::compute() method.
     attributeAffects( m_Data, m_DataBool );
     attributeAffects( m_Data, m_DataInt );
     attributeAffects( m_Data, m_DataFloat );
     attributeAffects( m_Data, m_DataVector );

     return status;
}

//===========================================================================
// CEventKey::GetTime           (static)
//===========================================================================
// Description: Reads the .time attribute for the specified p3dEventKey node
//              and returns its value.
//
// Constraints: 
//
// Parameters:  const MObject& p3dEventKey: The p3dEventKey from which to
//                                          query the .time attribute.
//
// Return:      (int): The value for the .time attribute; 0 (Zero) if
//                     attribute cannot be read.
//
//===========================================================================
MTime CEventKey::GetTime( const MObject& p3dEventKey )
{
     MTime                       time;

     MStatus                     status;
     MFnDependencyNode           fnDependNode( p3dEventKey, &status );
     if ( status == MS::kSuccess )
     {
          if ( fnDependNode.typeId() == gP3DEventKeyID )
          {
                MPlug timePlug = fnDependNode.findPlug( "time", &status );
                if ( status == MS::kSuccess )
                {
                     timePlug.getValue( time );
                }
          }
     }

     return time;
}

