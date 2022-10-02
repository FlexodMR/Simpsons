/*===========================================================================
    File: main.cpp 

    This tool performs various optimisations on shaders
    Created: June-27-2002 (NV)

    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.
===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

// finds pairs of shaders that are functionally equivalent (different names, same parameters),
// and removes the duplicates
int RemoveDuplicateShaders(tlTable<tlShader*>& table)
{
    int duplicatesRemoved = 0;

    for(int i=0; i < table.Count(); i++)
    {
        for(int j=i+1; j < table.Count(); j++)
        {
            if(table[i] && table[j])
            {
                if(table[i]->IsEquivalent(*table[j]))
                {
                    duplicatesRemoved++;
                    table.Delete(j, 1);
                }
            }
        }
    }
    return duplicatesRemoved;
}

tlShader* FindEquivalentShader(tlTable<tlShader*>& table, tlShader* shader)
{
    for(int i=0; i < table.Count(); i++)
    {
        if(table[i]->IsEquivalent(*shader))
        {
            return table[i];
        }
    }
    return NULL;
}


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

        int shaderCount = 0;
        int optimisedCount = 0;

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

        tlTable<tlShader*> nonmeshShaderTable;
        tlTable<tlShader*> meshShaderTable;

        tlInventory* inventory = new tlInventory;

        int ch;
        // grab all the shaders from the file, optimise them, then
        // stuff them in a table
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
            
            switch(sub->ID())
            {
                case Pure3D::Shader::SHADER:
                {
                    shaderCount++;
                    tlShader* shader = new tlShader(sub);
                    if(Param->OptimiseShaders)
                    {
                        if(shader->Optimise())
                        {
                            optimisedCount++;
                        }
                    }
                    inventory->Store(shader);
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                    mesh->ResolveReferences(inventory);
                    mesh->MarkReferences(1);
                    delete mesh;
                    break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    tlSkin* skin = new tlSkin(sub);
                    skin->ResolveReferences(inventory);
                    skin->MarkReferences(1);
                    delete skin;
                    break;
                }

                default:
                break;
            }
        }

        // partition the sahders into two tables:  one list of shaders
        // referenced by meshes, and one list of shaders not referenced
        // by meshes
        tlInventory::Iterator<tlShader> it(inventory);
        tlShader* shader = it.First();
        while(shader)
        {
            if(1 == shader->GetMark())
            {
                meshShaderTable.AppendUnique(shader);
            }
            else
            {
                nonmeshShaderTable.AppendUnique(shader);
            }
            shader = it.Next();
        }

        unsigned primGroupsProcessed = 0;
        unsigned primGroupsRemapped = 0;
        unsigned primGroupsMerged = 0;
        int dups = 0;

        if(Param->RemoveDuplicates)
        {
            dups = RemoveDuplicateShaders(meshShaderTable);
        }

        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
        
            switch(sub->ID())
            {
                // If the shader in the file is also in one of the two shader tables, then it
                // wasn't a removed duplicate.  Write it back into the file.
                case Pure3D::Shader::SHADER:
                {
                    tlShader* shader = new tlShader(sub);
                    bool written = false;
                    for(int i=0; i < nonmeshShaderTable.Count(); i++)
                    {
                        if( nonmeshShaderTable[i] && (0 == strcmp(nonmeshShaderTable[i]->GetName(), shader->GetName())) )
                        {
                            outchunk->AppendSubChunk(nonmeshShaderTable[i]->Chunk());
                            written = true;
                            break;
                        }
                    }
                    if(!written)
                    {
                        // it wasn't in the non-mesh shader table, perhaps it's in the mesh shader table
                        for(int i=0; i < meshShaderTable.Count(); i++)
                        {
                            if( meshShaderTable[i] && (0 == strcmp(meshShaderTable[i]->GetName(), shader->GetName())))
                            {
                                outchunk->AppendSubChunk(meshShaderTable[i]->Chunk());
                                break;
                            }
                        }
                    }

                    delete shader;
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    // For each primgroup:
                    //   if it's shader is not in the shader table then find an equivalent
                    //   and assign it to the primgroup
                    tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                    mesh->ResolveReferences(inventory);

                    for(int i=0; i < mesh->NumPrimGroups(); i++)
                    {
                        primGroupsProcessed++;
                        tlPrimGroup* pg = mesh->GetPrimGroup(i);

                        if(pg->GetShaderPtr() && !meshShaderTable.Find(pg->GetShaderPtr()))
                        {
                            // can't find the shader in the table, look for an equivalent
                            primGroupsRemapped++;
                            tlShader* equiv = FindEquivalentShader(meshShaderTable, pg->GetShaderPtr());
                            if(Param->Verbosity > 1)
                            {
                                printf("replacing %s with %s\n", pg->GetShader(), equiv->GetName());
                            }
                            assert(equiv);
                            pg->SetShader(equiv->GetName());
                        }
                    }

                    // weld strips together that have the same shader
                    if(Param->RemoveDuplicates)
                    {
                        mesh->SortPrimGroups();
                        primGroupsMerged += mesh->MergePrimGroups();
                    }

                    outchunk->AppendSubChunk(mesh->Chunk());
                    delete mesh;
                    break;
                }

                // same as for meshes
                case Pure3D::Mesh::SKIN:
                {
                    tlSkin* skin = new tlSkin(sub);
                    skin->ResolveReferences(inventory);

                    for(int i=0; i < skin->NumPrimGroups(); i++)
                    {
                        primGroupsProcessed++;
                        tlPrimGroup* pg = skin->GetPrimGroup(i);

                        if(pg->GetShaderPtr() && !meshShaderTable.Find(pg->GetShaderPtr()))
                        {
                            // can't find the shader in the table, look for an equivalent
                            primGroupsRemapped++;
                            tlShader* equiv = FindEquivalentShader(meshShaderTable, pg->GetShaderPtr());
                            if(Param->Verbosity > 1)
                            {
                                printf("replacing %s with %s\n", pg->GetShader(), equiv->GetName());
                            }
                            assert(equiv);
                            pg->SetShader(equiv->GetName());
                        }
                    }
                    outchunk->AppendSubChunk(skin->Chunk());
                    delete skin;
                    break;
                }

                default:
                {
                    outchunk->AppendSubChunk(sub, FALSE);
                    break;
                }
            }
        }

        if(Param->Verbosity > 0)
        {
            printf("shaders optimised: %d/%d, duplicates: %d, remain: %d\n", optimisedCount, shaderCount, dups, shaderCount-dups);
            printf("prim groups remapped: %d/%d, merged: %d\n", primGroupsRemapped, primGroupsProcessed, primGroupsMerged);
        }

        if(Param->Verbosity > 5)
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
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        delete inventory;

        // cleanup the no-longer-needed wrapper chunks
        // We wouldn't want a Toollib program to leak any memory now, would we?
        delete inchunk;
        delete outchunk;
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}
