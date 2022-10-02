/*===========================================================================
    File: main.cpp 

    This tool groups chunks from input files and saves them to another file.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

bool GetChunkName(tlDataChunk* chunk, char* buf)
{
    for (int i = 0; i < chunk->GetFieldCount(); ++i)
    {
        if (!chunk->GetFieldIsArray(i) &&
             (strcmp(chunk->GetFieldType(i), "string") == 0) &&
             (strcmp(chunk->GetFieldName(i), "Name") == 0))
        {
            chunk->GetFieldValue(i, buf, 255);
            return true;
        }
    }

    return false;
}

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    tlDataChunk** inchunks = new tlDataChunk*[ Param->Files.Count() ];
    bool** toDelete = new bool*[ Param->Files.Count() ];

    tlDataChunk* groupChunk = new tlDataChunk;

    //Load each file into 
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        inchunks[ i ] = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunks[ i ]->Print();
        }

        toDelete[ i ] = new bool[ inchunks[ i ]->SubChunkCount() ];

        unsigned int chunkCount;
        for ( chunkCount = 0; chunkCount< inchunks[ i ]->SubChunkCount(); ++chunkCount )
        {
            toDelete[ i ][ chunkCount ] = false;
        }
    }

    unsigned int fileIdx1, fileIdx2;

    //for each file in the inchunks Array
    for( fileIdx1 = 0; fileIdx1 < Param->Files.Count() - 1; ++fileIdx1 )
    {
        tlDataChunk* inFile1;
        inFile1 = inchunks[ fileIdx1 ];

        int chunkIdx1 = 0;

        //Test each chunk with 
        for ( chunkIdx1 = 0; chunkIdx1 < inFile1->SubChunkCount(); ++chunkIdx1 )
        {
            tlDataChunk* sub1;
            sub1 = inFile1->GetSubChunk( chunkIdx1 );

            //All the other files in the inchunks Array
            for ( fileIdx2 = fileIdx1 + 1; fileIdx2 < Param->Files.Count(); ++fileIdx2 )
            {
                tlDataChunk* inFile2;
                inFile2 = inchunks[ fileIdx2 ];

                unsigned int testIdx;
                //Only test the chunk IDs we want
                for ( testIdx = 0; testIdx < Param->TestList.Count(); ++testIdx )
                {
                    if ( sub1->ID() == (unsigned)Param->TestList[ testIdx ] )
                    {
                        int chunkIdx2 = 0;

                        //Test the sub 1 and sub2
                        for ( chunkIdx2 = 0; chunkIdx2 < inFile2->SubChunkCount(); ++chunkIdx2 )
                        {
                            tlDataChunk* sub2;
                            sub2 = inFile2->GetSubChunk( chunkIdx2 );

                            bool match = false;
                            if ( Param->ByName && sub1->ID() == sub2->ID() )
                            {
                                char name1[256];
                                char name2[256];

                                GetChunkName( sub1, name1 );
                                GetChunkName( sub2, name2 );

                                if ( strcmp( name1, name2 ) == 0 )
                                {
                                    match = true;
                                }
                            }
                            else if (*sub2 == *sub1) 
                            {
                                match = true;
                            }

                            if ( match )
                            {
                                //Add sub 1 to the global set.
                                groupChunk->AppendSubChunk( sub1, FALSE );

                                //Mark to remove sub1 from the inchunks...
                                toDelete[ fileIdx1 ][ chunkIdx1 ] = true;
                                //inFile1->RemoveSubChunk( chunkIdx1 );
                                //Then remove sub2 from the inchunks...
                                toDelete[ fileIdx2 ][ chunkIdx2 ] = true;
                                //inFile2->RemoveSubChunk( chunkIdx2 );
                            }
                        }
                           
                        break;
                    }
                }
            }
        }
    }

    tlDataChunk* outchunk;

    //Write out what's left of the inchunks.
    for ( i = 0; i < Param->Files.Count(); ++i )
    {
        outchunk = new tlDataChunk;

        unsigned int chunkCount;
        for ( chunkCount = 0; chunkCount < inchunks[ i ]->SubChunkCount(); ++chunkCount )
        {           
            if ( !toDelete[ i ][ chunkCount ] )
            {
                outchunk->AppendSubChunk( inchunks[ i ]->GetSubChunk( chunkCount ), FALSE );
            }
        }


        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        strcpy(buf,Param->Files[i]);

        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        outchunk->SortSubChunks();

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        delete outchunk;
    }
    
    //Write out the group chunk
    if (Param->Verbosity>5)
    {
        groupChunk->Print();
    }

    char buf[P3DMAXNAME];
    if ( Param->OutputFile )
    {
        strcpy(buf, Param->OutputFile);
    }
    else
    {
        strcpy(buf, "out.p3d");
    }

    tlFile output( new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

    if(!output.IsOpen()) 
    {
        printf("Could not open %s for writing\n", buf);
        exit(-1);
    }

    groupChunk->SortSubChunks();

    // get the output wrapper chunk to write its data out
    // to the file
    groupChunk->Write(&output);

    for ( i = 0; i < Param->Files.Count(); ++i )
    {
        delete inchunks[ i ];
        inchunks[ i ] = NULL;

        delete[] toDelete[ i ];
        toDelete[ i ] = NULL;
    }
    
    delete[] inchunks;
    delete[] toDelete;
    delete groupChunk;

    // Cleanup

    delete Param;
    return 0;
}

