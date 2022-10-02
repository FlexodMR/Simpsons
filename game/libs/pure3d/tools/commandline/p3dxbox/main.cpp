/*===========================================================================
    File: main.cpp 

    This tool processes art for the XBOX.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlMeshChunk.hpp>
#include <tlSkinChunk.hpp>


#include "Param.hpp"

Parameters* Param;
static const int GEOMETRY_NONOPTIMIZE_VERSION = 1;      //stream-rendered

void MemoryImageGeometry(tlPrimGroupMesh& mesh);

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();
    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        tlInventory* inventory = new tlInventory;

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
        // first go through all the textures and store them in the inventory
        // processing them as we go, and marking those that need flipping
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                case Pure3D::Texture::TEXTURE:
                {
                    tlTexture *texture = new tlTexture(sub);

                    if((Param->NamePatterns.Count() == 0) ||
                        glob(&Param->NamePatterns, texture->GetName()))
                    {
                        if(Param->MemoryImage)
                        {
                            for(int i = 0; i < texture->GetImageCount(); i++)
                            {
                                texture->GetImage(i);
                            }
                        }
                    }
                    inventory->Store(texture);
                    break;
                }

                case Pure3D::Shader::SHADER:
                {
                    tlShader* shader = new tlShader(sub);
                    shader->ResolveReferences(inventory);
                    inventory->Store(shader);
                    break;
                }
            }
        }

        // Now go through the subchunks again, this time fetching textures
        // from the inventory.  If we find meshes, and their textures have been
        // marked, we flip their UV's.

        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            switch(sub->ID())   
            {
                case Pure3D::Texture::TEXTURE:
                {
                    tlTexture *texture = toollib_find<tlTexture>(inventory, sub->GetName());

                    outchunk->AppendSubChunk(texture->Chunk());
                    break;
                }
                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh mesh(sub);
                    
                    bool bStreamed = false;
                    tlMeshChunk *mch = dynamic_cast<tlMeshChunk *>(sub);
                    bStreamed = mch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION;

                    if(Param->MemoryImage && !bStreamed)
                    {
                        MemoryImageGeometry(mesh);
                    }
                    outchunk->AppendSubChunk(mesh.Chunk());
                    break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    tlSkin skin(sub);
                    // Don't memory image skins
                    outchunk->AppendSubChunk(skin.Chunk());
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
        delete inventory;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

void
MemoryImageGeometry(tlPrimGroupMesh& mesh)
{
    for(int i = 0; i < mesh.NumPrimGroups(); i++)
    {
        tlXBOXPrimBuffer buf;
        tlPrimGroup* pg = mesh.GetPrimGroup(i);
        unsigned long mask = pg->GetVertexType( );

        if( mask & PDDI_V_BINORMAL || mask & PDDI_V_TANGENT ) 
            pg->SetKeepNormal( true );

        pg->BuildMemoryImage(buf);
    }
}


