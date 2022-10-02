/*===========================================================================
    File: main.cpp 

    This tool adds memory section chunks to the head or tail for a file


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <conio.h>

#include "tlMemorySectionChunk.hpp"

#include "Param.hpp"

Parameters *Param;


int main(int argc, char *argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc, argv);

    tlDataChunk::RegisterDefaultChunks();
    // for each file on the command-line, do the following:

    int i;
    for(i = 0; i < Param->Files.Count(); i++) 
    {
        tlInventory *inventory = new tlInventory;

        if (Param->Verbosity > 0)
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if (!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        // make a tlDataChunk from the file
        // this is the wrapper chunk for the input
        tlDataChunk *inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if (Param->Verbosity > 6)
        {
            inchunk->Print();
        }

        // build an output chunk
        tlDataChunk *outchunk = new tlDataChunk;

        if (Param->HeadEnd != NULL)
        {
            tlMemorySectionChunk *msc = new tlMemorySectionChunk();
            msc->SetName(Param->HeadEnd);
            msc->SetBeginSection(0);
            msc->SetEndSection(1);
            outchunk->AppendSubChunk(msc);
        }

        if (Param->HeadBegin != NULL)
        {
            tlMemorySectionChunk *msc = new tlMemorySectionChunk();
            msc->SetName(Param->HeadBegin);
            msc->SetBeginSection(1);
            msc->SetEndSection(0);
            outchunk->AppendSubChunk(msc);
        }

        if (Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        int ch;
        for (ch = 0; ch < inchunk->SubChunkCount(); ch++)
        {
            // copy the file
            tlDataChunk *sub = inchunk->GetSubChunk(ch);
            outchunk->AppendSubChunk(sub, FALSE);
        }

        if (Param->TailEnd != NULL)
        {
            tlMemorySectionChunk *msc = new tlMemorySectionChunk();
            msc->SetName(Param->TailEnd);
            msc->SetBeginSection(0);
            msc->SetEndSection(1);
            outchunk->AppendSubChunk(msc);
        }

        if (Param->TailBegin != NULL)
        {
            tlMemorySectionChunk *msc = new tlMemorySectionChunk();
            msc->SetName(Param->TailBegin);
            msc->SetBeginSection(1);
            msc->SetEndSection(0);
            outchunk->AppendSubChunk(msc);
        }

        if (Param->Verbosity > 5)
        {
            outchunk->Print();
        }


        char buf[P3DMAXNAME];
        if (Param->OutputFile) strcpy(buf, Param->OutputFile);
        else                   strcpy(buf, Param->Files[i]);

        // create the new output file
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

        if (!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
        delete inventory;
    
    } // end of main for loop

    delete Param;
    return 0;
}



