#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include <io.h>
#include <stdio.h>
#include <time.h>
#include <sys/timeb.h>
#include <sys/types.h>
#include "..\coder\schemaparse\schemaparse.hpp"
#include <assert.h>
#include "Param.hpp"

using namespace SchemaParser;

#define MAX_LINE_LEN        0xffff
#define MAX_CODE_BUFFER     0xffff
#define max( a, b )         a > b ? a : b

FILE * hOutputFileHandle = NULL;
char EMBEDDED_LINE_BUFFER[1024];

char * schemaFileName = NULL;

char pureSchemaFileName[ MAX_LINE_LEN ];

char * schemaBuffer = NULL;

ObjectList * AST = NULL;

const char * FILE_INCLUDE_PROPERTY = "includehpp";
const char * CLASS_REFERENCE = "class";
Parameters * Param;

void StringLower( char * result, const char * str )
{
    memset( result, 0, strlen( str ) + 1 );
    strcpy( result, str );
    _strlwr( result );
}

void GetTrueMemberType( Member *m, char * truetype )
{
    if( m->IsType( "array" ) ){
        memset( truetype, 0, strlen( m->GetTypeParam( 0 ) ) + 1 );
        strcpy( truetype, m->GetTypeParam( 0 ) );
    }
    else{
        memset( truetype, 0, strlen( m->GetTypeName(  ) ) + 1 );
        strcpy( truetype, m->GetTypeName(  ) );
    }
}

bool FindMapping( char * result, const char *key, std::map<string, string> * mapping )
{
    string skey( key );

    if( mapping->find( skey ) != mapping->end( ) ){
        strcpy( result, (*mapping)[ skey ].c_str( ) );
        return true;
    }
    else
        return false;

}
    
bool FindMemberTypeMapping(  Member *m, char * result, std::map<string, string> * mapping )
{
    char truetype[ MAX_LINE_LEN ];
    GetTrueMemberType( m, truetype );

    return FindMapping( result, truetype, mapping );
}

void AlignString( const char * str, int length, bool leftAligned, char * result )
{
    if( leftAligned ){
        strcpy( result, str );

        int end = strlen( str );
        int appending = length - end; 

        for( int i = 0; i < appending; ++i )
            result[ end + i ] = ' ';

        result[ end + i ] = 0;
    }
    else{       //right aligned
        int end = strlen( str );
        int appending = length - end; 

        for( int i = 0; i < appending; ++i )
            result[ i ] = ' ';

        strcpy( &(result[ i ]), str );
    }
}


///
///     close output file
///
void CloseOutputFile( )
{
    if( hOutputFileHandle )
        fclose( hOutputFileHandle );

    hOutputFileHandle = NULL;
}


///
///     Open an output file with the same name as the schema file
///     and append the extention name to the output file name
///
void OpenOutputFile( const char * path, const char *extention )
{
    char name[ MAX_LINE_LEN ];

    memset( name, 0, MAX_LINE_LEN );

    if( path ){
        strcpy( name, path );
        strcat( name, pureSchemaFileName );
    }
    else
        strcpy( name, pureSchemaFileName );

    strcat( name, extention );

    CloseOutputFile( );

    hOutputFileHandle = fopen( name, "w" );

    if( !hOutputFileHandle ){
        printf( "Error: the outputfile %s could not be open for writing!\n", name );
        exit( 0 );
    }

}
///
///     Open an output file with the same name as the schema file
///     and append the extention name to the output file name
///
void OpenOutputFile( const char * fullpath )
{
    
    hOutputFileHandle = fopen( fullpath, "w" );

    if( !hOutputFileHandle ){
        printf( "Error: the outputfile %s could not be open for writing!\n", fullpath );
        exit( 0 );
    }

}

void ExtractPureSchemaFileName( )
{
    int len = strlen( schemaFileName );

    assert( len > 0 );

    memset( pureSchemaFileName, 0, MAX_LINE_LEN );

    --len;
    while(  schemaFileName[ len ] != '.'  && len >= 0 )
        --len;

    if( len >= 0 )
        strncpy( pureSchemaFileName, schemaFileName, len );
}


const char * PureSchemaFileName( )
{
    return pureSchemaFileName;
}

void CommandLineProcess( Parameters * p )
{

    //second argv is the schema file name
    schemaFileName = p->SchemaFile;
    ExtractPureSchemaFileName( );
}


void ReadInSchema( const char * schemaFile )
{
    char fullName[ MAX_LINE_LEN ];

    if( Param->SchemaDir ){
        strcpy( fullName, Param->SchemaDir );

        strcat( fullName, schemaFile );
    }
    else
        strcpy( fullName, schemaFile );


	FILE *hSchema = fopen( fullName, "r" );
    printf( "Read in schema file %s...\n", fullName );

    if( !hSchema ){
        printf( "Error: the schema file %s could not be open for reading!\n", fullName );
        exit( 0 );
    }

	long s = _filelength( _fileno( hSchema ) );
	schemaBuffer = new char[ s + 1 ];

    memset( schemaBuffer, 0, s + 1 );

	int readlen = fread( schemaBuffer, 1, s, hSchema );
    schemaBuffer[ readlen ] = 0;

    fclose( hSchema );
}

///
///     print out the content of the property abiding by printFormat
///       
void PropertyPrintOut( int indent, const char * propertyName, const char * printFormat )
{
    char heading[ MAX_LINE_LEN ];

    char buffer[ MAX_LINE_LEN ];

    int i, j, k;
    
	for( i = 0; i < AST->objects.Count( ); ++i ){
        Object * o = AST->objects[ i ];
        for( j = 0; j < o->properties.Count( ); ++j ){
            Property * p = o->properties[ j ];

            if( strcmp( p->name, propertyName ) == 0 ){ 

                memset( heading, 0, MAX_LINE_LEN );
                memset( buffer, 0, MAX_LINE_LEN );

                for( k = 0; k < indent; ++k )
                    heading[ k ] = ' ';

                sprintf( buffer, printFormat, p->GetParam( 0 ) );           
                strcat( heading, buffer );
                fputs( heading, hOutputFileHandle );
            }
        }
    }
}
      

///
///    match the member type to print out the member by using printFormat
///            
void MemberPrintOut( Object *o, int indent, const char * memberType, const char * printFormat )
{
    char heading[ MAX_LINE_LEN ];

    char buffer[ MAX_LINE_LEN ];

    int j, k;
    
    for( j = 0; j < o->members.Count( ); ++j ){
        Member * m = o->members[ j ];

        if( m->IsType( memberType ) ){ 

            memset( heading, 0, MAX_LINE_LEN );
            memset( buffer, 0, MAX_LINE_LEN );

            for( k = 0; k < indent; ++k )
                heading[ k ] = ' ';

            char lowname[ MAX_LINE_LEN ];
            StringLower( lowname, m->name );
            sprintf( buffer, printFormat, lowname );           
            strcat( heading, buffer );
            fputs( heading, hOutputFileHandle );
        }
    }
}

///
///     print out object's name to printFormat
///
void ObjectPrintOut( int indent, const char * objectType, const char * printFormat )
{
    char heading[ MAX_LINE_LEN ];

    char buffer[ MAX_LINE_LEN ];

    int i, j;

	for( i = 0; i < AST->objects.Count( ); ++i ){
        Object * o = AST->objects[ i ];

        if( strcmp( o->className, objectType ) == 0 ){ 
            memset( heading, 0, MAX_LINE_LEN );
            memset( buffer, 0, MAX_LINE_LEN );

            for( j = 0; j < indent; ++j )
                heading[ j ] = ' ';

            sprintf( buffer, printFormat, o->name );

            strcat( heading, buffer );

            fputs( heading, hOutputFileHandle );
        }
        
    }
}

void GetIncludedChunkID( ObjectList *list, std::map<string, string> * mapping  )
{
    for( int i = 0; i < list->ObjectsCount( ); ++i ){
        Object *o = list->objects[ i ];

        for( int j = 0; j < o->PropertiesCount( ); ++j ){
            Property *p = o->properties[ j ];
            if( !p->IsType( "includeschema" ) )
                continue;

            //else open the included schema file and parsed it
            ReadInSchema( p->GetParam( 0 ) );
            
            ObjectList *included = Parse( schemaBuffer, true );

            //get all the chunk id of the included schema
            for( int k = 0; k < included->ObjectsCount( ); ++k ){
                Object *o = included->objects[ k ];
                
                if( !o->IsType( "chunk" ) )
                    continue;

                string key( o->name );
                string mirror(  o->GetProperty( "chunk_id" ) );
                (*mapping)[ key ] = mirror;
            }

            delete[ ] schemaBuffer;
        }
    }
}
  
//
//      Peel off the quotation mark of a string
//
void PureString( const char * str, char * purestr )
{
    if( !str ){
        purestr = "";
        return;
    }

    int len = strlen( str );
    if( str[ 0 ] != '"' || str[ len - 1 ] != '"' )
        strcpy( purestr, str );
    else{
        strcpy( purestr, str + 1 );
        purestr[ len - 2 ] = 0;
    }
}


void Wrap( const char * lead, const char * alignment, const char * endbracket, const char * wrapping,  char * wrapped, int columns )
{
    int alignLen = strlen( alignment );

    int leadLen = strlen( lead );
    strcpy( wrapped, lead );

    for( int i = 0; i < alignLen - leadLen; ++i )
        strcat( wrapped, " " );

    int len = columns - alignLen;
    
    char tmp[ MAX_LINE_LEN ];  
    memset( tmp, 0, MAX_LINE_LEN );         
    int count = 0;              //peel off return key from wrapping
    for( i = 0; i < strlen( wrapping ); ++i ){
        if( wrapping[ i ] != '\n' ){
            tmp[ count++ ]= wrapping[ i ];
        }
    }

    const char * buffer = tmp;

    if( strlen( buffer ) <= len ){
        strcat( wrapped, buffer );
        strcat( wrapped, endbracket );
        return;
    }
    // else, the buffer is longer than the length to be wrapped
    while( strlen( buffer ) > len ){
        char tmp[ MAX_LINE_LEN ];
        memset( tmp, 0, MAX_LINE_LEN );

        int linelen = len;

        if( buffer[ linelen ] != ' ' && buffer[ linelen - 1 ] != ' ' ){
            linelen -= 2;

            while( linelen >= 0 && buffer[ linelen ] != ' ' )
                --linelen;
        }
        
        if( linelen < 0 )  //can't solve the wrap, wrap at the maximum length
            linelen = len;

        strncpy( tmp, buffer, linelen );
        buffer += linelen;
        strcat( tmp, endbracket );
        strcat( wrapped, tmp );
        strcat( wrapped, "\n");

        strcat( wrapped, alignment );
    }
    strcat( wrapped, buffer );
    strcat( wrapped, endbracket );
}

const char * GetShaderObjectName( ObjectList * list )
{
    for( int i = 0; i < list->ObjectsCount( ); ++i ){
        Object *o= list->objects[ i ];

        if( o->IsType( "shader" ) )
            return o->name;
    }

    return NULL;
}

const char * GetShaderProperty( ObjectList * list, const char * propname )
{
    for( int i = 0; i < list->ObjectsCount( ); ++i ){
        Object *o= list->objects[ i ];

        if( o->IsType( "shader" ) )
            return o->GetProperty( propname );
    }

    return NULL;
}

void GetYear( char * year )
{
    
    time_t ltime;
    struct tm *today;

    time( &ltime );
    today = localtime( &ltime );

    strftime( year, MAX_LINE_LEN, "%Y", today );
}

void main( int argc, char * argv[] )
{
    Param = new Parameters( argc, argv );

    //process commandline arguments
    CommandLineProcess( Param );


	//read in the schema to the buffer
	ReadInSchema( schemaFileName );

    //call the schema parser to create AST tree
    AST = Parse( schemaBuffer, true );

	assert( AST );

	//now AST tree holds all information, we free the allocated memory for buffer
	delete[ ] schemaBuffer;

    if( !AST ){     //schema file is not parsed correctly
        printf("Error: schema file %s is not parsed correctly! This is most likely due to the grammar errors in the file!\n", schemaFileName );
        exit( 0 );
    }
