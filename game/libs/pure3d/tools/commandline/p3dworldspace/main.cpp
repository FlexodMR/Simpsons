/*===========================================================================
    File: main.cpp 

    This tool worldspaces and dinstances a scengraph into a single mesh


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlScenegraph.hpp>
#include <tlAnimationChunk.hpp>

#include "Param.hpp"
#include "worldspace.hpp"

Parameters* Param;

tlInventory meshInv;
tlScenegraph* scene;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        bool haveScenegraph = false;

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

        // build output chunks
        tlDataChunk* outchunk = new tlDataChunk;
        tlDataChunk* outchunk2 = new tlDataChunk; // output chunk for stuff after the scenegraph

        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
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
                case Pure3D::Animation::AnimationData::ANIMATION :
                    {
                        tlAnimationChunk* animCh = dynamic_cast<tlAnimationChunk*>(sub);
                        switch(animCh->GetAnimationType())
                        {
                            case Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN:
                            case Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS:
                                {
                                    if(animCh->SubChunkCount())
                                    {
                                        tlAnimationGroup* group = dynamic_cast<tlAnimationGroup*>(animCh->GetSubChunk(0));
                                        AddExemptNode(group->GetName());
                                    }
                                    outchunk2->AppendSubChunk(animCh,FALSE);
                                    break;
                                }
                            default:
                                break;
                        }
                    }
                    break;


                case Pure3D::Mesh::MESH :
                    {
                        tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                        meshInv.Store(mesh);
                    }
                    break;

                case Pure3D::SceneGraph::SCENEGRAPH :
                    {
                        if(haveScenegraph)
                        {
                            if( Param->Verbosity > 0 )
                                printf("Multiple scenegraphs found. All but the first will be ignored\n");
                        }
                        else
                        {
                            scene = new tlScenegraph(sub);
                        }
                        haveScenegraph = true;
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

                    if(haveScenegraph)
                        outchunk2->AppendSubChunk(sub,FALSE);
                    else
                        outchunk->AppendSubChunk(sub,FALSE);

                    break;
            }
        }

        if(haveScenegraph)
        {
            tlTriMesh* triMesh = WorldspaceScenegraph(scene, &meshInv);

            tlInventory::Iterator<tlEntity> iterate(&meshInv);

            // dump out meshes in inventory that we not worldspaced
            tlEntity* t = iterate.First();
            while(t)
            {
                if(t->GetMark() != WORLDSPACE_MARK)
                {
                    outchunk->AppendSubChunk(t->Chunk());
                }
                t = iterate.Next();
            }

            // now dump the worldspaced mesh
            tlPrimGroupMesh mesh(*triMesh);
            mesh.SetName(scene->GetName());
            outchunk->AppendSubChunk(mesh.Chunk());

            // and the scenegraph containing all the non-worldspaced objects
            outchunk->AppendSubChunk(scene->Chunk(),TRUE);
        }

        for(int j = 0; j < outchunk2->SubChunkCount(); j++)
        {
            outchunk->AppendSubChunk(outchunk2->GetSubChunk(j));
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
            strcpy(buf,Param->Files[i]);
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

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
//      delete outchunk;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

