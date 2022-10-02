/*===========================================================================
    File: main.cpp 

    This tool extracts objects and objects that they reference from Pure3D files


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

void Extract(tlEntity* root, tlInventory* inventory, int count, char* outputdir);

Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    tlInventory inventory;
    tlLoadManager manager;
    manager.InstallDefaultLoaders();

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Loading file '%s'\n", Param->Files[ i ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        manager.Load(&input,&inventory);

        // we don't need the tlFile anymore
        // this cleans up the tlFile object including the
        // tlFileByteStream
        input.Close();
    }

    // Set up all the references
    inventory.ResolveReferences();

    int count = 1;
    tlInventory::Iterator<tlCompositeDrawable> cditor(&inventory);
    for (tlCompositeDrawable* cd = cditor.First(); cd; cd = cditor.Next())
    {
        if(cd->GetMark() == 0)
        {
            printf("Extracting CompositeDrawable: %s\n", cd->GetName());
            cd->Mark(count);
            cd->MarkReferences(count);

            if(Param->ExtractMatchingNames)
            {
                tlEntityTable::Iterator otheritor(inventory.GetTable());
                tlEntity* other;
                for(other = otheritor.First(cd->UID()); other; other = otheritor.Next())
                {
                    other->Mark(count);
                    other->MarkReferences(count);
                }
                tlCompositeDrawable::Iterator drawableitor(cd);
                tlCompositeDrawableItem* drawable;
                for(drawableitor.First(); !drawableitor.IsDone(); drawableitor.Next())
                {
                    drawable = drawableitor.CurrentItem();
                    for(other = otheritor.First(drawable->UID()); other; other = otheritor.Next())
                    {
                        other->Mark(count);
                        other->MarkReferences(count);
                    }
                }
            }
            tlInventory::Iterator<tlFrameController> fcitor(&inventory);
            for (tlFrameController* fc = fcitor.First(); fc; fc = fcitor.Next())
            {
                 // If any of it's references were marked in the previous steps, mark the whole thing
                 if(fc->FindReferenceMark(count))
                 {
                      fc->Mark(count);
                      fc->MarkReferences(count);
                 }
            }

            Extract(cd, &inventory, count, Param->OutputDirectory);
            count++;
        } 
        else 
        {
            printf("Skipping CompositeDrawable %s (already extracted)\n", cd->GetName());
        }
    }

    tlInventory::Iterator<tlPrimGroupMesh> meshitor(&inventory);
    for (tlPrimGroupMesh* mesh = meshitor.First(); mesh; mesh = meshitor.Next())
    {
        if(mesh->GetMark() == 0)
        {
            printf("Extracting Mesh/Skin: %s\n", mesh->GetName());

            mesh->Mark(count);
            mesh->MarkReferences(count);

            if(Param->ExtractMatchingNames)
            {
                tlEntityTable::Iterator otheritor(inventory.GetTable());
                tlEntity* other;
                for(other= otheritor.First(mesh->UID()); other ;other = otheritor.Next())
                {
                    other->Mark(count);
                    other->MarkReferences(count);
                }
            }

            tlInventory::Iterator<tlFrameController> fcitor(&inventory);
            for (tlFrameController* fc = fcitor.First(); fc; fc = fcitor.Next())
            {
                 // If any of it's references were marked in the previous steps, mark the whole thing
                 if(fc->FindReferenceMark(count))
                 {
                      fc->Mark(count);
                      fc->MarkReferences(count);
                 }
            }

            Extract(mesh, &inventory, count, Param->OutputDirectory);
            count++;
        } 
        else 
        {
            printf("Skipping Mesh/Skin %s (already extracted)\n", mesh->GetName());
        }
    }

    // We don't delete the inventories, since we don't currently have a 
    // good object ownership scheme for the objects inside

    delete Param;
    return 0;
}

void
Extract(tlEntity* root, tlInventory* inventory, int count, char* outputdir)
{
    tlInventory* outinv = new tlInventory;

    tlInventory::Iterator<tlEntity> entityitor(inventory);

    for (tlEntity* entity = entityitor.First(); entity; entity = entityitor.Next())
    {
        if(entity->GetMark() == count)
        {
            outinv->Store(entity);
        }
    }
    tlDataChunk* outchunk = outinv->Export();
    outchunk->InsertSubChunk(Param->HistoryChunk(), 0);

    char buf[P3DMAXNAME];
    if(outputdir)
    {
        sprintf(buf, "%s/%s.p3d", outputdir, root->GetName());
    } 
    else 
    {
        sprintf(buf, "%s.p3d", root->GetName());
    }

    // open the output file
    tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);
    if(!output.IsOpen()) 
    {
        printf("Could not open %s for writing\n", buf);
        exit(-1);
    }
    outchunk->Write(&output);
    delete outchunk;
}

