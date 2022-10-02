//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// MemCellViewConfigDlg.cpp : implementation file
//

#include "stdafx.h"
#include "memmonitor.h"
#include "MemCellViewConfigDlg.h"

/////////////////////////////////////////////////////////////////////////////
// CMemCellViewConfigDlg dialog


CMemCellViewConfigDlg::CMemCellViewConfigDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMemCellViewConfigDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMemCellViewConfigDlg)
	m_uBytesPerCell = 0;
	m_uCellPerRow = 0;
	m_uCellSizeX = 0;
	m_uCellSizeY = 0;
	//}}AFX_DATA_INIT
}


void CMemCellViewConfigDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMemCellViewConfigDlg)
	DDX_Text(pDX, IDC_EDIT_BYTES_PER_CELL, m_uBytesPerCell);
	DDV_MinMaxUInt(pDX, m_uBytesPerCell, 32, 1048576);
	DDX_Text(pDX, IDC_EDIT_CELL_PER_ROW, m_uCellPerRow);
	DDV_MinMaxUInt(pDX, m_uCellPerRow, 1, 1024);
	DDX_Text(pDX, IDC_EDIT_CELL_SIZE_X, m_uCellSizeX);
	DDV_MinMaxUInt(pDX, m_uCellSizeX, 1, 10);
	DDX_Text(pDX, IDC_EDIT_CELL_SIZE_Y, m_uCellSizeY);
	DDV_MinMaxUInt(pDX, m_uCellSizeY, 1, 10);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMemCellViewConfigDlg, CDialog)
	//{{AFX_MSG_MAP(CMemCellViewConfigDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMemCellViewConfigDlg message handlers

void CMemCellViewConfigDlg::OnOK() 
{
    if ( ! UpdateData( TRUE ) )
    {
        return;
    }

    CDialog::OnOK();
}
