//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 7, 2001
//
// Component:   p3dEventAnim Maya dependency node.
//
// Description: Declaration for the p3dEventAnim Maya dependency node.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __P3DEVENTANIM_H  
#define __P3DEVENTANIM_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MPxNode.h>
#include <maya/MPlug.h>
#include <maya/MDataBlock.h>
#include <maya/MFloatVector.h>
#include <maya/MString.h>
#include <maya/MObjectArray.h>

// ** Attempt with Internal Attributes FAILED!  For reference only, NOT USED **
//#include "p3dEventAnimData.h"
//#include "tlTable.hpp"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const MTypeId gP3DEventAnimID( 0x04017D );

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: This class == Maya p3dEventAnim dependency node.
//
// Constraints:
//
//===========================================================================

class CEventAnim : public MPxNode
{
public:

     enum EventAnimTypesEnum
     {
          kBoolean = 0,
          kInt,
          kFloat,
          kVector,
          kString
     };

     virtual MStatus             compute( const MPlug& plug, MDataBlock& data );

     static  void*               creator();
     static  MStatus             initialize();
     
     static  MTypeId             id;

     static  unsigned int        GetConnectedKeys( const MObject& p3dEventAnim, MObjectArray& keys );

// ** Attempt with Internal Attributes FAILED!  For reference only, NOT USED **
//    void                                Clear( void );
//    virtual bool                        getInternalValue( const MPlug& plug, MDataHandle& handle );
//    virtual bool                        setInternalValue( const MPlug& plug, const MDataHandle& handle );

// Constructor / Destructor
public:
     CEventAnim();
     ~CEventAnim();

protected:
     // No protected members.

private:
     static MObject              m_Message;                      // .message attribute (MFnMessageAttribute).
     static MObject              m_Address;                      // .address attribute (MFnData::kString).
     static MObject              m_Cycle;                        // .cycle attribute (MFnNumericData::kBoolean).
     static MObject              m_Key;                          // .key attribute (MFnUnitAttribute::kTime).

// ** Attempt with Internal Attributes FAILED!  For reference only, NOT USED **
//    int                                 GetKeyType( const MPlug& plug ) const;
//    bool                                HasIndex( unsigned int index, int& logicalIndex ) const;
//    void                                AddData( unsigned int index, const CEventAnimData& data );
//    tlTable<CEventAnimData>             m_data;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __P3DEVENTANIM_H  

/* MEL used to test node behavior.

createNode p3dEventAnim; createNode p3dEventKey; createNode p3dEventKey;
connectAttr p3dEventAnim1.key p3dEventKey1.connect;
connectAttr p3dEventAnim1.key p3dEventKey2.connect;
getAttr p3dEventKey1.time;
listConnections -connections true -plugs false p3dEventAnim1.key;

source animChannelTable;

*/

