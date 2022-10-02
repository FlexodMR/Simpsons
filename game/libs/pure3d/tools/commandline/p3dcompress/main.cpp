/*===========================================================================
    File: main.cpp 

    This tool compresses a Pure3D file


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <lzrf.hpp>
#include <toollib.hpp>
#include <time.h>

#include "Param.hpp"

#define COMPRESSED_BLOCK_SIZE 4096

Parameters* Param;

struct tm startTime = { 0, 0, 12, 25, 11, 93 };

void ResetTime( );
void PrintUsedTime( );

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    //Reset the time for printint used time
    ResetTime( );

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Compressing %s", Param->Files[ i ]);
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
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if (Param->Verbosity>6)
        {
            inchunk->Print();
        }

        // build an output chunk
        tlDataChunk* outchunk = new tlDataChunk;
        if (Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        int ch;
        // go through all the sub-chunks of the input and copy them to the output
        for (ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
            outchunk->AppendSubChunk(sub,FALSE);
        }

        if (Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if (Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } 
        else 
        {
            strcpy(buf,Param->Files[i]);
        }

        // Big endian?
        tlFile::FileType       innerType = tlFile::CHUNK32;
        if (Param->BigEndian)  innerType = tlFile::CHUNK32SWAP;
        
        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), innerType);

        if (!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // compress the output wrapper chunk to write its data out
        // to the file

        tlMemByteStream memstream(NULL, 65536);
        tlFile outputmem(&memstream, innerType, false);
        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&outputmem);

        int filesize = memstream.GetPosition();

        output.PutLong(Pure3D::DATA_FILE_COMPRESSED);
        output.PutLong(filesize);

        unsigned char* comp = new unsigned char[filesize*2];
        unsigned int compSize;

        unsigned char* start = memstream.GetMemory();
        unsigned int remaining = filesize;
        unsigned char* decomp = new unsigned char[COMPRESSED_BLOCK_SIZE];

        if ( Param->Verbosity > 0 )
        {
            if (Param->OutputFile) printf(" to %s", Param->OutputFile);
        }

        while(remaining > 0)
        {
            int size = COMPRESSED_BLOCK_SIZE;
            if(size > remaining)
            {
                size = remaining;
            }
            
            if( Param->NewAlgorithms )
                lzrf_compress(start,size,comp,&compSize, Param->Fast==1);
            else
                lzr_compress(start,size,comp,&compSize, Param->Fast==1);


            if ( Param->Verbosity > 0 ) printf(".");

            if(Param->Verify)
            {

                if( Param->NewAlgorithms )
                    lzrf_decompress(comp,compSize, decomp, size);
                else
                    lzr_decompress(comp,compSize, decomp, size);

                for(int c = 0; c < size; c++)
                {
                    if(decomp[c] != start[c])
                    {
                        printf("ERROR: compression failed %d != %d  offset(%d)\n", decomp[c], start[c], c);
                        exit(-1);
                    }
                } 
            }

            output.PutLong(compSize);
            output.PutLong(size);
            output.PutBytes(comp, compSize);
            start += size;
            remaining -= size;

        }

        if ( Param->Verbosity > 0 ) printf("Done\n");

        // cleanup the no-longer-needed wrapper chunks
        delete[] comp;
        delete[] decomp;
        delete inchunk;
        delete outchunk;
    } // end of main for loop

    // Cleanup

    delete Param;

    //print used time
    PrintUsedTime( );

    return 0;
}

void PrintUsedTime( )
{

    time_t ltime;

    struct tm *end;

    _tzset();

    time( &ltime );
    end = localtime( &ltime );

    int hours, minutes, seconds;

    if( end->tm_sec < startTime.tm_sec ){
        --end->tm_min;
        seconds = 60 + end->tm_sec - startTime.tm_sec;
    }
    else
        seconds = end->tm_sec - startTime.tm_sec;


    if( end->tm_min < startTime.tm_min ){
        --end->tm_hour;
        minutes = 60 + end->tm_min - startTime.tm_min;
    }
    else
        minutes = end->tm_min - startTime.tm_min;



    if( end->tm_hour < startTime.tm_hour ){
        --end->tm_yday;
        hours = 24 + end->tm_hour - startTime.tm_hour;
    }
    else
        hours = end->tm_hour - startTime.tm_hour;


    printf( "Total time used is: %d hours - %d minutes - %d seconds\n", hours, minutes, seconds );

}

void ResetTime( )
{
    time_t ltime;

    struct tm *start;

    _tzset();

    time( &ltime );
    start = localtime( &ltime );

    startTime = *start;

}