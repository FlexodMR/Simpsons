//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchPoint.cpp
//
// Subsystem:   Radical Foundation Tech - Debug Watch Server DLL
//
// Description:	implementation of the CWatchPoint class.
//
// Revisions:	Apr 30, 2002
//
//=============================================================================
#include "stdafx.h"
#include "WatchPoint.h"

//===========================================================================
// CWatchPoint::CWatchPoint
//===========================================================================
// Description: cstor
//===========================================================================
CWatchPoint::CWatchPoint( ) :
    m_bInitialized( false ),
    m_pParentNode( NULL )
{
    //
    // zero memory is a must
    //
    memset( & m_Attribute, 0, sizeof( m_Attribute ) );
    memset( & m_Value, 0, sizeof( m_Value ) );
}

//===========================================================================
// CWatchPoint::CWatchPoint
//===========================================================================
// Description: dstor
//===========================================================================
CWatchPoint::~CWatchPoint()
{
    DeleteMemoryAllocated( );
}

//===========================================================================
// CWatchPoint::DeleteMemoryAllocated
//===========================================================================
// Description: Delete memory allocated by attributes
//
// Constraints:	
//
// Parameters:	pAttribute - attributes provided by watch protocal
// 
// Return:      true if initialized, false otherwise.
//
//===========================================================================
void CWatchPoint::DeleteMemoryAllocated( radWatchServerWPAttribute * pAttribute )
{
    //
    // it's a enumeration, delete all related points in m_Attribute
    //
    if ( pAttribute->m_DataType == radWatchServerWPDEnum )
    {
        //
        // delete all string
        //
        for ( unsigned int uIdx = 0; uIdx < pAttribute->m_DataAttrib.m_EnumAttr.m_EnumCount; uIdx++ )
        {
            delete[ ] pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ uIdx ];
            pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ uIdx ] = NULL;
        }

        //
        // delete pointer to string
        //
        delete[ ] pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList;
        pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList = NULL;

        delete[ ] pAttribute->m_DataAttrib.m_EnumAttr.m_pEnumValueList;
        pAttribute->m_DataAttrib.m_EnumAttr.m_pEnumValueList = NULL;
    }
}

//===========================================================================
// CWatchPoint::Initialize
//===========================================================================
// Description: Inititalize the watch point.
//
// Constraints:	
//
// Parameters:	pAttribute - attributes provided by watch protocal
// 
// Return:      true if initialized, false otherwise.
//
//===========================================================================
void CWatchPoint::DeleteMemoryAllocated( radWatchServerWPValue * pValue )
{
    //
    // it's a string, delete all string in pValue
    //
    if ( pValue->m_DataType == radWatchServerWPDString )
    {
        //
        // delete string
        //
        delete[ ] pValue->m_DataValue.m_StringValue;
        pValue->m_DataValue.m_StringValue = NULL;
    }
    else if (pValue->m_DataType == radWatchServerWPDEnum )
    {
        //
        // delete pointer to string
        //
        delete[ ] pValue->m_DataValue.m_StringValue;
        pValue->m_DataValue.m_StringValue = NULL;
    }
}

//===========================================================================
// CWatchPoint::Initialize
//===========================================================================
// Description: Inititalize the watch point.
//
// Constraints:	
//
// Parameters:	pAttribute - attributes provided by watch protocal
// 
// Return:      true if initialized, false otherwise.
//
//===========================================================================
bool CWatchPoint::Initialize( const WCCreate * pAttribute )
{
    if ( m_bInitialized == true )
    {
        return false;
    }

    memset( & m_Value, 0, sizeof( m_Value ) );

    //
    // Do initialization
    //
    switch( pAttribute->m_DataType )
    {
	    case WPDUnsignedInt:
        {
            m_Value.m_DataType = radWatchServerWPDUnsignedInt;
            m_Attribute.m_DataType = radWatchServerWPDUnsignedInt;
            m_Attribute.m_DataAttrib.m_UIntAttr.m_Min = pAttribute->m_Attrib.m_ui.m_Min;
            m_Attribute.m_DataAttrib.m_UIntAttr.m_Max = pAttribute->m_Attrib.m_ui.m_Max;
        }
        break;

        case WPDInt:
        {
            m_Value.m_DataType = radWatchServerWPDInt;
            m_Attribute.m_DataType = radWatchServerWPDInt;
            m_Attribute.m_DataAttrib.m_IntAttr.m_Min = pAttribute->m_Attrib.m_i.m_Min;
            m_Attribute.m_DataAttrib.m_IntAttr.m_Max = pAttribute->m_Attrib.m_i.m_Max;
        }
        break;

	    case WPDUnsignedShort:
        {
            m_Value.m_DataType = radWatchServerWPDUnsignedShort;
            m_Attribute.m_DataType = radWatchServerWPDUnsignedShort;
            m_Attribute.m_DataAttrib.m_UShortAttr.m_Min = pAttribute->m_Attrib.m_us.m_Min;
            m_Attribute.m_DataAttrib.m_UShortAttr.m_Max = pAttribute->m_Attrib.m_us.m_Max;
        }
        break;

	    case WPDShort:
        {
            m_Value.m_DataType = radWatchServerWPDShort;
            m_Attribute.m_DataType = radWatchServerWPDShort;
            m_Attribute.m_DataAttrib.m_ShortAttr.m_Min = pAttribute->m_Attrib.m_s.m_Min;
            m_Attribute.m_DataAttrib.m_ShortAttr.m_Max = pAttribute->m_Attrib.m_s.m_Max;
        }
        break;

	    case WPDUnsignedChar:
        {
            m_Value.m_DataType = radWatchServerWPDUnsignedChar;
            m_Attribute.m_DataType = radWatchServerWPDUnsignedChar;
            m_Attribute.m_DataAttrib.m_UCharAttr.m_Min = pAttribute->m_Attrib.m_uc.m_Min;
            m_Attribute.m_DataAttrib.m_UCharAttr.m_Max = pAttribute->m_Attrib.m_uc.m_Max;
        }
        break;

	    case WPDChar:
        {
            m_Value.m_DataType = radWatchServerWPDChar;
            m_Attribute.m_DataType = radWatchServerWPDChar;
            m_Attribute.m_DataAttrib.m_CharAttr.m_Min = pAttribute->m_Attrib.m_c.m_Min;
            m_Attribute.m_DataAttrib.m_CharAttr.m_Max = pAttribute->m_Attrib.m_c.m_Max;
        }
        break;

	    case WPDBoolean:
        {
            m_Value.m_DataType = radWatchServerWPDBoolean;
            m_Attribute.m_DataType = radWatchServerWPDBoolean;
        }
        break;

	    case WPDFloat:
        {
            m_Value.m_DataType = radWatchServerWPDFloat;
            m_Attribute.m_DataType = radWatchServerWPDFloat;
            m_Attribute.m_DataAttrib.m_FloatAttr.m_Min = pAttribute->m_Attrib.m_f.m_Min;
            m_Attribute.m_DataAttrib.m_FloatAttr.m_Max = pAttribute->m_Attrib.m_f.m_Max;
        }
        break;

	    case WPDString:
        {
            m_Value.m_DataType = radWatchServerWPDString;
            m_Attribute.m_DataType = radWatchServerWPDString;
            m_Attribute.m_DataAttrib.m_StringAttr.m_Length = pAttribute->m_Attrib.m_string.m_Length;
        }
        break;

	    case WPDVector:
        {
            m_Value.m_DataType = radWatchServerWPDVector;
            m_Attribute.m_DataType = radWatchServerWPDVector;
            m_Attribute.m_DataAttrib.m_VectorAttr.m_Min = pAttribute->m_Attrib.m_vector.m_Min;
            m_Attribute.m_DataAttrib.m_VectorAttr.m_Max = pAttribute->m_Attrib.m_vector.m_Max;
        }
        break;

        case WPDFunction:
        {
            m_Value.m_DataType = radWatchServerWPDFunction;
            m_Attribute.m_DataType = radWatchServerWPDFunction;
        }
        break;

        case WPDEnum:
        {
            rAssert( false );
            return false;
        }
        break;

        default:
        {
            rAssert( false );
            return false;
        }
        break;
    }

    //
    // other initialization.
    //
    m_Callback = pAttribute->m_Callback;
    m_UserData = pAttribute->m_UserData;
    strncpy( m_szName, pAttribute->m_Name, WP_MAX_NAMELENGTH );
    m_Address = pAttribute->m_Address;

    m_bInitialized = true;

    return true;
}

//===========================================================================
// CWatchPoint::Initialize
//===========================================================================
// Description: Initialize the watch point.
//
// Constraints:	
//
// Parameters:	pAttribute - data provided by the watch protocal. 
// 
// Return:      true if initialized successfully, false otherwise
//
//===========================================================================
bool CWatchPoint::Initialize( const WCCreateEnum * pAttribute )
{
    if ( m_bInitialized == true )
    {
        return false;
    }

    memset( & m_Value, 0, sizeof( m_Value ) );

    m_Attribute.m_DataType = radWatchServerWPDEnum;

    //
    // initialize the enumeration list.
    //

    //
    // how many enumeration are there?
    //
  	unsigned int uEnumCount = 0;
    unsigned char * pEnumData = ( unsigned char* )( pAttribute ) + sizeof( WCCreateEnum );
	unsigned char * pInfo = pEnumData;
	while( *pInfo != '\0' )
	{
		pInfo += (strlen( (const char*) pInfo ) + 1 + sizeof( int ));
        uEnumCount++;
	}

    m_Attribute.m_DataAttrib.m_EnumAttr.m_EnumCount = uEnumCount;

    //
    // allocate memory.
    //
    m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList = new char*[ uEnumCount ];
    m_Attribute.m_DataAttrib.m_EnumAttr.m_pEnumValueList = new int[ uEnumCount ];

    if (
         m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList == NULL || 
         m_Attribute.m_DataAttrib.m_EnumAttr.m_pEnumValueList == NULL
       )
    {
        return false;
    }
    memset( m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList, 0, uEnumCount * sizeof( char* ) );
    memset( m_Attribute.m_DataAttrib.m_EnumAttr.m_pEnumValueList, 0, uEnumCount * sizeof( int ) );

    //
    // Fill the array.
    //
    for( unsigned int i = 0 ; i < uEnumCount; i++ )
    {
        unsigned int stringSize = strlen( (const char*) pEnumData );

        m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ i ] = new char[ stringSize + 1 ];
        strcpy( m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ i ], (const char*) pEnumData );

        pEnumData += stringSize + 1;

        m_Attribute.m_DataAttrib.m_EnumAttr.m_pEnumValueList[ i ] = *((int*) pEnumData);

        pEnumData += sizeof( int );
    }

    //
    // other initialization.
    //
    m_Callback = pAttribute->m_Callback;
    m_UserData = pAttribute->m_UserData;
    strncpy( m_szName, pAttribute->m_Name, WP_MAX_NAMELENGTH );
    m_Address = pAttribute->m_Address;

    m_bInitialized = true;

    return true;
}

//===========================================================================
// CWatchPoint::GetName
//===========================================================================
// Description: Return the name of the watch point.
//
// Constraints:	
//
// Parameters:	None
// 
// Return:      name of the watch point
//
//===========================================================================
const char * CWatchPoint::GetName( ) const
{
    rAssert( strlen( m_szName ) > 0 );
    return m_szName;
}

//===========================================================================
// CWatchPoint::DeleteMemoryAllocated
//===========================================================================
// Description: Delete the memory allocated in the watch point data structure.
//
// Constraints:	
//
// Parameters:	None
// 
// Return:      None
//
//===========================================================================
void CWatchPoint::DeleteMemoryAllocated( )
{
    DeleteMemoryAllocated( & m_Attribute );
    DeleteMemoryAllocated( & m_Value );
}

//===========================================================================
// CWatchPoint::IsSameType
//===========================================================================
// Description: compare between protocal watch type and exported watch point
//              type
//
// Constraints:	None
//
// Parameters:	DllType - watch point type exported from the dll.
//              ProtocalType - watch point type provided by the protocal.
// 
// Return:      true if both are the same type, false otherwise.
//
//===========================================================================
bool CWatchPoint::IsSameType( radWatchServerWPType DllType, WPDataType ProtocalType )
{
    switch( ProtocalType )
    {
        case WPDUnsignedInt:
        {
            if ( DllType == radWatchServerWPDUnsignedInt )
            {
                return true;
            }
        }
        break;

        case WPDInt:
        {
            if ( DllType == radWatchServerWPDInt )
            {
                return true;
            }
        }
        break;

        case WPDUnsignedShort:
        {
            if ( DllType == radWatchServerWPDUnsignedShort )
            {
                return true;
            }
        }
        break;

        case WPDShort:
        {
            if ( DllType == radWatchServerWPDShort )
            {
                return true;
            }
        }
        break;

        case WPDUnsignedChar:
        {
            if ( DllType == radWatchServerWPDUnsignedChar )
            {
                return true;
            }
        }
        break;

        case WPDChar:
        {
            if ( DllType == radWatchServerWPDChar )
            {
                return true;
            }
        }
        break;

        case WPDBoolean:
        {
            if ( DllType == radWatchServerWPDBoolean )
            {
                return true;
            }
        }
        break;

        case WPDFloat:
        {
            if ( DllType == radWatchServerWPDFloat )
            {
                return true;
            }
        }
        break;

        case WPDEnum:
        {
            if ( DllType == radWatchServerWPDEnum )
            {
                return true;
            }
        }
        break;

        case WPDString:
        {
            if ( DllType == radWatchServerWPDString )
            {
                return true;
            }
        }
        break;

        case WPDVector:
        {
            if ( DllType == radWatchServerWPDVector )
            {
                return true;
            }
        }
        break;

        case WPDFunction:
        {
            if ( DllType == radWatchServerWPDFunction )
            {
                return true;
            }
        }
        break;

        default:
        {
            rAssert( false );
        }
        break;
    }
    return false;
}

//===========================================================================
// CWatchPoint::GetProtocalTypeFromDllType
//===========================================================================
// Description: convert DLL type(radWatchServerWPType) to protcal type (WPDataType)
//
// Constraints:	None
//
// Parameters:	DllType - dll type
// 
// Return:      protocal data type.
//
//===========================================================================
WPDataType CWatchPoint::GetProtocalTypeFromDllType( radWatchServerWPType DllType )
{
    switch( DllType )
    {
        case radWatchServerWPDUnsignedInt:
        {
            return WPDUnsignedInt;
        }
        break;

        case radWatchServerWPDInt:
        {
            return WPDInt;
        }
        break;

        case radWatchServerWPDUnsignedShort:
        {
            return WPDUnsignedShort;
        }
        break;

        case radWatchServerWPDShort:
        {
            return WPDShort;
        }
        break;

        case radWatchServerWPDUnsignedChar:
        {
            return WPDUnsignedChar;
        }
        break;

        case radWatchServerWPDChar:
        {
            return WPDChar;
        }
        break;

        case radWatchServerWPDBoolean:
        {
            return WPDBoolean;
        }
        break;

        case radWatchServerWPDFloat:
        {
            return WPDFloat;
        }
        break;

        case radWatchServerWPDEnum:
        {
            return WPDEnum;
        }
        break;

        case radWatchServerWPDString:
        {
            return WPDString;
        }
        break;

        case radWatchServerWPDVector:
        {
            return WPDVector;
        }
        break;

        case radWatchServerWPDFunction:
        {
            return WPDFunction;
        }
        break;

        default:
        {
            rAssert( false );
        }
        break;
    }
    rAssert( false );
    return WPDUnsignedInt;
}

//===========================================================================
// CWatchPoint::SetValue
//===========================================================================
// Description: Set the value of the watch point by data provided by protocal
//
// Constraints:	None
//
// Parameters:	pValue - data provided by protocal
// 
// Return:      true if both are the same type and value has been changed,
//              false otherwise.
//
//===========================================================================
bool CWatchPoint::SetValue( const WCValue* pValue )
{
    rAssert( pValue != NULL );

    if ( pValue == NULL )
    {
        return false;
    }

    if ( ! IsSameType( m_Attribute.m_DataType, pValue->m_DataType ) )
    {
        return false;
    }

    //
    // I really don't like switch...case, next closest is
    // inheritance, which is just as bad if not worse, speically
    // with the enumeration.
    //

    //
    // convert protocal data to internal storage data with data allocation.
    //
    switch( pValue->m_DataType )
    {
        case WPDUnsignedInt:
        {
            if( m_Value.m_DataValue.m_UIntValue != pValue->m_Attrib.m_ui.m_Value )
            {
                m_Value.m_DataValue.m_UIntValue = pValue->m_Attrib.m_ui.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDInt:
        {
            if( m_Value.m_DataValue.m_IntValue != pValue->m_Attrib.m_i.m_Value )
            {
                m_Value.m_DataValue.m_IntValue = pValue->m_Attrib.m_i.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDUnsignedShort:
        {
            if ( m_Value.m_DataValue.m_UShortValue != pValue->m_Attrib.m_us.m_Value )
            {
                m_Value.m_DataValue.m_UShortValue = pValue->m_Attrib.m_us.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDShort:
        {
            if ( m_Value.m_DataValue.m_ShortValue != pValue->m_Attrib.m_s.m_Value )
            {
                m_Value.m_DataValue.m_ShortValue = pValue->m_Attrib.m_s.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDUnsignedChar:
        {
            if ( m_Value.m_DataValue.m_UCharValue != pValue->m_Attrib.m_uc.m_Value )
            {
                m_Value.m_DataValue.m_UCharValue = pValue->m_Attrib.m_uc.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDChar:
        {
            if ( m_Value.m_DataValue.m_CharValue != pValue->m_Attrib.m_c.m_Value )
            {
                m_Value.m_DataValue.m_CharValue = pValue->m_Attrib.m_c.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDBoolean:
        {
            if ( m_Value.m_DataValue.m_BooleanValue != ( pValue->m_Attrib.m_bool.m_Value != 0 ) )
            {
                m_Value.m_DataValue.m_BooleanValue = ( pValue->m_Attrib.m_bool.m_Value != 0 );
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDFloat:
        {
            if ( m_Value.m_DataValue.m_FloatValue != pValue->m_Attrib.m_f.m_Value )
            {
                m_Value.m_DataValue.m_FloatValue = pValue->m_Attrib.m_f.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDEnum:
        {
            if ( m_Value.m_DataValue.m_EnumValue != pValue->m_Attrib.m_enum.m_Value )
            {
                m_Value.m_DataValue.m_EnumValue = pValue->m_Attrib.m_enum.m_Value;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDString:
        {
            if ( m_Value.m_DataValue.m_StringValue == NULL || strcmp( m_Value.m_DataValue.m_StringValue, ( char *)( pValue ) + sizeof( WCValue ) ) != 0 )
            {
                delete[ ] m_Value.m_DataValue.m_StringValue;
                m_Value.m_DataValue.m_StringValue = NULL;

                m_Value.m_DataValue.m_StringValue = new char[ pValue->m_Attrib.m_string.m_Length + 1 ];

                if ( m_Value.m_DataValue.m_StringValue != NULL )
                {
                    memcpy( m_Value.m_DataValue.m_StringValue, ( char *)( pValue ) + sizeof( WCValue ), pValue->m_Attrib.m_string.m_Length );
                    m_Value.m_DataValue.m_StringValue[ pValue->m_Attrib.m_string.m_Length ] = '\0';
                }
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDVector:
        {
            if (
                    m_Value.m_DataValue.m_VectorValue.m_x != pValue->m_Attrib.m_vector.m_x ||
                    m_Value.m_DataValue.m_VectorValue.m_y != pValue->m_Attrib.m_vector.m_y ||
                    m_Value.m_DataValue.m_VectorValue.m_z != pValue->m_Attrib.m_vector.m_z
               )
            {
                m_Value.m_DataValue.m_VectorValue.m_x = pValue->m_Attrib.m_vector.m_x;
                m_Value.m_DataValue.m_VectorValue.m_y = pValue->m_Attrib.m_vector.m_y;
                m_Value.m_DataValue.m_VectorValue.m_z = pValue->m_Attrib.m_vector.m_z;
                return true;
            }
            else
            {
                return false;
            }
        }
        break;

        case WPDFunction:
        {
            rAssert( false );
            return false;
        }
        break;

        default:
        {
            rAssert( false );
            return false;
        }
        break;
    }

    return true;
}

//===========================================================================
// CWatchPoint::SetValue
//===========================================================================
// Description: Set value from PC to client console.
//
// Constraints:	None
//
// Parameters:	pValue - data to be set
// 
// Return:      true if attempted, false otherwise.
//
//===========================================================================
unsigned int CWatchPoint::GetUpdateBufferSize( const radWatchServerWPValue * pValue ) const
{
    if ( m_Attribute.m_DataType == radWatchServerWPDString )
    {
        //
        // For string, string data is appended at end of the packet.
        // So, the buffer required is actual size of the packet plus
        // size of the string.
        //
        unsigned int uStrLength = strlen( pValue->m_DataValue.m_StringValue );

        //
        // Lets keep things align to 4 to prevent problems of ps2
        //
        if( ( uStrLength & 0x03 ) != 0 )
        {
            uStrLength = ( uStrLength & 0xfffffffc ) + 0x4;        
        }

        return sizeof( WCWriteValue ) + uStrLength;
    }
    else
    {
        return sizeof( WCWriteValue );
    }
}

//===========================================================================
// CWatchPoint::SetValue
//===========================================================================
// Description: Set value from PC to client console.
//
// Constraints:	None
//
// Parameters:	pValue - data to be set
// 
// Return:      true if attempted, false otherwise.
//
//===========================================================================
bool CWatchPoint::UpdateClientValue( const radWatchServerWPValue * pValue, void * pTxBuffer ) const
{
    rAssert( pValue != NULL && pTxBuffer != NULL );
    rAssert( pValue->m_DataType == m_Attribute.m_DataType );

    if ( pValue == NULL || pTxBuffer == NULL )
    {
        return false;
    }

    if ( pValue->m_DataType != m_Attribute.m_DataType )
    {
        return false;
    }

    //
    // setup the value pointer
    //
    WCWriteValue* pBuffer = (WCWriteValue*) pTxBuffer;

    memset( pBuffer, 0, sizeof( WCWriteValue ) );

    if( pBuffer != NULL )
    {        
        pBuffer->m_Command = WPCWriteValue;
        pBuffer->m_DataType = GetProtocalDataType( );
        pBuffer->m_Address = m_Address;
        pBuffer->m_Callback = m_Callback;
        pBuffer->m_UserData = m_UserData;
    }

    switch( pValue->m_DataType )
    {
        case radWatchServerWPDUnsignedInt:
        {
            pBuffer->m_Attrib.m_ui.m_Value = pValue->m_DataValue.m_UIntValue;
        }
        break;

        case radWatchServerWPDInt:
        {
            pBuffer->m_Attrib.m_i.m_Value = pValue->m_DataValue.m_IntValue;
        }
        break;

        case radWatchServerWPDUnsignedShort:
        {
            pBuffer->m_Attrib.m_us.m_Value = pValue->m_DataValue.m_UShortValue;
        }
        break;

        case radWatchServerWPDShort:
        {
            pBuffer->m_Attrib.m_s.m_Value = pValue->m_DataValue.m_ShortValue;
        }
        break;

        case radWatchServerWPDUnsignedChar:
        {
            pBuffer->m_Attrib.m_uc.m_Value = pValue->m_DataValue.m_UCharValue;
        }
        break;

        case radWatchServerWPDChar:
        {
            pBuffer->m_Attrib.m_c.m_Value = pValue->m_DataValue.m_CharValue;
        }
        break;

        case radWatchServerWPDBoolean:
        {
            pBuffer->m_Attrib.m_bool.m_Value = pValue->m_DataValue.m_BooleanValue;
        }
        break;

        case radWatchServerWPDFloat:
        {
            pBuffer->m_Attrib.m_f.m_Value = pValue->m_DataValue.m_FloatValue;
        }
        break;

        case radWatchServerWPDEnum:
        {
            pBuffer->m_Attrib.m_enum.m_Value = pValue->m_DataValue.m_EnumValue;
        }
        break;

        case radWatchServerWPDString:
        {
            unsigned int uStrLength = strlen( pValue->m_DataValue.m_StringValue );

            //
            // Lets keep things align to 4 to prevent problems of ps2
            //
            if( ( uStrLength & 0x03 ) != 0 )
            {
                uStrLength = ( uStrLength & 0xfffffffc ) + 0x4;        
            }

            pBuffer->m_Attrib.m_string.m_Length = uStrLength;
            strcpy( (char*)pBuffer + sizeof( WCWriteValue), pValue->m_DataValue.m_StringValue );    
        }
        break;

        case radWatchServerWPDVector:
        {
            pBuffer->m_Attrib.m_vector.m_x = pValue->m_DataValue.m_VectorValue.m_x;
            pBuffer->m_Attrib.m_vector.m_y = pValue->m_DataValue.m_VectorValue.m_y;
            pBuffer->m_Attrib.m_vector.m_z = pValue->m_DataValue.m_VectorValue.m_z;
        }
        break;

        case radWatchServerWPDFunction:
        {
        }
        break;

        default:
        {
            rAssert( false );
        }
        break;
    }

    return true;
}

//===========================================================================
// CWatchPoint::GetValue
//===========================================================================
// Description: Get the value of the watch point and return using dll export
//              data structure.
//
// Constraints:	None
//
// Parameters:	pValue - data returned using dll export data structure.
// 
// Return:      true if successful, false otherwise.
//
//===========================================================================
bool CWatchPoint::GetValue( radWatchServerWPValue * pValue ) const
{
    if ( pValue == NULL )
    {
        return false;
    }

    switch( m_Attribute.m_DataType )
    {
        case radWatchServerWPDUnsignedInt:
        case radWatchServerWPDInt:
        case radWatchServerWPDUnsignedShort:
        case radWatchServerWPDShort:
        case radWatchServerWPDUnsignedChar:
        case radWatchServerWPDChar:
        case radWatchServerWPDBoolean:
        case radWatchServerWPDFloat:
        case radWatchServerWPDEnum:
        case radWatchServerWPDVector:
        {
            memcpy( pValue, & m_Value, sizeof( radWatchServerWPValue ) );
        }
        break;

        case radWatchServerWPDString:
        {
            //
            // copy data other than the actual string pointer
            //
            memcpy( pValue, & m_Value, sizeof( radWatchServerWPValue ) );
            pValue->m_DataValue.m_StringValue = NULL;

            //
            // allocate the memory for string and copy the string over.
            //
            unsigned int uStrLen = strlen( m_Value.m_DataValue.m_StringValue );
            pValue->m_DataValue.m_StringValue = new char[ uStrLen + 1 ];
            if ( pValue->m_DataValue.m_StringValue != NULL )
            {
                memcpy( pValue->m_DataValue.m_StringValue, m_Value.m_DataValue.m_StringValue, uStrLen );
                pValue->m_DataValue.m_StringValue[ uStrLen ] = '\0';
            }
        }
        break;

        case radWatchServerWPDFunction:
        {
            rAssert( false );
            return false;
        }
        break;

        default:
        {
            rAssert( false );
            return false;
        }
        break;
    }

    return true;
}

//===========================================================================
// CWatchPoint::GetValueRequestAddr
//===========================================================================
// Description: Request a value from client console sytem.
//
// Constraints:	None
//
// Parameters:	None
// 
// Return:      Return the address of the value to be request. if return NULL,
//              watch point cannot be requested.
//
//===========================================================================
void * CWatchPoint::GetValueRequestAddr( ) const
{
    if ( m_Attribute.m_DataType != radWatchServerWPDFunction )
    {
        rAssert( m_Address != NULL );
        return m_Address;
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// CWatchPoint::GetAttribute
//===========================================================================
// Description: Get attribute of the watch point using dll export structure.
//
// Constraints:	None
//
// Parameters:	pAttribute - attribute returned using dll export structure.
// 
// Return:      true if successful, false otherwise.
//
//===========================================================================
bool CWatchPoint::GetAttribute( radWatchServerWPAttribute * pAttribute ) const
{
    if ( pAttribute == NULL )
    {
        return false;
    }

    //
    // copy data and allocate memory for it.
    //
    *pAttribute = m_Attribute;

    if ( pAttribute->m_DataType == radWatchServerWPDEnum )
    {
        pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList = NULL;
        pAttribute->m_DataAttrib.m_EnumAttr.m_pEnumValueList = NULL;
        pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList = new char*[ pAttribute->m_DataAttrib.m_EnumAttr.m_EnumCount ];
        pAttribute->m_DataAttrib.m_EnumAttr.m_pEnumValueList = new int[ pAttribute->m_DataAttrib.m_EnumAttr.m_EnumCount ];

        for ( unsigned int i = 0; i < pAttribute->m_DataAttrib.m_EnumAttr.m_EnumCount; i ++ )
        {
            pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ i ] = new char[ 256 ];
            strcpy( pAttribute->m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ i ], m_Attribute.m_DataAttrib.m_EnumAttr.m_ppEnumNameList[ i ] );
            pAttribute->m_DataAttrib.m_EnumAttr.m_pEnumValueList[ i ] = m_Attribute.m_DataAttrib.m_EnumAttr.m_pEnumValueList[ i ];
        }
    }

    return true;
}

//===========================================================================
// CWatchPoint::GetProtocalDataType
//===========================================================================
// Description: Get data type in protocal defined form
//
// Constraints:	None
//
// Parameters:	None
// 
// Return:      Data type in protocal defined form
//
//===========================================================================
WPDataType CWatchPoint::GetProtocalDataType( ) const
{
    return GetProtocalTypeFromDllType( m_Attribute.m_DataType );
}

//===========================================================================
// CWatchPoint::GetDllDataType
//===========================================================================
// Description: Get data type in dll defined form
//
// Constraints:	None
//
// Parameters:	None
// 
// Return:      Data type in dll defined form
//
//===========================================================================
radWatchServerWPType CWatchPoint::GetDllDataType( ) const
{
    return m_Attribute.m_DataType;
}

