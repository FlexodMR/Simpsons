#include <stdio.h>

FILE * hOutputFileHandle = NULL;
char EMBEDDED_LINE_BUFFER[1024];

char * schemaFileName;

SchemaParser parser;

void CommandLineProcess( int argc, char * argv )
{
    assert( argc == 2 );

    //second argv is the schema file name
    schemaFileName = argv[ 1 ];
}

void main( int argc, char * argv[] )
{
    //process commandline arguments
    CommandLineProcess( argc, argv );

    //call the schema parser to create ast tree
    parser.Parse( schemaFileName );
