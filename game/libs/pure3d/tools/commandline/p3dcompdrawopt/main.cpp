/*===========================================================================
    File: main.cpp 

    This tool modifies Version 12 Skins


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

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD),tlFile::FROMFILE);
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

        tlTriMesh merge;
        const char* skeletonName;

        tlPrimGroupMesh* wheels[4] = {0,0,0,0};
        int wheelMap[4] = {0,1,2,3};
        
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
                case Pure3D::Mesh::SKIN :
                {
                    if(Param->SkinMerge)
                    {
                        tlSkin skin(sub);
                        merge.AppendMesh(*(new tlTriMesh(skin)));
                        skeletonName = skin.GetSkeletonName();
                    }
                    else
                    {
                        outchunk->AppendSubChunk(sub);
                    }
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    if(Param->Wheels && (strncmp(sub->GetName(), "wShape", 6) == 0))
                    {
                        unsigned index = sub->GetName()[6] - '0';
                        tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                        
                        bool match = false;
                        
                        for(int i = 0; i < 4; i++)
                        {
                            if(wheels[i] && (rmt::Abs(mesh->Sphere().radius - wheels[i]->Sphere().radius) < 0.01f))
                            {
                                wheelMap[index] = i;
                                match = true;
                                break;
                            }
                        }
                        
                        if(!match)
                        {
                            wheels[index] = mesh;
                            outchunk->AppendSubChunk(mesh->Chunk());
                        }
                        else
                        {
                            delete mesh;
                        }
                    }
                    else
                    {
                        outchunk->AppendSubChunk(sub);
                    }
                    break;
                }

                case P3D_COMPOSITE_DRAWABLE :
                {
                    tlCompositeDrawable compdraw(sub);
                    if(Param->SkinMerge)
                    {
                        char name[256];
                        tlSkin skin(merge, skeletonName);

                        sprintf(name, "%s_merged", compdraw.GetName());
                        skin.SetName(name);

                        tlTable<tlCompositeDrawableSkin*> skins = compdraw.GetSubSkins();

                        for(int i = 0; i < skins.Count(); i++)
                        {
                            compdraw.RemoveSkin(skins[i]->GetName());
                        }

                        compdraw.AddSkinReference(name);

                        outchunk->AppendSubChunk(skin.Chunk());
                    }

                    if(Param->Wheels)
                    {
                        for(int i = 0; i <  compdraw.GetSubProps().Count(); i++)
                        {
                            if(strncmp(compdraw.GetSubProps()[i]->GetName(), "wShape", 6) == 0)
                            {
                                unsigned index = compdraw.GetSubProps()[i]->GetName()[6] - '0';
                                char name[16];
                                sprintf(name, "wShape%d", wheelMap[index]);
                                compdraw.GetSubProps()[i]->SetName(name);
                            }
                        }
                    }

                    outchunk->AppendSubChunk(compdraw.Chunk());
                    break;
                }

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
        tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", Param->Files[i]);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
//        delete inchunk;
//        delete outchunk;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}


