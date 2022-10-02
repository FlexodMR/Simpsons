/*===========================================================================
  File: main.cpp 

  This tool packs the textures of a pure3d file


  Copyright (c) 2002 Radical Entertainment, Inc.  All rights reserved.

  ===========================================================================*/

#include <assert.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "toollib.hpp"
#include "tlScenegraph.hpp"

#include "Param.hpp"
#include "SubTexture.hpp"

const MAX_UV_SETS = 8;
struct tm startTime = { 0, 0, 12, 25, 11, 93 };

const unsigned long MESH_VERTEX_ANIMATION_VERSION = 1;
const float USEFULL_THRESHOLD = 0.8f;

// All the things in the scene of any importance to this program.
struct SceneEntities {   
    tlTable<tlPrimGroupMesh*> meshes;
    tlTable<tlTexture*>       textures;
    tlInventory*              inventory;
    
    SceneEntities() : inventory( NULL ) {};
    virtual ~SceneEntities() { delete[] inventory; }
};

//==============================================================================
// Global variables
Parameters* Param;

//==============================================================================
// Function declarations.
static void PackTextures( SceneEntities *scene );
static const char* GetTextureName(const tlShader &shader, int uvIdx);
static void UnderuseTest( const SceneEntities &scene );

static tlDataChunk* PrepareInput( int fileNum );
static void OutputScene( SceneEntities *scene, tlDataChunk *inchunk, int fileNum );
static void CreateScene( SceneEntities *scene, tlDataChunk *inchunk );
static void VerbosePrintf( int condition, const char *format, ... );
static void Warning( const char *format, ... );
static void Error( const char *format, ... );
static void ResetTime( );
static void PrintUsedTime( );

//==============================================================================
int main(int argc, char* argv[])
{
    ResetTime();

    Param = new Parameters(argc,argv);  // Process command line requests.

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    int fileNum;
    for( fileNum = 0; fileNum < Param->Files.Count(); fileNum++ ) 
    {
        SceneEntities scene;

        tlDataChunk *inchunk  = PrepareInput( fileNum );

        CreateScene( &scene, inchunk );
        scene.inventory->ResolveReferences();
        
        if(Param->Query)
        {
            UnderuseTest( scene );
        }
        else
        {
            PackTextures( &scene );

            if(Param->NoAction == 0)
            {
                OutputScene( &scene, inchunk, fileNum );
            }
        }

        delete inchunk;
    }
   
    PrintUsedTime( ); //print used time
   
    return 0;
}

static void PackTextures( SceneEntities *scene )
{
    int packedTextureCount = 0;
    int i;
    for(i = 0; i < scene->textures.Count(); i++)
    {
        tlTexture *texture = scene->textures[i];
        VerbosePrintf( 1, "Processing texture \"%s\"", texture->GetName() );

        SubTextureList subTextureList(texture);
        int triangleCount = 0;

        int j;
        for(j = 0; j < scene->meshes.Count(); j++)
        {
            tlPrimGroupMesh *pgMesh = scene->meshes[j];
            if(pgMesh == NULL)
            {
                continue;
            }

            // Ignore meshes which might have animated vertices.
            if(pgMesh->GetVersion() == MESH_VERTEX_ANIMATION_VERSION)
            {
                continue;
            }

            int k;
            for(k = 0; k < pgMesh->NumPrimGroups(); k++)
            {
                tlPrimGroup *pg = pgMesh->GetPrimGroup(k);
                if(pg == NULL)
                {
                    continue;
                }

                tlShader *shader = pg->GetShaderPtr();
                if(shader == NULL)
                {
                    continue;
                }

                int uvIdx;
                for(uvIdx = 0; uvIdx < MAX_UV_SETS; uvIdx++)
                {
                    const char* tName = GetTextureName(*shader, uvIdx);
                    if(tName == NULL) break;
                    
                    if(strcmp(tName, texture->GetName()) == 0)
                    {
                        pg->Deindex(); // Primgroups must be de-indexed in order to pack textures.

                        subTextureList.Add(pg, uvIdx);
                        triangleCount += pg->GetTriangleCount();
                    }
                }
            }
        }

        if(subTextureList.Count() == 0)
        {
            VerbosePrintf(1, "  No UVs on texture - not packed.");
            continue;
        }

        VerbosePrintf(2, "  Using textures on %d triangles.", triangleCount);
        VerbosePrintf(2, "  Reduced down to %d sub-textures", subTextureList.Count());

        VerbosePrintf(2, "  Sorting sub-textures");
        subTextureList.Sort();

        VerbosePrintf(2, "  Packing sub-textures");
        int area = texture->GetWidth() * texture->GetHeight();
        bool success = false;
        int width  = 8;
        int height = 8;

        while(width * height < area)
        {
            VerbosePrintf(2, "    trying to pack into %d x %d texture", width, height);
            success = subTextureList.Pack(width, height);
            if(success) break;

            if(width == height)
            {
                width  *= 2;
                if(height > 8)
                {
                    height /= 2;
                }
            }
            else
            {
                height *= 2;
            }
        }

        if(success)
        {
            VerbosePrintf(0, "  %s packed: (%d x %d) => (%d x %d)", texture->GetName(),
                          texture->GetWidth(), texture->GetHeight(), width, height);
            subTextureList.ApplyNewTexture();
            packedTextureCount++;
        }
        else
        {
            VerbosePrintf(1, "  Unable to reduce texture");
        }
    }
    VerbosePrintf(0, "  Total: packed %d of %d textures", packedTextureCount, scene->textures.Count());
}

static const char* GetTextureName(const tlShader &shader, int uvIdx)
{
    const char* textureName = NULL;
    const char* shaderType  = shader.GetShaderType();
    
    if(uvIdx == 0)
    {
        textureName = shader.GetTextureParam(tlFourCC("TEX"));
    }

    if(strcmp(shaderType, "layered") == 0)
    {
        if(uvIdx == 1)
        {
            textureName = shader.GetTextureParam(tlFourCC("TTEX"));
        }
    }
    else if(strcmp(shaderType, "layeredlmap") == 0)
    {
        if(uvIdx == 1)
        {
            textureName = shader.GetTextureParam(tlFourCC("TTEX"));
        }
        else if(uvIdx == 2)
        {
            textureName = shader.GetTextureParam(tlFourCC("LMAP"));
        }            
    }
    else if(strcmp(shaderType, "lightmap") == 0)
    {
        if(uvIdx == 1)
        {
            textureName = shader.GetTextureParam(tlFourCC("LMAP"));
        }
    }
              
    return textureName;
}

// Check to see which textures are underused - The fractional part of the texture
// which is uv mapped to geometry.
static void UnderuseTest( const SceneEntities &scene )
{
    int underusedTextureCount = 0;
    int i;
    for(i = 0; i < scene.textures.Count(); i++)
    {
        tlTexture *texture = scene.textures[i];

        SubTextureList subTextureList(texture);
        int triangleCount = 0;

        int j;
        for(j = 0; j < scene.meshes.Count(); j++)
        {
            tlPrimGroupMesh *pgMesh = scene.meshes[j];
            if(pgMesh == NULL)
            {
                continue;
            }

            // Ignore meshes which might have animated vertices.
            if(pgMesh->GetVersion() == MESH_VERTEX_ANIMATION_VERSION)
            {
                continue;
            }

            int k;
            for(k = 0; k < pgMesh->NumPrimGroups(); k++)
            {
                tlPrimGroup *pg = pgMesh->GetPrimGroup(k);
                if(pg == NULL)
                {
                    continue;
                }

                tlShader *shader = pg->GetShaderPtr();
                if(shader == NULL)
                {
                    continue;
                }

                int uvIdx;
                for(uvIdx = 0; uvIdx < MAX_UV_SETS; uvIdx++)
                {
                    const char* tName = GetTextureName(*shader, uvIdx);
                    if(tName == NULL) break;
                    
                    if(strcmp(tName, texture->GetName()) == 0)
                    {
                        pg->Deindex(); // Primgroups must be de-indexed in order to pack textures.

                        subTextureList.Add(pg, uvIdx);
                        triangleCount += pg->GetTriangleCount();
                    }
                }
            }
        }

        if(subTextureList.Count() == 0)
        {
            VerbosePrintf(1, "  No UVs on texture - ignored.");
            continue;
        }

        int compressableArea = subTextureList.Area();
        // HBW TODO: Count the pixels actually used versus the allocated texure size.
        // int compressableArea = subTextureList.Area();
        int textureArea = texture->GetWidth() * texture->GetHeight();

        float fractionUsed = rmt::LtoF(compressableArea) / rmt::LtoF(textureArea);
        if(fractionUsed < USEFULL_THRESHOLD)
        {
            underusedTextureCount++;
            printf( "  %s: %3.1f%% used.\n", texture->GetName(), 100.0f * fractionUsed);
        }
        else
        {
            VerbosePrintf( 0, "  %s: OK", texture->GetName());
        }
            
    }
    
    printf("Total: %d of %d textures underused.\n", underusedTextureCount, scene.textures.Count());
}

//==============================================================================
// Print a message if the Verbosity level is greater than the passed condition.
static void VerbosePrintf( int condition, const char *format, ... )
{
    if( Param->Verbosity > condition )
    {
        va_list args;
        va_start( args, format );
        vprintf( format, args );
        va_end( args );
        printf( "\n" );
    }
}

static void Warning( const char *format, ... )
{
    va_list args;
    va_start( args, format );
    printf( "Warning: " );
    vprintf( format, args );
    va_end( args );
    printf( "\n" );
}

static void Error( const char *format, ... )
{
    va_list args;
    va_start( args, format );
    printf( "Error: " );
    vprintf( format, args );
    va_end( args );

    exit( -1 );
}

//==============================================================================
static tlDataChunk* PrepareInput( int fileNum )
{
    VerbosePrintf( 0, "Processing file '%s'", Param->Files[fileNum] );
    // open next file into a tlFile object
    tlFile input( new tlFileByteStream(Param->Files[ fileNum ],omREAD), tlFile::FROMFILE );
    if(!input.IsOpen()) 
    {
        Error( "Could not open %s", Param->Files[ fileNum ] );
    }
      
    // make a tlDataChunk from the file
    // this is the wrapper chunk for the input
    tlDataChunk* inchunk = new tlDataChunk(&input);
    assert( inchunk != NULL );
    // we don't need the tlFile anymore
    // this cleans up the tlFile object including the
    // tlFileByteStream
    input.Close();

    if( Param->Verbosity>6 )
    {
        inchunk->Print();
    }

    return inchunk;
}        

// ======================================
// Output Scene
static void OutputScene( SceneEntities *scene, tlDataChunk *inchunk, int fileNum )
{
    char filename[P3DMAXNAME];
    if( Param->OutputFile != NULL )
    {
        strcpy( filename, Param->OutputFile );
    } else {
        strcpy( filename, Param->Files[fileNum] );
    }

    tlDataChunk* outchunk = new tlDataChunk();
    assert( outchunk != NULL );

    if( Param->WriteHistory )
    {
        // put a history chunk in the output
        // a history chunk shows what version of the tool
        // was run on the file with what command-line 
        // parameters
        outchunk->AppendSubChunk( Param->HistoryChunk() );
    }
   
    // Output the sub-chunks.
    int ch;
    for( ch=0; ch < inchunk->SubChunkCount(); ch++ )
    {
        tlDataChunk* sub = inchunk->GetSubChunk(ch);
        // Write the sub-chunks to the output wrapper.  The optional
        // parameter to AppendSubChunk indicates that we have merely
        // copied a pointer so the destructor of outchunk should not
        // destroy this sub-chunk as that duty will be taken care of by
        // the destructor of inchunk.
        switch( sub->ID() )
        {
            // The only affected elements of the pure3d file were some meshes, shaders,
            // and textures.  Output the new versions of just those which were changed.
            // Otherwise simply output the input chunk.
            case Pure3D::Mesh::MESH:
            {
                tlSafeEntityCaster<tlPrimGroupMesh> meshCaster;
                tlEntity *entity = scene->inventory->Find(meshCaster, sub->GetName());
                tlPrimGroupMesh *mesh = dynamic_cast<tlPrimGroupMesh*>(entity);
                if(mesh != NULL)
                {
                    outchunk->AppendSubChunk( mesh->Chunk(), FALSE );
                }
                else
                {
                    outchunk->AppendSubChunk( sub, FALSE );
                }
                break;
            }
            case Pure3D::Shader::SHADER:
            {
                tlSafeEntityCaster<tlShader> shaderCaster;
                tlEntity *entity = scene->inventory->Find(shaderCaster, sub->GetName());
                tlShader *shader = dynamic_cast<tlShader*>(entity);
                if(shader != NULL)
                {
                    outchunk->AppendSubChunk( shader->Chunk(), FALSE );
                }
                else
                {
                    outchunk->AppendSubChunk( sub, FALSE );
                }
                break;
            }
            case Pure3D::Texture::TEXTURE:
            {
                tlSafeEntityCaster<tlTexture> textureCaster;
                tlEntity *entity = scene->inventory->Find(textureCaster, sub->GetName());
                tlTexture *texture = dynamic_cast<tlTexture*>(entity);
                if(texture != NULL)
                {
                    outchunk->AppendSubChunk( texture->Chunk(), FALSE );
                }
                else
                {
                    outchunk->AppendSubChunk( sub, FALSE );
                }
                break;
            }

            // This is not a chunk that we care about so simply
            // copy it to the output wrapper chunk. 
            default:
            {
                outchunk->AppendSubChunk( sub, FALSE );
            }
        }
    }
   
    // open the output file
    VerbosePrintf( 0, "Saving to '%s'", filename );
    tlFile output( new tlFileByteStream( filename, omWRITE ), tlFile::CHUNK32 );
    if( !output.IsOpen() ) {
        Error( "Could not open %s for writing", Param->OutputFile );
    }
    
    outchunk->Write( &output );
    delete outchunk;
}

//==============================================================================
// Build a scene in worldspace with the important scene information.
static void CreateScene( SceneEntities *scene, tlDataChunk *inchunk )
{
    assert( scene != NULL && inchunk != NULL );
    tlInventory* inventory = new tlInventory;
    assert( inventory != NULL );
    
    int ch;
    // go through all the sub-chunks of the input and
    // process the ones you care about
    for( ch=0; ch < inchunk->SubChunkCount(); ch++ )
    {
        // create the next sub-chunk
        
        tlDataChunk* sub = inchunk->GetSubChunk( ch );

        // look at the id of the subchunk to decide if we 
        // want to do something with it or not
        switch(sub->ID())
        {
            case Pure3D::Mesh::MESH:
            {
                tlPrimGroupMesh *pgMesh = new tlPrimGroupMesh( sub );
                scene->meshes.Append(pgMesh);
                inventory->Store(pgMesh);
                break;
            }
            case Pure3D::Shader::SHADER:
            {
                inventory->Store( new tlShader( sub ) );
                break;
            }
            case Pure3D::Texture::TEXTURE:
            {
                tlTexture *texture = new tlTexture( sub);

                if( (Param->NamePatterns.Count() == 0) ||
                    glob(&Param->NamePatterns, texture->GetName()))
                {
                    if( (Param->ExcludeNamePatterns.Count() == 0) ||
                        glob(&Param->ExcludeNamePatterns, texture->GetName()) == FALSE )
                    {
                        scene->textures.Append(texture);
                    }                        
                }

                inventory->Store(texture);
                break;
            }
            default:
            {
                break;
            }
        }
    }
   
    scene->inventory = inventory;
}

static void ResetTime( )
{
    time_t ltime;

    struct tm *start;

    _tzset();

    time( &ltime );
    start = localtime( &ltime );

    startTime = *start;

}
              
static void PrintUsedTime( )
{

    time_t ltime;

    struct tm *end;

    _tzset();

    time( &ltime );
    end = localtime( &ltime );

    int hours, minutes, seconds;

    if( end->tm_sec < startTime.tm_sec ){
        --end->tm_min;
        seconds = 60 + end->tm_sec - startTime.tm_sec;
    }
    else
        seconds = end->tm_sec - startTime.tm_sec;


    if( end->tm_min < startTime.tm_min ){
        --end->tm_hour;
        minutes = 60 + end->tm_min - startTime.tm_min;
    }
    else
        minutes = end->tm_min - startTime.tm_min;



    if( end->tm_hour < startTime.tm_hour ){
        --end->tm_yday;
        hours = 24 + end->tm_hour - startTime.tm_hour;
    }
    else
        hours = end->tm_hour - startTime.tm_hour;


    VerbosePrintf( 0, "Total time used is: %d hours - %d minutes - %d seconds\n", hours, minutes, seconds );

}
