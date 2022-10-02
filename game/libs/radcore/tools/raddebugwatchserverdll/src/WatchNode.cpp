//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        WatchNode.cpp
//
// Subsystem:   Radical Foundation Tech - Debug Watch Server DLL
//
// Description:	implementation of the CWatchNode class.
//
// Revisions:	Apr 30, 2002
//
//=============================================================================
#include "stdafx.h"
#include "WatchNode.h"
#include "WatchServer.h"

//===========================================================================
// CWatchNode::CWatchNode
//===========================================================================
// Description: cstor
//===========================================================================
CWatchNode::CWatchNode( ) :
    m_pParentNode( NULL )
{
}

//===========================================================================
// CWatchNode::CWatchNode
//===========================================================================
// Description: dstor
//===========================================================================
CWatchNode::~CWatchNode( )
{
}

//===========================================================================
// CWatchNode::Initialize
//===========================================================================
// Description: Inititalize the watch node with node name.
//              
//
// Constraints:	Node name cannot contain '\\' or '/'
//
// Parameters:	pNodeName - name of the node.
// 
// Return:      true if initialized, false otherwise.
//
//===========================================================================
bool CWatchNode::Initialize( const char * pNodeName )
{
    //
    // cannot contain '\\' or '/' in node name!!!
    //
    if ( strchr( pNodeName, '\\' ) || strchr( pNodeName, '/' ) )
    {
        rAssert( false );
        return false;
    }

    m_strNodeName = pNodeName;
    m_aryWatchNodes.clear( );
    m_aryWatchPoints.clear( );
    m_pParentNode = NULL;
    return true;
}

//===========================================================================
// CWatchNode::ParsePathString
//===========================================================================
// Description: Parse the watch path string into separated sub string, one
//              for each sub path.
//
// Constraints:	path will get divided on '\\' and '/'
//
// Parameters:	pPath - complete path
//              aryPath - a list to recieve sub paths.
// 
// Return:      None
//
//===========================================================================
void CWatchNode::ParsePathString( const char * pPath, list< string > & aryPath )
{
    aryPath.clear( );
    unsigned int uLength = strlen( pPath );
    char * pParsePath = new char[ uLength + 1 ];
    strcpy( pParsePath, pPath );

    char * szToken = strtok( pParsePath, "\\/");

    while( szToken != NULL )
    {
        string strToken = szToken;
        aryPath.push_back( strToken );
        szToken = strtok( NULL, "\\/");
    }
    delete[ ] pParsePath;
}

//===========================================================================
// CWatchNode::InsertWatchNode
//===========================================================================
// Description: Insert a new watch node into the watch tree.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
// 
// Return:      
//
//===========================================================================
CWatchNode * CWatchNode::InsertWatchNode( const char * pPathName )
{
    list< string > aryPath;
    ParsePathString( pPathName, aryPath );

    return InsertWatchNode( aryPath );
}

//===========================================================================
// CWatchNode::InsertWatchNode
//===========================================================================
// Description: Insert a new watch node into the watch tree.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in list form
// 
// Return:      
//
//===========================================================================
CWatchNode * CWatchNode::InsertWatchNode( list< string > & aryPath )
{
    if ( aryPath.size( ) == 0 )
    {
        return this;
    }
    else
    {
        string strPath = aryPath.front( );
        aryPath.pop_front( );

        map< string, CWatchNodePtr >::iterator p = m_aryWatchNodes.find( strPath );

        if ( p != m_aryWatchNodes.end( ) )
        {
            return p->second->InsertWatchNode( aryPath );
        }
        else
        {
            CWatchNodePtr pNode = new CWatchNode;
            pNode->Initialize( strPath.c_str( ) );
            pNode->m_pParentNode = this;
            m_aryWatchNodes.insert( pair< string, CWatchNodePtr >( strPath, pNode ) );

            p = m_aryWatchNodes.find( strPath );

            if ( p!= m_aryWatchNodes.end( ) )
            {
                return p->second->InsertWatchNode( aryPath );
            }
            else
            {
                rAssert( false );
                return NULL;
            }
        }
    } 
}

//===========================================================================
// CWatchNode::InsertWatchPoint
//===========================================================================
// Description: Insert a new watch point into the watch tree.
//
// Constraints:	will create the path if not already existed.
//
// Parameters:	pPathName - complete path name
//              pWatchPoint - watch point.
// 
// Return:      The pointer to where the either new watch point is inserted,
//              or previously inserted watch point. NULL if cannot insert.
//
//===========================================================================
CWatchPoint * CWatchNode::InsertWatchPoint( const char * pPathName, CWatchPoint * pWatchPoint )
{
    //
    // precondition check
    //
    if ( pWatchPoint == NULL )
    {
        rAssert( false );
        return NULL;
    }

    CWatchNode * pNode = InsertWatchNode( pPathName );

    if ( pNode != NULL )
    {
        string strEntryName = pWatchPoint->GetName( );
        map< string, CWatchPointPtr >::iterator p = pNode->m_aryWatchPoints.find( strEntryName );

        if ( p == pNode->m_aryWatchPoints.end( ) )
        {
            rDebugPrintf( "Insert Watch Point: [%s][%s], Address: [0x%08x]\n", pPathName, strEntryName.c_str( ), pWatchPoint->GetClientAddress( ) );
            pNode->m_aryWatchPoints.insert( pair< string, CWatchPointPtr >( strEntryName, pWatchPoint ) );

            //
            // return the entry just inserted by finding it
            //
            p = pNode->m_aryWatchPoints.find( strEntryName );

            if ( p != pNode->m_aryWatchPoints.end( ) )
            {
                //
                // assign the parent node to the watch point.
                //
                p->second->m_pParentNode = pNode;
                return p->second;
            }
            else
            {
                return NULL;
            }
        }
        else
        {
            return p->second;
        }
    }
    else
    {
        rAssert( false );
        return NULL;
    }
}

//===========================================================================
// CWatchNode::RemoveWatchPoint
//===========================================================================
// Description: Remove an old watch point from tree.
//
// Constraints:	
//
// Parameters:	pClientAddr - client address of the watch point
// 
// Return:      true if removed, false otherwise.
//
//===========================================================================
bool CWatchNode::RemoveWatchPoint( void * pClientAddr )
{
    //
    // Okay, no sorting on the key, life sucks, so do linear search
    //

    //
    // do linear search on child watch point
    //
    for ( map< string, CWatchPointPtr >::iterator p = m_aryWatchPoints.begin( ); p != m_aryWatchPoints.end( ); p++ )
    {
        if ( p->second->GetClientAddress( ) == pClientAddr )
        {
            m_aryWatchPoints.erase( p );
            return true;
        }
    }

    //
    // Do recursive search on each node.
    //
    for ( map< string, CWatchNodePtr >::iterator q = m_aryWatchNodes.begin( ); q != m_aryWatchNodes.end( ); q++ )
    {
        if ( q->second->RemoveWatchPoint( pClientAddr ) )
        {
            return true;
        }
    }
    return false;
}

//===========================================================================
// CWatchNode::RemoveWatchPoint
//===========================================================================
// Description: Remove an old watch point from tree.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name
//              pName - watch point name.
// 
// Return:      true if removed, false otherwise.
//
//===========================================================================
bool CWatchNode::RemoveWatchPoint( const char * pPathName, const char * pName )
{
    //
    // precondition check
    //
    if ( pName == NULL || strlen( pName ) == 0 )
    {
        return false;
    }

    if ( pPathName != NULL )
    {
        CWatchNode * pNode = NULL;

        pNode = FindWatchPath( pPathName );

        //
        // watch path must exist
        //
        if ( pNode == NULL )
        {
            return NULL;
        }
        else
        {
            pNode->RemoveWatchPoint( NULL, pName );
        }
    }
    else
    {
        string strEntryName = pName;
        map< string, CWatchPointPtr >::iterator p = m_aryWatchPoints.find( strEntryName );
        p = m_aryWatchPoints.find( strEntryName );

        if ( p != m_aryWatchPoints.end( ) )
        {
            m_aryWatchPoints.erase( p );
            return true;
        }
        else
        {
            return false;
        }
    }
    return false;
}

//===========================================================================
// CWatchNode::FindWatchPath
//===========================================================================
// Description: Find an existing watch path from tree.
//
// Constraints:	
//
// Parameters:	aryPath - complete path name in list form
// 
// Return:      pointer to the watch node. NULL if cannot find.
//
//===========================================================================
CWatchNode * CWatchNode::FindWatchPath( list< string > & aryPath )
{
    if ( aryPath.size( ) == 0 )
    {
        return this;
    }
    else
    {
        string strNode = aryPath.front( );
        aryPath.pop_front( );

        map< string, CWatchNodePtr >::iterator p = m_aryWatchNodes.find( strNode );

        if ( p != m_aryWatchNodes.end( ) )
        {
            //
            // recusive search
            //
            return p->second->FindWatchPath( aryPath );
        }
        else
        {
            //
            // not found, return NULL.
            //
            return NULL;
        }
    }
}

//===========================================================================
// CWatchNode::FindWatchPoint
//===========================================================================
// Description: Find an existing watch point from tree.
//
// Constraints:	
//
// Parameters:	aryPath - complete path name + watch point name in list form
// 
// Return:      pointer to the watch point. NULL if cannot find.
//
//===========================================================================
CWatchPoint * CWatchNode::FindWatchPoint( list< string > & aryPath, string & strWPName )
{
    CWatchNodePtr pNode = FindWatchPath( aryPath );

    if ( pNode != NULL )
    {
        map< string, CWatchPointPtr >::iterator p = pNode->m_aryWatchPoints.find( strWPName );
        if ( p != pNode->m_aryWatchPoints.end( ) )
        {
            return p->second;
        }
        else
        {
            return NULL;
        }
    }
    return NULL;
}

//===========================================================================
// CWatchNode::FindWatchPath
//===========================================================================
// Description: Find a watch path in C string.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
// 
// Return:      pointer to the watch node. NULL if cannot find.
//
//===========================================================================
CWatchNode * CWatchNode::FindWatchPath( const char * pPathName )
{
    list< string > aryPathString;
    ParsePathString( pPathName, aryPathString );

    if ( aryPathString.size( ) == 0 )
    {
        return this;
    }
    else
    {
        return FindWatchPath( aryPathString );
    }
}

//===========================================================================
// CWatchNode::FindWatchPath
//===========================================================================
// Description: Find a watch path in C string.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
// 
// Return:      pointer to the watch node. NULL if cannot find.
//
//===========================================================================
CWatchPoint * CWatchNode::FindWatchPoint( const char * pFullName )
{
    list< string > aryPathString;
    ParsePathString( pFullName, aryPathString );

    if ( aryPathString.size( ) == 0 )
    {
        return NULL;
    }

    string strWPName = aryPathString.back( );
    aryPathString.pop_back( );

    return FindWatchPoint( aryPathString, strWPName );
}

//===========================================================================
// CWatchNode::FindWatchPoint
//===========================================================================
// Description: Find a watch point in C string.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
//              pWPName - the watch point name
// 
// Return:      pointer to the watch point. NULL if cannot find.
//
//===========================================================================
CWatchPoint * CWatchNode::FindWatchPoint( const char * pPathName, const char * pWPName )
{
    list< string > aryPathString;
    ParsePathString( pPathName, aryPathString );

    if ( aryPathString.size( ) == 0 )
    {
        return NULL;
    }
    else
    {
        return FindWatchPoint( aryPathString, string( pWPName ) );
    }
}

//===========================================================================
// CWatchNode::FindWatchPoint
//===========================================================================
// Description: Find a watch point by its client address ( a form of key )
//
// Constraints:	
//
// Parameters:	pClientAddr - address of the watch point in the client.
// 
// Return:      pointer to the watch point. NULL if cannot find.
//
//===========================================================================
CWatchPoint * CWatchNode::FindWatchPoint( const void * pClientAddr )
{
    //
    // Okay, no sorting on the key, life sucks, so do linear search
    //
    
    //
    // do linear search on child watch point
    //
    for ( map< string, CWatchPointPtr >::iterator p = m_aryWatchPoints.begin( ); p != m_aryWatchPoints.end( ); p++ )
    {
        if ( p->second->GetClientAddress( ) == pClientAddr )
        {
            return p->second;
        }
    }

    //
    // Do recursive search on each node.
    //
    for ( map< string, CWatchNodePtr >::iterator q = m_aryWatchNodes.begin( ); q != m_aryWatchNodes.end( ); q++ )
    {
        CWatchPoint * pWatchPoint = NULL;
        pWatchPoint = q->second->FindWatchPoint( pClientAddr );
        if ( pWatchPoint != NULL )
        {
            return pWatchPoint;
        }
    }
    return NULL;
}

//===========================================================================
// CWatchNode::GetWatchPoints
//===========================================================================
// Description: Get all watch point under this node.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
//              pWPName - the watch point name
// 
// Return:      pointer to the watch point. NULL if cannot find.
//
//===========================================================================
void CWatchNode::GetWatchPoints( list< CWatchPointPtr > & aryWatchPoint ) const
{
    aryWatchPoint.clear( );
    for ( map< string, CWatchPointPtr >::const_iterator p = m_aryWatchPoints.begin( ); p != m_aryWatchPoints.end( ); p ++ )
    {
        aryWatchPoint.push_back( p->second );
    }
}

//===========================================================================
// CWatchNode::GetWatchNodes
//===========================================================================
// Description: Get all watch point under this node.
//
// Constraints:	
//
// Parameters:	pPathName - complete path name in C string form
//              pWPName - the watch point name
// 
// Return:      pointer to the watch point. NULL if cannot find.
//
//===========================================================================
void CWatchNode::GetWatchNodes( list< CWatchNodePtr > & aryWatchNode ) const
{
    aryWatchNode.clear( );
    for ( map< string, CWatchNodePtr >::const_iterator p = m_aryWatchNodes.begin( ); p != m_aryWatchNodes.end( ); p ++ )
    {
        aryWatchNode.push_back( p->second );
    }
}

//===========================================================================
// CWatchNode::EnumerateWatchPoints
//===========================================================================
// Description: Recrusivly Enumerate all watch point under the nodes.
//
// Constraints:	
//
// Parameters:	pWatchPointCallBack - call back function.
// 
// Return:      None
//
//===========================================================================
void CWatchNode::EnumerateWatchPoints
                    (
                        radWatchServerEnumerateWatchPointsCallBack * pWatchPointCallBack,
                        void * pUserData
                    ) const
{
    map< string, CWatchPointPtr >::const_iterator IteratorPoints;

    map< string, CWatchNodePtr >::const_iterator IteratorNodes;

    for ( IteratorPoints = m_aryWatchPoints.begin( ); IteratorPoints != m_aryWatchPoints.end( ); IteratorPoints ++ )
    {
        string strWatchPoint;
        CWatchServer::ConstructWatchPointFullName( IteratorPoints->second, strWatchPoint );
        pWatchPointCallBack( strWatchPoint.c_str( ), pUserData );
    }

    for ( IteratorNodes = m_aryWatchNodes.begin( ); IteratorNodes != m_aryWatchNodes.end( ); IteratorNodes ++ )
    {
        IteratorNodes->second->EnumerateWatchPoints( pWatchPointCallBack, pUserData );
    }
}

