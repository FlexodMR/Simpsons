/*===========================================================================
    File: main.cpp 

    This tool merges scenegraphs


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <chunkids.hpp>
#include <chunks.h>
#include <tlFrameControllerChunk.hpp>
 
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

    tlTable<tlDataChunk*> scenegraphs;
    tlTable<tlMultiController*> multicontrollers;

    unsigned i;
    
    // for each file on the command-line, do the following:
    for(i = 0; i < Param->Files.Count(); i++) 
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
        tlDataChunk* inchunk = new tlDataChunk(&input);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();

        if(Param->Verbosity>6)
        {
            inchunk->Print();
        }

        int ch;
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case Pure3D::SceneGraph::SCENEGRAPH :
                    scenegraphs.Append(sub);
                    break;

                case P3D_MULTI_CONTROLLER :
                    multicontrollers.Append(new tlMultiController(sub));
                    break;

                case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
                    {
                        tlFrameControllerChunk* fc = dynamic_cast<tlFrameControllerChunk*>(sub);
                        assert(fc);
                        if(fc->Type() == Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN)
                        {
                            fc->SetHierarchyName(Param->SceneName ? Param->SceneName : scenegraphs[0]->GetName());
                        }
                        outchunk->AppendSubChunk(fc,FALSE);
                    }
                    break;
                
                default:

                    // this is not a chunk that we care about
                    // so simply copy it to the output wrapper chunk
                    // the optional parameter to AppendSubChunk
                    // indicates that we have merely copied a pointer
                    // so the destructor of outchunk should not
                    // destroy this sub-chunk as that duty will be
                    // taken care of by the destructor of inchunk
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
            }
        }

        // cleanup the no-longer-needed wrapper chunks
    
    } // end of main for loop

    tlScenegraph* outScene = new tlScenegraph;
    outScene->SetName(Param->SceneName ? Param->SceneName : scenegraphs[0]->GetName());
    tlScenegraphBranch* branch = new tlScenegraphBranch;
    branch->SetChildCount(scenegraphs.Count());
    outScene->SetRoot(branch);

    for(i = 0; i < scenegraphs.Count(); i++)
    {
        tlScenegraph* scene = new tlScenegraph(scenegraphs[i]);
        branch->SetChild(i, scene->GetRoot());
    }

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

    // create the new output file
    tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);

    if(!output.IsOpen()) 
    {
        printf("Could not open %s for writing\n", buf);
        exit(-1);
    }

    outchunk->AppendSubChunk(outScene->Chunk());

    if(multicontrollers.Count())
    {
        int totalTracks = 0;
        float maxLength = 0;

        for(i = 0; i < multicontrollers.Count(); i++)
        {
            totalTracks += multicontrollers[i]->GetNumTracks();
            maxLength = rmt::Max(maxLength, multicontrollers[i]->GetLength());
        }

        tlMultiController* mc = new tlMultiController(totalTracks);
        mc->SetName(Param->MultiControllerName ? Param->MultiControllerName : multicontrollers[0]->GetName());
        mc->SetVersion(0);
        mc->SetLength(maxLength);
        mc->SetFramerate(multicontrollers[0]->GetFramerate());

        totalTracks = 0;
        for(i = 0; i < multicontrollers.Count(); i++)
        {
            for(int j = 0; j < multicontrollers[i]->GetNumTracks(); j++)
            {
                mc->SetTrackData(totalTracks, *multicontrollers[i]->GetTrackData(j));
                totalTracks++;
            }
        }
          
        outchunk->AppendSubChunk(mc->Chunk());
    }

    outchunk->SortSubChunks();

    // get the output wrapper chunk to write its data out
    // to the file
    outchunk->Write(&output);

    // Cleanup

    delete Param;
    return 0;
}

