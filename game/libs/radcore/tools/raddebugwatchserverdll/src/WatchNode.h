//=============================================================================
//
// File:        WatchNode.h
//
// Subsystem:	Foundation Technologies - WatchServerDll
//
// Description:	This file contains all definitions and classes required to
//              implement the the Watch Node.
//
// Revisions:  	April 18, 2002 Creation
//
//=============================================================================

#if !defined(AFX_WATCHNODE_H__F94D9639_82A0_49CE_B27C_0416CE6CC621__INCLUDED_)
#define AFX_WATCHNODE_H__F94D9639_82A0_49CE_B27C_0416CE6CC621__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#pragma warning( disable : 4786 )
#include <list>
#include <map>
#include <string>
using namespace std;

#include "..\..\..\..\Sdks\win32\mfc\mfcrefcount.h"
#include "WatchPoint.h"

class CWatchNode;

typedef TRef< CWatchNode > CWatchNodePtr;

//=============================================================================
// class CWatchNode
//=============================================================================
// Description: Watch node is a node in the namespace heiachy tree
//=============================================================================
class CWatchNode :
    public CMFCRefCount
{
public:

    CWatchNode( );

    virtual ~CWatchNode( );

    bool Initialize( const char * pNodeName );

    CWatchPoint * InsertWatchPoint( const char * pPathName, CWatchPoint * pWatchPoint );

    bool RemoveWatchPoint( const char * pPathName, const char * pName );

    bool RemoveWatchPoint( void * pClientAddr );

    //
    // allow "\\Game\\FrontEnd" syntax
    //
    CWatchNode * FindWatchPath( const char * pPathName );

    CWatchPoint * FindWatchPoint( const char * pFullName );

    CWatchPoint * FindWatchPoint( const char * pPathName, const char * pWPName );

    CWatchPoint * FindWatchPoint( const void * pClientAddr );

    void GetWatchPoints( list< CWatchPointPtr > & aryWatchPoint ) const;

    void GetWatchNodes( list< CWatchNodePtr > & aryWatchNode ) const;

    const char * GetName( ) const
    {
        return m_strNodeName.c_str( );
    }
    
    CWatchNode * GetParentNode( ) const
    {
        return m_pParentNode;
    }

    void EnumerateWatchPoints( radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack, void * pUserData ) const;

protected:

    CWatchNode * InsertWatchNode( const char * pPathName );

    CWatchNode * InsertWatchNode( list< string > & aryPath );

    CWatchNode * FindWatchPath( list< string > & aryPath );

    CWatchPoint * FindWatchPoint( list< string > & aryPath, string & strWPName );

    void ParsePathString( const char * pPath, list< string > & aryPath );

private:

    CWatchNode *                    m_pParentNode;

    string                          m_strNodeName;

    map< string, CWatchNodePtr >    m_aryWatchNodes;

    map< string, CWatchPointPtr >   m_aryWatchPoints;

};

#endif // !defined(AFX_WATCHNODE_H__F94D9639_82A0_49CE_B27C_0416CE6CC621__INCLUDED_)
