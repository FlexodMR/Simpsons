/*===========================================================================
    File: main.cpp 

    Combines Pure3D files.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    // build an output chunk
    tlDataChunk* outchunk = new tlDataChunk;
    if(Param->WriteHistory)
    {
        // put a history chunk in the output
        // a history chunk shows what version of the tool
        // was run on the file with what command-line 
        // parameters
        outchunk->AppendSubChunk(Param->HistoryChunk());
    }

    // for each file on the command-line, do the following:
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
            continue;
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

        // toss all our chunks into the outchunk!
        inchunk->TransferSubChunks(outchunk);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
    } // end of main for loop

    if(Param->Verbosity>5)
    {
        outchunk->Print();
    }

    char buf[P3DMAXNAME];
    if(Param->OutputFile)
    {
        strcpy(buf,Param->OutputFile);
    } else {
        strcpy(buf,Param->Files[0]);
    }

    if(Param->Sort)
    {
        outchunk->SortSubChunks();
    }

    // create the new output file
    tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

    if(!output.IsOpen()) 
    {
        printf("Could not open %s for writing\n", buf);
        exit(-1);
    }

    // get the output wrapper chunk to write its data out
    // to the file
    outchunk->Write(&output);

    // Cleanup
    delete outchunk;
    
    delete Param;
    return 0;
}

