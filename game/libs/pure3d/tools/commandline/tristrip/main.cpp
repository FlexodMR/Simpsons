/*===========================================================================
    File: main.cpp 

    This tool converts meshes into tristrips


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

int stripsMerged;

int innerStripsMerged;

int allStripsMerged;

unsigned long int numberOfReuse = 0;

float totalStripLength = 0.;
int totalStripNum = 0;


float totalVReuse = 0;
int totalVStripNum;


tlSimpleShader* RandomShader();            // returns a shader with random diffuse colour


void TristripMesh( tlPrimGroupMesh *pgMesh, tlDataChunk *outchunk, bool bMeshVertexAnimed = false )
{
    if( Param->ToTriangles )
    {
        if ( Param->Verbosity > 1 )
        {
            printf("Reordering Mesh:   %s\n", pgMesh->GetName());
        }
        pgMesh->ReorderTriangles();
    }
    else  // convert to triangle strips
    {
        if ( Param->Verbosity > 1 )
        {
            printf("Tristripping Mesh: %s\n", pgMesh->GetName());
        }
        unsigned long numReuse;
        float stripLength, vReuse;
        pgMesh->Index( );

        bool bInnerMerge = !(Param->TristripIrregular==1);

        if( bMeshVertexAnimed )
            bInnerMerge = true;

        innerStripsMerged += pgMesh->ConvertTrianglesToTriangleStrips( vReuse, stripLength, numReuse, Param->MaxNumberOfVertices,
                                                              Param->MaxNumberOfTriangles, bInnerMerge, Param->OptimizeForXBox==1, !(Param->TristripIrregular==1), Param->VertexCacheSize );

        numberOfReuse += numReuse;
        totalStripLength += stripLength;
        ++totalStripNum;

        totalVReuse += vReuse;
        ++totalVStripNum;

        //merge all strips
        if( Param->ForceMergeStrips && !bMeshVertexAnimed )
                stripsMerged += pgMesh->MergeStrips( );

        if( Param->MergeAllStrips && !bMeshVertexAnimed )
             allStripsMerged += pgMesh->MergeStripsRegardlessShader( );
    }
    if(Param->Deindex)
    {
        if ( Param->Verbosity > 1 )
        {
            printf("Deindexing Mesh:   %s\n", pgMesh->GetName());
        }
        pgMesh->AddIndices();
        pgMesh->Deindex();
    }
    if(Param->Debug)
    {
        for(int i = 0; i < pgMesh->NumPrimGroups(); i++)
        {
            tlSimpleShader* shader = RandomShader();
            outchunk->AppendSubChunk(shader->Chunk());
            pgMesh->GetPrimGroup(i)->SetShader(shader->GetName());
        }
    }
}

// Get the name from a chunk.
bool GetChunkName(tlDataChunk* chunk, char* buf)
{
    for (int i = 0; i < chunk->GetFieldCount(); ++i)
    {
        if (!chunk->GetFieldIsArray(i) &&
             (strcmp(chunk->GetFieldType(i), "string") == 0) &&
             (strcmp(chunk->GetFieldName(i), "Name") == 0))
        {
            chunk->GetFieldValue(i, buf, 255);
            return true;
        }
    }

    return false;
}

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

 
    if( Param->VertexCacheSize <= 0 )
         Param->VertexCacheSize = 16;
    else if( Param->VertexCacheSize < 8 )
         Param->VertexCacheSize = 8;


    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {

        stripsMerged = 0;
        innerStripsMerged = 0;
        allStripsMerged = 0;

        totalStripLength = 0.;
        totalStripNum = 0;

        totalVReuse = 0.;
        totalVStripNum = 0;

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

        // create a temp inventory to store meshes/skins
        // - that way we can look 'em up if we run into any
        //   vertex animations that reference them later
        tlInventory inventory;

        int bVertexAnimed = BinVertexAnimKeyToPrimGroup( inventory, inchunk );
        int ch;

        if( bVertexAnimed ){        //tristrip all vertex-animated meshes first, since vertex
                                    //animation keys appeas ahead of meshes
                                    
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk

                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                // look at the id of the subchunk to decide if we 
                // want to do something with it or not
                switch(sub->ID())
                {
                    case Pure3D::Mesh::MESH:
                    {
                        tlPrimGroupMesh *mesh = NULL;
                        mesh = toollib_find<tlPrimGroupMesh>( &inventory, sub->GetName( ) );

                        if( mesh )
                            TristripMesh( mesh, outchunk, true );

                        break;
                    }
                }
            }
        }

        char chunkName[256];
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* subChunk = inchunk->GetSubChunk(ch);

            // Check if this chunk is in the exclusion list, in which case, skip it.
            if (GetChunkName(subChunk, chunkName))
            {
                if(glob(&Param->ExcludePattern, chunkName))
                {
                    if ( Param->Verbosity > 1 )
                    {
                        printf("Skipping: %s\n", chunkName);
                    }
                    outchunk->AppendSubChunk(subChunk, false);
                    continue;
                }
            }

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(subChunk->ID())
            {
                case Pure3D::Animation::VertexAnim::KEY:
                {
                    tlVertexAnimKey *key;
                    key = toollib_find<tlVertexAnimKey>( &inventory, subChunk->GetName( ) );
                    outchunk->AppendSubChunk( key->Chunk( ) );

                    break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    tlSkin* skin = new tlSkin(subChunk);
                    if( Param->ToTriangles )
                    {
                        if ( Param->Verbosity > 1 )
                        {
                            printf("Reordering Skin:   %s\n", skin->GetName());
                        }
                        skin->ReorderTriangles();
                    }
                    else  // convert to triangle strips
                    {
                        if ( Param->Verbosity > 1 )
                        {
                            printf("Tristripping Skin: %s\n", skin->GetName());
                        }
                        unsigned long numReuse = 0;
                        float stripLength = 0.0f;
                        float vReuse = 0.0f;
                        skin->Index( );
                        innerStripsMerged += skin->ConvertTrianglesToTriangleStrips( vReuse, stripLength, numReuse, Param->MaxNumberOfVertices,
                                                                            Param->MaxNumberOfTriangles, !(Param->InnerMergeStrips==1), Param->OptimizeForXBox==1, !(Param->TristripIrregular==1), Param->VertexCacheSize );               

                        numberOfReuse += numReuse;
                        totalStripLength += stripLength;
                        ++totalStripNum;

                        totalVReuse += vReuse;
                        ++totalVStripNum;

                        //merge all strips
                        if( Param->ForceMergeStrips )
                                stripsMerged += skin->MergeStrips( );

                        if( Param->MergeAllStrips )
                             allStripsMerged += skin->MergeStripsRegardlessShader( );

                    }
                    if(Param->Deindex)
                    {
                        if ( Param->Verbosity > 1 )
                        {
                            printf("Deindexing Skin:   %s\n", skin->GetName());
                        }
                        skin->Deindex();
                    }
                    if(Param->Debug)
                    {
                        for(int i = 0; i < skin->NumPrimGroups(); i++)
                        {
                            tlSimpleShader* shader = RandomShader();
                            outchunk->AppendSubChunk(shader->Chunk());
                            skin->GetPrimGroup(i)->SetShader(shader->GetName());
                        }
                    }
                            
                    outchunk->AppendSubChunk(skin->Chunk());
                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh *geo = NULL;
                    geo = toollib_find<tlPrimGroupMesh>( &inventory, subChunk->GetName( ) );
                    if( geo ){
                        outchunk->AppendSubChunk( geo->Chunk() );                        
                    }
                    else{
                        tlPrimGroupMesh* pgMesh = new tlPrimGroupMesh(subChunk);
                        TristripMesh( pgMesh, outchunk, false ); 
                        outchunk->AppendSubChunk(pgMesh->Chunk());
                    }
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
                    outchunk->AppendSubChunk(subChunk,FALSE);
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
        
        // append OutputSuffix before .p3d in string outFileName
        if(Param->OutputSuffix)
        {
            int pos;
            int i;
            char * p3d = NULL;
            char tmpStr [P3DMAXNAME];
            // copy file name to tmpStr so we can process it
            strcpy(tmpStr, buf);
            // change to lower case 
            // note that this is nonportable
#ifdef  P3DWIN95
            _strlwr(tmpStr);
#endif
            // assume tmpStr = name.p3d
            // find name part of tmpStr
            p3d = strstr(tmpStr, ".p3d");                  
            // if given output file has .p3d in it
            // append OutputSuffix before .p3d
            if( p3d )
            {
                pos = p3d - tmpStr ;
                for(i = 0; i < pos; i++)
                {
                    tmpStr[i] = buf[i];
                }
                tmpStr[i] = '\0';
                
                // now append OutputSuffix and .p3d to name part
                strcat(tmpStr, Param->OutputSuffix);
                strcat(tmpStr, ".p3d");
                strcpy(buf, tmpStr);            
            }          
            // .p3d is not in the name,
            // append OutputSuffix at the end of the file name
            // and then append .p3d
            else
            {
                // now append OutputSuffix and .p3d to name part
                strcat(buf, Param->OutputSuffix);
                strcat(buf, ".p3d");            
            }
        }
            
        // create the new output file
        tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);

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

        if ( Param->Verbosity > 0 )
        {
            printf( "Number of tri-strips merged within primgroups:%d\n", innerStripsMerged );

            if( Param->ForceMergeStrips  )
            {
                printf( "Number of tri-strips merged across primgroups: %d\n", stripsMerged );
            }

            if( Param->MergeAllStrips )
            {
                printf( "Number of tri-strips merged regardless of shader: %d\n", allStripsMerged );
            }

            printf( "Number of vertices reused in cache: %d\n", numberOfReuse );

            float len;
            if( totalStripNum == 0 )
            {
                 len = 0.0f;
            }
            else
            {
                 len = totalStripLength/(float)totalStripNum;
            }
            printf( "Average tri-strip length: %f\n", len );

            if( totalVStripNum == 0 )
            {
                 len = 0.0f;
            }
            else
            {
                 len = totalVReuse/(float)totalVStripNum;
            }

            printf( "Average vertex reuse rate: %f\n", len );
        }
    
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

tlSimpleShader* 
RandomShader()
{
    static int count = 1;
    char buf[256];

    sprintf(buf,"Random%d",count);
    count++;
    
    tlSimpleShader* result = new tlSimpleShader;
    result->SetName(buf);
    result->SetIsLit(true);
    result->SetDiffuse(RandomColour());

    return result;
}
