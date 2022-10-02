// CmdLineOption.h: interface for the CCmdLineOption class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CMDLINEOPTION_H__4FD0D915_5741_472D_BCB9_3600708CD7E4__INCLUDED_)
#define AFX_CMDLINEOPTION_H__4FD0D915_5741_472D_BCB9_3600708CD7E4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CCmdLineOption  
{
public:
	CCmdLineOption();
	virtual ~CCmdLineOption();

    bool Process( int argc, TCHAR* argv[], TCHAR* envp[] );

    int GetInputFileCount( ) const;

    CString GetInputFileAt( int nIndex ) const;
    CString GetOutputFile( ) const;

    void PrintUseage( ) const;

    bool GetDump( ) const;
    void SetDump( bool bDump );

protected:

    void ParseInputListTextFile( const CString & strFileName );

private:

    bool                m_bDump;
    vector< CString >   m_vecInputFiles;
    CString             m_strOutputFile;
};

#endif // !defined(AFX_CMDLINEOPTION_H__4FD0D915_5741_472D_BCB9_3600708CD7E4__INCLUDED_)
