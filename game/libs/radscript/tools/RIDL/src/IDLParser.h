// IDLParser.h: interface for the CIDLParser class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IDLPARSER_H__C2737FC8_DA94_4932_B11F_885BC176A2F4__INCLUDED_)
#define AFX_IDLPARSER_H__C2737FC8_DA94_4932_B11F_885BC176A2F4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IDLInterface.h"
#include "IDLEnum.h"
#include "IDLMethod.h"
#include "IDLParameter.h"

class CToken
{
public:
    CToken( const CString & strTokenString, CString & strFileName, int nLine ) :
        m_strTokenString( strTokenString ),
        m_strFileName( strFileName ),
        m_nLineNumber( nLine )
    {

    }

    CString GetToken( )
    {
        return m_strTokenString;
    }
    
    CString GetFileName( )
    {
        return m_strFileName;
    }

    int GetLineNumber( )
    {
        return m_nLineNumber + 1;
    }

private:

    CString     m_strTokenString;
    CString     m_strFileName;
    int         m_nLineNumber;
};

class CIDLParser  
{
public:
	CIDLParser();
	virtual ~CIDLParser();

    void AddIDLFile( const CString & strIDLFile );

    void Parse( );
    void BuildTypeLib( );
    void OutputTypeLib( const CString & strTypeLibFile );

    void ClearError( );
    int GetErrorCount( ) const;
    CString GetErrorAt( int nIndex ) const;

    void ClearWarning( );
    int GetWarningCount( ) const;
    CString GetWarningAt( int nIndex ) const;

    CIDLInterfacePtr FindInterfacePtr( const CString & strClassName )
    {
        for ( unsigned int i = 0; i < m_vecInterfacePtr.size( ); i ++ )
        {
            if ( m_vecInterfacePtr.at( i )->GetName( ) == strClassName )
            {
                return m_vecInterfacePtr.at( i );
            }
        }
        return NULL;
    }

    CIDLMethodPtr FindMethodPtr( const CString & strClassName, const CString & strMethodName )
    {
        CIDLInterfacePtr pInterface = FindInterfacePtr( strClassName );
        if ( pInterface == NULL )
        {
            return NULL;
        }

        return pInterface->FindMethodPtr( strMethodName );
    }

    CIDLParameterPtr FindParamPtr( const CString & strClassName, const CString & strMethodName, const int nParamIndex )
    {
        CIDLMethodPtr pMethod = FindMethodPtr( strClassName, strMethodName );
        if ( pMethod == NULL )
        {
            return NULL;
        }

        if ( nParamIndex < pMethod->GetParameterCount( ) )
        {
            return pMethod->GetParameterPtrAt( nParamIndex );
        }
        else
        {
            return NULL;
        }
    }

protected:

    void WriteMethodToFile( const CIDLMethodPtr & pMethod, CFile & oFile );
    void WriteEnumToFile( const CIDLEnumPtr & pEnum, CFile & oFile );

    void CreateCompleteMethodList( const CIDLInterfacePtr & pInterface, vector< CIDLMethodPtr > & vecMethods );

protected:

    void AddError( const CString & strErrMsg );

    void AddWarning( const CString & strErrMsg );

    void OnTokenizeFile( const CString & strIDLFile );

    void OnParseToken( );

    void OnCleanToken( );

    bool IsEndOfToken( );
   
    void NextToken( );

    void SkipUntil( const CString & strTokenString );

    CToken & GetCurrToken( );

    bool AttemptMatch( const CString & strTokenString, int nLookAhead = 0 );

    //
    // Interface
    //
    bool IsBegInterfaceSpec( );
    bool IsEndInterfaceSpec( );

    CIDLInterfacePtr GetInterfaceDef( );

    void OnBegInterfaceDef( CIDLInterfacePtr & pInterface );
    void OnEndInterfaceDef( CIDLInterfacePtr & pInterface );

    void OnParseInterface( );

    //
    // Enumeration
    //
    bool IsBegEnumSpec( );
    bool IsEndEnumSpec( );

    CIDLEnumPtr GetEnumDef( );

    void OnBegEnumDef( CIDLEnumPtr & pEnum );
    void OnEndEnumDef( CIDLEnumPtr & pEnum );

    void OnParseEnum( );

    //
    // Method
    //
    bool IsBegMethodSpec( );
    bool IsEndMethodSpec( CIDLMethodPtr pMethod );

    CIDLMethodPtr GetMethodDef( );

    void OnBegMethodDef( CIDLMethodPtr & pMethod );
    void OnEndMethodDef( CIDLMethodPtr & pMethod );

    void OnParseMethod( );

    //
    // Parameter
    //
    CIDLParameterPtr GetParameterDef( );
    bool IsFunctionDeclarator( );
    bool IsEndParameterSpec( );

    void WriteStringToFile( const CString & strData, CFile & oFile );

private:

    vector< CString >   m_vecIDLFiles;
    vector< CString >   m_vecWarnings;
    vector< CString >   m_vecErrors;
    vector< CToken >    m_vecTokens;
    unsigned int        m_nCurrTokenIndex;

    vector< CIDLInterfacePtr > m_vecInterfacePtr;
    vector< CIDLEnumPtr >      m_veCIDLEnumPtr;

    CIDLInterfacePtr       m_pCurrInterface;
};

#endif // !defined(AFX_IDLPARSER_H__C2737FC8_DA94_4932_B11F_885BC176A2F4__INCLUDED_)
