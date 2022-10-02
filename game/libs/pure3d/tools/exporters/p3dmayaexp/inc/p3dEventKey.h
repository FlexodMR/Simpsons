//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 7, 2001
//
// Component:   p3dEventKey Maya dependency node.
//
// Description: Declaration for the p3dEventKey Maya dependency node.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __P3DEVENTKEY_H  
#define __P3DEVENTKEY_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MPxNode.h>
#include <maya/MTime.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const MTypeId gP3DEventKeyID( 0x04017C );

// This enum provides the indices for the child plugs of the .key attribute
enum EventKeyAttrEnum
{
     kEventKeyAttrType = 0,
     kEventKeyAttrData,
     kEventKeyAttrDataBool,
     kEventKeyAttrDataInt,
     kEventKeyAttrDataFloat,
     kEventKeyAttrDataVector,
};

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: This class == Maya p3dEventKey dependency node.
//
// Constraints:
//
//===========================================================================

class CEventKey : public MPxNode
{
public:

     // Enumeration for the possible values of the .type attribute (m_Type).
     enum EventAnimTypesEnum
     {
          kBoolean = 0,
          kInt,
          kFloat,
          kVector,
          kString
     };

     virtual MStatus                     compute( const MPlug& plug, MDataBlock& data );
     static  void*                       creator();
     static  MStatus                     initialize();
     
     static  MTypeId                     id;

     static  MTime                       GetTime( const MObject& p3dEventKey );

// Constructor / Destructor
public:
     CEventKey();
     ~CEventKey();

protected:
     // No protected members.

private:
     static MObject                      m_Name;                         // .name attribute (MFnData::kString).
     static MObject                      m_Time;                         // .time attribute (MFnNumericData::kInt).
     static MObject                      m_Parameter;                    // .parameter attribute (MFnNumericData::kInt).
     static MObject                      m_Key;                          // .key attribute (MFnCompoundAttribute, array).
     static MObject                      m_Type;                         //  ->  .type attribute (MFnEnumAttribute).
     static MObject                      m_Data;                         //  ->  .data attribute (MFnTypedAttribute::kString).
     static MObject                      m_DataBool;                     //  ->  .data attribute, as bool (MFnTypedAttribute::kString).
     static MObject                      m_DataInt;                      //  ->  .data attribute, as int (MFnTypedAttribute::kString).
     static MObject                      m_DataFloat;                    //  ->  .data attribute, as float (MFnTypedAttribute::kString).
     static MObject                      m_DataVector;                   //  ->  .data attribute, as vector (MFnTypedAttribute::kString).

     static MObject                      m_Connect;                      // .connect attribute (MFnMessageAttribute)
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __P3DEVENTKEY_H  

