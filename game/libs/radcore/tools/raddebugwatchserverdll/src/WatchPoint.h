//=============================================================================
//
// File:        WatchPoint.h
//
// Subsystem:	Foundation Technologies - WatchServerDll
//
// Description:	This file contains all definitions and classes required to
//              implement the the Watch Point.
//
// Revisions:  	April 18, 2002 Creation
//
//=============================================================================

#if !defined(AFX_WATCHPOINT_H__4BC377B8_433B_4D5F_9818_8A9F668DF9F1__INCLUDED_)
#define AFX_WATCHPOINT_H__4BC377B8_433B_4D5F_9818_8A9F668DF9F1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\..\..\..\Sdks\win32\mfc\mfcrefcount.h"
#include "..\..\..\src\radprotocols\debugwatchprotocol.hpp"
#include <radwatchserver.h>

class CWatchNode;

class CWatchPoint;

typedef TRef< CWatchPoint > CWatchPointPtr;

class CWatchPoint :
    public CMFCRefCount
{
public:

    friend CWatchNode;      // allow assginment of parent node in CWatchNode::InsertWatchPoint( )

    CWatchPoint( );

    virtual ~CWatchPoint( void );

    static bool IsSameType( radWatchServerWPType DllType, WPDataType ProtocalType );

    static WPDataType GetProtocalTypeFromDllType( radWatchServerWPType DllType );

    static void DeleteMemoryAllocated( radWatchServerWPAttribute * pAttribute );

    static void DeleteMemoryAllocated( radWatchServerWPValue * pValue );

    //
    // two different initialize
    //
    bool Initialize( const WCCreate * pAttribute );

    bool Initialize( const WCCreateEnum * pAttribute );

    const char * GetName( ) const;

    const CWatchNode * GetParentNode( ) const
    {
        return m_pParentNode;
    }
    //
    // set values from client console system using protocal.
    //
    bool SetValue( const WCValue* pValue );

    //
    // set value from host PC to client console
    //
    unsigned int GetUpdateBufferSize( const radWatchServerWPValue * pValue ) const;

    bool UpdateClientValue( const radWatchServerWPValue * pValue, void * pTxBuffer ) const;

    bool GetValue( radWatchServerWPValue * pValue ) const;

    void * GetValueRequestAddr( ) const;

    //
    // attributes
    //
    bool GetAttribute( radWatchServerWPAttribute * pAttribute ) const;

    WPDataType GetProtocalDataType( ) const;

    radWatchServerWPType GetDllDataType( ) const;

    void * GetClientAddress( ) const
    {
        rAssert( m_Address != NULL );
        return m_Address;
    }

protected:

    void DeleteMemoryAllocated( );

private:

    CWatchNode *                    m_pParentNode;

    void                            (*m_Callback)( void* );

    void*                           m_UserData;

    char	                        m_szName[ WP_MAX_NAMELENGTH ];

    void*			                m_Address;

    bool                            m_bInitialized;

    radWatchServerWPAttribute       m_Attribute;

    radWatchServerWPValue           m_Value;
};

#endif // !defined(AFX_WATCHPOINT_H__4BC377B8_433B_4D5F_9818_8A9F668DF9F1__INCLUDED_)
