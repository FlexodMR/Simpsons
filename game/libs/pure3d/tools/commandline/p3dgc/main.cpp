/*===========================================================================
    File: main.cpp 

    This tool memory images a P3D file for the GameCube


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlGCPrimBuffer.hpp>
#include <conio.h>
#include <tlMeshChunk.hpp>
#include <tlSkinChunk.hpp>

#include "Param.hpp"

Parameters *Param;

void MemoryImageGeometry(tlPrimGroupMesh &mesh);
void DumpMemoryImageGeometry(tlPrimGroupMesh &mesh);

void MemoryImageSkin(tlSkin &skin);
void DumpMemoryImageSkin(tlSkin &skin);

static const int GEOMETRY_NONOPTIMIZE_VERSION = 1;      //stream-rendered

int main(int argc, char *argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc, argv);

    // Validate the prameters passed in on the commandline 
//   if ((Param->ColourSize != 32) && (Param->ColourSize != 24) && (Param->ColourSize != 16)) Param->Usage();
    if ((Param->ColourSize != 32) && (Param->ColourSize != 1)) Param->Usage();

    if ((Param->CoordSize != 32)  && (Param->CoordSize != 16)  && (Param->CoordSize != 8))  Param->Usage();
    if ((Param->NormalSize != 32) && (Param->NormalSize != 16) && (Param->NormalSize != 8) && (Param->NormalSize != 1)) Param->Usage();
    if ((Param->UVSize != -1) && (Param->UVSize != 32) && (Param->UVSize != 16) && (Param->UVSize != 8)) Param->Usage();
    if ((Param->UV0Size != -1) && (Param->UV0Size != 32) && (Param->UV0Size != 16) && (Param->UV0Size != 8)) Param->Usage();
    if ((Param->UV1Size != -1) && (Param->UV1Size != 32) && (Param->UV1Size != 16) && (Param->UV1Size != 8)) Param->Usage();
    if ((Param->UV2Size != -1) && (Param->UV2Size != 32) && (Param->UV2Size != 16) && (Param->UV2Size != 8)) Param->Usage();
    if ((Param->UV3Size != -1) && (Param->UV3Size != 32) && (Param->UV3Size != 16) && (Param->UV3Size != 8)) Param->Usage();
    if ((Param->UV4Size != -1) && (Param->UV4Size != 32) && (Param->UV4Size != 16) && (Param->UV4Size != 8)) Param->Usage();
    if ((Param->UV5Size != -1) && (Param->UV5Size != 32) && (Param->UV5Size != 16) && (Param->UV5Size != 8)) Param->Usage();
    if ((Param->UV6Size != -1) && (Param->UV6Size != 32) && (Param->UV6Size != 16) && (Param->UV6Size != 8)) Param->Usage();
    if ((Param->UV7Size != -1) && (Param->UV7Size != 32) && (Param->UV7Size != 16) && (Param->UV7Size != 8)) Param->Usage();


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
            // create the next sub-chunk
            tlDataChunk *sub = inchunk->GetSubChunk(ch);

            switch (sub->ID())   
            {
                case Pure3D::Texture::TEXTURE:
                {
                    if (Param->MemoryImage || Param->MemoryImageTextures)
                    {
                        tlTexture *texture = new tlTexture(sub);
                        texture->SetGCFormat();
                        outchunk->AppendSubChunk(texture->Chunk());
                    }
                    else
                    {
                        outchunk->AppendSubChunk(sub, FALSE);
                    }
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh mesh(sub);
                    bool bStreamed = false;
                    tlMeshChunk *mch = dynamic_cast<tlMeshChunk *>(sub);
                    bStreamed = mch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION;

                    if( (Param->MemoryImage || Param->MemoryImageGeometry) && !bStreamed )
                    {
                        MemoryImageGeometry(mesh);
                    }
                    if (Param->Dump)
                    {
                        DumpMemoryImageGeometry(mesh);
                    }

                    outchunk->AppendSubChunk(mesh.Chunk());
                    break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    tlSkin skin(sub);
                    bool bStreamed = false;
                    tlSkinChunk *sch = dynamic_cast<tlSkinChunk *>(sub);
                    bStreamed = sch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION;

                    if( (Param->MemoryImage || Param->MemoryImageSkins) && !bStreamed )
                    {
                        MemoryImageSkin(skin);
                    }
                    if (Param->Dump)
                    {
                        DumpMemoryImageSkin(skin);
                    }

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
                    outchunk->AppendSubChunk(sub, FALSE);
                    break;
            }
        }

        if (Param->Verbosity > 5)
        {
            outchunk->Print();
        }

        if (!Param->Dump)
        {

            char buf[P3DMAXNAME];
            if (Param->OutputFile) strcpy(buf, Param->OutputFile);
            else                   strcpy(buf, Param->Files[i]);

            // create the new output file
            tlFile::FileType        type = tlFile::CHUNK32SWAP;
            if (Param->IntelFormat) type = tlFile::CHUNK32;

            tlFile output(new tlFileByteStream(buf, omWRITE), type);

            if (!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", buf);
                exit(-1);
            }

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);
        }

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
        delete inventory;
    
    } // end of main for loop

    delete Param;
    return 0;
}



//----------------------------------------------------------------------------------
void MemoryImageGeometry(tlPrimGroupMesh &mesh)
{
    mesh.UpdateBounds();

    if (Param->Verbosity > 0)
    {
        printf("Memory imaging geometry %s\n", mesh.GetName());
    }

    int a;
    for (a = 0; a < mesh.NumPrimGroups(); a++)
    {
        tlGCPrimBuffer buf;

        tlPrimGroup *pg = mesh.GetPrimGroup(a);
        if (pg->GetExprOffsets() != NULL) continue;

        pg->Deindex();

        buf.SetVerbosity(Param->Verbosity);
        buf.SetComponentStyle(Coords,  Param->CoordSize,  Auto);
        buf.SetComponentStyle(Normals, Param->NormalSize, Auto);
        buf.SetComponentStyle(Colours, Param->ColourSize, Auto);

        // First set all to the default
        if (Param->UVSize > 0)
        {
            int b;
            for (b = 0; b < GCMaxUV; b++) buf.SetComponentStyle((PrimComponent)(UV0 + b), Param->UVSize, Auto);
        }

        // Set the individual uv sizes if specified
        if (Param->UV0Size > 0) buf.SetComponentStyle(UV0, Param->UV0Size, Auto);
        if (Param->UV1Size > 0) buf.SetComponentStyle(UV1, Param->UV1Size, Auto);
        if (Param->UV2Size > 0) buf.SetComponentStyle(UV2, Param->UV2Size, Auto);
        if (Param->UV3Size > 0) buf.SetComponentStyle(UV3, Param->UV3Size, Auto);
        if (Param->UV4Size > 0) buf.SetComponentStyle(UV4, Param->UV4Size, Auto);
        if (Param->UV5Size > 0) buf.SetComponentStyle(UV5, Param->UV5Size, Auto);
        if (Param->UV6Size > 0) buf.SetComponentStyle(UV6, Param->UV6Size, Auto);
        if (Param->UV7Size > 0) buf.SetComponentStyle(UV7, Param->UV7Size, Auto);

        pg->BuildMemoryImage(buf);
    }
}




//----------------------------------------------------------------------------------
void DumpMemoryImageGeometry(tlPrimGroupMesh &mesh)
{

    printf("\nDumping memory imaged geometry %s\n", mesh.GetName());

    int a;
    for (a = 0; a < mesh.NumPrimGroups(); a++)
    {
        tlGCPrimBuffer buf;

        printf("\nDumping prim group %d of %d\n", a + 1, mesh.NumPrimGroups());
        tlPrimGroup *pg = mesh.GetPrimGroup(a);
        pg->DumpMemoryImage(buf, Param->Verbosity);
    }
}





//----------------------------------------------------------------------------------
void MemoryImageSkin(tlSkin &skin)
{
    skin.UpdateBounds();

    printf("\nMemory imaging Skin %s\n", skin.GetName());

    int a;
    for (a = 0; a < skin.NumPrimGroups(); a++)
    {
        tlPrimGroup *pg = skin.GetPrimGroup(a);
        if (pg->GetExprOffsets() != NULL) continue;

        pg->Deindex();
        tlGCPrimBuffer buf;

        buf.SetVerbosity(Param->Verbosity);

        buf.SetComponentStyle(SkinInfo, 0,  Auto);

        buf.SetComponentStyle(Coords,  Param->CoordSize,  Auto);
        buf.SetComponentStyle(Normals, Param->NormalSize, Auto);
        buf.SetComponentStyle(Colours, Param->ColourSize, Auto);

        // First set all to the default
        if (Param->UVSize > 0)
        {
            int b;
            for (b = 0; b < GCMaxUV; b++) buf.SetComponentStyle((PrimComponent)(UV0 + b), Param->UVSize, Auto);
        }

        // Set the individual uv sizes if specified
        if (Param->UV0Size > 0) buf.SetComponentStyle(UV0, Param->UV0Size, Auto);
        if (Param->UV1Size > 0) buf.SetComponentStyle(UV1, Param->UV1Size, Auto);
        if (Param->UV2Size > 0) buf.SetComponentStyle(UV2, Param->UV2Size, Auto);
        if (Param->UV3Size > 0) buf.SetComponentStyle(UV3, Param->UV3Size, Auto);
        if (Param->UV4Size > 0) buf.SetComponentStyle(UV4, Param->UV4Size, Auto);
        if (Param->UV5Size > 0) buf.SetComponentStyle(UV5, Param->UV5Size, Auto);
        if (Param->UV6Size > 0) buf.SetComponentStyle(UV6, Param->UV6Size, Auto);
        if (Param->UV7Size > 0) buf.SetComponentStyle(UV7, Param->UV7Size, Auto);

        pg->BuildMemoryImage(buf);
    }
}




//----------------------------------------------------------------------------------
void DumpMemoryImageSkin(tlSkin &skin)
{

    printf("\nDumping memory imaged Skin %s\n", skin.GetName());

    int a;
    for (a = 0; a < skin.NumPrimGroups(); a++)
    {
        tlGCPrimBuffer buf;

        printf("\nDumping prim group %d of %d\n", a + 1, skin.NumPrimGroups());
        tlPrimGroup *pg = skin.GetPrimGroup(a);
        pg->DumpMemoryImage(buf, Param->Verbosity);
    }
}



