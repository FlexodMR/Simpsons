/*===========================================================================
    File: main.cpp 

    Converts v14 or v15 art to v16 art


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

        // is this a event or sequence file???
        if ((strstr(Param->Files[i],".seq") != NULL) || (strstr(Param->Files[i],".evt") != NULL))
        {
            FILE* seqFile = fopen(Param->Files[i], "r");
            
            tlInventory inventory;

            tlEventAnimTextLoader animLoader;
            animLoader.Load(seqFile, &inventory);

            fclose(seqFile);
         
            tlDataChunk* outchunk = inventory.Export();
            
            if(Param->Verbosity>5)
            {
                outchunk->Print();
            }

            // get the output wrapper chunk to write its data out
            // to the file
            char buf[P3DMAXNAME];
            if(Param->OutputFile)
            {
                strcpy(buf,Param->OutputFile);
            } 
            else 
            {
                strncpy(buf,Param->Files[i],strlen(Param->Files[i])-4);
                strcat(buf,".p3d");
            }

            tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);
            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", buf);
                delete outchunk;
                exit(-1);
            }

            outchunk->Write(&output);
            output.Close();

            delete outchunk;
        }
        else
        {
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
            input.Close();

            if(Param->Verbosity>6)
            {
                inchunk->Print();
            }

            tlDataChunk* outchunk = new tlDataChunk;

            if(Param->WriteHistory)
            {
                // put a history chunk in the output
                // a history chunk shows what version of the tool
                // was run on the file with what command-line 
                // parameters
                outchunk->AppendSubChunk(Param->HistoryChunk());
            }

            if (Param->ReExport)
            {
                tlLoadManager manager;
                tlInventory inventory;

                manager.InstallDefaultLoaders();
                
                if (Param->AppendAnimTypePrefix)
                {
                    tlAnimationLoader* loader = (tlAnimationLoader*)manager.GetLoader(Pure3D::Animation::AnimationData::ANIMATION);
                    loader->SetAutoAppendAnimTypePrefix(true);
                }
                if (Param->AppendAnimTypeSuffix)
                {
                    tlAnimationLoader* loader = (tlAnimationLoader*)manager.GetLoader(Pure3D::Animation::AnimationData::ANIMATION);
                    loader->SetAutoAppendAnimTypeSuffix(true);
                }

                manager.Load(inchunk,&inventory);
                
                outchunk->AppendSubChunks(inventory.Export());
            }
            else
            {
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
                        case Pure3D::BillboardObject::QUAD_V14:
                        {
                            tlBillboardQuadGroup quad(sub);
                            outchunk->AppendSubChunk(quad.Chunk());
                            break;
                        }

                        case P3D_VISIBILITY_ANIM:
                        case P3D_TEXTURE_ANIM:
                        case P3D_CAMERA_ANIM:
                        case P3D_LIGHT_ANIM:
                        case P3D_EXPRESSION_ANIM:
                        case P3D_POSE_ANIM:
                        case P3D_SG_TRANSFORM_ANIM:
                        {
                            tlAnimationLoader loader;
                            tlAnimation* anim = (tlAnimation*)loader.Load(sub);
                            if (Param->AppendAnimTypePrefix)
                            {
                                anim->AppendAnimTypePrefix();
                            }
                            if (Param->AppendAnimTypeSuffix)
                            {
                                anim->AppendAnimTypeSuffix();
                            }
                            outchunk->AppendSubChunk(anim->Chunk());
                            break;
                        }
                        
                        case P3D_FRAME_CONTROLLER:
                        {
                            tlFrameController controller(sub);
                            if (Param->AppendAnimTypePrefix)
                            {
                                controller.AppendAnimTypePrefix();
                            }
                            if (Param->AppendAnimTypeSuffix)
                            {
                                controller.AppendAnimTypeSuffix();
                            }
                            outchunk->AppendSubChunk(controller.Chunk());
                            break;
                        }

                        case Pure3D::Mesh::SKIN:
                        {
                            tlSkin skin(sub);
                            outchunk->AppendSubChunk(skin.Chunk());
                            break;
                        }
                        
                        case P3D_EXPRESSION_GROUP:
                        {
                            tlExpressionGroup group(sub);
                            outchunk->AppendSubChunk(group.Chunk());
                            break;
                        }

                        case P3D_EXPRESSION_MIXER:
                        {
                            tlExpressionMixer mixer(sub);
                            outchunk->AppendSubChunk(mixer.Chunk());
                            break;
                        }

                        case P3D_VERTEX_OFFSET_EXPRESSION:
                        {
                            tlExpression expression(sub);
                            outchunk->AppendSubChunk(expression.Chunk());
                            break;
                        }
                
                        default:
                        {
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
            } 
            else 
            {
                strcpy(buf,Param->Files[i]);
            }

            // create the new output file
            tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);
            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", buf);
                delete outchunk;
                exit(-1);
            }

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);

            delete inchunk;
            delete outchunk;

            output.Close();
        }    
    } 

    // Cleanup

    delete Param;
    return 0;
}

