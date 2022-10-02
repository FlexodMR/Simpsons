#pragma once

#include <radmusic/radmusic.hpp>

// CMixerWnd

class CMixerWnd : public CWnd
{
	DECLARE_DYNAMIC(CMixerWnd)

public:
	CMixerWnd();
	virtual ~CMixerWnd();
	
    void AddSlider( const char * p_data_item_name );

protected:
	DECLARE_MESSAGE_MAP()
public:
    afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
    afx_msg void OnPaint();
    afx_msg void OnTimer(UINT nIDEvent);
    afx_msg void OnDestroy();
    afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
};


