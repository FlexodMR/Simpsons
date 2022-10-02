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

#include "p3dEventAnim.h"
#include "p3dEventKey.h"        // for MTypeId

#include <maya/MFnMessageAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MDataHandle.h>
#include <maya/MPlug.h>
#include <maya/MPlugArray.h>
#include <maya/MGlobal.h>

#include <iostream.h>
#include <assert.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

MTypeId                         CEventAnim::id( gP3DEventAnimID );  // See //depot/Development/documentation/Pure3D/Maya/MayaTypeIds.xls

MObject                         CEventAnim::m_Message;
MObject                         CEventAnim::m_Address;
MObject                         CEventAnim::m_Cycle;
MObject                         CEventAnim::m_Key;

//===========================================================================
// Constructor / Destructor
//===========================================================================

CEventAnim::CEventAnim()
{
}

CEventAnim::~CEventAnim()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CEventAnim::compute
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
MStatus CEventAnim::compute( const MPlug & plug, MDataBlock & data )
{
     MStatus                             status = MS::kUnknownParameter;

     return status;
}

//===========================================================================
// CEventAnim::creator
//===========================================================================
// Description: This is the standard ::creator() method for Maya nodes.
//
// Return:      (void*) The new CEventAnim object.
//
//===========================================================================
void* CEventAnim::creator()
{
     return new CEventAnim;
}

//===========================================================================
// CEventAnim::initialize()
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
MStatus CEventAnim::initialize()
{
    MStatus                     status = MS::kSuccess;

    MFnMessageAttribute         mAttr;
    MFnNumericAttribute         nAttr;
    MFnTypedAttribute           tAttr;
    MFnUnitAttribute            uAttr;

    // NOTE: String attributes should be initialized to a valid string
    //       (and not just kNullObj), else they don't properly update
    //       in file I/O and in the Attribute Editor.
    MFnStringData                         fnStringData;
    MObject                               defaultString;

    defaultString = fnStringData.create( "" );

    m_Message = mAttr.create( "connect", "con", &status );
    if ( status != MS::kSuccess ) MGlobal::displayError( "Could not create .connect" );
    mAttr.setWritable( true );      // can connect to it...
    mAttr.setReadable( false );     // but not from it.
    status = addAttribute( m_Message );
    if ( status != MS::kSuccess ) MGlobal::displayError( "Could not add .connect" );

    m_Address = tAttr.create( "address", "addr", MFnData::kString, defaultString, &status );
    addAttribute( m_Address );

    m_Cycle = nAttr.create( "cyclic", "cyc", MFnNumericData::kBoolean, 0, &status );
    nAttr.setKeyable( false );
    addAttribute( m_Cycle );

    m_Key = mAttr.create( "key", "k", &status );
    uAttr.setWritable( false );
    addAttribute( m_Key );

    return status;
}

//===========================================================================
// CEventAnim::GetConnectedKeys     (static)
//===========================================================================
// Description: Populates the provided array with the p3dEventKey nodes
//              that are connected to the specified p3dEventAnim node.
//
// Constraints: The provided MObjectArray is cleared and will be returned
//              empty if no p3dEventKey nodes are found.
//
// Parameters:  const MObject& p3dEventAnim: The p3dEventAnim node.  The
//                    .key attribute for this node will be traced downstream
//                    and all p3dEventKey nodes found will be added to...
//              MObjectArray& keys: ...the storage array for the p3dEventKey
//                                  nodes that were found.
//
// Return:      (unsigned int): The number of p3dEventKey nodes found.
//
//===========================================================================
unsigned int CEventAnim::GetConnectedKeys( const MObject& p3dEventAnim, MObjectArray& keys )
{
     unsigned int                numKeys = 0;

     bool                        bStatusOK = true;

     keys.clear();

     MStatus                     status;
     MFnDependencyNode           fnDependNode( p3dEventAnim, &status );
     if ( status == MS::kSuccess )
     {
          if ( fnDependNode.typeId() == gP3DEventAnimID )
          {
                MPlug keyPlug = fnDependNode.findPlug( "key", &status );

                if ( status == MS::kSuccess )
                {
                     MPlugArray  connectedPlugs;
                     if ( keyPlug.connectedTo( connectedPlugs, false, /* asSrc */ true, &status ) )
                     {
                          unsigned int c;
                          for ( c = 0; c < connectedPlugs.length(); c++ )
                          {
                                MObject                 keyNode = connectedPlugs[c].node();

                                // As destination there can be only zero or one connection.
                                fnDependNode.setObject( keyNode );

                                if ( fnDependNode.typeId() == gP3DEventKeyID )
                                {
                                     // Keys must be inserted in order, from lowest time
                                     // to highest time.  A time value may not be repeated.
                                     int                 bAppend = true;

                                     unsigned int i;
                                     for ( i = 0; i < keys.length(); i++ )
                                     {
                                          double newTime = CEventKey::GetTime( keyNode ).value();
                                          double existingTime = CEventKey::GetTime( keys[i] ).value();

                                          if ( CEventKey::GetTime( keyNode ) == CEventKey::GetTime( keys[i] ) )
                                          {
                                                MString     warning = "Event Key: Time duplicated on " + fnDependNode.name() + ".  Cannot process Event Animation.";
                                                MGlobal::displayWarning( warning );
                                                bAppend = false;
                                                bStatusOK = false;
                                                break;
                                          }

                                          if ( CEventKey::GetTime( keyNode ) < CEventKey::GetTime( keys[i] ) )
                                          {
                                                keys.insert( keyNode, i );
                                                bAppend = false;
                                                break;
                                          }
                                     }

                                     if ( bAppend && bStatusOK )
                                     {
                                          keys.append( keyNode );
                                     }

                                     if ( bStatusOK )
                                     {
                                          numKeys++;
                                     }

                                }       // if ( connected plug is a p3dEventKey node )

                                // If something went awry, break out.
                                if ( !bStatusOK ) break;

                          }       // for ( connected plugs )
                     }       // if ( .key has downstream connections )
                }       // if ( found .key attribute )
          }       // if ( node is p3dEventAnim )
     }       // if ( fnDependNode is valid )

     // If something went awry, cannot export keys for this event.
     if ( !bStatusOK ) numKeys = 0;

     return numKeys;
}

//===========================================================================
// *** The following code was all an attempt to implement 
// *** Internal Attributes.
//
//  !! The experiment failed !!
//
// Source is left in for reference purposes, but is not used.
//
//===========================================================================

//===========================================================================
// CEventAnim::getInternalValue
//===========================================================================
// Description: Processes requests through MEL 'getAttr' and API MPlug::getValue()
//              for attributes that are marked as "internal."
//
//              Internal attributes for this node:
//                  .keyData
//
//              The keyType is queried for the datatype at the current key,
//              and the data for the key is stored in the appropriate private
//              member variable.
//
// Constraints: 
//
// Parameters:  const MPlug& plug: Reference to the current MPlug being queried.
//              MDataHandle& handle: Data handle to store and return the plug value.
//
// Return:      (bool): TRUE if the request is processed; FALSE if Maya needs to
//                      call the default method instead.
//
//===========================================================================
//bool CEventAnim::getInternalValue( const MPlug& plug, MDataHandle& handle )
//{
//    bool                                bOK = false;
//
//    if ( plug == m_KeyData )
//    {
//        MString                         returnHandle;
//        int                             logicalIndex = 0;
//
//        if ( HasIndex( plug.parent().logicalIndex(), logicalIndex ) )
//        {
//            assert( logicalIndex <= m_data.Count() );
//
//            int                         type = GetKeyType( plug );
//
//            switch ( type )
//            {
//                case (CEventAnim::kBoolean):
//                {
//                    returnHandle = returnHandle + ( m_data[logicalIndex].AsBool() ? "1" : "0" );
//                    break;
//                }
//
//                case (CEventAnim::kInt):
//                {
//                    returnHandle = returnHandle + m_data[logicalIndex].AsInt();
//                    break;
//                }
//
//                case (CEventAnim::kFloat):
//                {
//                    returnHandle = returnHandle + m_data[logicalIndex].AsFloat();
//                    break;
//                }
//
//                case (CEventAnim::kVector):
//                {
//                    MFloatVector            vectorData( m_data[logicalIndex].AsVector() );
//                    returnHandle = returnHandle + vectorData.x;
//                    returnHandle = returnHandle + " ";
//                    returnHandle = returnHandle + vectorData.y;
//                    returnHandle = returnHandle + " ";
//                    returnHandle = returnHandle + vectorData.z;
//                    break;
//                }
//
//                case (CEventAnim::kString):
//                {
//                    returnHandle = m_data[logicalIndex].AsString();
//                    break;
//                }
//
//                default:
//                {
//                    cerr << "! UNKNOWN EventAnim Type !";
//                }
//            }
//        }       // if ( HasIndex() )
//
//        // If logicalIndex is not found, this will be a NULL string.
//        handle.set( returnHandle );
//
//        bOK = true;
//    }
//
//    if ( !bOK )
//    {
//        cerr << "!! Logical Index NOT FOUND !! " << endl;
//    }
//
//    return bOK;
//}

//===========================================================================
// CEventAnim::setInternalValue
//===========================================================================
// Description: Processes requests through MEL 'setAttr' and API MPlug::setValue()
//              for attributes that are marked as "internal."
//
//              Internal attributes for this node:
//                  .keyData
//
// Constraints: ** THIS DOESN'T WORK FOR MFnGenericAttribute!! ** 
//
// Parameters:  const MPlug& plug: Reference to the current MPlug being queried.
//              const MDataHandle& handle: Data handle specifying the data to set.
//
// Return:      (bool): TRUE if the request is processed; FALSE if Maya needs to
//                      call the default method instead.
//
//===========================================================================
//bool CEventAnim::setInternalValue( const MPlug& plug, const MDataHandle& handle )
//{
//    bool                                bOK = false;
//
//    if ( plug == m_KeyData )
//    {
//        CEventAnimData              eventAnimData( plug.parent().logicalIndex() );
//
//        eventAnimData.Set( handle.asString() );
//
//        int                             logicalIndex = 0;
//        if ( HasIndex( eventAnimData.Index(), logicalIndex ) )
//        {
//            m_data[logicalIndex] = eventAnimData;
//        }
//        else
//        {
//            m_data.Append( eventAnimData );
//        }
//
//        HasIndex( eventAnimData.Index(), logicalIndex );
//        clog << ".internalKeyData[" << logicalIndex << "]: " << m_data[logicalIndex].AsString() << endl;
//
//
//        bOK = true;
//    }
//
//    return bOK;
//}

//===========================================================================
// CEventAnim::GetKeyType           (const)
//===========================================================================
// Description: Determines the enum value of .keyType for the appropriate
//              child or sibling of the specified MPlug.
//
//              If .keyTimeTypeData[] is specified as the plug, the .keyType
//              child of this plug is queried.
//
//              If .keyTimeTypeData[].keyData is specified as the plug then
//              this function "pops" the plug to .keyTimeTypeData[] and then
//              finds the .keyType child.
//
// Constraints: 
//
// Parameters:  const MPlug& plug: The parent or sibling for the .keyType plug.
//
// Return:      (int): The key type - will be one of the EventAnimTypesEnum values.
//
//===========================================================================
//int CEventAnim::GetKeyType( const MPlug& plug ) const
//{
//    int                                 keyType = CEventAnim::kBoolean;
//
//    MPlug                               arrayPlug( plug );
//
//    if ( plug.isChild() )
//    {
//        arrayPlug = plug.parent();
//    }
//
//    unsigned int                        index = arrayPlug.logicalIndex();
//
//    MPlug                               plugType = arrayPlug.child( kEventAnimKeyType );
//    plugType.getValue( keyType );
//
//    return keyType;
//}

//===========================================================================
// CEventAnim::Clear
//===========================================================================
// Description: Clears all cached attribute values.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
//void CEventAnim::Clear( void )
//{
////    m_data.ZeroCount();
//}

//bool CEventAnim::HasIndex( unsigned int index, int& logicalIndex ) const
//{
//    bool                                hasIndex = false;
//
//    int                                 d;
//
//    for ( d = 0; d < m_data.Count(); d++ )
//    {
//        if ( m_data[d].Index() == index )
//        {
//            hasIndex = true;
//            logicalIndex = d;
//            break;
//        }
//    }
//
//    return hasIndex;
//}

