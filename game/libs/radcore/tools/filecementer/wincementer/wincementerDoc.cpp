//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// wincementerDoc.cpp : implementation of the CWincementerDoc class
//

#include "stdafx.h"
#include "wincementer.h"

#include <raddebug.hpp>
#include <radobject.hpp>
#include <rcfEncoder.hpp>

#include "wincementerDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWincementerDoc

IMPLEMENT_DYNCREATE(CWincementerDoc, CDocument)

BEGIN_MESSAGE_MAP(CWincementerDoc, CDocument)
	//{{AFX_MSG_MAP(CWincementerDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWincementerDoc construction/destruction

CWincementerDoc::CWincementerDoc()
:
m_pEncoder( NULL ),
m_IsReadOnly( false )
{
    //
    // Inititalize the info
    //
    ::radRCFEncoderInitialize( RADMEMORY_ALLOC_DEFAULT );

    //
    // Create the RCF encoder
    //
    ::radRCFEncoderCreate( &m_pEncoder, RADMEMORY_ALLOC_DEFAULT );
    rAssert( m_pEncoder != NULL );
}

CWincementerDoc::~CWincementerDoc()
{
    //
    // Release the encoder
    //
    if( m_pEncoder != NULL )
    {
        m_pEncoder->Release( );
    }

    //
    // Terminate the info
    //
    ::radRCFEncoderTerminate( );
}

//=============================================================================
// Function:    CWincementerDoc::GetEncoder
//=============================================================================
// Description: Get the encoder
//
//-----------------------------------------------------------------------------

IRadRCFEncoder* CWincementerDoc::GetEncoder( void )
{
    return m_pEncoder;
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerDoc serialization

void CWincementerDoc::Serialize(CArchive& ar)
{
    // Serialization is no longer used
    /*
    // Set the document name
    SetTitle( ar.GetFile( )->GetFileName( ) );

    // Read or write the library
	if (ar.IsStoring())
	{
        //
        // Execute the tools
        //
        m_pEncoder->GenerateActivities( );
        if
        (
            m_pEncoder->IsWriteable( ) &&
            m_pEncoder->DoActivitiesRequireWrite( )
        )
        {
            m_pEncoder->Save( );
        }
	}
	else
	{
		// Add loading code here
        m_pEncoder->Initialize
        (
            ar.GetFile( )->GetFilePath( ),
            (HANDLE)( ar.GetFile( )->m_hFile ),
            m_IsReadOnly
        );
	}
    */
}

/////////////////////////////////////////////////////////////////////////////
// CWincementerDoc diagnostics

#ifdef _DEBUG
void CWincementerDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CWincementerDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CWincementerDoc commands

//
// If this is true, the file is always loaded as readonly.  This
// is only altered immediately before a file open command
//
void CWincementerDoc::SetReadOnlyPref( bool readonly )
{
    m_IsReadOnly = readonly;
}

BOOL CWincementerDoc::OnNewDocument() 
{
	// No such thing as a new document
	
	return CDocument::OnNewDocument();
}

BOOL CWincementerDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{
    /*
    // Open it once, this is to ensure that it gets created
    m_pEncoder->Initialize
    (
        lpszPathName,
        m_IsReadOnly
    );

    // Close it
    m_pEncoder->ShutDownEncoder( );

	if( !CDocument::OnOpenDocument( lpszPathName ) )
    {
        return FALSE;
    }
    */

    //
    // Open it
    //
    m_pEncoder->Initialize
    (
        lpszPathName,
        m_IsReadOnly
    );
    

	// The real open is done in the serialization
    return( m_pEncoder->IsInitialized( )?TRUE:FALSE );
}

BOOL CWincementerDoc::OnSaveDocument(LPCTSTR lpszPathName) 
{
	// The save is done in the serialization
	//return CDocument::OnSaveDocument( lpszPathName );

    //
    // Execute the tools
    //
    if( m_pEncoder->IsWriteable( ) )
    {
        m_pEncoder->GenerateActivities( );
        if
        (
            m_pEncoder->DoActivitiesRequireWrite( )
        )
        {
            m_pEncoder->Save( );
        }
    }
    else
    {
        ASSERT( 0 );
    }

    return TRUE;
}
