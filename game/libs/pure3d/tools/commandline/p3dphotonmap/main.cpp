/*===========================================================================
File: main.cpp 

  This tool creates a photon map
  
      Copyright (c)  Radical Entertainment, Inc.  All rights reserved.
      
===========================================================================*/

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <time.h>
#include <toollib.hpp>
#include <tlScenegraph.hpp>

#include "Param.hpp"

struct tm startTime = { 0, 0, 12, 25, 11, 93 };

// All the things in the scene of any importance to this program.
struct SceneEntities {   
   tlTable<tlLight *>    lights;
   tlTable<tlTriMeshIntersect *> trimeshes;
   tlTable<tlShader *>   shaders;
   tlInventory*          inventory;
   tlTriMeshIntersect*   triMeshIntersect;
   tlPhotonMap           photonMap;

   SceneEntities() : inventory( NULL ), triMeshIntersect( NULL ) {};
   virtual ~SceneEntities() { delete[] inventory, triMeshIntersect; }
};

//==============================================================================
// Global variables
Parameters* Param;

//==============================================================================
// Function declarations.
tlDataChunk* PrepareInput( int fileNum );
void OutputScene( SceneEntities *scene, tlDataChunk *inchunk, int fileNum );
void CreateScene( SceneEntities *scene, tlDataChunk *inchunk );
void PrintMeshes( tlInventory *inventory );
tlTriMesh* WorldspaceScenegraph(tlScenegraph* scene, tlInventory *originalMesh );
int CreatePhotonMap( SceneEntities *scene );
void VerbosePrintf( int condition, const char *format, ... );
void Warning( const char *format, ... );
void Error( const char *format, ... );
void ResetTime( );
void PrintUsedTime( );

//==============================================================================
int main( int argc, char* argv[] )
{
   Param = new Parameters( argc, argv );  // Process command line requests.
    
   tlDataChunk::RegisterDefaultChunks();
   
   ResetTime( ); //Reset the time for printint used time

   // for each file on the command-line, do the following:
   int fileNum;
   for( fileNum = 0; fileNum < Param->Files.Count(); fileNum++ ) 
   {
      SceneEntities scene;

      tlDataChunk *inchunk  = PrepareInput( fileNum );
      // tlDataChunk *outchunk = PrepareOutput( );

      CreateScene( &scene, inchunk );
      scene.inventory->ResolveReferences();
        
      CreatePhotonMap( &scene );

      OutputScene( &scene, inchunk, fileNum );
      delete inchunk;
   }
   
   PrintUsedTime( ); //print used time
   
   return 0;
}

//==============================================================================
// Print a message if the Verbosity level is greater than the passed condition.
void VerbosePrintf( int condition, const char *format, ... )
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

void Warning( const char *format, ... )
{
   va_list args;
   va_start( args, format );
   printf( "Warning: " );
   vprintf( format, args );
   va_end( args );
   printf( "\n" );
}

void Error( const char *format, ... )
{
   va_list args;
   va_start( args, format );
   printf( "Error: " );
   vprintf( format, args );
   va_end( args );

   exit( -1 );
}

//==============================================================================
tlDataChunk* PrepareInput( int fileNum )
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
void OutputScene( SceneEntities *scene, tlDataChunk *inchunk, int fileNum )
{
   char filename[P3DMAXNAME];
   if( Param->OutputFile != NULL )
   {
      strcpy( filename, Param->OutputFile );
   } else {
      strcpy( filename, Param->Files[fileNum] );
   }

   tlDataChunk* outchunk = new tlDataChunk;
   assert( outchunk != NULL );

   if( Param->WriteHistory )
   {
      // put a history chunk in the output
      // a history chunk shows what version of the tool
      // was run on the file with what command-line 
      // parameters
      outchunk->AppendSubChunk( Param->HistoryChunk() );
   }
   
   tlPrimGroupMesh *photonMesh = NULL;
   if( Param->PhotonHitGeometry > 0.0f ) // Mark photons with diamonds.
   {  
      VerbosePrintf( 0, "Adding photon hit representative geometry to scene." );            
      photonMesh = scene->photonMap.CreateMesh( Param->PhotonHitGeometry );
      if( photonMesh != NULL )
      {
          // Create a simple shader for the geometry and add to output.
        tlSimpleShader shader;
        shader.SetName( tlPhotonMap::PHOTON_GEOMETRY_SHADER );
        // Now add diamond geometry to output.
        outchunk->AppendSubChunk( shader.Chunk(), FALSE );
        photonMesh->SetName( "Photon map representative geometry" );
        outchunk->AppendSubChunk( photonMesh->Chunk(), FALSE );
      }
      else
      {
          printf("Warning: Unable to crete photon hit geometry\n");
      }
   }

   int ch;
   for( ch=0; ch < inchunk->SubChunkCount(); ch++ )
   {
      tlDataChunk* sub = inchunk->GetSubChunk(ch);
      if( sub->ID() == Pure3D::SceneGraph::SCENEGRAPH && photonMesh != NULL )
      {
         tlScenegraph scene(sub);
         tlScenegraphDrawable *drawable = new tlScenegraphDrawable;
         drawable->SetDrawable( photonMesh->GetName() );
         drawable->SetName( photonMesh->GetName() );
         drawable->SetTranslucency( TRUE );
         scene.AddNode( drawable, scene.GetRoot()->GetName() );
         outchunk->AppendSubChunk( scene.Chunk(), FALSE );
      }
      else
      {
         outchunk->AppendSubChunk( sub, FALSE ); // Output the previous scene.
      }
   }

   if( scene->photonMap.GetPhotonCount() >= 1 )
   {
      // Add in photon map

       char name[128];
       int photonMapNum = 0;
       tlSafeEntityCaster<tlPhotonMap> caster;
       // Create a unique name.
       do
       {
           sprintf( name, "photonMap_%d", photonMapNum );
           photonMapNum++;
           
       } while( scene->inventory->Find( caster, name ) != NULL );

      scene->photonMap.SetName( name );
      outchunk->AppendSubChunk( scene->photonMap.Chunk() );
   }

   // open the output file
   VerbosePrintf( 0, "Saving to '%s'", filename );
   outchunk->SortPriority();
   tlFile output( new tlFileByteStream( filename, omWRITE ), tlFile::CHUNK32 );
   if( !output.IsOpen() ) {
      Error( "Could not open %s for writing", Param->OutputFile );
   }
   outchunk->SortPriority();
   outchunk->Write( &output );
   delete outchunk;
}

//==============================================================================
// Build a scene in worldspace with the important scene information.
void CreateScene( SceneEntities *scene, tlDataChunk *inchunk )
{
   assert( scene != NULL && inchunk != NULL );
   tlInventory* inventory = new tlInventory;
   tlInventory  originalMeshes;
   assert( inventory != NULL );
   bool hasLights = false;
   bool hasSkins  = false;
   bool hasScene  = false;
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
         case Pure3D::Light::LIGHT:
         {
            tlLight* light = new tlLight(sub);
            scene->lights.Append(light);
            inventory->Store( new tlLight( sub ) );
            hasLights = true;
            break;
         }
         case Pure3D::Mesh::MESH:
         {
            inventory->Store( new tlPrimGroupMesh( sub ) );
            originalMeshes.Store( new tlPrimGroupMesh( sub ) );
            break;
         }
         case Pure3D::Mesh::SKIN:
         {
            hasSkins = true;
         }
         case Pure3D::SceneGraph::SCENEGRAPH :
         {
            if( !hasScene )
            {
               tlScenegraph *scenegraph = new tlScenegraph( sub );
               inventory->Store( scenegraph );
               tlTriMesh* triMesh = WorldspaceScenegraph( scenegraph, &originalMeshes );
               tlPrimGroupMesh *mesh = new tlPrimGroupMesh( *triMesh );
               mesh->SetName( scenegraph->GetName() );
               scene->triMeshIntersect = new tlTriMeshIntersect( *mesh );
               // Debug
               // inventory->Store( mesh );
               // hasScene = true;
               // End Debug
            }
            else
            {
               Warning( "Multiple scenegraphs defined - ignoring later definitions" );
            }
            break;
         }
         case Pure3D::Shader::SHADER:
         {
            tlShader *shader = new tlShader( sub );
            scene->shaders.Append( shader );
            // inventory->Store( new tlShader( sub ) );
            inventory->Store( shader );
            break;
         }
         case Pure3D::Light::PHOTON_MAP:
         {
            inventory->Store( new tlPhotonMap( sub ) );
            break;
         }
         case Pure3D::Texture::TEXTURE:
         {
            //test if we need to output a texture chunk or not
            inventory->Store( new tlTexture( sub ) );
            break;
         }
         default:
         {
            break;
         }
      }
   }

   if( !hasLights )
   {
      Error( "No lights in scene" );
   }
   
   if( hasSkins )
   {
      Warning( "Photon map is ignoring skins in scene." );
   }

   scene->inventory = inventory;
}

void PrintMeshes( tlInventory *inventory )
{
   tlInventory::Iterator<tlPrimGroupMesh> meshitor( inventory );
   tlPrimGroupMesh* mesh = NULL;
   for ( mesh = meshitor.First(); mesh != NULL; mesh = meshitor.Next() )
   {
      printf( "Viewing Mesh/Skin: %s\n", mesh->GetName() );
   }
}

void WorldspaceNode(tlScenegraphNode* node, tlMatrix transform, tlTriMesh* mesh, tlInventory *originalMesh)
{
   tlScenegraphAttachment* attach = dynamic_cast<tlScenegraphAttachment*>(node);
   if(attach)
   {
      Error( "can't handle attachment noides in scenegraph!" );
   }

   tlScenegraphTransform* trans = dynamic_cast<tlScenegraphTransform*>(node);
   if(trans)
   {
      transform = trans->GetTransform() * transform;
   }

   tlScenegraphBranch* br = dynamic_cast<tlScenegraphBranch*>(node);
   if(br)
   {
      for(int i = 0; i < br->GetChildCount(); i++)
      {
         WorldspaceNode(br->GetChild(i), transform, mesh, originalMesh);
      }
      return;
   }

   tlScenegraphDrawable* dr = dynamic_cast<tlScenegraphDrawable*>(node);
   if(dr)
   {
      char* drawName = dr->GetDrawable();
      tlPrimGroupMesh* pgmesh = toollib_find<tlPrimGroupMesh>( originalMesh, drawName );
      if(pgmesh)
      {
         tlTriMesh trimesh(*pgmesh);
         trimesh.Transform(transform);

         for(int i = 0; i < trimesh.GetFaces().Count(); i++)
         {
            tlTriangle* tri = new tlTriangle(*trimesh.GetFaces()[i]);
            mesh->AddFace(tri);
         }
      }
   }

   //tlScenegraphVisibility
   //tlScenegraphCamera
   //tlScenegraphLightGroup
}

tlTriMesh* WorldspaceScenegraph(tlScenegraph* scene, tlInventory *originalMesh )
{
   tlTriMesh* mesh = new tlTriMesh;

   tlMatrix matrix;
   matrix.IdentityMatrix();

   WorldspaceNode(scene->GetRoot(), matrix, mesh, originalMesh);

   return mesh;
}

// ---- Create the photon map --------------------------------------------
int CreatePhotonMap( SceneEntities *scene )
{
   int totalPhotonCount = 0;
     
   scene->trimeshes.Append( scene->triMeshIntersect );

   // Compute the contribution (i.e., power) of each light to the scene.
   float *power = new float[scene->lights.Count()]; // The power associated with each light.
   float  totalPower = 0.0f;
   int lightNum;
   for( lightNum = 0; lightNum < scene->lights.Count( ); lightNum++ )
   {
       power[lightNum] = scene->lights[lightNum]->Power();
       totalPower += power[lightNum];
   }
   if( totalPower == 0.0f )
   {
       return 0.0f; // Nothing with which to illuminate.
   }

    // Pre-allocate memory for the photon hits.
    int count = scene->photonMap.GetPhotonCount(); // existing photon map size.
    count += 2 * Param->NumberPhotons; // Assume average photon produces 2 hits.
    scene->photonMap.Resize( count );  // Resize to this best guess.

    for( lightNum = 0; lightNum < scene->lights.Count( ); lightNum++ )
    {
        // Create photons for each light which has some power.
        if( power[lightNum] > 0.0f )
        {
            // Compute how many of the requested photons should be created by this light.
            int pnum = (int) ( ( power[lightNum] / totalPower ) * (float)(Param->NumberPhotons) + 0.5f );
            pnum = ( pnum <= 0 ) ? 1 : pnum; // Send out at least one photon.

            scene->lights[lightNum]->SetMaxDepth( Param->MaxDepth );
            VerbosePrintf( 0, "Creating %d primary photons for light %s\n", pnum, scene->lights[lightNum]->GetName( ) );

            int lp = scene->lights[lightNum]->AddPhotons( scene->photonMap, scene->trimeshes, 
                                                       scene->shaders, pnum );
            VerbosePrintf( 0, "     resulting in %d photon hits\n", lp );
            totalPhotonCount += lp;
        }
    }
     
   VerbosePrintf( 0, "Balancing the photon map." );
   scene->photonMap.Balance( ); //balance the photon map for later querying

   delete[] power;

   return totalPhotonCount;
}


void ResetTime( )
{
    time_t ltime;

    struct tm *start;

    _tzset();

    time( &ltime );
    start = localtime( &ltime );

    startTime = *start;

}
              
void PrintUsedTime( )
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


    printf( "Total time used is: %d hours - %d minutes - %d seconds\n", hours, minutes, seconds );

}
