/*===========================================================================
   File: main.cpp 

   This tool processes art for the PS2.

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

#define COMPRESSED_BLOCK_SIZE 4096
#define MAX_LAYER_NUM   2

Parameters* Param;
typedef std::map<const char*, const char*> StringPair;
typedef StringPair::const_iterator StringPairPtr;

void ProcessUVs(tlPrimGroupMesh& mesh, tlInventory* inventory);
void MemoryImageGeometry(tlPrimGroupMesh& mesh);

void OneBone(tlSkin& skin);
bool IsSpecifiedShader( tlShader *shader, const char * shaderType );
bool InverseTexture( tlTexture *pTex );
tlTexture* FindTexture( tlTable<tlTexture*> &textureTable, const char* name );
const char* FindStringPair( const StringPair &texturePairs, const char *str );
bool AppendGrayScale( tlTexture *pTex );
bool SpecifiedShaderBinded( tlPrimGroup *pPrimgrp, const char * shaderType );
void SwitchUvChannel( tlPrimGroup *pgrp );
tlShader * FindShaderByName( tlTable<tlShader *>&shaders, const char *name );
void ResetColor( tlPrimGroup *pgrp, tlColour clr );
int CombineColoursAndNormals( tlPrimGroup *pgrp );

void StripUselessShaderParams( tlShader* shader );

const char * layeredShaderName = "layered";
const char * lightMapShaderName = "lightmap";
const char * layeredlmapShaderName = "layeredlmap";
const char * envmapShader = "environment";
const char * spheremapShader = "spheremap";

tlStringTable topTextures; // holds all the top layer texture's name of layered shaders

static const int GEOMETRY_NONOPTIMIZE_VERSION = 1;      //stream-rendered

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    unsigned shadersProcessed = 0;
    unsigned shadersOptimised = 0;

    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ i ]);
        }

        tlInventory* inventory = new tlInventory;

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

        StringPair texturePairs;
        tlTable< tlTexture * > textureTable;
        int ch;	
        
        // First go through all shaders, and find out all layered shaders,
        // if the layered shaders' texture blendmode is modulate, we
        // store the name of the top layer texture for second pass processing
        // also we merge the grime map with light map within this pass.
        // We also store shaders, meshes and skins in the inventory
        for( ch = 0; ch < inchunk->SubChunkCount( ); ch++ )
        {
            tlDataChunk* sub = inchunk->GetSubChunk(ch);
            switch( sub->ID() )
            {
                case Pure3D::Texture::TEXTURE:                
                {
                    tlTexture* texture = new tlTexture( sub );
                    inventory->Store( texture );
                    textureTable.AppendUnique( texture );
                    break;
                }
                case Pure3D::Shader::SHADER:                
                {
                    tlShader* shader = new tlShader( sub );
                    inventory->Store( shader );

                    // find the layered shader whose texture blendmode is modulate             
                    if( IsSpecifiedShader( shader, layeredShaderName ) &&
                        ( shader->GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE ||
                          shader->GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE2 ) )
                    {
                        const char * name = shader->GetTextureParam(  tlFourCC( "TTEX" ) );
                        topTextures.AppendUnique( (char*)( name ) );
                        const char * baseName = shader->GetTextureParam( tlFourCC( "TEX" ) );
                        assert( baseName != NULL );
                        texturePairs.insert( StringPair::value_type( ::strnew( name ), ::strnew( baseName ) ) );
                    }
                    else if( IsSpecifiedShader( shader, lightMapShaderName ) || IsSpecifiedShader( shader, layeredlmapShaderName ) )
                    {
                        const char * name = shader->GetTextureParam(  tlFourCC( "LMAP" ) );
                        topTextures.AppendUnique( (char*)( name ) );
                        const char * baseName = shader->GetTextureParam( tlFourCC( "TEX" ) );
                        assert( baseName != NULL );
                        texturePairs.insert( StringPair::value_type( ::strnew( name ), ::strnew( baseName ) ) );
                    }                    

                    break;
                }

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh* mesh = new tlPrimGroupMesh(sub);
                    inventory->Store( mesh );

                    for( int i = 0; i < mesh->NumPrimGroups( ); ++i )
                    {
                        tlPrimGroup *pgrp = mesh->GetPrimGroup( i );

                        pgrp->ResolveReferences( inventory );
                        // merge grime map with light map
                        if( SpecifiedShaderBinded( pgrp, layeredlmapShaderName ) )
                        {
                            tlShader *shader = toollib_find<tlShader>( inventory, pgrp->GetShader( ) );
                            assert( shader != NULL );

                            tlTexture *grime = FindTexture( textureTable, shader->GetTextureParam( tlFourCC( "TTEX" ) ) );
                            tlTexture *lightmap = FindTexture( textureTable, shader->GetTextureParam( tlFourCC( "LMAP" ) ) );

                            pgrp->MergeLightMapWithGrimeMap( *grime, *lightmap );
                       }						
	               }
                   break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    tlSkin* skin = new tlSkin(sub);
                    inventory->Store( skin );
                    break;
                }
            }
        }

        // determine which textures are attached to meshes and skins and flip the
        // textures if they need to be flipped
        if(Param->FlipTextures)
        {
            // find the textures that are attached to meshes and mark with a reference value of 1
            tlInventory::Iterator<tlPrimGroupMesh> meshItor(inventory);
            for (tlPrimGroupMesh* mesh = meshItor.First(); mesh; mesh = meshItor.Next())
            {
                for( int i = 0; i < mesh->NumPrimGroups( ); ++i )
                {
                    tlPrimGroup* pgrp = mesh->GetPrimGroup( i );
                    pgrp->ResolveReferences( inventory );
                    pgrp->MarkReferences( 1 );
                }
            }

            // find the textures that are attached to meshes and mark with a reference value of 1
            tlInventory::Iterator<tlSkin> skinItor(inventory);
            for (tlSkin* skin = skinItor.First(); skin; skin = skinItor.Next())
            {
                for( int i = 0; i < skin->NumPrimGroups( ); ++i )
                {
                    tlPrimGroup* pgrp = skin->GetPrimGroup( i );
                    pgrp->ResolveReferences( inventory );
                    pgrp->MarkReferences( 1 );
                }
            }
        }

        // process the textures
        tlInventory::Iterator<tlTexture> textureItor(inventory);
        for (tlTexture* texture = textureItor.First(); texture; texture = textureItor.Next())
        {
            if((Param->NamePatterns.Count() == 0) || glob(&Param->NamePatterns, texture->GetName()))
            {
                // convert top texture in layered shader so we can approximate modulate blending
                const char *baseName;
                baseName = FindStringPair( texturePairs, texture->GetName() );
                if( baseName )
                {
                    const tlTexture *baseTexture = FindTexture( textureTable, baseName );                        
                    float meanBrightness = -1.0f;
                    if( Param->SubModulateBlend > 0 )
                    {
                        meanBrightness = (float)( Param->SubModulateBlend ) / 255.0f;
                        meanBrightness = rmt::Min( meanBrightness, 1.0f );
                    }
                    texture->PrepareForAlphaBlend( meanBrightness, baseTexture->GetImage( 0 ) );
                }

                // flip textures that are taller than they are wide only if the user has selected to flip textures and
                // the textures are attached to skins/meshs
                if((Param->FlipTextures) && (texture->GetMark() == 1) && (texture->GetHeight() > texture->GetWidth()))
                {
                    texture->Flip();
                    texture->Mark(2);
                }

                if(Param->MemoryImage)
                {
                    texture->SetPS2Format();
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
                   bool bStreamed = false;
                   tlMeshChunk *mch = dynamic_cast<tlMeshChunk *>(sub);
                   bStreamed = mch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION;

                   tlPrimGroupMesh mesh(sub);
                   ProcessUVs(mesh, inventory);

                   for( int i = 0; i < mesh.NumPrimGroups( ); ++i )
                   {
                       tlPrimGroup *pgrp = mesh.GetPrimGroup( i );
                           
                       pgrp->ResolveReferences( inventory );
                       // deindex, get rid of the normal and turn on color channel
                       // if the group is binded to a layered shader
                       if( SpecifiedShaderBinded( pgrp, layeredShaderName )  || SpecifiedShaderBinded( pgrp, lightMapShaderName ) )
                       {
                           pgrp->Deindex( );
                           pgrp->SetVertexType( pgrp->GetVertexType( ) & ~PDDI_V_NORMAL  );

                           //no color channel, we append a white color to 
                           //all vertex
                           if( !( pgrp->GetVertexType( ) & PDDI_V_COLOUR ) )
                           {
                               ResetColor( pgrp, tlColour( 255, 255, 255, 255 ) );
                               pgrp->SetVertexType( pgrp->GetVertexType( ) |  PDDI_V_COLOUR );
                           }
                       }
                       else if( SpecifiedShaderBinded( pgrp, layeredlmapShaderName ) )
                       {
                           // layered light map:
                           // set uv channel number as 2:
                           // copy uv[ 2 ] to uv[ 1 ];
                           int uvidx = pgrp->GetVertexType( ) & 15;
                           --uvidx;

                           pgrp->SetVertexType( pgrp->GetVertexType( ) & ~15 | uvidx );
                           pgrp->CopyUV( uvidx, uvidx -1 );

                           pgrp->Deindex( );
                           pgrp->SetVertexType( pgrp->GetVertexType( ) & ~PDDI_V_NORMAL  );

                           // no color channel, we append a white color to all vertices
                           if( !( pgrp->GetVertexType( ) & PDDI_V_COLOUR ) )
                           {
                               ResetColor( pgrp, tlColour( 255, 255, 255, 255 ) );
                               pgrp->SetVertexType( pgrp->GetVertexType( ) |  PDDI_V_COLOUR );
                           }
                        }
					    // If there is both colours and normals, combine them by
					    // inserting the colour into the lower bits of the normal
					    if (CombineColoursAndNormals( pgrp ))
						{
							tlShader *shader = toollib_find<tlShader>( inventory, pgrp->GetShader( ) );
							assert( shader != NULL );
							shader->SetIntParam( tlFourCC( "LIT" ) , 0 );
						}
                    }

                    if(Param->MemoryImage && !bStreamed )
                    {
                        MemoryImageGeometry(mesh);
                    }

                    outchunk->AppendSubChunk(mesh.Chunk());
                    break;
                }

                case Pure3D::Mesh::SKIN:
                {
                    bool bStreamed = false;
                    tlSkinChunk *sch = dynamic_cast<tlSkinChunk *>(sub);
                    bStreamed = sch->GetVersion( ) == GEOMETRY_NONOPTIMIZE_VERSION;

                    tlSkin skin(sub);
                    ProcessUVs(skin, inventory);
                    OneBone(skin);

                    for( int i = 0; i < skin.NumPrimGroups( ); ++i )
                    {
                        tlPrimGroup *pgrp = skin.GetPrimGroup( i );

                        pgrp->ResolveReferences( inventory );
                        // deindex and get rid of the normal if the
                        // group is binded to a layered shader
                        if( SpecifiedShaderBinded( pgrp, layeredShaderName ) )
                        {
                            pgrp->Deindex( );
                            pgrp->SetVertexType( pgrp->GetVertexType( ) & ~PDDI_V_NORMAL  );

                            // no color channel, we append a white color to 
                            // all vertices
                            if( !( pgrp->GetVertexType( ) & PDDI_V_COLOUR ) )
                            {
                                ResetColor( pgrp, tlColour( 255, 255, 255, 255 ) );
                                pgrp->SetVertexType( pgrp->GetVertexType( ) |  PDDI_V_COLOUR );
                            }

                            //switch uv channel
                            //SwitchUvChannel( pgrp );   
                        }
                    }

                    if( Param->MemoryImage && !bStreamed )
                    {
                        MemoryImageGeometry(skin);
                    }

                    outchunk->AppendSubChunk(skin.Chunk());
                    break;
                }

                case Pure3D::Shader::SHADER:                
                {
                    tlShader shader(sub);

                    if( IsSpecifiedShader( &shader, layeredShaderName) )
                    {
                        //change modulate mode to substract

                        if( shader.GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE ||
                            shader.GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE2 )
                            shader.SetIntParam( tlFourCC( "TBLM" ), (int)PDDI_BLEND_SUBMODULATEALPHA );

                        //copy the texture blending mode to material blending mode
                        shader.SetIntParam( tlFourCC( "BLMD" ), shader.GetIntParam( tlFourCC( "TBLM" ) ) );

                        // turn off light of layered shader for ps2
                        shader.SetIntParam( tlFourCC( "LIT" ), 0 );

                        // change the vertex type
                        shader.SetVertexNeeds( 2 | PDDI_V_COLOUR );
                        shader.SetVertexMask( ~PDDI_V_NORMAL | 2  );
                   }
                   else if( IsSpecifiedShader( &shader, lightMapShaderName ) )
                   {
                       //set the blending mode as alpha
                       shader.SetIntParam( tlFourCC( "BLMD" ), PDDI_BLEND_SUBMODULATEALPHA );
                       //turn off light of layered shader for ps2
                       shader.SetIntParam( tlFourCC( "LIT" ), 0 );

                       //change the vertex type
                       shader.SetVertexNeeds( 2 | PDDI_V_COLOUR );
                       shader.SetVertexMask( ~PDDI_V_NORMAL | 2  );
                   }
                   else if( IsSpecifiedShader( &shader, layeredlmapShaderName ) )
                   {
                       if( shader.GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE ||
                           shader.GetIntParam( tlFourCC( "TBLM" ) ) == (int)PDDI_BLEND_MODULATE2 ) 
                           shader.SetIntParam( tlFourCC( "TBLM" ), (int)PDDI_BLEND_SUBMODULATEALPHA );

                       //copy the texture blending mode to material blending mode
                       shader.SetIntParam( tlFourCC( "BLMD" ), shader.GetIntParam( tlFourCC( "TBLM" ) ) );

                       //turn off light of layered shader for ps2
                       shader.SetIntParam( tlFourCC( "LIT" ), 0 );

                       //change the vertex type
                       shader.SetVertexNeeds( 2 | PDDI_V_COLOUR );
                       shader.SetVertexMask( ~PDDI_V_NORMAL | 2  );

                       //assign merged light map to grime map
                       shader.SetTextureParam( tlFourCC( "TTEX" ), shader.GetTextureParam( tlFourCC( "LMAP" ) ) );
                       shader.DeleteTextureParam( tlFourCC( "LMAP" ) );

                       //change the shader to be a layered shader
                       shader.SetShaderType( layeredShaderName );
                   }
				   // turn of lit flag for reflection shaders.
   				   // the colours & normals will be combined
				   /*
				   else if (IsSpecifiedShader( &shader, envmapShader ) || IsSpecifiedShader( &shader, spheremapShader ))
				   {
						printf("WOORT\n");
						shader.SetIntParam( tlFourCC( "LIT" ), 0 );
				   }
				   */


                    // shader optimisation:  convert basic simple shaders into lightweight shaders
                    shadersProcessed++;
                    StripUselessShaderParams(&shader);

                    if(Param->OptimiseShaders)
                    {
                        if(shader.Optimise())
                        {
                            shadersOptimised++;
                        }
                    }

                    outchunk->AppendSubChunk( shader.Chunk( ) );
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

        if(Param->Verbosity>0)
        {
            printf("Shaders processed: %3d\n", shadersProcessed);
            printf("Shaders optimised: %3d\n", shadersOptimised);
        }

        if(Param->Verbosity > 5)
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

        if(Param->Compress)
        {
            tlMemByteStream memstream(NULL, 65536);
            tlFile outputmem(&memstream, tlFile::CHUNK32, false);
            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&outputmem);

            int filesize = memstream.GetPosition();

            output.PutLong(Pure3D::DATA_FILE_COMPRESSED);
            output.PutLong(filesize);

            unsigned char* comp = new unsigned char[filesize*2];
            unsigned int compSize;

            unsigned char* start = memstream.GetMemory();
            unsigned int remaining = filesize;

            while(remaining > 0)
            {
                int size = COMPRESSED_BLOCK_SIZE;
                if(size > remaining)
                {
                    size = remaining;
                }

                lzr_compress( start,size,comp,&compSize, Param->Fast != 0 );

                output.PutLong(compSize);
                output.PutLong(size);
                output.PutBytes(comp, compSize);
                start += size;
                remaining -= size;
            }
        }
        else
        {
             // get the output wrapper chunk to write its data out
             // to the file
             outchunk->Write(&output);
        }

        if(!output.IsOpen()) 
        {
             printf("Could not open %s for writing\n", buf);
             exit(-1);
        }

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;

        delete inventory;
   
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

void ProcessUVs(tlPrimGroupMesh& mesh, tlInventory* inventory)
{
    mesh.ResolveReferences(inventory);

    for(int i = 0; i < mesh.NumPrimGroups(); i++)
    {
        tlPrimGroup* pg = mesh.GetPrimGroup(i);
        tlShader* shader = pg->GetShaderPtr();

        if(shader)
        {
            shader->ResolveReferences( inventory );
            if( shader->FindReferenceMark( 2 ) )
            {
                for( int j = 0; j < MAX_LAYER_NUM; ++j )
                {
                    if(shader->FindMarkedTexture( 2, j ))
                    {
                        pg->FlipUV( j );
                    }
                }
            }
            if(!shader->GetTexture() || !strcmp(shader->GetTexture(), ""))
            {
                // No textures, so no UVs
                pg->SetVertexType(pg->GetVertexType() & ~PDDI_V_UVMASK);
            }
        }
    }    
}

void MemoryImageGeometry(tlPrimGroupMesh& mesh)
{
    mesh.Deindex();
    mesh.UpdateBounds();

    for(int i = 0; i < mesh.NumPrimGroups(); i++)
    {
        tlPS2PrimBuffer buf;
        tlPrimGroup* pg = mesh.GetPrimGroup(i);
        if (pg->GetExprOffsets() != NULL) continue;  // don't memory image deformer art

        // Hack to fix broken art
        if(((pg->GetVertexType() & PDDI_V_UVMASK) > 1) && ( (pg->GetVertexType() != PDDI_V_CT2) && ( pg->GetVertexType() != ( PDDI_V_COLOUR | 2 ) ) && ( pg->GetVertexType() != PDDI_V_T2  ) ) )
        {
            pg->SetVertexType((pg->GetVertexType() & ~PDDI_V_UVMASK) | 1);  // One UV
        }
        pg->BuildMemoryImage(buf);
    }
}

void OneBone(tlSkin& skin)
{
    if(Param->Verbosity > 1)
    {
        printf("Detecting single bone primgroups for skin: %s\n", skin.GetName());
    }

    for(int i = 0; i < skin.NumPrimGroups(); i++)
    {
        bool weighted = false;

        tlPrimGroup* pg = skin.GetPrimGroup(i);

        for(int j = 0; j < pg->NumVertices(); j++)
        {
            tlVertex* v = pg->GetVertex(j);
            tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(v);
            assert(sv);
            if((sv->NumJointWeights() > 1) && (sv->GetJointWeight(1).weight > 0.0f))
            {
                weighted = true;
                break;
            }
      }

      if(!weighted)
      {
        if(Param->Verbosity > 2)
        {
            printf("primgroups %d is single bone for skin: %s\n", i, skin.GetName());
        }
        pg->SetVertexType(pg->GetVertexType() & (~PDDI_V_WEIGHTS));
      }
    }
}


bool InverseTexture( tlTexture *pTex )
{
    if( !pTex )
        return false;

    const char * name = pTex->GetName( );

    for( int i = 0; i < topTextures.Count( ); ++i )
    {
        if( strcmp( name, topTextures[ i ] ) == 0 )
            return true;
    }

    return false;
}

tlTexture* FindTexture( tlTable<tlTexture*> &textureTable, const char* name )
{
    tlTexture *texture = NULL;

    if( name == NULL )
    {
        return texture;
    }

    int i;
    for( i = 0; i < textureTable.Count(); i++ )
    {
        if( ::strcmp( textureTable[i]->GetName(), name ) == 0 )
        {
            texture = textureTable[i];
            break;
        }
    }

    return texture;
}

const char* FindStringPair( const StringPair &texturePairs, const char *str )
{
    const char *second = NULL;

    if( str == NULL )
    {
        return second;
    }

    for( StringPairPtr i = texturePairs.begin(); i != texturePairs.end(); i++ )
    {
        if( ::strcmp( str, i->first ) == 0 )
        {
            second = i->second;
            break;
        }
    }

    return second;
}

bool AppendGrayScale( tlTexture *pTex )
{
    if( !pTex )
        return false;

    const char * name = pTex->GetName( );

    for( int i = 0; i < topTextures.Count( ); ++i )
    {
        if( strcmp( name, topTextures[ i ] ) == 0 )
            return true;
    }

    return false;
}

bool IsSpecifiedShader( tlShader *shader, const char * shaderName )
{
   if( strcmp( shader->GetShaderType( ), shaderName ) == 0 )
        return true;
    else
        return false;
}

bool SpecifiedShaderBinded( tlPrimGroup *pPrimgrp, const char * shaderType )
{
    tlShader *shader = pPrimgrp->GetShaderPtr( );
   
    if( !shader )
        return false;

    return IsSpecifiedShader( shader, shaderType );
}

// reset the color chunk of a mesh or skin to (1., 1., 1.)
void SwitchUvChannel( tlPrimGroup *pgrp )
{
    for( int i = 0; i < pgrp->GetVertexCount( ); ++i )
    {
        tlVertex * vertex = pgrp->GetVertex( i );

        //switch the uv channel
        tlUV uv = vertex->GetUV( 0 );

        vertex->SetUV( 0, vertex->GetUV( 1 ) );
        vertex->SetUV( 1, uv );
    }   

}


void ResetColor( tlPrimGroup *pgrp, tlColour clr )
{
    for( int i = 0; i < pgrp->GetVertexCount( ); ++i )
    {
        tlVertex * vertex = pgrp->GetVertex( i );
        //reset color of vertex to white
        vertex->SetColour( clr );
    }
}

tlShader * FindShaderByName( tlTable<tlShader *>&shaders, const char *name )
{
    for( int i = 0; i < shaders.Count( ); ++i )
    {
        if( strcmp( shaders[ i ]->GetName( ), name ) == 0  )
            return shaders[ i ];
    }

    return NULL;
}

// Store colour into lower bits of normal
int CombineColoursAndNormals( tlPrimGroup *pgrp )
{
	const long vertexType = pgrp->GetVertexType();

	if ((vertexType & PDDI_V_NORMAL) && (vertexType & PDDI_V_COLOUR))
	{		
		const int numVerts = pgrp->NumVertices();

		for(int i=0;i<numVerts;i++)
		{
			tlVertex* v = pgrp->GetVertex(i);

			const tlPoint& n = v->GetNormal();
			const tlColour& c = v->GetColour();

			tlPoint newNormal = n;
			unsigned int* pn = (unsigned int*)&newNormal;
			
			// get rid of bottom 8 bits
			pn[0] &= ~0xff;
			pn[1] &= ~0xff;
			pn[2] &= ~0xff;
			
			// add in the colour
			// we need to scale the colour down because
			// it will be modulated by a texture
			pn[0] |= (c.RedCh() + 1) >> 1;
			pn[1] |= (c.GreenCh()+1) >> 1;
			pn[2] |= (c.BlueCh() +1) >> 1;

			v->SetNormal( newNormal );
		}

		pgrp->SetVertexType( vertexType & (~PDDI_V_COLOUR) );

		return 1;
	}

	return 0;
}

void StripUselessShaderParams(tlShader* shader)
{
    // these aren't used on the PS2
    shader->DeleteIntParam(tlFourCC("MIPL"));
    shader->DeleteFloatParam(tlFourCC("MIPK"));
    shader->DeleteIntParam(tlFourCC("MMIN"));
    shader->DeleteIntParam(tlFourCC("MMAX"));
    shader->DeleteIntParam(tlFourCC("MMEX"));
    //shader->DeleteFloatParam(tlFourCC("MSHP"));
    shader->DeleteIntParam(tlFourCC("PLMD"));
    shader->DeleteIntParam(tlFourCC("2SID"));

    if(0 != strcmp(shader->GetShaderType(), "simple"))
    {
        return;
    }

    // these aren't relevant to the simple shader on the PS2
    shader->DeleteIntParam(tlFourCC("CBVA"));
    shader->DeleteIntParam(tlFourCC("CBVB"));
    shader->DeleteColourParam(tlFourCC("CBVC"));
    shader->DeleteIntParam(tlFourCC("CBVM"));
    shader->DeleteFloatParam(tlFourCC("CBVV"));
    shader->DeleteIntParam(tlFourCC("MCBV"));
    shader->DeleteFloatParam(tlFourCC("ACTH"));

    // if it isn't lit, remove the lighting paramaters
    if( shader->GetIntParam(tlFourCC("LIT")) == 0 )
    {
        shader->DeleteIntParam(tlFourCC("LIT"));
        shader->DeleteFloatParam(tlFourCC("SHIN"));
        shader->DeleteColourParam(tlFourCC("SPEC"));
        shader->DeleteColourParam(tlFourCC("DIFF"));
        shader->DeleteColourParam(tlFourCC("AMBI"));
        shader->DeleteColourParam(tlFourCC("EMIS"));
    }

    // remove other fields if they are set to default values
    if( shader->GetIntParam(tlFourCC("SHMD")) == PDDI_SHADE_GOURAUD)
    {
        shader->DeleteIntParam(tlFourCC("SHMD"));
    }
    if( shader->GetIntParam(tlFourCC("BLMD")) == PDDI_BLEND_NONE)
    {
        shader->DeleteIntParam(tlFourCC("BLMD"));
    }
    if( shader->GetIntParam(tlFourCC("FIMD")) == PDDI_FILTER_BILINEAR)
    {
        shader->DeleteIntParam(tlFourCC("FIMD"));
    }
    if( shader->GetIntParam(tlFourCC("ATST")) == 0)
    {
        shader->DeleteIntParam(tlFourCC("ATST"));
        shader->DeleteIntParam(tlFourCC("ACMP"));
    }
    if( shader->GetIntParam(tlFourCC("UVMD")) == PDDI_UV_TILE)
    {
        shader->DeleteIntParam(tlFourCC("UVMD"));
    }
}

