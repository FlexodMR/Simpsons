//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// IDLParserHelper.cpp: implementation of the CIDLParser class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLParser.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

static CToken oEndofToken( CString( "EOF" ), CString( "EOF" ), -1 );



//===========================================================================
// CIDLParser::AttemptMatch
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//              const CString & strTokenString
//             int nLookAhead
// 
// Return: bool 
//===========================================================================
bool CIDLParser::AttemptMatch( const CString & strTokenString, int nLookAhead )
{
    // outof token, return false
    if ( (unsigned int)( m_nCurrTokenIndex + nLookAhead ) >= m_vecTokens.size( ) )
    {
        return false;
    }
    else if ( m_vecTokens.at( m_nCurrTokenIndex + nLookAhead ).GetToken( ) == strTokenString )
    {
        return true;
    }
    else
    {
        return false;
    }
}



//===========================================================================
// CIDLParser::IsEndOfToken
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsEndOfToken( )
{
    if ( m_nCurrTokenIndex >= m_vecTokens.size( ) )
    {
        return true;
    }
    return false;
}


//===========================================================================
// CIDLParser::NextToken
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::NextToken( )
{
    if ( ! IsEndOfToken( ) )
    {
//        ::AfxTrace( "Token [%s]\n", (LPCTSTR)m_vecTokens[m_nCurrTokenIndex].GetToken( ) );
        m_nCurrTokenIndex ++;
    }
}

//===========================================================================
// CIDLParser::SkipUntil
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString & strTokenString
// 
// Return: void 
//===========================================================================
void CIDLParser::SkipUntil( const CString & strTokenString )
{
    if ( ! IsEndOfToken( ) )
    {
        if ( AttemptMatch( strTokenString ) )
        {
            NextToken( );
            return;
        }
        NextToken( );
    }
}


//===========================================================================
// CIDLParser::GetCurrToken
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CToken & 
//===========================================================================
CToken & CIDLParser::GetCurrToken( )
{
    if ( ! IsEndOfToken( ) )
    {
        return m_vecTokens.at( m_nCurrTokenIndex );
    }
    else
    {
        return oEndofToken;
    }
}


//===========================================================================
// CIDLParser::OnTokenizeFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString & strIDLFile
// 
// Return: void 
//===========================================================================
void CIDLParser::OnTokenizeFile( const CString & strIDLFile )
{
    // Do file reading
    CFile oFile;
    CFileException e;

    if ( !oFile.Open( strIDLFile, CFile::modeRead | CFile::shareDenyNone, &e) )
    {
        CString strError;
        char szEHErr[ 256 ];

        e.GetErrorMessage( szEHErr, 256 );
        strError.Format( "Unable to open file : [%s].\n Cause : [%s].\n", ( LPCTSTR )strIDLFile, szEHErr );
        AddError( strError );
        ::AfxThrowUserException( );
    }
    
    DWORD dwFileSize = (DWORD)( oFile.GetLength( ) );

    char * pBuffer = new char[ dwFileSize + 1 ];
    oFile.Seek( 0, CFile::begin );
    oFile.Read( pBuffer, dwFileSize );

    // Do file tokenize
    DWORD dwCurrIndex = 0;
    DWORD dwEndofLine = 0;
    vector< CString > vecLines;

    // line split
    while ( dwCurrIndex <= dwFileSize && dwEndofLine <= dwFileSize )
    {
        if ( pBuffer[ dwEndofLine ] == '\n' || pBuffer[ dwEndofLine ] == '\r' || dwEndofLine == dwFileSize )
        {
            pBuffer[ dwEndofLine ] = '\0';
            CString strLine( & pBuffer[ dwCurrIndex ] );
            vecLines.push_back( strLine );

            dwEndofLine ++;

            // dos text file uses \r \n
            if ( pBuffer[ dwEndofLine ] == '\n' )
            {
                pBuffer[ dwEndofLine ] = '\0';
                dwEndofLine++;
            }

            dwCurrIndex = dwEndofLine;
        }

        dwEndofLine ++;
    }

    // tokenize each line
    for ( unsigned int nLineIndex = 0; nLineIndex < vecLines.size( ); nLineIndex ++ )
    {
        // insert space between operators
        CString strLine = vecLines.at( nLineIndex );
        int nStringIndex = 0;
        while ( nStringIndex <= strLine.GetLength( ) - 1 )
        {
            if (
                strLine.GetAt( nStringIndex ) == '`' ||
                strLine.GetAt( nStringIndex ) == '~' ||
                strLine.GetAt( nStringIndex ) == '!' ||
                strLine.GetAt( nStringIndex ) == '@' ||
                strLine.GetAt( nStringIndex ) == '#' ||
                strLine.GetAt( nStringIndex ) == '$' ||
                strLine.GetAt( nStringIndex ) == '%' ||
                strLine.GetAt( nStringIndex ) == '^' ||
                strLine.GetAt( nStringIndex ) == '&' ||
                // not start or end of a C comment
                ( ( strLine.GetAt( nStringIndex ) == '*' ) && ( nStringIndex > 0 ) && ( strLine.GetAt( nStringIndex - 1 ) != '/' ) && ( nStringIndex < strLine.GetLength( ) - 1 ) && ( strLine.GetAt( nStringIndex + 1 ) != '/' ) ) ||
                // not a line comment
                ( ( ( strLine.GetAt( nStringIndex ) == '/' ) && ( nStringIndex > 0 ) && ( strLine.GetAt( nStringIndex - 1 ) != '/' ) && ( strLine.GetAt( nStringIndex - 1 ) != '*' ) && ( nStringIndex < strLine.GetLength( ) - 1 ) && ( strLine.GetAt( nStringIndex + 1 ) != '/' ) && ( strLine.GetAt( nStringIndex + 1 ) != '*' ) ) ) ||
                strLine.GetAt( nStringIndex ) == '(' ||
                strLine.GetAt( nStringIndex ) == ')' ||
                strLine.GetAt( nStringIndex ) == '-' ||
                strLine.GetAt( nStringIndex ) == '=' ||
                strLine.GetAt( nStringIndex ) == '+' ||
                strLine.GetAt( nStringIndex ) == '{' ||
                strLine.GetAt( nStringIndex ) == '}' ||
                strLine.GetAt( nStringIndex ) == '[' ||
                strLine.GetAt( nStringIndex ) == ']' ||
                strLine.GetAt( nStringIndex ) == '|' ||
                strLine.GetAt( nStringIndex ) == '\\' ||
                strLine.GetAt( nStringIndex ) == ';' ||
                // not a scope operator "::", just a plain ":"
                (
                  strLine.GetAt( nStringIndex ) == ':' &&
                  ( strLine.GetLength( ) > nStringIndex + 1 && strLine.GetAt( nStringIndex + 1 ) != ':' ) && ( ( nStringIndex - 1 >= 0 ) && strLine.GetAt( nStringIndex - 1 ) != ':' )
                ) ||
                strLine.GetAt( nStringIndex ) == '\'' ||
                strLine.GetAt( nStringIndex ) == '\"' ||
                strLine.GetAt( nStringIndex ) == ',' ||
                strLine.GetAt( nStringIndex ) == '.' ||
                strLine.GetAt( nStringIndex ) == '<' ||
                strLine.GetAt( nStringIndex ) == '>' ||
                strLine.GetAt( nStringIndex ) == '?'
               )
            {
                strLine.Insert( nStringIndex, " " );
                strLine.Insert( nStringIndex + 2, " " );
                nStringIndex += 2;
            }
            else
            {
                nStringIndex ++;
            }
        }

        strLine.Replace( "//", " // " );
        strLine.Replace( "/*", " /* " );
        strLine.Replace( "*/", " */ " );

        int nBufferLength = strLine.GetLength( );
        char *pLineBuffer = new char[ strLine.GetLength( ) + 1 ];
        strcpy( pLineBuffer, strLine );

        int nPosIndex = 0;
        for ( nPosIndex = 0; nPosIndex < nBufferLength; nPosIndex ++ )
        {
            if ( pLineBuffer[ nPosIndex ] == ' ' || pLineBuffer[ nPosIndex ] == '\t' || pLineBuffer[ nPosIndex ] == '\n' || pLineBuffer[ nPosIndex ] == '\r' )
            {
                pLineBuffer[ nPosIndex ] = '\0';
            }
        }

        nPosIndex = 0;
        bool bIsComment = false;
        bool bIsSignedBuildin = false;

        while ( nPosIndex < nBufferLength )
        {
            if ( pLineBuffer[ nPosIndex ] != '\0' )
            {
                
                CString strToken( & pLineBuffer[ nPosIndex ] );

                // handles speical cases in the comment area and signed/unsigned
                if ( strToken == "//" )
                {
                    break;
                }
                else if ( bIsComment && strToken != "*/" )
                {
                }
                else if ( strToken == "/*" )
                {
                    bIsComment = true;
                }
                else if ( strToken == "*/" )
                {
                    bIsComment = false;
                }
                else if ( strToken == "unsigned" || strToken == "signed" )
                {
                    // cannot have two signed/unsigned in a roll
                    if ( bIsSignedBuildin == true )
                    {
                        CString strError;
                        strError.Format( "%s(%i) : error RIDL: syntax error : cannot have two signed or unsigned in a roll.\n",
                            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
                            GetCurrToken( ).GetLineNumber( ) );

                        AddError( strError );
                        ::AfxThrowUserException( );
                    }

                    m_vecTokens.push_back( CToken(
                                                  strToken,
                                                  oFile.GetFilePath( ),
                                                  nLineIndex
                                                 ) );
                    bIsSignedBuildin = true;
                }
                else
                {
                    // if signed/unsigned status check if next token is buildin type
                    if ( bIsSignedBuildin )
                    {
                        if ( strToken == "int" ||
                             strToken == "short" ||
                             strToken == "char" ||
                             strToken == "long" )
                        {
                            // concatanate the signed/unsigned tokens together
                            int nLastTokenIndex = m_vecTokens.size( ) - 1;
                            CString strBuildInToken = m_vecTokens[ nLastTokenIndex ].GetToken( );
                            strBuildInToken += " ";
                            strBuildInToken += strToken;
                            strToken = strBuildInToken;

                            m_vecTokens.pop_back( );
                        }
                        bIsSignedBuildin = false;
                    }
                    
                    m_vecTokens.push_back( CToken(
                                                  strToken,
                                                  oFile.GetFilePath( ),
                                                  nLineIndex
                                                 ) );
                }
            }

            nPosIndex += strlen( & pLineBuffer[ nPosIndex ] );
            nPosIndex ++;
        }
        delete[] pLineBuffer;
    }

    delete[] pBuffer;
}


//===========================================================================
// CIDLParser::OnCleanToken
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::OnCleanToken( )
{
    m_vecTokens.clear( );
    m_nCurrTokenIndex = 0;
}


//===========================================================================
// CIDLParser::OnParseToken
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::OnParseToken( )
{
    // parse the IDL from token list
    while ( ! IsEndOfToken( ) )
    {
        if ( IsBegInterfaceSpec( ) )
        {
            OnParseInterface( );
        }
        else if ( IsBegEnumSpec( ) )
        {
            OnParseEnum( );
        }
        else
        {
            NextToken( );
        }
    }
}


//===========================================================================
// CIDLParser::OnParseInterface
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::OnParseInterface( )
{
    CIDLInterfacePtr pInterface = GetInterfaceDef( );

    if ( pInterface == NULL )
    {
        return;
    }

    OnBegInterfaceDef( pInterface );

    while ( ! IsEndInterfaceSpec( ) && ! IsEndOfToken( ) )
    {
        if ( IsBegEnumSpec( ) )
        {
            OnParseEnum( );
        }
        else if ( IsBegMethodSpec( ) )
        {
            OnParseMethod( );
        }
        else
        {
            NextToken( );
        }
    }
    
    OnEndInterfaceDef( pInterface );
    m_vecInterfacePtr.push_back( pInterface );
}


//===========================================================================
// CIDLParser::OnParseEnum
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::OnParseEnum( )
{
    CIDLEnumPtr pEnum = GetEnumDef( );

    if ( pEnum == NULL )
    {
        return;
    }

    OnBegEnumDef( pEnum );

    CString strName;
    int nValue = 0;
    while ( ! IsEndEnumSpec( ) && ! IsEndOfToken( ) )
    {
        strName = GetCurrToken( ).GetToken( );
        NextToken( );

        if ( AttemptMatch( "=" ) )
        {
			NextToken( );
            nValue = atoi( GetCurrToken( ).GetToken( ) );
            NextToken( );
        }

        if ( AttemptMatch( "," ) )
        {
            NextToken( );
        }
        else
        {
            // if the "," is not found, then it must be end of enumeration list
            if ( ! IsEndEnumSpec( ) )
            {
                CString strError;
                strError.Format( "%s(%i) : error RIDL: syntax error : missing \",\" in end of enumeration.\n",
                    ( LPCTSTR )GetCurrToken( ).GetFileName( ),
                    GetCurrToken( ).GetLineNumber( ) );

                AddError( strError );
                ::AfxThrowUserException( );
            }
        }
        pEnum->AddEnumValue( strName, nValue );

        nValue ++;
    }

    OnEndEnumDef( pEnum );

    if ( m_pCurrInterface == NULL )
    {
        m_veCIDLEnumPtr.push_back( pEnum );
    }
    else
    {
        m_pCurrInterface->AddEnumPtr( pEnum );
    }
}


//===========================================================================
// CIDLParser::OnParseMethod
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::OnParseMethod( )
{
    CIDLMethodPtr pMethod = GetMethodDef( );

    if ( pMethod == NULL )
    {
        return;
    }

    OnBegMethodDef( pMethod );

    while ( ! IsEndMethodSpec( pMethod ) && ! IsEndOfToken( ) )
    {
        CIDLParameterPtr pParameter = GetParameterDef( );
        if ( pParameter != NULL )
        {
            pMethod->AddParameter( pParameter );
        }
    }

    if ( ! IsEndMethodSpec( pMethod ) )
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : cannot match end of method [%s].\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ),
            ( LPCTSTR ) pMethod->GetName( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }

    OnEndMethodDef( pMethod );

    if ( m_pCurrInterface == NULL )
    {
        ASSERT( 0 );
    }
    else
    {
        m_pCurrInterface->AddMethodPtr( pMethod );
    }
}


//===========================================================================
// CIDLParser::IsEndParameterSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsEndParameterSpec( )
{
    if ( AttemptMatch( "," ) || AttemptMatch( ")" ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::IsFunctionDeclarator
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsFunctionDeclarator( )
{
    int nStartTokenIndex = m_nCurrTokenIndex;
    
    while ( ! IsEndParameterSpec( ) )
    {
        if ( AttemptMatch( "(" ) )
        {
            m_nCurrTokenIndex = nStartTokenIndex;
            return true;
        }
        NextToken( );
    }
    m_nCurrTokenIndex = nStartTokenIndex;
    return false;
}


//===========================================================================
// CIDLParser::GetParameterDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLParameterPtr 
//===========================================================================
CIDLParameterPtr CIDLParser::GetParameterDef( )
{
    CIDLParameterPtr pParameter = static_cast< CIDLParameter * >( RUNTIME_CLASS( CIDLParameter )->CreateObject( ) );

    if ( IsFunctionDeclarator( ) )
    {
        pParameter->SetName( "unknown" );
        pParameter->SetDeclarator( "unknown" );

        while ( ! IsEndParameterSpec( ) )
        {
            while ( AttemptMatch( "(" ) )
            {
                NextToken( );
                SkipUntil( ")" );
            }
            NextToken( );
        }

        return pParameter;
    }

    CString strDeclarator;
    CString strSpecifier;
    CString strName;
    int nIndLvl = 0;

    if ( AttemptMatch( "const" ) )
    {
        strSpecifier = GetCurrToken( ).GetToken( );
        NextToken( );
    }

    // enumeration with class scope, ignore class scope for now
    if ( AttemptMatch( ":", 1 ) && AttemptMatch( ":", 2 ) )
    {
        NextToken( );
        NextToken( );
        NextToken( );
    }

    strDeclarator = GetCurrToken( ).GetToken( );
    NextToken( );

    // only void
    if ( ( strDeclarator == "void" ) && ! AttemptMatch( "*" ) )
    {
        return NULL;
    }

    while ( ! IsEndParameterSpec( ) && ( AttemptMatch( "*" ) || AttemptMatch( "&" ) ) )
    {
        nIndLvl ++;
        NextToken( );
    }

    // special case "const char * const"
    if ( AttemptMatch( "const" ) )
    {
        NextToken( );
    }

    if ( ! IsEndParameterSpec( ) )
    {
        strName = GetCurrToken( ).GetToken( );
        NextToken( );

		// special case with default value
		if ( AttemptMatch( "=" ) )
		{
			NextToken( );
			NextToken( );
		}
    }

    if ( ! IsEndParameterSpec( ) )
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : cannot match end of parameter.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        this->AddError( strError );
        ::AfxThrowUserException( );
    }

    // if we are in the middle of function, skip ","
    if ( AttemptMatch( "," ) )
    {
        NextToken( );
    }

    pParameter->SetSpecifier( strSpecifier );
    pParameter->SetDeclarator( strDeclarator );
    pParameter->SetName( strName );
    pParameter->SetIndLvl( nIndLvl );

    return pParameter;
}


//===========================================================================
// CIDLParser::IsBegEnumSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsBegEnumSpec( )
{
    // enum xxx {
    if ( AttemptMatch( "enum" ) && ( AttemptMatch( "{", 1 ) || AttemptMatch( "{", 2 ) ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::IsEndEnumSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsEndEnumSpec( )
{
    // enum xxx { }; enum xxx { } yyy;
    if ( AttemptMatch( "}" ) && ( AttemptMatch( ";", 1 ) || AttemptMatch( ";", 2 ) ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::IsBegInterfaceSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsBegInterfaceSpec( )
{
    // class/struct xxx {
    // class/struct xxx : public/private/protected {
    if
    (
        ( AttemptMatch( "class" ) || AttemptMatch( "struct" ) ) &&
        (
            //class/struct xxx {
            AttemptMatch( "{", 2 ) ||
            // class/struct xxx : public/private/protected {
            (
              ( AttemptMatch( ":", 2 ) ) &&
              ( AttemptMatch( "public", 3 ) ||  AttemptMatch( "private", 3 ) || AttemptMatch( "protected", 3 ) ) &&
              ( AttemptMatch( "{", 5 ) )
            )
        )
    )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::IsEndInterfaceSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsEndInterfaceSpec( )
{
    if ( AttemptMatch( "}" ) && AttemptMatch( ";", 1 ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::OnBegInterfaceDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLInterfacePtr & pInterface
// 
// Return: void 
//===========================================================================
void CIDLParser::OnBegInterfaceDef( CIDLInterfacePtr & pInterface )
{
    if ( AttemptMatch( "{" ) )
    {
        NextToken( );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \"{\" for class body.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }

    // set current interface to this one.
    m_pCurrInterface = pInterface;
}


//===========================================================================
// CIDLParser::OnEndInterfaceDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLInterfacePtr & pInterface
// 
// Return: void 
//===========================================================================
void CIDLParser::OnEndInterfaceDef( CIDLInterfacePtr & pInterface )
{
    if ( IsEndInterfaceSpec( ) )
    {
        SkipUntil( ";" );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \"};\" after interface declaration.\n"
                         "\t\tInterface must be pure virtual class.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }

    // Set current interface to none
    m_pCurrInterface = NULL;
}


//===========================================================================
// CIDLParser::IsBegMethodSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsBegMethodSpec( )
{
    if ( AttemptMatch( "virtual" ) )
    {
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::IsEndMethodSpec
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CIDLParser::IsEndMethodSpec( CIDLMethodPtr pMethod )
{
    // method must be pure virtual function
    // either  ) = 0;
    // or      ) const = 0;
    if (
         ( AttemptMatch( ")" ) && AttemptMatch( "=", 1 ) && AttemptMatch( "0", 2 ) ) ||
         ( AttemptMatch( ")" ) && AttemptMatch( "const", 1 ) && AttemptMatch( "=", 2 ) && AttemptMatch( "0", 3 ) ) 
       )
    {
        return true;
    }
    else if ( AttemptMatch( ")" ) )
    {
        CString strError;
        strError.Format( "%s(%i) : warning RIDL: interface [%s::%s( )] is not pure virtual function.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ),
            (LPCTSTR)m_pCurrInterface->GetName( ),
            (LPCTSTR)pMethod->GetName( ) );

        AddWarning( strError );

        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// CIDLParser::OnBegEnumDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLEnumPtr & pEnum
// 
// Return: void 
//===========================================================================
void CIDLParser::OnBegEnumDef( CIDLEnumPtr & pEnum )
{
    if ( AttemptMatch( "{" ) )
    {
        NextToken( );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \"{\" after [enum %s].\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ), ( LPCTSTR )pEnum->GetName( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }
}


//===========================================================================
// CIDLParser::OnEndEnumDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLEnumPtr & pEnum
// 
// Return: void 
//===========================================================================
void CIDLParser::OnEndEnumDef( CIDLEnumPtr & pEnum )
{
    if ( IsEndEnumSpec( ) )
    {
        SkipUntil( ";" );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \"};\" after enum declaration.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }
}


//===========================================================================
// CIDLParser::OnBegMethodDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLMethodPtr & pMethod
// 
// Return: void 
//===========================================================================
void CIDLParser::OnBegMethodDef( CIDLMethodPtr & pMethod )
{
    if ( AttemptMatch( "(" ) )
    {
        NextToken( );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \"(\" after token.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ), ( LPCTSTR )pMethod->GetName( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }
}


//===========================================================================
// CIDLParser::OnEndMethodDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CIDLMethodPtr & pMethod
// 
// Return: void 
//===========================================================================
void CIDLParser::OnEndMethodDef( CIDLMethodPtr & pMethod )
{
    if ( IsEndMethodSpec( pMethod ) )
    {
        if ( AttemptMatch( "{" ) )
        {
            SkipUntil( "}" );
        }
        
        if ( AttemptMatch( ";" ) )
        {
            SkipUntil( ";" );
        }
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : expecting \") = 0;\" after method declaration.\n"
                         "\t\tInterface method must be pure virtual function.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }
}


//===========================================================================
// CIDLParser::GetInterfaceDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLInterfacePtr 
//===========================================================================
CIDLInterfacePtr CIDLParser::GetInterfaceDef( )
{
    CIDLInterfacePtr pInterface = static_cast< CIDLInterface * >( RUNTIME_CLASS( CIDLInterface )->CreateObject( ) );

    CString strClassSpecifier = GetCurrToken( ).GetToken( );
    NextToken( );

    CString strClassName = GetCurrToken( ).GetToken( );
    NextToken( );

    if ( strClassName.GetAt( 0 ) != 'I' )
    {
        return NULL;
    }

    CString strBaseClass;

    if ( AttemptMatch( ":" ) )
    {
        NextToken( );

        if ( AttemptMatch( "public" ) || AttemptMatch( "private" ) || AttemptMatch( "protected" ) )
        {
            NextToken( );
            strBaseClass = GetCurrToken( ).GetToken( );
            NextToken( );
        }
        else
        {
            CString strError;
            strError.Format( "%s(%i) : error RIDL: syntax error : expecting public|private|protected.\n",
                ( LPCTSTR )GetCurrToken( ).GetFileName( ),
                GetCurrToken( ).GetLineNumber( ) );

            AddError( strError );
            ::AfxThrowUserException( );
        }
    }
    pInterface->SetName( strClassName );
    pInterface->SetBaseClass( strBaseClass );

    return pInterface;
}


//===========================================================================
// CIDLParser::GetEnumDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLEnumPtr 
//===========================================================================
CIDLEnumPtr CIDLParser::GetEnumDef( )
{
    static unsigned int uUnnamedEnumIndex = 0;
    char szTemp[ 8 ];
    CIDLEnumPtr pEnum = static_cast< CIDLEnum * >( RUNTIME_CLASS( CIDLEnum )->CreateObject( ) );

    CString strEnumName;

    if ( AttemptMatch( "enum" ) )
    {
        NextToken( );
    }
    else
    {
        ASSERT( 0 );
    }

    if ( GetCurrToken( ).GetToken( ) == "{" )
    {
        strEnumName = CString( "__unnamedEnum" ) + CString( itoa( uUnnamedEnumIndex, szTemp, 10 ) );
    }
    else
    {
        strEnumName = GetCurrToken( ).GetToken( );
        NextToken( );
    }

    pEnum->SetName( strEnumName );
    return pEnum;
}


//===========================================================================
// CIDLParser::GetMethodDef
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CIDLMethodPtr 
//===========================================================================
CIDLMethodPtr CIDLParser::GetMethodDef( )
{
    CIDLMethodPtr pMethod = static_cast< CIDLMethod * >( RUNTIME_CLASS( CIDLMethod )->CreateObject( ) );

    CString strRetType;
    int     nIndLvl = 0;
    CString strRetTypeSpecifier;

    CString strMethodName;
    CIDLParameterPtr pRetType = static_cast< CIDLParameter * >( RUNTIME_CLASS( CIDLParameter )->CreateObject( ) );

    // must be virtual keyword
    if ( AttemptMatch( "virtual" ) )
    {
        NextToken( );
    }
    else
    {
        CString strError;
        strError.Format( "%s(%i) : error RIDL: syntax error : interface method must be pure virtual function.\n",
            ( LPCTSTR )GetCurrToken( ).GetFileName( ),
            GetCurrToken( ).GetLineNumber( ) );

        AddError( strError );
        ::AfxThrowUserException( );
    }

    // Get Return type
    if ( AttemptMatch( "const" ) )
    {
        strRetTypeSpecifier = GetCurrToken( ).GetToken( );
        NextToken( );
    }
    
    // enumeration with class scope, ignore class scope for now
    if ( AttemptMatch( ":", 1 ) && AttemptMatch( ":", 2 ) )
    {
        NextToken( );
        NextToken( );
        NextToken( );
    }

    strRetType = GetCurrToken( ).GetToken( );
    NextToken( );

    while ( AttemptMatch( "*" ) || AttemptMatch( "&" ) )
    {
        nIndLvl ++;
        NextToken( );
    }

    strMethodName = GetCurrToken( ).GetToken( );
    NextToken( );

    pMethod->SetName( strMethodName );

    pRetType->SetDeclarator( strRetType );
    pRetType->SetSpecifier( strRetTypeSpecifier );
    pRetType->SetIndLvl( nIndLvl );
    pMethod->SetReturnType( pRetType );

    return pMethod;
}

