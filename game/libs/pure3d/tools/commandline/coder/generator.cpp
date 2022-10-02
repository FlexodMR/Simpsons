//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "generator.hpp"
#include <assert.h>


const char * footerCode = " CloseOutputFile( );\n}\n";

const char * finalFileHandleName  = "hOutputFileHandle";

const char * KEYWORD_INCLUDE = "INCLUDE";
const char * KEYWORD_CODE = "CODE";
const char * KEYWORD_OPENFILE = "OPENFILE";
const char * KEYWORD_CODEBEGIN = "CODEBEGIN";
const char * KEYWORD_CODEEND = "CODEEND";

const int  IndentNum = 4;

       //the file handle variable name
LineParser * Generator::parser = new LineParser;

Generator::Generator( ) :
    hTemplate( NULL ), hTarget( NULL ), hHeader( NULL )
{
    memset( buffer,  0, MAX_LINE_LEN );
    memset( parsed,  0, MAX_LINE_LEN );
    memset( target,  0, MAX_LINE_LEN );
}

Generator::~Generator( )
{
    if( hTemplate ){
        fclose( hTemplate );
        hTemplate = NULL;
    }
        
    if( hTarget ){
        fclose( hTarget );
        hTarget = NULL;
    }

    if( hHeader ){
        fclose( hHeader );
        hHeader = NULL;
    }

}


void Generator::InsertHeader( )
{
    assert( hTarget );

    if( !OpenHeader( ) ){
        printf( "Error: Couldn't open header file\n" );
        return;
    }

    while( ReadLine( hHeader ) ){
        WriteLine( 0, false );
        fprintf( hTarget, "\n" );
    }
}

void Generator::InsertFooter( )
{
    assert( hTarget );
    fprintf( hTarget, footerCode );
}

void Generator::Generate( )
{        
    //open template file for parsing
    if( !OpenTemplate( ) ){
        printf( "Error: Couldn't open template file\n" );
        return;
    }

    //open target file for writing to
    if( !OpenTarget( ) ){
        printf( "Error: Couldn't open target file\n" );
        return;
    }

    InsertHeader( );    

    int count = 1; 
    while( ReadLine( hTemplate ) ){
        parser->Parse( buffer );

        memset( buffer, 0, MAX_LINE_LEN );

        strcpy( buffer, parser->GetParsed( ) );
        WriteLine( count, true );
        ++count;
    }

    InsertFooter( );

}



void Generator::WriteLine( int linenum, bool bWriteLineNum )
{
    char line_number[ MAX_LINE_LEN ];

    if( bWriteLineNum ){
        memset( line_number, 0, MAX_LINE_LEN );
        sprintf( line_number, "//line#:  %d\n", linenum );
        int len = strlen( buffer );
        buffer[ len - 1 ] = 0;
        strcat( buffer, line_number );
    }

    fputs( buffer, hTarget );
}


bool Generator::ReadLine( FILE * file )
{
    //clean buffer
    memset( buffer,  0, MAX_LINE_LEN );
    
    int c;
    bool result = false;

    int i = 0;

    while( ( c = fgetc( file ) )!= EOF  ){
        
        
        buffer[ i++ ] = (char)c;
        result = true;

        if( c == '\n' ){
            buffer[ i - 1 ] = 0;        //don't read in the return key, instead append the return code inside composefinalline function
            break;
        }
    }
    
    return result;
}

bool Generator::OpenTarget( )
{
    hTarget = fopen( target, "w" );

    if( !hTarget )
        return false;
    else
        return true;
}

bool Generator::OpenHeader( )
{
    hHeader = fopen( header, "r" );

    if( !hHeader )
        return false;
    else
        return true;
}

bool Generator::OpenTemplate( )
{
    hTemplate = fopen( parsed, "r" );

    if( !hTemplate )
        return false;
    else
        return true;
}


///
/// Line Parser
///

LineParser::LineParser( )
: emCount( 0 ), currentIndent( IndentNum ), nextIndent( IndentNum )
{
    Reset( );
}

LineParser::~LineParser( )
{
    Reset( );
}

int LineParser::NextToken( )
{
    int count = 0;
    while( line[ count ] == ' ' )
        ++count;

    return count;
}

void LineParser::Reset( )
{
    bEmbedded = false;
    type = eNone;

    for( int i = 0; i < emCount; ++i ){
        delete[ ] embedded[ i ];
        embedded[ i ] = NULL;
    }

    emCount = 0;    
     
    memset( line,  0, MAX_LINE_LEN );
    memset( parsed,  0, MAX_LINE_LEN );
 
}

LineType LineParser::Parse(  char * l )
{
    Reset( );

    strcpy( line, l );

    int firstToken = NextToken( );

    int wordlen = 0;
    char word[ 128 ];

    memset( word,  0, 128 );

    if( line[ firstToken ] == '@' ){         //non-plain code line

        ++firstToken;

        char c = line[ firstToken ];
        while( ( ( c >= 'a' && c <= 'z' ) || ( c >= 'A' && c <= 'Z' ) ) && wordlen < 128 ){
            word[ wordlen ] = c;
            wordlen++;
            firstToken++;

            c = line[ firstToken ];
        }

        if( wordlen >= 128 ){
            ParsePlainLine( );            
        }
        else{ 
            strupr( word );

            LineType t;
            if( strcmp( word, KEYWORD_INCLUDE ) == 0 )
                t = eInclude;
            else if( strcmp( word, KEYWORD_CODE ) == 0 )
                t = eCode;
            else if( strcmp( word, KEYWORD_OPENFILE ) == 0 )
                t = eOpenFile; 
            else if( strcmp( word, KEYWORD_CODEBEGIN ) == 0 ){
                t = eCodeBegin;
                bCodeChunk = true;
            }
            else if( strcmp( word, KEYWORD_CODEEND ) == 0 ){
                t = eCodeEnd;
                bCodeChunk = false;
            }
        
            strcpy( parsed, &(line[ firstToken ]) );
            type = t;
        }
    }
    else{
        if( bCodeChunk ){
            strcpy( parsed, line );
        }
        else{        
            ParsePlainLine( );        
        }
    }

    //find out the indent to be insert to current line
    EvaluateIndent( );

    //compose the final output line based on the parsed result in parsed[ ]
    ComposeFinalLine( );

    return type;
}
//
//          find the special character and changed it
//           \ --->\\
//           % --->%%
//           " --->\"
//
void LineParser::PreprocessPlainLine( char * inputline, bool bEmbedded )
{
    char buffer[ MAX_LINE_LEN ];
    memset( buffer, 0, MAX_LINE_LEN );

    int count = 0;
    for( int i = 0; i < (int)strlen( inputline ); ++i ){
        if( inputline[ i ] == '"' ){
            buffer[ count++ ] = '\\';
        }
        else if( inputline[ i ] == '\\' ){
            buffer[ count++ ] = '\\';
        }
        else if( inputline[ i ] == '%' && bEmbedded ){
            buffer[ count++ ] = '%';
        }

        buffer[ count++ ] = inputline[ i ];
    }

    memset( inputline, 0, MAX_LINE_LEN );
    strcpy( inputline, buffer );
}

void LineParser::ParsePlainLine( )
{
    char *buffer;
    char preline[ MAX_LINE_LEN ];
    char finalline[ MAX_LINE_LEN ];

    memset( finalline, 0, MAX_LINE_LEN );


    buffer = line;

    type = ePlain;

    int start, end;

    while( FindEmbedded( buffer, start, end ) ){
        bEmbedded = true;

        if( start > 0 ){
            memset( preline, 0, MAX_LINE_LEN );
            strncpy( preline, buffer, start );
            PreprocessPlainLine( preline, true );
            strcat( finalline, preline );
        }
        ExtractEmbeddedWord( buffer, start, end );
        strcat( finalline, "%s" );
        buffer += end + 1;
        //EraseEmbedded( buffer, start, end );
    }
    
    if( strlen( buffer ) > 0 ){

        memset( preline, 0, MAX_LINE_LEN );
        strcpy( preline, buffer );
        PreprocessPlainLine( preline, bEmbedded );
        strcat( finalline, preline );

    }

    strcpy( parsed, finalline );

}

bool LineParser::FindEmbedded( char * buffer, int &start, int &end )
{
    start = 0;

    int last = strlen( buffer );

    while( start < last ){
        while( buffer[ start ] != '$' && start < last )
            ++start;

        if( start >= last )
            return false;

        if( buffer[ start + 1 ] != '{' )    //this $ is not an embedded operator, move on to next character, and start new searching
            ++start;
        else{   //possible embedded operator, now search for the matched }''
            end = start + 2;

            while( buffer[ end ] != '}' && end < last )
                ++end;

            if( end >= last )
                return false;
            else
                return true;
        }
    }

    return false;
}


void LineParser::ExtractEmbeddedWord( char * buffer, int start, int end )
{
    embedded[ emCount ] = new char[ end - start - 1 ];

    memset( embedded[ emCount ], 0, end - start - 1 );

    strncpy( embedded[ emCount ], buffer + start + 2, end - start - 2 );

    ++emCount;

    assert( emCount < MAX_EMBEDDED_NUM );
    
}

void LineParser::EraseEmbedded( char * buffer, int start, int end )
{
    char temp[ MAX_LINE_LEN ];

    memset( temp,  0, MAX_LINE_LEN );

    strncpy( temp, buffer, start );

    strcat( temp, "%s" );    

    strcat( temp, buffer + end + 1 );

    strcpy( buffer, temp );
}

int LineParser::CalcIndent( char * buffer )
{
    int i = 0;

    while( buffer[ i ] == ' ' )
        ++i;

    return i;
}

void LineParser::EvaluateIndent( )
{
    if( type == eCode || ( bCodeChunk && type == eNone ) ){

        //when we evaluate current line, the nextIndent of last line
        //become the currentIndent
        currentIndent = nextIndent;

        int i = 0;

        while( i < (int) strlen( parsed ) && ( parsed[ i ] == ' ' || parsed[ i ] == '\tab' ) )
            ++i;

        //current line starts with }, reduce indents num
        if( parsed[ i ] == '}' ){
            currentIndent -= IndentNum;
            currentIndent = currentIndent > 0 ? currentIndent : 0;
            nextIndent = currentIndent;
        }

        i = strlen( parsed );

        --i;

        while( i >= 0 && ( parsed[ i ] == ' ' || parsed[ i ] == '\n' ) )
            --i;

        //current line ends with {, increase indents for next line
        if( i >= 0 && parsed[ i ] == '{' ){ 
            nextIndent = currentIndent + IndentNum;
        }


    }
    else{
        currentIndent = nextIndent;
    }
}

void LineParser::IndentLine( char * l )
{
    char buffer[ MAX_LINE_LEN ];

    memset( buffer, 0, MAX_LINE_LEN );

    int i;
    for( i = 0; i < currentIndent; ++i )
        buffer[ i ] = ' ';

    i = 0;
    while( l[ i ] == ' ' || l[ i ] == '\tab' )
        ++i;

    strcat( buffer, l+i );

    strcpy( l, buffer );
}

void LineParser::ComposeFinalLine( )
{
    char temp[ MAX_LINE_LEN ];

    memset( temp,  0, MAX_LINE_LEN );

    
    switch( type ){
        case eInclude:
            sprintf( temp, "#include %s\n", parsed );
            IndentLine( temp );
        break;

        case eCode:
        case eCodeBegin:
        case eCodeEnd:
            strcpy( temp, parsed );
            IndentLine( temp );
            strcat( temp, "\n" );            
        break;

        case eOpenFile:
            sprintf( temp, "%s= fopen( \"%s\", \"w\" );\n", finalFileHandleName, parsed );
            IndentLine( temp );
        break;   

        case ePlain:
            if( !IsEmbedded( ) ){
//                sprintf( temp, "fprintf( %s, \"%s\\n\" );\n", finalFileHandleName, parsed );
                sprintf( temp, "fputs( \"%s\\n\", %s );\n", parsed, finalFileHandleName );
                IndentLine( temp );
            }
            else{

                char buffer[ MAX_LINE_LEN ];

                sprintf( temp, "sprintf( EMBEDDED_LINE_BUFFER, \"%s\\n\" ", parsed );
                
                int i;
                for( i = 0; i < emCount; ++i ){
                    strcat( temp, ", " );
                    strcat( temp, embedded[ i ] );
                }

                strcat( temp, " );\n" );

                //insert indent 
                IndentLine( temp );

                //now write out EMBEDDED_LINE_BUFFER to final code
                sprintf( buffer, "fputs( EMBEDDED_LINE_BUFFER, %s );\n", finalFileHandleName  );

                //insert indent
                IndentLine( buffer );

                strcat( temp, buffer );
            }

        break;

        case eNone:
            if( bCodeChunk ){
                strcpy( temp, parsed );
                IndentLine( temp );
                strcat( temp, "\n" );            
            }
        break;
        
    }

    strcpy( parsed, temp );
}