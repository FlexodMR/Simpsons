//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        FileAssoc.cpp
//
// Subsystem:   Radical Foundation Technologies Watch Server
//
// Description:	This file contains the implementation of the watch server 
//				file association class. Used for saving data,
//
// Revisions:	Feb 27 2001
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "stdafx.h"
#include "FileAssoc.h"
#include "WatchServer.h"
#include "MainFrm.h"

//=============================================================================
// Definitions 
//=============================================================================

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//=============================================================================
// Externals
//=============================================================================

extern CWatchServerApp theApp;

////////////////////////////////////////////////////////////////////////////
// Helper Function: Convert ascii string to BSTR
////////////////////////////////////////////////////////////////////////////

BSTR AsciiToBSTR(const char* pszFName)
{
    WCHAR wszURL[MAX_PATH];
    ::MultiByteToWideChar(CP_ACP, 0, pszFName, -1, wszURL, MAX_PATH);
    return SysAllocString(wszURL);
}

//=============================================================================
// Statics
//=============================================================================

//
// Maintains a linked list of all files
//
CFileAssociation* CFileAssociation::m_pListHead = NULL;

//=============================================================================
// CFileAssociation - constructor
//=============================================================================

CFileAssociation::CFileAssociation
(
    const char *pNameSpace,
    const char* pFileName, 
    unsigned int fileType
)
{
    //
    // Save the callers information.
    //
    m_FileType = (FileType) fileType;

    //
    // Note we only support XML currently,
    //
    ASSERT( m_FileType == FileXML ); 

    //
    // Skip leading \\ if specified.
    //
    if( *pNameSpace == '\\' )
    {
        pNameSpace++;
    }

    strcpy( m_NameSpace, pNameSpace );

    //
    // Remove trailing slash as well.
    //
    unsigned int length = strlen( m_NameSpace );
  
    if( m_NameSpace[ length - 1 ] == '\\' )
    {      
        m_NameSpace[ length - 1 ] = '\0';
    }
        
    //
    // Check if full path specified ( contains leading \ or drive letter. If 
    // not add it to the file path specified when program launched
    //
    if( (pFileName[ 0 ] != '\\') && ( pFileName[ 1 ] != ':') )
    {
        strcpy( m_Filename, theApp.m_RootPath );
        
        //
        // Add slash if one does not exist.
        //
        unsigned int length = strlen( m_Filename );

        if( m_Filename[ length - 1 ] != '\\' )
        {
            m_Filename[ length ] = '\\';
            m_Filename[ length + 1] = '\0';
        }

        strcat( m_Filename, pFileName );
  
    }
    else
    {
        //
        // Filename is fully qualified. Just save it,.
        //
        strcpy( m_Filename, pFileName );
    }

    //
    // Add ourself to the head of the linked list.
    //
    m_pNext = m_pListHead;
    m_pListHead = this;
   
    //
    // Open the xml document
    //
    m_pXMLDoc = NULL;

    CoCreateInstance( MSXML::CLSID_DOMDocument, NULL, CLSCTX_INPROC_SERVER,
                      MSXML::IID_IXMLDOMDocument, (void**)&m_pXMLDoc);

    if( m_pXMLDoc == NULL )
    {
        char Message[ 300 ];
        sprintf( Message, "Error: Cannot access XML DOM");
        CMainFrame* pFrame = (CMainFrame*) AfxGetMainWnd( ); 
        pFrame->m_wndStatusBar.SetWindowText( Message );
    }

    //
    // Load the XML document synchronously
    //
    m_pXMLDoc->put_async( VARIANT_FALSE );

    BSTR pBURL = NULL;
    pBURL = AsciiToBSTR( m_Filename );

    VARIANT         vURL;
    VARIANT_BOOL    vb;

    VariantInit( &vURL );
    vURL.vt = VT_BSTR;
    V_BSTR(&vURL) = pBURL;
    
    HRESULT hr = m_pXMLDoc->load( vURL, &vb );
    if( FAILED( hr ) || !vb )
    {
        m_pXMLDoc->Release( );
        m_pXMLDoc = NULL;

        char Message[ 300 ];
        sprintf( Message, "Error: Cannot open \"%s\" with write access", m_Filename );         
        CMainFrame* pFrame = (CMainFrame*) AfxGetMainWnd( ); 
        pFrame->m_wndStatusBar.SetWindowText( Message );
    }  
 }

//=============================================================================
// CFileAssociation - destructor
//=============================================================================

CFileAssociation::~CFileAssociation( void )
{
    if( m_pXMLDoc != NULL )
    {
        m_pXMLDoc->Release( );
    }
  
}

//=============================================================================
// DelelteAll - kill all file objects
//=============================================================================

void CFileAssociation::DeleteAll( void )
{
    //
    // While the list is non null, remove the head item.
    //
    while( m_pListHead != NULL )
    {
        CFileAssociation* pFA = m_pListHead;
        m_pListHead = pFA->m_pNext;

        delete pFA;
    }
}

//
// Find the namespace in the list of XML files. 
//
CFileAssociation* CFileAssociation::Find(const char *nameSpace, char **subspace)
{
    CFileAssociation* pFile = m_pListHead;

    //
    // Lets go through the files.
    //
    while( pFile != NULL )
    {
        //
        // Check if the XML file was openned. If not ignore.
        //
        if( pFile->m_pXMLDoc != NULL )
        {
            if( 0 == strncmp( nameSpace, pFile->m_NameSpace, strlen( pFile->m_NameSpace ) ) )
            {
                //
                // We have found the file. Lets get the substring setup.
                //
                const char* ss = &nameSpace[ strlen( pFile->m_NameSpace ) ];
                
                while( ss != nameSpace)
                {
                    if( *(ss - 1) == '\\')
                    {
                        break;
                    }
                    ss--;
                }
                
                *subspace = (char*) ss;
                return( pFile );
            }
        }

        //
        // Get the next in our list.
        //
        pFile = pFile->m_pNext;
    }
    
    //
    // If we get here the file was not found.
    //        
    return( NULL );
}

bool CFileAssociation::GetValue( const char* nameSpace, const char* name, char* Value )
{
    //
    // Null terminate string in case we don't find the enrty.
    //
    *Value = '\0';

    if( (strlen( nameSpace ) == 0) || (m_pXMLDoc == NULL) )
    {
        return( false );
    }

    MSXML::IXMLDOMNode* pNode = NULL;
    MSXML::IXMLDOMNode* pChildNode = NULL;

    m_pXMLDoc->QueryInterface( MSXML::IID_IXMLDOMNode, (void**) &pNode  );
    
    if( pNode == NULL )
    {
        return( false );
    }

    char            token[ 256 ];
 
    nameSpace = GetNameSpaceToken( (char*) nameSpace, token );

    //
    // Walk the name space looking for the corresponding node
    //
    while( nameSpace != NULL ) 
    {
        //
        // The first node represents the document.
        //
        pNode->get_firstChild( &pChildNode );
    
        if( pChildNode == NULL )
        {
            pNode->Release( );
            return( false );
        }
                
        pNode->Release( );
        pNode = pChildNode;
        pChildNode = NULL;
        
        while( pNode != NULL )
        {
            BSTR bname;
            pNode->get_nodeName(&bname);
            char nametocheck[ 200 ];
            sprintf( nametocheck,"%S",bname );
            ::SysFreeString(bname);
    
            if( 0 == strcmp( nametocheck, token ) )
            {
                break;
            }

            pChildNode = pNode;
            pChildNode->get_nextSibling(&pNode);
            pChildNode->Release();
      
        }
   
        if( pNode == NULL ) 
        {
            return( false );
        }
 
    
        nameSpace = GetNameSpaceToken( (char*) nameSpace, token );
    }

    //
    // Here we have the node. Lets try and find the attibute.
    //
    MSXML::IXMLDOMNamedNodeMap* pAttrList;

    HRESULT hr;

    hr = pNode->get_attributes( &pAttrList );
    pNode->Release( );  

    if( (pAttrList == NULL) || FAILED( hr ) )
    {
        return( false );
    }

    MSXML::IXMLDOMNode* pAttr; 
    
    pAttrList->nextNode(&pAttr);
    while( pAttr != NULL )
    {
        BSTR bname;
        char nametocheck[ 200 ];
        pAttr->get_nodeName(&bname);
        sprintf(nametocheck,"%S", bname);
        ::SysFreeString(bname);

        if( 0 == strcmp( nametocheck, name ) )
        {
            //
            // Lets get the value.
            //
            VARIANT value;
            pAttr->get_nodeValue(&value);
            if (value.vt == VT_BSTR)
            {
                //
                // We only deal with stings.
                //
                sprintf( Value, "%S", V_BSTR(&value) );
            }
            VariantClear(&value);
            pAttr->Release( ); 

            pAttrList->Release();
            return( true );
        }
        else
        {
            pAttr->Release( ); 
            pAttrList->nextNode(&pAttr);
        }
    }
   
    pAttrList->Release();

    return( false );
}

bool CFileAssociation::SetValue( const char* nameSpace, const char* name, char* Value )
{
    if( (strlen( nameSpace ) == 0) || (m_pXMLDoc == NULL) )
    {
        return(false);
    }

    MSXML::IXMLDOMNode* pNode = NULL;
    MSXML::IXMLDOMNode* pChildNode = NULL;

    m_pXMLDoc->QueryInterface( MSXML::IID_IXMLDOMNode, (void**) &pNode  );
    
    if( pNode == NULL )
    {
        return(false);
    }

    char            token[ 256 ];
 
    nameSpace = GetNameSpaceToken( (char*) nameSpace, token );

    //
    // Walk the name space looking for the corresponding node
    //
    while( nameSpace != NULL ) 
    {
        //
        // The first node represents the document.
        //
        pNode->get_firstChild( &pChildNode );
    
        if( pChildNode == NULL )
        {
            pNode->Release( );
            return( false );
        }
                
        pNode->Release( );
        pNode = pChildNode;
        pChildNode = NULL;
        
        while( pNode != NULL )
        {
            BSTR bname;
            pNode->get_nodeName(&bname);
            char nametocheck[ 200 ];
            sprintf( nametocheck,"%S",bname );
            ::SysFreeString(bname);
    
            if( 0 == strcmp( nametocheck, token ) )
            {
                break;
            }

            pChildNode = pNode;
            pChildNode->get_nextSibling(&pNode);
            pChildNode->Release();
      
        }
   
        if( pNode == NULL ) 
        {
            return( false );
        }
 
    
        nameSpace = GetNameSpaceToken( (char*) nameSpace, token );
    }

    //
    // Here we have the node. Lets try and find the attibute.
    //
    MSXML::IXMLDOMNamedNodeMap* pAttrList;

    HRESULT hr;

    hr = pNode->get_attributes( &pAttrList );
    pNode->Release( );  

    if( (pAttrList == NULL) || FAILED( hr ) )
    {
        return( false );
    }

    MSXML::IXMLDOMNode* pAttr; 
    
    pAttrList->nextNode(&pAttr);
    while( pAttr != NULL )
    {
        BSTR bname;
        char nametocheck[ 200 ];
        pAttr->get_nodeName(&bname);
        sprintf(nametocheck,"%S", bname);
        ::SysFreeString(bname);

        if( 0 == strcmp( nametocheck, name ) )
        {
            //
            // Lets set the value.
            //
            VARIANT value;

            BSTR bValue = NULL;
            bValue = AsciiToBSTR( Value );

            VariantInit( &value );
            value.vt = VT_BSTR;
            V_BSTR(&value) = bValue;

            pAttr->put_nodeValue(value);
 
            pAttr->Release( ); 

            //
            // Finally lets write the file.
            //
            BSTR pBURL = NULL;
            pBURL = AsciiToBSTR( m_Filename );

            VARIANT         vURL;

            VariantInit( &vURL );
            vURL.vt = VT_BSTR;
            V_BSTR(&vURL) = pBURL;
    
            hr = m_pXMLDoc->save( vURL );
            if( FAILED( hr ) )
            {
                char Message[ 300 ];
                sprintf( Message, "Error: Cannot save value to \"%s\"", m_Filename );         
                CMainFrame* pFrame = (CMainFrame*) AfxGetMainWnd( ); 
                pFrame->m_wndStatusBar.SetWindowText( Message );

                pAttrList->Release();
                return( false );
            }

            pAttrList->Release();
            return( true );

        }
        else
        {
            pAttr->Release( ); 
            pAttrList->nextNode(&pAttr);
        }
    }
   
    pAttrList->Release();
    return( false );
}

char* CFileAssociation::GetNameSpaceToken(char *pNameSpace, char *pToken)
{
    //
    // Check if leading \ exists. If so skip over it.
    //
    if( *pNameSpace == '\\' )
    {
        pNameSpace++;
    }

    //
    // Check if at end of string.
    //
    if( *pNameSpace == '\0' )
    {
        *pToken = '\0';
        return( NULL );
    }

    //
    // Copy the string until we hit a null termination or a back slash )
    //
    while( (*pNameSpace != '\0') && (*pNameSpace != '\\' ) )
    {
        *pToken++ = *pNameSpace++;
    }

    //
    // Make sure token is null terminated.
    //
    *pToken = '\0';

    return( pNameSpace );
}


