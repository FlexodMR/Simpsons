//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// EncoderWrapperView.cpp: implementation of the CEncoderWrapperView class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "wincementer.h"

#include "wincementerDoc.h"
#include "wincementerView.h"

#include "EncoderWrapperView.h"

#include <raddebug.hpp>
#include <radobject.hpp>
#include <rcfEncoder.hpp>

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CEncoderWrapperView::CEncoderWrapperView()
:
m_RefCount( 0 ),
m_pView( NULL )
{

}

CEncoderWrapperView::~CEncoderWrapperView()
{
    //
}

//
// Referenc counting
//
void CEncoderWrapperView::AddRef( )
{
    m_RefCount++;
}
void CEncoderWrapperView::Release( )
{
    m_RefCount--;
    if( m_RefCount == 0 )
    {
        delete this;
    }
}

//
// Set the view
//
void CEncoderWrapperView::SetView
(
    CWincementerView* pView
)
{
    m_pView = pView;
}

void CEncoderWrapperView::OnRCFEncoderFileUpdate
(
    bool dataChangeOnly,
    void* pUserData
)
{
    rAssert( m_pView != NULL );
    m_pView->OnRCFEncoderFileUpdate
    (
        dataChangeOnly,
        pUserData
    );
}

void CEncoderWrapperView::OnRCFEncoderError
(
    void* pUserData,
    RCFErrorCode code,
    const char* message
)
{
    rAssert( m_pView != NULL );
    m_pView->OnRCFEncoderError
    (
        pUserData,
        code,
        message
    );
}

//
// IRadRCFActivityProcessingCallback
//
void CEncoderWrapperView::OnActivityProcess
(
    IRadRCFActivity* pActivity,
    void* pUserData
)
{
    rAssert( m_pView != NULL );
    m_pView->OnActivityProcess
    (
        pActivity,
        pUserData
    );
}


//
// Factory function
//
void CEncoderWrapperViewCreate
(
    CEncoderWrapperView** ppEncoderWrapper,
    radMemoryAllocator allocator
)
{
    rAssert( ppEncoderWrapper != NULL );
    (*ppEncoderWrapper) = new CEncoderWrapperView( );
    (*ppEncoderWrapper)->AddRef( );
}

