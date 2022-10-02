//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// RCFProperties.cpp : implementation file
//

#include "stdafx.h"
#include "wincementer.h"
#include "RCFProperties.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRCFProperties dialog


CRCFProperties::CRCFProperties(CWnd* pParent /*=NULL*/)
	:
    CDialog(CRCFProperties::IDD, pParent),
    m_pEncoder( NULL ),
    m_PadNetSize( 0 ),
    m_Alignment( 0x800 ),
    m_Endian( LittleEndian )
{
	//{{AFX_DATA_INIT(CRCFProperties)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CRCFProperties::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CRCFProperties)
	DDX_Control(pDX, IDC_ENDIANPROP, m_EndianGroup);
	DDX_Control(pDX, IDC_ALIGNMENTPROP, m_AlignmentGroup);
	DDX_Control(pDX, IDC_PADNETSIZEPROP, m_PadnetsizeGroup);
	DDX_Control(pDX, IDC_PADNETSIZE_EDIT_HEX, m_PadnetsizeEditHex);
	DDX_Control(pDX, IDC_PADNETSIZE_EDIT_DECIMAL, m_PadnetsizeEditDecimal);
	DDX_Control(pDX, IDC_ALIGNMENT_EDIT_HEX, m_AlignmentEditHex);
	DDX_Control(pDX, IDC_ALIGNMENT_EDIT_DECIMAL, m_AlignmentEditDecimal);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CRCFProperties, CDialog)
	//{{AFX_MSG_MAP(CRCFProperties)
	ON_BN_CLICKED(IDC_PADNETSIZE_OFF, OnPadnetsizeOff)
	ON_BN_CLICKED(IDC_PADNETSIZE_DECIMAL, OnPadnetsizeDecimal)
	ON_BN_CLICKED(IDC_PADNETSIZE_HEX, OnPadnetsizeHex)
	ON_BN_CLICKED(IDC_ALIGNMENT_OFF, OnAlignmentOff)
	ON_BN_CLICKED(IDC_ALIGNMENT_DECIMAL, OnAlignmentDecimal)
	ON_BN_CLICKED(IDC_ALIGNMENT_HEX, OnAlignmentHex)
	ON_BN_CLICKED(IDC_ENDIAN_LITTLE, OnEndianLittle)
	ON_BN_CLICKED(IDC_ENDIAN_BIG, OnEndianBig)
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

//
// Encoder stuff
//
void CRCFProperties::ConnectEncoder
(
    IRadRCFEncoder* pEncoder
)
{
    m_pEncoder = pEncoder;
    ASSERT( m_pEncoder != NULL );
    m_pEncoder->AddRef( );
    m_PadNetSize = m_pEncoder->GetPadNetSize( );
    m_Alignment = m_pEncoder->GetAlignment( );
    m_Endian = m_pEncoder->GetEndian( );
}
void CRCFProperties::DisconnectEncoder
(
    bool applysettings
)
{
    if( m_pEncoder != NULL )
    {
        //
        // Apply the settings
        //
        m_pEncoder->SetPadNetSize( m_PadNetSize );
        m_pEncoder->SetAlignment( m_Alignment );
        m_pEncoder->SetEndian( m_Endian );

        //
        // Remove the encoder
        //
        m_pEncoder->Release( );
        m_pEncoder = NULL;
    }
}

/////////////////////////////////////////////////////////////////////////////
// CRCFProperties message handlers

void CRCFProperties::OnPadnetsizeOff() 
{
    m_PadnetsizeEditDecimal.EnableWindow( FALSE );
    m_PadnetsizeEditHex.EnableWindow( FALSE );
}

void CRCFProperties::OnPadnetsizeDecimal() 
{
    m_PadnetsizeEditDecimal.EnableWindow( TRUE );
    m_PadnetsizeEditHex.EnableWindow( FALSE );
}

void CRCFProperties::OnPadnetsizeHex() 
{
    m_PadnetsizeEditDecimal.EnableWindow( FALSE );
    m_PadnetsizeEditHex.EnableWindow( TRUE );
}

void CRCFProperties::OnAlignmentOff() 
{
    m_AlignmentEditDecimal.EnableWindow( FALSE );
    m_AlignmentEditHex.EnableWindow( FALSE );
}

void CRCFProperties::OnAlignmentDecimal() 
{
    m_AlignmentEditDecimal.EnableWindow( TRUE );
    m_AlignmentEditHex.EnableWindow( FALSE );
}

void CRCFProperties::OnAlignmentHex() 
{
    m_AlignmentEditDecimal.EnableWindow( FALSE );
    m_AlignmentEditHex.EnableWindow( TRUE );
}

void CRCFProperties::OnEndianLittle() 
{
	//
}

void CRCFProperties::OnEndianBig() 
{
	//
}

BOOL CRCFProperties::OnInitDialog() 
{
	CDialog::OnInitDialog();
    char buf[ 256 ];
	
    //
    // Padnetsize
    //
    sprintf( buf, "%u", m_PadNetSize );
    m_PadnetsizeEditDecimal.SetWindowText( buf );
    sprintf( buf, "%#x", m_PadNetSize );
    m_PadnetsizeEditHex.SetWindowText( buf );
    if( m_PadNetSize > 0 )
    {
        CheckRadioButton( IDC_PADNETSIZE_OFF, IDC_PADNETSIZE_HEX, IDC_PADNETSIZE_HEX );
        OnPadnetsizeHex( );
    }
    else
    {
        CheckRadioButton( IDC_PADNETSIZE_OFF, IDC_PADNETSIZE_HEX, IDC_PADNETSIZE_OFF );
        OnPadnetsizeOff( );
    }

    //
    // Alignment
    //
    sprintf( buf, "%u", m_Alignment );
    m_AlignmentEditDecimal.SetWindowText( buf );
    sprintf( buf, "%#x", m_Alignment );
    m_AlignmentEditHex.SetWindowText( buf );
    if( m_Alignment > 0 )
    {
        CheckRadioButton( IDC_ALIGNMENT_OFF, IDC_ALIGNMENT_HEX, IDC_ALIGNMENT_HEX );
        OnAlignmentHex( );
    }
    else
    {
        CheckRadioButton( IDC_ALIGNMENT_OFF, IDC_ALIGNMENT_HEX, IDC_ALIGNMENT_OFF );
        OnAlignmentOff( );
    }

    //
    // Endianness
    //
    if( m_Endian == LittleEndian )
    {
        CheckRadioButton( IDC_ENDIAN_LITTLE, IDC_ENDIAN_BIG, IDC_ENDIAN_LITTLE );
        OnEndianLittle( );
    }
    else
    {
        CheckRadioButton( IDC_ENDIAN_LITTLE, IDC_ENDIAN_BIG, IDC_ENDIAN_BIG );
        OnEndianBig( );
    }
    
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CRCFProperties::OnDestroy() 
{
	CDialog::OnDestroy();
	
    //
    // Remeber the settings
    //
    char buf[ 256 ];
    int result = 0;
    
    // Padnetsize
    result = GetCheckedRadioButton( IDC_PADNETSIZE_OFF, IDC_PADNETSIZE_HEX );
    switch( result )
    {
    case IDC_PADNETSIZE_OFF:
        {
            // Off
            m_PadNetSize = 0;
            break;
        }
    case IDC_PADNETSIZE_DECIMAL:
        {
            // Decimal
            m_PadnetsizeEditDecimal.GetWindowText( buf, 255 );
            unsigned int val = m_PadNetSize;
            result = sscanf( buf, "%u", &val );
            if( result > 0 )
            {
                m_PadNetSize = val;
            }
            break;
        }
    case IDC_PADNETSIZE_HEX:
        {
            // Hex
            m_PadnetsizeEditHex.GetWindowText( buf, 255 );
            unsigned int val = m_PadNetSize;
            result = sscanf( buf, "%x", &val );
            if( result > 0 )
            {
                m_PadNetSize = val;
            }
            break;
        }
    default:
        {
            MessageBox( "Invalid Padnetsize" );
            break;
        }
    }

    // Alignment
    result = GetCheckedRadioButton( IDC_ALIGNMENT_OFF, IDC_ALIGNMENT_HEX );
    switch( result )
    {
    case IDC_ALIGNMENT_OFF:
        {
            // Off
            m_Alignment = 0;
            break;
        }
    case IDC_ALIGNMENT_DECIMAL:
        {
            // Decimal
            m_AlignmentEditDecimal.GetWindowText( buf, 255 );
            unsigned int val = m_Alignment;
            result = sscanf( buf, "%u", &val );
            if( result > 0 )
            {
                m_Alignment = val;
            }
            break;
        }
    case IDC_ALIGNMENT_HEX:
        {
            // Hex
            m_AlignmentEditHex.GetWindowText( buf, 255 );
            unsigned int val = m_Alignment;
            result = sscanf( buf, "%x", &val );
            if( result > 0 )
            {
                m_Alignment = val;
            }
            break;
        }
    default:
        {
            MessageBox( "Invalid Alignment" );
            break;
        }
    }


    // Endianness
    result = GetCheckedRadioButton( IDC_ENDIAN_LITTLE, IDC_ENDIAN_BIG );
    switch( result )
    {
    case IDC_ENDIAN_LITTLE:
        {
            // Little
            m_Endian = LittleEndian;
            break;
        }
    case IDC_ENDIAN_BIG:
        {
            // Big
            m_Endian = BigEndian;
            break;
        }
    default:
        {
            MessageBox( "Invalid Endianness" );
            break;
        }
    }
}
