//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GENERATOR_HPP
#define _GENERATOR_HPP

#include <stdio.h>
#include <string.h>

#define MAX_LINE_LEN        4096            //maximum line length of template file

#define MAX_EMBEDDED_NUM    128


enum LineType{
    eNone,
    eInclude,           //@INCLUDE
    eCode,              //@CODE
    ePlain,             //plain text to write out
    eOpenFile,          //@OPENFILE  
    eCodeBegin,         //@CODEBEGIN
    eCodeEnd            //@CODEEND
};

class LineParser
{
public:

    LineParser( );
    ~LineParser( );
    LineType Parse( char * line );
    bool IsEmbedded( ){ return bEmbedded; }
    void Reset( );
    const char * GetParsed( ) const{ return parsed; }   
    LineType GetLineType( ){ return type;  }               //return the line type of parsed line 
    void SetIndent( int num ){ currentIndent = nextIndent = num; }

protected:
    int NextToken(  );
    void ComposeFinalLine( );
    void EraseEmbedded( char * buffer, int start, int end );
    void ExtractEmbeddedWord( char * buffer, int start, int end );
    void ParsePlainLine( );
    void PreprocessPlainLine( char * inputline , bool bEmbedded );
    bool FindEmbedded( char * buffer, int &start, int &end );
    void EvaluateIndent( );
    void IndentLine( char * l );
    int CalcIndent( char * buffer );
    char line[ MAX_LINE_LEN ];       // line to be parsed
    char parsed[ MAX_LINE_LEN ];      // output reult after the line being parsed

    char * embedded[ MAX_EMBEDDED_NUM ];    // the embedded word 

    bool bEmbedded;                   // true if current line contains embedded operator
    bool bCodeChunk;
    LineType type;
    
    int  emCount;                     //embedded number
    int  lastIndent;                  //number of indent space for last line 
    int  currentIndent;               //number of indent space for current line
    int  nextIndent;                  //number of indent space for next line
};

class Generator 
{
public:
    Generator( );
    ~Generator( );

    void SetParsed( char * fileName ){ strcpy( parsed, fileName ); }
    void SetTarget( char *fileName ){ strcpy( target, fileName ); }

    void SetHeader( char * fileName ){ strcpy( header, fileName ); }
    
    void Generate( );

    static LineParser * parser;
protected:

    bool OpenTemplate( );
    bool OpenTarget( );
    bool OpenHeader( );
    void InsertHeader( );
    void InsertFooter( );

    bool ReadLine( FILE * file );
    void WriteLine( int linenum = 0, bool bWriteLineNum = false );

    char  buffer[ MAX_LINE_LEN ];
    char  parsed[ MAX_LINE_LEN ];              //template file name to be parsed
    char  target[ MAX_LINE_LEN ];              //target file to create
    char  header[ MAX_LINE_LEN ];              //header file to append to the begin of output

    FILE *hTemplate;                  //file handle for template;
    FILE *hTarget;                    //target file handle
    FILE *hHeader;                    //header file handle
    
};

#endif
