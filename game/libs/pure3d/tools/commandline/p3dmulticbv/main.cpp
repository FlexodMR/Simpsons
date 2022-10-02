/*===========================================================================
    File: main.cpp 

    This tool is used to modify vertex colours.  Designed primarily for use in conjunction with multi cbv sets.

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

const unsigned long MESH_VERTEX_ANIMATION_VERSION = 1; // Hack to detect vertex animation.

struct tm startTime = { 0, 0, 12, 25, 11, 93 };

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
static void ProcessCBVs( SceneEntities *scene );
static bool IsModifiableMesh( const tlPrimGroupMesh *mesh, const tlShader *shader );

static void CheckParams();

static tlDataChunk* PrepareInput( int fileNum );
static void OutputScene( SceneEntities *scene, tlDataChunk *inchunk, int fileNum );
static void CreateScene( SceneEntities *scene, tlDataChunk *inchunk );
static bool ahextoc( tlColour *colour, const char *string );

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
    CheckParams();

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    int fileNum;
    for( fileNum = 0; fileNum < Param->Files.Count(); fileNum++ ) 
    {
        SceneEntities scene;

        tlDataChunk *inchunk  = PrepareInput( fileNum );

        CreateScene( &scene, inchunk );
        scene.inventory->ResolveReferences();

        ProcessCBVs( &scene );
        
        OutputScene( &scene, inchunk, fileNum );

        delete inchunk;
    }
   
    PrintUsedTime( ); //print used time
   
    return 0;
}

//==============================================================================
// Change the CBV colours as requested by command line parameters.
static void ProcessCBVs( SceneEntities *scene )
{
    int i;
    tlColour forceColour;

    if(Param->Colour != NULL)
    {
        ahextoc(&forceColour, Param->Colour);
    }

    for(i = 0; i < scene->meshes.Count(); i++)
    {
        tlPrimGroupMesh *pgMesh = scene->meshes[i];
        if(pgMesh == NULL)
        {
            continue;
        }

        // Ignore meshes which might have animated vertices.
        if(pgMesh->GetVersion() == MESH_VERTEX_ANIMATION_VERSION)
        {
            continue;
        }
        
        int j;
        for(j = 0; j < pgMesh->NumPrimGroups(); j++)
        {
            tlPrimGroup *pg = pgMesh->GetPrimGroup(j);
            if(pg == NULL)
            {
                continue;
            }
            
            int k;
            for(k = 0; k < pg->GetVertexCount(); k++)
            {
                tlVertex *v = pg->GetVertex(k);
                int numColours = v->GetNumberColours();

                if(numColours < Param->SourceCBVSet || numColours < Param->TargetCBVSet)
                { 
                    continue;
                }   
                                
                if( !IsModifiableMesh( pgMesh, pg->GetShaderPtr() ) )
                {
                    continue;
                }

                tlColour c = v->GetColour(Param->SourceCBVSet - 1); // Get source colour.

                if(Param->Colour != NULL)
                {
                    c = forceColour; // Set to a specific colour.
                }
                else
                {
                    if(Param->Brightness != 0.0f)
                    {
                        c.AdjustBrightness(Param->Brightness);
                    }
                    if(Param->Contrast != 0.0f)
                    {
                        static const tlColour GRAY(128, 128, 128);
                        c.AdjustContrast(GRAY, Param->Contrast);
                    }
                    if(Param->Hue != 0.0f)
                    {
                        c.AdjustHue(Param->Hue);
                    }
                    if(Param->Saturation != 0.0f)
                    {
                        c.AdjustSaturation(Param->Saturation);
                    }
                    if(Param->Lightness != 0.0f)
                    {
                        c.AdjustLightness(Param->Lightness);
                    }
                }

                v->SetColour(c, Param->TargetCBVSet - 1);
            }
        }
    }
}

//==============================================================================
// Test to see whether or not a mesh's vertex colours should be modified - as 
// directed by command line specifications.
static bool IsModifiableMesh( const tlPrimGroupMesh *mesh, const tlShader *shader )
{
    static bool modifiable = false;
    static const tlPrimGroupMesh *lastMesh = NULL;
    static const tlShader *lastShader = NULL;
    if(mesh == lastMesh && shader == lastShader)
    {
        return modifiable;
    }

    modifiable = true;

    // Are include mesh names specified? (-g option)
    if( Param->GeoName.Count() > 0 )
    {
        if( glob( &Param->GeoName, mesh->GetName() ) == FALSE )
        {
            // This is not one of the meshes named for inclusion.
            modifiable = false;
        }
    }
    // Are exclude mesh names specified? (-G option)
    if( Param->ExcludeGeoName.Count() > 0 )
    {
        if( glob( &Param->ExcludeGeoName, mesh->GetName() ) == TRUE )
        {
            // This is one of the meshes named for exclusion.
            modifiable = false;
        }
    }

    if(shader != NULL)
    {
        // Are include shader names specified? (-s option)
        if( Param->ShaderName.Count() > 0 )
        {
            if( glob( &Param->ShaderName, shader->GetName() ) == FALSE )
            {
                // This is not one of the meshes named for inclusion.
                modifiable = false;
            }
        }
        // Are exclude shader names specified? (-S option)
        if( Param->ExcludeShaderName.Count() > 0 )
        {
            if( glob( &Param->ExcludeShaderName, shader->GetName() ) == TRUE )
            {
                // This is one of the meshes named for exclusion.
                modifiable = false;
            }
        }
    }

    return modifiable;
}

//==============================================================================
// Ensure that the command line parameters are reasonable.
static void CheckParams()
{
    if( Param->SourceCBVSet < 1 || Param->SourceCBVSet > tlVertex::MAX_VERT_COLOUR)
    {
        Error("Source CBV set number must be between 1 and %d, inclusive.\n", tlVertex::MAX_VERT_COLOUR);
    }

    if( Param->TargetCBVSet < 1 || Param->TargetCBVSet > tlVertex::MAX_VERT_COLOUR)
    {
        Error("Target CBV set number must be between 1 and %d, inclusive.\n", tlVertex::MAX_VERT_COLOUR);
    }

    tlColour colour;
    if( Param->Colour != NULL && !ahextoc(&colour, Param->Colour) )
    {
        Error("Invalid colour format.  Use 0xaarrggbb, the colour in hex format.\n");
    }
}

//==============================================================================
// Convert a char string typed as unsigned hex to a tlColour.
static bool ahextoc( tlColour *colour, const char *string )
{
    if(colour == NULL || string == NULL) return false;
    int len;
    for(len = 0; len < 11; len++) 
    {
        if(string[len]=='\0') break;
    }
    if(len != 10) return false;

    if(string[0] != '0' || !(string[1] == 'x' || string[1] == 'X'))
    {
        return false;
    }

    unsigned long total = 0;
    for(len = 2; len < 10; len++)
    {
        int val = 0;
        if(string[len] >= '0' && string[len] <= '9')
        {
            val = string[len] - '0';
        }
        else if(string[len] >= 'a' && string[len] <= 'f')
        {
            val = string[len] - 'a' + 10;
        }
        else if(string[len] >= 'A' && string[len] <= 'F')
        {
            val = string[len] - 'A' + 10;
        }
        else return false;

        total = (total << 4) | val;
    }

    *colour = total;
    return true;
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
            // The only affected elements of the pure3d file were some
            // meshes.  Output the new versions of just those which were
            // changed.  Otherwise simply output the input chunk.
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

                /*
                if( (Param->NamePatterns.Count() == 0) ||
                    glob(&Param->NamePatterns, texture->GetName()))
                {
                    if( (Param->ExcludeNamePatterns.Count() == 0) ||
                        glob(&Param->ExcludeNamePatterns, texture->GetName()) == FALSE )
                    {
                        scene->textures.Append(texture);
                    }                        
                    }
                */

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
