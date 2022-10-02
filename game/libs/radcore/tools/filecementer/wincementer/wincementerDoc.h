// wincementerDoc.h : interface of the CWincementerDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_WINCEMENTERDOC_H__E990D9F5_97C9_4884_841B_CEF2624849DC__INCLUDED_)
#define AFX_WINCEMENTERDOC_H__E990D9F5_97C9_4884_841B_CEF2624849DC__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <raddebug.hpp>
#include <radobject.hpp>
#include <rcfEncoder.hpp>

class CWincementerDoc : public CDocument
{
protected: // create from serialization only
	CWincementerDoc();
	DECLARE_DYNCREATE(CWincementerDoc)

// Attributes
public:
private:
    //
    // The cement file encoder
    //
    IRadRCFEncoder* m_pEncoder;

// Operations
public:
    //
    // Get the encoder
    //
    IRadRCFEncoder* GetEncoder( void );

    // Set the read only preference
    void SetReadOnlyPref( bool readonly );

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWincementerDoc)
	public:
	virtual void Serialize(CArchive& ar);
	virtual BOOL OnNewDocument();
	virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
	virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CWincementerDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:
    // Should the file be opened as read only?
    bool m_IsReadOnly;

// Generated message map functions
protected:
	//{{AFX_MSG(CWincementerDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINCEMENTERDOC_H__E990D9F5_97C9_4884_841B_CEF2624849DC__INCLUDED_)
