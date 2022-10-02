#ifndef EDITORWND_HPP
#define EDITORWND_HPP

#include <controls/buttonctrl.h>
        
class CEditorWnd : public CWnd
{
public:
	CEditorWnd( void );
	virtual ~CEditorWnd();	

	void CreateDocument( void );
	void ClearDocument( void );

    unsigned int GetEditLineNumber( void );
    void SaveFile( void );

protected:

    DECLARE_MESSAGE_MAP( )
    
    // windows messages
	void OnPaint();
	int  OnCreate(LPCREATESTRUCT lpCreateStruct);
	void OnSize(UINT nType, int cx, int cy);
    void OnDestroy();	
	void OnChar(UINT nChar, UINT nRepCnt, UINT nFlags);
	
	// commands
	void OnEditCopy();
	void OnEditCut();
	void OnEditPaste();
	void OnEditUndo();
	void OnEditRedo();
	void OnFind();
	void OnGoToLine();
	void OnFindNext();
	void OnEditCtrlMsgFilter( NMHDR *, LRESULT * );
    void OnClose( );
	void OnSave( );
	void OnSetFocus( CWnd * pOldWnd );
   
private:
       
    unsigned int m_FindFlags;
    FINDTEXTEX   m_FindTextEx;
    CString      m_FindString;
    
    CButtonCtrl  m_Button_Cut;
    CButtonCtrl  m_Button_Copy;
    CButtonCtrl  m_Button_Paste;
    CButtonCtrl  m_Button_Undo;
    CButtonCtrl  m_Button_Redo;
    CButtonCtrl  m_Button_Find;
    CButtonCtrl  m_Button_Goto; 
    
	CRichEditCtrl m_RichEdit;
                 

	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
};

#endif
