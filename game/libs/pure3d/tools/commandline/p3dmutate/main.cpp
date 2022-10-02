/*===========================================================================
    File: main.cpp 

    Provides a generic way to modify chunk fields


    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"
#include "IntRangeList.hpp"
#include "ProcessChunks.hpp"

Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    // determine what operations we're performing (query/edit/delete)
    if (Param->Query)
    {
        // query overrides all others, since its inherently non-intrusive
        Param->Edit = FALSE;
        Param->Delete = FALSE;
    }
    else if (Param->Delete)
    {
        if (Param->Edit)
        {
            // edit overrides delete
            Param->Delete = FALSE;
        }
        else
        {
            if (Param->NewValue != 0)
            {
                printf("New field value (-a value) was specified with delete flag (-d)!\n");
                exit(-1);
            }
        }
    }
    else
    {
        // default behaviour, if no other flags specified
        Param->Edit = TRUE;
    }

    // if we're doing field updating (not querying/deleting),
    // we need certain parameters for this operation to make sense
    if (Param->Edit)
    {
        if (Param->NewValue == 0)
        {
            if ((!Param->PrefixFileName) && (!Param->NewChunkID))
            {
                printf("New field value (-a value) must be specified!\n");
                exit(-1);
            }
        }
        else if (strcmp(Param->NewValue, "NULL") == 0)
        {
            // NOTE:  don't prefix filename if NewValue is NULL
            Param->NewValue[0] = 0;
        }

        if ((Param->FieldName.Count() == 0) && !Param->IgnoreFieldFilter)
        {
            printf("Field name filter (-f field_name) or ignore flag (-F) must be specified!\n");
            exit(-1);
        }
    }

    IntRangeList *chunkIDRangeList = 0;
    if (Param->ChunkID != 0)
    {
        chunkIDRangeList = new IntRangeList(Param->ChunkID);
    }

    IntRangeList *newChunkIDRangeList = 0;
    if (Param->NewChunkID != 0)
    {
        newChunkIDRangeList = new IntRangeList(Param->NewChunkID);
    }

    IntRangeList *arrayRangeList = 0;
    if (Param->ArrayIndex != 0)
    {
        arrayRangeList = new IntRangeList(Param->ArrayIndex);
    }

    tlDataChunk::RegisterDefaultChunks();

    char *originalNewValue = Param->NewValue;
    char modifiedNewValue[1024];

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }

        if (Param->PrefixFileName)
        {
            strcpy(modifiedNewValue, Param->Files[i]);

            // lop off extension, if any
            int len = strlen(modifiedNewValue);
            int j;
            for (j = (len - 1); j >= 0; --j)
            {
                if (modifiedNewValue[j] == '.')
                {
                    len = j;
                    modifiedNewValue[j] = 0;
                    break;
                }
            }

            // chop off preceding path, if any
            for (j = (len - 1); j >= 0; --j)
            {
                if ((modifiedNewValue[j] == '\\') ||
                     (modifiedNewValue[j] == '/'))
                {
                    memmove(modifiedNewValue, modifiedNewValue + j + 1, len - j);
                    break;
                }
            }

            if (originalNewValue != 0)
            {
                strcat(modifiedNewValue, originalNewValue);
            }
            Param->NewValue = modifiedNewValue;
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

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

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

        int filter_count = 0;

        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(int ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // get the next sub-chunk
            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            if ((Param->MaxCount >= 0) &&
                 (filter_count >= Param->MaxCount))
            {
                outchunk->AppendSubChunk(sub, FALSE);
            }
            else
            {
                // Process the subchunk
                if (ProcessChunks(sub, 0, sub, Param,
                                        chunkIDRangeList, newChunkIDRangeList, arrayRangeList,
                                        filter_count))
                {
                    // only append to output if the delete filter failed
                    // ie. ProcessChunks returned true
                    outchunk->AppendSubChunk(sub, FALSE);
                }
                else
                {
                    // we're "deleting" the chunk by not appending it
                    ++filter_count;
                }
            }
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf, Param->OutputFile);
        }
        else
        {
            strcpy(buf, Param->Files[i]);
        }

        // create the new output file
        tlFile output(new tlFileByteStream(buf,omWRITE),tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete outchunk;
        delete inchunk;
    
    } // end of main for loop

    // Cleanup
    if (arrayRangeList != 0)
    {
        delete arrayRangeList;
    }
    if (chunkIDRangeList != 0)
    {
        delete chunkIDRangeList;
    }

    Param->NewValue = originalNewValue;
    delete Param;
    return 0;
}

