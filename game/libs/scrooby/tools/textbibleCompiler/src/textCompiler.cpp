//=============================================================================
// Copyright (C) 1999 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   localization pipeline
//
// Description: compiles the text bible
//
// Authors:     ian gipson
//
//=============================================================================

//=============================================================================
// Includes
//=============================================================================
#include <assert.h>
#include "..\..\..\common\localization\languageDatabase.h"
#include <fstream>
#include <stdio.h>
#include <string.h>
#include <toollib.hpp>
#include "textCompiler.h"
#include "toollib/tlTextBible.hpp"
#include <tlScroobyProjectChunk.hpp>

//=============================================================================
// Local Constants, Typedefs, and Macros
//=============================================================================

//=============================================================================
// Global Data, Local Data, Local Classes
//=============================================================================


//=============================================================================
// Member Functions
//=============================================================================


//=============================================================================
// textCompiler::textCompiler()
//=============================================================================
// Description: constructor for the textComplier
//
// Constraints:
//
// Parameters:
//
// Returns: N/A
//
//=============================================================================
TextCompiler::TextCompiler( LanguageDatabase* ldb ):
    ldb( ldb ) 
{
}

//=============================================================================
// textCompiler::~textCompiler()
//=============================================================================
// Description: destructor for the textComplier
//
// Constraints:
//
// Parameters:
//
// Returns: N/A
//
//=============================================================================
TextCompiler::~TextCompiler()
{

}

//=============================================================================
// textCompiler::~textCompiler()
//=============================================================================
// Description: destructor for the textComplier
//
// Constraints:
//
// Parameters: path - an ascii string for the location of files on the disk
//
// Returns: NOTHING
//
//=============================================================================
void TextCompiler::SetDataPath( const char* path )
{
    strcpy( this->data_path, path ) ;
}


//=============================================================================
// void TextCompiler::SetHashingModulo( int m )
//=============================================================================
// Description: destructor for the textComplier
//
// Constraints:
//
// Parameters: m - the new hashing modulo to use
//
// Returns: NOTHING
//
//=============================================================================
void TextCompiler::SetHashingModulo( int m )
{
    hashing_modulo = m ;
    printf( "HASHING MODULO: %d\n", m );
    ldb->SetHashingModulo( m ) ;
}

//=============================================================================
// int TextCompiler::HashingModulo( ) 
//=============================================================================
// Description: destructor for the textComplier
//
// Constraints:    NOTHING
//
// Parameters:    NOTHING
//
// Returns: the current hashing modlulo
//
//=============================================================================
int TextCompiler::HashingModulo( ) 
{
    return hashing_modulo;
}

//=============================================================================
// bool TextCompiler::Export()
//=============================================================================
// Description: exports the compiled text bible for all languages
//
// Constraints:    NOTHING
//
// Parameters:    NOTHING
//
// Returns: success as to whether it was output or not
//
//=============================================================================
bool TextCompiler::Export()
{
    // Do the initial setup for p3d exporting
    PascalCString name = data_path;
    tlDataChunk::RegisterDefaultChunks();
    textBible = new tlTextBible();
    textBible->SetName( name.JustFilename() );

    //determine all the languages that we need to iterate through
    bool success = true ;
    char languages[ 10 ] = "" ;
    this->ldb->Languages( languages ) ;
    for( int i = 0; i < strlen( languages ); i++ )
    {
        success &= this->ExportLanguageFile( languages[ i ] ) ;
    }

    textBible->SetLanguages( languages );

    //output the header file
    PascalCString headerfilename = data_path;
    headerfilename += ".h";
    FILE* fout = fopen( headerfilename, "w" );
    if( fout == NULL )
    {
        success = false;
    }
    this->ldb->ExportHeaderFile( fout );
    fclose( fout );
    
    // write the pure3d file out
    name += ".p3d";
    tlFile output(new tlFileByteStream(name, omWRITE), tlFile::CHUNK32);    
    if(!output.IsOpen()) 
    {
        printf("Could not open %s for writing\n", name);
        exit(-1);
    }
    tlDataChunk* outchunk = new tlDataChunk();
    outchunk->AppendSubChunk( textBible->Chunk() );
    outchunk->Write(&output);    
    delete outchunk;
    delete textBible;

    return success ;
}

//=============================================================================
// bool ExportLanguageFile( const char language ) const ;
//=============================================================================
// Description: exports the compiled text bible for one particular language
//
// Constraints:    NOTHING
//
// Parameters:    NOTHING
//
// Returns: success as to whether it was output or not
//
//=============================================================================
bool TextCompiler::ExportLanguageFile( const char language ) const
{
    //determine the total number of strings
    int totalNumberOfStrings = ldb->NumberOfStrings() ;

    //determine the size of all the strings
    int sizeOfAllStrings = ldb->SizeOfAllStrings( language ) ;

    //allocate a structure for the export of the strings
    _int8* strings = new _int8[ sizeOfAllStrings ] ;
    
    //allocate a structure for the export of the mapping table
    int sizeOfMappingTable = totalNumberOfStrings * 8 ;
    _int8* mappingTable = new _int8[ sizeOfMappingTable ] ;

    this->ldb->Export( language, mappingTable, strings ) ;

    //open a binary file
    PascalCString filename = this->data_path ;
    filename += language ;
    /*std::ofstream outfile ;
    outfile.open( filename, std::ios::out | std::ios::binary ) ;

    //the header must say XLAT - MODULO - TOTAL#ENTRIES
    char header[] = "XLAT" ;
    outfile.write( header, strlen( header ) ) ;
    outfile.write( ( char* )&hashing_modulo, sizeof( hashing_modulo ) ) ;
    int numberOfStrings = ldb->NumberOfStrings() ;
    outfile.write( ( char* )&numberOfStrings, sizeof( numberOfStrings ) ) ;
    outfile.write( ( const char* )mappingTable, sizeOfMappingTable ) ;
    outfile.write( ( const char* )strings, sizeOfAllStrings ) ;
    outfile.close() ;*/

    tlLanguage* langChunk = new tlLanguage();
    langChunk->SetName( filename );
    langChunk->SetLanguage( language );
    langChunk->SetModulo( hashing_modulo );
    int i = 0;
    for( ; i < totalNumberOfStrings*2; i+=2 )
    {
        // MIKE IMPROVE : we have to subtract the size of the mapping table and the size of the old file format headers right now, and that's ugly.
        langChunk->AddHash( ((unsigned int*)mappingTable)[i], ((unsigned int*)mappingTable)[i+1]-sizeOfMappingTable-12 );
    }
    langChunk->SetBuffer( (unsigned char*)strings, sizeOfAllStrings );
    textBible->AddLanguage( langChunk );

    delete[] strings;
    delete[] mappingTable ;
    return false ;
}
