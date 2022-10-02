/*===========================================================================
    File: main.cpp 

    This tool manipulates primitive groups in meshes and skins


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include <tlSkinVertex.hpp>
#include <tlOffsetSkinVertex.hpp>
#include <tlMeshChunk.hpp>
#include <tlSkinChunk.hpp>

#include "Param.hpp"

Parameters* Param;

static const int GEOMETRY_NONOPTIMIZE_VERSION = 1;      //stream-rendered

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
                case Pure3D::Mesh::SKIN:
                {
                    tlSkin* skin = new tlSkin(sub);

					//don't optimize skin deformed
					if( skin->GetExprOffsets( ) != NULL ){  //the skin is deformed
						outchunk->AppendSubChunk( sub, FALSE );
						delete skin;
						break;
					}

                    if(!Param->Rebuild)
                    {
                        for(int i = 0; i < skin->NumPrimGroups(); i++)
                        {
                            if((skin->GetPrimGroup(i)->GetType() == PDDI_PRIM_TRISTRIP) || (skin->GetPrimGroup(i)->GetIndexCount() == 0))
                            {
                                printf("WARNING : Skin '%s' is tristripped and/or de-indexed\n"
                                       "  which processing may not preserve, Re-run tristrip\n"
                                       "  or p3ddeindex on processed art\n", skin->GetName());
                                break;
                            }
                        }
                    }
                    if(Param->Rebuild)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Rebuilding primgroups for skin:   %s\n", skin->GetName());
                        }

                        tlSkin* newSkin = skin->Rebuild( );
                        delete skin;
                        skin = newSkin;
                    }

                    if(Param->Merge)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Merging primgroups for skin:   %s\n", skin->GetName());
                        }

                        tlSkin* newSkin = skin->Rebuild( true );
                        delete skin;
                        skin = newSkin;
                    }

                    if(Param->OneBone)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Seperating single bone vertices for skin:   %s\n", skin->GetName());
                        }
                        tlSkin *tmpSkin = skin->SeparateBones( 1, Param->Threshold );
                        delete skin;
                        skin = tmpSkin;
                    }

                    if (Param->TwoBone)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Seperating dual bone vertices for skin:   %s\n", skin->GetName());
                        }
                        tlSkin *tmpSkin = skin->SeparateBones( 2, Param->Threshold );
                        delete skin;
                        skin = tmpSkin;
                    }
                    
                    if ( Param->OffsetSplit)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Splitting primgroups with offsets for skin:    %s\n", skin->GetName());
                        }                        
                        tlSkin * newSkin = skin->SeparateOffsets( Param->Threshold );
                        delete skin;
                        skin = newSkin;
                    }

                    if(Param->MaxMatrices > 0)
                    {
                        if ( Param->Verbosity > 0 )
                        {
                            printf("Capping matrices per primgroup for skin :   %s\n", skin->GetName());
                        }

                        tlSkin* newSkin = skin->RebuildForMatrices( Param->MaxMatrices );
                        delete skin;
                        skin = newSkin;
                    }

                    if(Param->MaxVertices > 0)
                    {
                        if ( Param->Verbosity > 0 ){
                            printf("Capping vertices per primgroup for skin :   %s\n", skin->GetName());
                        }

                        tlSkin* newSkin = skin->Rebuild( false, Param->MaxVertices );
                        delete skin;
                        skin = newSkin;
                    }
                    
                    outchunk->AppendSubChunk(skin->Chunk());
                    break;
                }

                case Pure3D::Mesh::MESH:
                {

                    tlMeshChunk *mch = dynamic_cast<tlMeshChunk *>( sub );

                    //if a mesh is stream rendered; we don't
                    //do any optimization on it. 
                    if( mch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION ){
                        tlPrimGroupMesh mesh( sub );
                        outchunk->AppendSubChunk( mesh.Chunk( ) );
                        break;
                    }
                 
                    tlPrimGroupMesh* pgMesh = new tlPrimGroupMesh(sub);

                    if(!Param->Rebuild)
                    {
                        for(int i = 0; i < pgMesh->NumPrimGroups(); i++)
                        {
                            if((pgMesh->GetPrimGroup(i)->GetType() == PDDI_PRIM_TRISTRIP) || (pgMesh->GetPrimGroup(i)->GetIndexCount() == 0))
                            {
                                printf("WARNING : Mesh '%s' is tristripped and/or de-indexed\n"
                                       "  which processing may not preserve, Re-run tristrip\n"
                                       "  or p3ddeindex on processed art\n", pgMesh->GetName());
                                break;
                            }
                        }
                    }

                    if(Param->Rebuild)
                    {
                        if ( Param->Verbosity > 0 ){
                            printf("Rebuilding primgroups for mesh:   %s\n", pgMesh->GetName());
                        }

                        tlPrimGroupMesh* newMesh = pgMesh->Rebuild( );
                        delete pgMesh;
                        pgMesh = newMesh;
                    }

                    if(Param->Merge)
                    {
                        if ( Param->Verbosity > 0 ){
                            printf("Merging primgroups for mesh:   %s\n", pgMesh->GetName());
                        }

                        tlPrimGroupMesh* newMesh = pgMesh->Rebuild( true );
                        delete pgMesh;
                        pgMesh = newMesh;
                    }

                    if(Param->MaxVertices > 0)
                    {
                        if ( Param->Verbosity > 0 ){
                            printf("Capping vertices per primgroup for mesh :   %s\n", pgMesh->GetName());
                        }

                        tlPrimGroupMesh* newMesh = pgMesh->Rebuild( false, Param->MaxVertices );
                        delete pgMesh;
                        pgMesh = newMesh;
                    }
                    

                    outchunk->AppendSubChunk(pgMesh->Chunk());
                    
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
        delete outchunk;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}
