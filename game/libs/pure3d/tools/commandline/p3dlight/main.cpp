/*===========================================================================
  File: main.cpp 

  This tool prelites geometries


  Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

  ===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <time.h>
#include <tlScenegraph.hpp>
#include <tlBSPTree.hpp>
#include <tlLightGroupChunk16.hpp>


#include "Param.hpp"

Parameters* Param;

enum SpaceType{
    eWorldSpace,
    eObjectSpace
};

enum LightError{
    eMultiScene,
    eNoNormalLightmap
};

static const float EPSILON = 0.000001f;
static const float FTINY = 0.0001f;
static const tlColour TLCOLOUR_WHITE(1.0f, 1.0f, 1.0f);
static const tlColour TLCOLOUR_BLACK(0.0f, 0.0f, 0.0f);
struct tm startTime = { 0, 0, 12, 25, 11, 93 };
#define LIGHT_MAPPING   1
#define OBJECTSPACE_TRANSFORMED 2
#define MAXIMUM_SPLIT_NUM       30
#define EXPANSION           2.f

#define SimpleShader        "simple"
#define LayeredShader       "layered"
#define LayeredLightMapShader   "layeredlmap"
#define LightMapShader      "lightmap"

void CBVColor( tlTable<tlTriMeshIntersect *> &trimeshes, tlPrimGroup *prm, const tlTable<tlLight*> & lights, tlPhotonMap &photonmap,  tlTable<tlShader *>&shaders, Parameters *Param );
void CBVColor( tlBSPTree *tritree,  tlPrimGroup *prm, const tlTable<tlLight*> & lights, tlPhotonMap &photonmap, tlTable<tlShader *>&shaders, Parameters *Param );
tlTexture * CreateLightMap( tlPrimGroupMesh *parentMesh, tlPrimGroup *pgrm, int order, tlTable<tlPrimGroupMesh *> &meshes, tlTable<tlTriMeshIntersect *>&trimeshes, const tlPhotonMap *photonMap, tlTable<tlLight*>&lights,  tlTable<tlShader *> & shaders, tlTable<tlTexture *> &dumpedgrime,  bool bMergeGrime, bool bIntensityOnly, Parameters *Param  );
void AttachLightMapToShader( tlTexture *tex,  const char * shaderName, tlTable<tlShader *> &shaders, bool bMergeGrime );
tlShader* GetShader( const char * shaderName, tlTable<tlShader *> &shaders );
bool IsLightMapEnabled( const char * shaderName, tlTable<tlShader *> &shaders );
bool IsLightMapEnabled( tlShader *shader );
tlPrimGroupMesh * FindMeshByName( tlTable<tlPrimGroupMesh *>&meshes, const char *name );
void TransformNode(tlScenegraphNode* node, tlMatrix transform, tlTable<tlPrimGroupMesh *>&meshes,  tlTable<tlPrimGroupMesh *>&originalmeshes, SpaceType type );
const char * GetLightMapName( tlShader *shader );
void FindGrimeToMerge( tlTable< char *> &dumpedgrime, tlTable<tlShader *>&shaders, tlTable<tlPrimGroupMesh*>&meshes, Parameters *Param );
tlTexture * FindGrimeTexture( const char *shaderName, tlTable<tlShader *>&shaders, tlTable<tlTexture *> &dumpedgrime );
void ResetColor( tlPrimGroup *pgrp, tlColour clr );
void ConstructBSPTree( tlBSPTree &tritree, tlTable<tlTriangleIntersect *> &triangles );
tlTexture * CreateLightMap( tlPrimGroupMesh *parentMesh, tlPrimGroup *pgrm, int order, tlTable<tlPrimGroupMesh *> &meshes, tlBSPTree *tritree, const tlPhotonMap *photonMap, tlTable<tlLight*>&lights,  tlTable<tlShader *> & shaders, tlTable<tlTexture *> &dumpedgrime,  bool bMergeGrime, bool bIntensityOnly, Parameters *Param );
static bool IsLighting( const tlLight &light );
static bool IsLitMesh( const tlPrimGroupMesh & mesh );
static bool IsLightMappable( const tlPrimGroup &prm );
static void CombinePrimGroups( tlPrimGroup *dest, const tlPrimGroupMesh *source );
void ResetTime( );
void ReportError( LightError error, const char * primitiveName );
void PrintUsedTime( );
void FindLightmapBounds( tlBox *boundingBox, tlTable<tlPrimGroupMesh*> meshes, tlTable<tlShader *>shaders);
static bool OutputTexture( const char * name, const tlTable<tlShader *> &shaders, bool useTEX );
static void ForcePrelightMode( const tlPrimGroupMesh &mesh );

int du, dv;
float sDen;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    du = 16;
    dv = 16;

    if( Param->SampleDensity > FTINY )
        sDen = Param->SampleDensity;
    else
        sDen = -1;

    if( Param->DimensionU > 0 )
        du = Param->DimensionU;

    if( Param->DimensionV > 0 )
        dv = Param->DimensionV;

    if( Param->BPP != 4 && Param->BPP != 8 && Param->BPP != 24 )
    {
        printf("lightmap bit depth must be 4, 8 or 24\n");
        exit(-1);
    }

    if(Param->TargetCBVSet < 1 || Param->TargetCBVSet > tlVertex::MAX_VERT_COLOUR)
    {
        printf("Error: target CBV set must be between 1 and %d.\n", tlVertex::MAX_VERT_COLOUR);
        exit(-1);
    }

    //Reset the time for printint used time
    ResetTime( );

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

        if( Param->PhotonMapExclusive )
        {
            Param->PhotonMap = true;
        }

        int ch;
        tlTable<tlLight *> lights;
        tlTable<tlTriMeshIntersect *>trimeshes;
        tlPhotonMap *photonMap = NULL;
        tlTable<tlPrimGroupMesh *>meshes;                     //meshes with worldspace cord
        tlTable<tlPrimGroupMesh *>originalmeshes;             //meshes with object cord
        tlTable<tlShader *>shaders;
        tlTable<char *> dumpedtex;
        tlTable<tlTexture *> dumpedgrimetex;
        tlScenegraph *scene = NULL;
        tlTable<char *> dumpedgrime;
        tlTable<tlTriangleIntersect *>triangles;
        tlBSPTree tritree;
        tlInventory *inventory = new tlInventory;

        //collect all lights and gemoetries
        for(ch=0; ch < inchunk->SubChunkCount(); ch++){
            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            switch( sub->ID( ) ){
                case Pure3D::Light::LIGHT :
                {
                    tlLight* light = new tlLight(sub);
                    if( IsLighting( *light ) )
                    {
                        lights.Append(light);
                    }       
                    inventory->Store(light);
                }
                break;

                case Pure3D::Light::PHOTON_MAP:
                {
                    if( Param->PhotonMap )
                    {
                        photonMap = new tlPhotonMap( sub );
                    }
                }
                break;

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh *mesh = new tlPrimGroupMesh( sub );
                    
                    originalmeshes.Append( mesh );
                }
                break;

                case Pure3D::Shader::SHADER :
                {
                    tlShader *shader = new tlShader( sub );
                    shaders.Append( shader );

                    inventory->Store( shader );
                }
                break;

                case Pure3D::SceneGraph::SCENEGRAPH :
                {
                    if( scene ){
                        ReportError(  eMultiScene, NULL );
                        exit( 0 );
                    }
                    else
                    {
                        scene = new tlScenegraph( sub );
                        inventory->Store( scene );
                    }
                }
                break;

                case Pure3D::Texture::TEXTURE :
                {
                    inventory->Store( new tlTexture( sub ) );
                }
                break;


            }
        }

        // Quick exit - Only process this file if lit geometry exists.
        if( Param->GeoName.Count() != 0 || Param->ExcludeGeoName.Count() != 0 )
        {
            bool lit = false;
            
            for( int j = 0; j < originalmeshes.Count(); j++ )
            {
                if( IsLitMesh( *originalmeshes[j] ) )
                {
                    lit = true;
                    break;
                }
            }
            if( !lit )
            {
                // Clean up
                int j;
                for( j = 0; j < lights.Count( ); ++j )
                    delete lights[ j ];
                for( j = 0; j < shaders.Count( ); ++j )
                    delete shaders[ j ];
                for( j = 0; j < originalmeshes.Count( ); ++j )
                    delete originalmeshes[ j ];

                delete inchunk;
                delete scene;
                scene = NULL;

                // Go to next file
                break;
            }
        }
            
        if( Param->PhotonMap )
        {
            if( photonMap == NULL )
            {
                printf( "The pure 3D file, %s, contains no photon map.\n", Param->Files[ i ] );
                exit( -1 );
            }
            photonMap->SetMaxNumberSampled( Param->AreaSamplingMaxCount );
            photonMap->SetMaxRadiusSampled( Param->AreaSamplingRadius );
            photonMap->IgnorePrimary( !Param->PhotonMapExclusive );
        }

        //transform all meshes and lights to worldspace if scene
        //graph node exists
        if( scene ){
            tlMatrix matrix;
            matrix.IdentityMatrix( );
            TransformNode( scene->GetRoot( ), matrix, meshes, originalmeshes, eWorldSpace );
        }
        else{
            meshes = originalmeshes;
        }

        // Append the meshes to the inventory.
        int j;
        for( j = 0; j < meshes.Count(); j++ )
        {
            inventory->Store( meshes[j] );
        }
        inventory->ResolveReferences();
        
        tlProjectedLightmap *projLightmap = NULL;
        tlTexture *projTexture = NULL;

        // Force the prelight mode of the the shader if so requested.
        if( Param->ForcePrelightMode )
        {
            int meshIdx;
            for( meshIdx = 0; meshIdx < meshes.Count(); meshIdx++ )
            {
                ForcePrelightMode( *meshes[meshIdx] );
            }
        }


        // Set up the projection lightmap.
        if( Param->LightMapAll )
        {
            projLightmap = new tlProjectedLightmap;
            projLightmap->SetWidth( du );
            projLightmap->SetHeight( dv );
            projLightmap->SetWorldDensity( sDen );
            projLightmap->SetSuperSampling( Param->OverSample );
            projLightmap->UseColourTranslucency( Param->ColourTranslucency != 0 );
            
            // Add the meshes.
            int meshIdx;
            for( meshIdx = 0; meshIdx < meshes.Count(); meshIdx++ )
            {
                tlPrimGroupMesh *pgMesh = meshes[meshIdx];
                bool lightmapped  = IsLitMesh( *pgMesh );  // From command line directives.
                bool shadowCaster = pgMesh->CastShadow();

                int j;
                for( j = 0; j < pgMesh->NumPrimGroups(); j++)
                {
                    tlPrimGroup *prm = pgMesh->GetPrimGroup( j );
                    
                    if( lightmapped && IsLightMappable( *prm ) )
                    {
                        tlShader *shader = prm->GetShaderPtr();
                        if( shader == NULL )
                        {
                            printf("Warning: no shader attached to a primgroup in %s\n", pgMesh->GetName() );
                            continue;
                        }
                            
                        // Ensure the shader used by this primgroup was marked as lightmap prelight
                        if( IsLightMapEnabled( shader ) )
                        {
                            projLightmap->AddLightmapGeo( prm );
                        }
                    }
                    if( shadowCaster )
                    {
                        projLightmap->AddShadowGeo( prm );
                    }
                }
            }

            // Add the lights
            int lightIdx;
            for( lightIdx = 0; lightIdx < lights.Count(); lightIdx++ )
            {
                projLightmap->AddLight( lights[lightIdx] );
            }

            projTexture = projLightmap->GetTexture(); // This generates the actual projected lightmap.
            
            if(projTexture != NULL)
            {
                // Set the BPP as requested by command line options
                const bool USE_ALPHA = false;
                bool usePalette      = ( Param->BPP <= 8 );
                projTexture->Convert( Param->BPP, usePalette, USE_ALPHA, Param->Dither != 0);
                
                // Change the texture name if already used.
                const char *baseName = projTexture->GetName();
                char name[128];
                int textureNum = 0;
                tlSafeEntityCaster<tlTexture> caster;
                do
                {
                    sprintf( name, "%s_%d", baseName, textureNum );
                    textureNum++;
                } while( inventory->Find( caster, name ) != NULL );
                projTexture->SetName( name );
            }
        }

        //now we create the trimeshes group for calculating intersection
        //based on the meshes that have been tranformed to worldspace
        //Also, we find names of light maps which need to be recreated
        if( Param->LightMap || Param->RayCast || Param->LightMapAll ){
            for( int i = 0; i < meshes.Count( ); ++i ){
                tlTriMeshIntersect *trimesh = new tlTriMeshIntersect( *meshes[ i ] );
                trimeshes.Append( trimesh );
                
                int j;

                if( meshes[ i ]->CastShadow( ) ){
                    const tlTable<tlTriangle *> & tris  = trimesh->GetFaces( );
                    for( j = 0; j < tris.Count( ); ++j ){
                        tlTriangle * tri = (tlTriangle *)tris[ j ];
                        triangles.Append( dynamic_cast<tlTriangleIntersect * >(tri) );
                    }
                }

                if( Param->LightMap || Param->LightMapAll ){
                    tlPrimGroupMesh* pgMesh = meshes[ i ];

                    // Check command line args to see if this mesh should be lit.
                    if( !IsLitMesh( *pgMesh ) )
                    {
                        continue; 
                    }

                    //if we create light map for this mesh before, then we
                    //have to dump it, and create it again.
                    for( j = 0; j < shaders.Count( ); ++j ){
                        tlShader *shader = shaders[ j ];
                        if( IsLightMapEnabled( shader ) ){
                            for( int k = 0; k < pgMesh->NumPrimGroups( ); ++k ){
                                tlPrimGroup *prm = pgMesh->GetPrimGroup( k );

                                if( strcmp( prm->GetShader( ), shader->GetName( ) ) == 0 ){
                                    const char * name = GetLightMapName( shader );
                                    if( name && strcmp( name, "" ) != 0 ){
                                        char * tmp = strnew( name );
                                        dumpedtex.Append( tmp );
                                    }
                                    break;
                                }

                            }
                        }
                    }
                }
            }

            //construct the bsp tree
            ConstructBSPTree( tritree, triangles );
        }

        //Find all grime map that must be droped if MergeGrime is specified
        if( Param->LightMap && Param->MergeGrime ){
            FindGrimeToMerge( dumpedgrime, shaders, meshes, Param );          
        }

        //extract out all grime texture to be dumped
        for(ch=0; ch < inchunk->SubChunkCount(); ch++){
            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            switch( sub->ID( ) ){

                case Pure3D::Texture::TEXTURE:
                {
                    const char * name = sub->GetName( );

                    //search for dumped grime table
                    for( int i = 0; i < dumpedgrime.Count( ); ++i ){
                        char * tex = dumpedgrime[ i ];
                        if( strcmp( name, tex ) == 0 ){
                            tlTexture *grimetex = new tlTexture( sub );
                            dumpedgrimetex.Append(  grimetex );                            
                            break;
                        }
                    }
                }
                break;
            }
        }

/* HBW:DEBUG
   tlProjectedLightmap *projLightmap = NULL;
   if( Param->LightMapAll )
   {
   uniTexture = new UniTexture;
   // Find the bounds of the meshes to be lightmapped.
   FindLightmapBounds( &lightmapBounds, meshes, shaders );

   // Fill image

   printf(" bounded by (%f <= x <= %f ), (%f <= y <= %f), (%f <= z <= %f)\n",
   lightmapBounds.low.x, lightmapBounds.high.x, 
   lightmapBounds.low.y, lightmapBounds.high.y, 
   lightmapBounds.low.z, lightmapBounds.high.z );  
            
   // Create the single texture for all lightmapped prims.
   tlImage image(64, 64, 24);
   {
   // For now fill with dummy data.
   int x, y;
   int maxX = image.GetWidth() - 1;
   int maxY = image.GetHeight() - 1;
   for(x = 0; x <= maxX; x++)
   {
   for(y = 0; y <= maxY; y++)
   {
   tlColour c(((float)x)/maxX, 0.0f, ((float)y)/maxY);
   image.SetPixel(x, y, c);
   }
   }
   }
   image.SetName("TestImage");
   uniTexture = new tlTexture(image);
   uniTexture->SetName("TestTexture");
   }
*/
        //now processing light map to attach the texture to file
        //ahead of shader
        for( ch = 0; ch < meshes.Count( ); ++ch ){
            tlPrimGroupMesh* pgMesh = meshes[ ch ];

            // Check command line args to see if this mesh should be lit.
            if( !IsLitMesh( *pgMesh ) )
            {
                continue; 
            }

            int i;
            tlTexture  *lmtex       = NULL;          // The lightmap texture.
            tlPrimGroup allInOnePrm = tlPrimGroup(); // Shared primgroup for planar meshes
            int         allVtxNum   = 0;             // Vertex count of the shared primgroup

            // Test to see if all lightmaps for this primGroup can be combined into one texture.
            bool useSingleLightmap =  Param->LightMap && pgMesh->NumPrimGroups() > 1 &&
                pgMesh->IsInAPlane() && !( Param->LightMapAll );

            if( useSingleLightmap )
            {
                printf( "Create single lightmap for mesh %s\n", pgMesh->GetName() );

                // Combine all vertex information in the primgroup mesh into one primgroup.
                CombinePrimGroups( &allInOnePrm, pgMesh );    
               
                // Use this new primgroup to create a shared lightmap.
                lmtex = CreateLightMap( pgMesh, &allInOnePrm, 0, meshes, &tritree, photonMap, lights, shaders, dumpedgrimetex, Param->MergeGrime != 0, Param->GrayScaleLightMap != 0, Param );
            }

            for( i = 0; i < pgMesh->NumPrimGroups( ); ++i )
            {
                tlPrimGroup *prm = pgMesh->GetPrimGroup( i );

                if ( Param->Verbosity > 0 )
                {
                    printf("Processing primgroup \"%s\"\n", pgMesh->GetName());
                }

                tlShader *shader = prm->GetShaderPtr();

                if( prm->GetShaderPtr() == NULL )
                {
                    printf("Warning: no shader attached to a primgroup in %s\n", pgMesh->GetName() );
                    continue;
                }

                if( !IsLightMappable( *prm ) )
                {
                    continue;
                }

                //do light mapping
                if( Param->LightMap || Param->LightMapAll ){

                    //if the shader attached enables light mapping
                    if( IsLightMapEnabled( shader ) )
                    { 
                        if( Param->LightMapAll && projTexture != NULL )
                        {
                            lmtex = projTexture;

                            int uvNum;
                            tlVertex *destVert;
                            // UV index is zero if no previous texture exists, otherwise it's last available.
                            int destUVIdx = 0;
                            if(shader->GetTexturePtr() != NULL)
                            {
                                destUVIdx = (int)( prm->GetVertexType() & 15 ) - 1; // Dest UV channel.
                            }

                            int uvCount = prm->GetVertexList().Count();
                            for( uvNum = 0; uvNum < uvCount; uvNum++ )
                            {
                                destVert = prm->GetVertex( uvNum );
                                const tlPoint &coord = destVert->GetCoord();
                              
                                // tlPoint pos = coord - lightmapBounds.low;
                                // float maxDir = rmt::Max(lightmapBounds.Height(), rmt::Max(lightmapBounds.Width(), lightmapBounds.Length()));
                                // pos.Scale( 1.0f / maxDir );
                                destVert->SetUV( destUVIdx, projLightmap->UV( coord ) );

                                allVtxNum++;
                            }

                        }
                        else if( useSingleLightmap )
                        {
                            // Copy the UVs from the previously computed lightmap.
                            int uvNum;
                            tlVertex *destVert;                              
                            int destUVIdx = (int)( prm->GetVertexType() & 15 ) - 1; // Dest UV channel.
                            const tlVertex *srcVert;
                              
                            int uvCount = prm->GetVertexList().Count();
                            for( uvNum = 0; uvNum < uvCount; uvNum++ )
                            {
                                destVert = prm->GetVertex( uvNum );
                                srcVert  = allInOnePrm.GetVertex( allVtxNum );
                                destVert->SetUV( destUVIdx, srcVert->GetUV( 0 ) );

                                allVtxNum++;
                            }
                        }
                        else
                        {
                            lmtex = CreateLightMap( pgMesh, prm, i, meshes, &tritree, photonMap, lights, shaders, dumpedgrimetex, Param->MergeGrime != 0, Param->GrayScaleLightMap != 0, Param );
                        }
                        
                        if( lmtex != NULL )
                        {
                            AttachLightMapToShader( lmtex, prm->GetShader( ), shaders, Param->MergeGrime != 0 );
                        }

                        //take away normal and append a color channel
                        prm->SetVertexType( prm->GetVertexType( ) & ~PDDI_V_NORMAL  );
                        //no color channel, we append a white color to 
                        //all vertex
                        if( !( prm->GetVertexType( ) & PDDI_V_COLOUR ) ){
                            ResetColor( prm, tlColour( 255, 255, 255, 255 ) );
                            prm->SetVertexType( prm->GetVertexType( ) |  PDDI_V_COLOUR );
                        }

                        if( lmtex != NULL && !useSingleLightmap && !(Param->LightMapAll)){
                            outchunk->InsertSubChunk( lmtex->Chunk( ), 0 );
                            delete lmtex;
                        }
                    }
      
                }     
                if( Param->CBVColor ){

                    // Ensure the shader used by this primgroup was marked as CBV prelight
                    if( shader->GetIntParam( "PLMD" ) == 1 ||
                        shader->GetIntParam( "PLMD" ) == 3 )
                    {
                        unsigned colourMode = PDDI_V_COLOUR;
                        if(shader->GetIntParam( "MCBV" ) == 1)
                        {
                            colourMode = PDDI_V_COLOUR2 | PDDI_V_COLOUR_COUNT2;
                        }						
            
                        //CBVColor( trimeshes, prm, lights, *photonMap, shaders, Param );
                        CBVColor( &tritree, prm, lights, *photonMap, shaders, Param );

                        // Remove normals unless additional is to be done.
                        if(!Param->RetainNormals)
                        {
                            shader->SetIntParam( tlFourCC( "LIT" ), 0 );
                            shader->SetVertexNeeds( shader->VertexNeeds( ) & (~PDDI_V_NORMAL) );
                            prm->SetVertexType( prm->GetVertexType( ) & (~PDDI_V_NORMAL) );
                        }

                        // Add in colour mode.
                        shader->SetVertexNeeds( shader->VertexNeeds( ) | colourMode );
                        prm->SetVertexType( prm->GetVertexType( ) | colourMode );

                    }
                }
            }
            if( useSingleLightmap )
            {
                outchunk->InsertSubChunk( lmtex->Chunk( ), 0 );
                delete lmtex;
            }
        }

        if( Param->LightMapAll )
        {
            // Filter projected lightmap if requested.
            projLightmap->GetTexture()->GetImage( 0 )->Blur( Param->Filter );
            outchunk->InsertSubChunk( projLightmap->GetTexture()->Chunk(), 0);
        }

        //now we transform all meshes and lights back to local space
        if( scene ){
            tlMatrix matrix;
            matrix.IdentityMatrix( );
            TransformNode( scene->GetRoot( ), matrix, meshes, originalmeshes, eObjectSpace );
        }

        // go through all the sub-chunks of the input and
        // for each chunk we've processed, find its replacement
        //chunk from shaders, meshes, or textures and export the
        //replacement chunk
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //skip all mesh now
                case Pure3D::Mesh::MESH:
                {
                    bool meshIsFound = false;
                    tlPrimGroupMesh mesh( sub );

                    if(IsLitMesh(mesh))
                    {
                        const char *name = mesh.GetName( );
                        for( int i = 0; i < meshes.Count( ); ++i ){
                            if( strcmp( meshes[ i ]->GetName( ), name ) == 0 ){     //find the replacement mesh
                                //if there is a scene graph, only append the meshes 
                                //that has the same name and has been tranformed back to object space
                                if( ( scene && meshes[ i ]->GetMark( ) == OBJECTSPACE_TRANSFORMED ) || !scene ){
                                    
                                    //take away the normal channel for all meshes
                                    //if unlit is specified
                                    
                                    bool lightmapped = false;
                                    if( Param->Unlit != 0 ){
                                        for( int j = 0; j < meshes[ i ]->NumPrimGroups( ); ++j )
                                        {
                                            tlPrimGroup *primGroup = meshes[ i ]->GetPrimGroup( j );
                                            unsigned long type = primGroup->GetVertexType( );
                                            primGroup->SetVertexType(  type & (~PDDI_V_NORMAL) );
                                        }
                                    }
                                    // Look at first prim to see if this was lightmapped.
                                    tlShader *shader = meshes[ i ]->GetPrimGroup( 0 )->GetShaderPtr();
                                    if( shader == NULL )
                                    {
                                        printf("Warning: no shader attached to a primgroup in %s\n", meshes[ i ]->GetName() );
                                        lightmapped = false;
								}
                                    else
                                    {
	                                lightmapped = IsLightMapEnabled( shader );
                                    }
                                    
                                    if( !Param->RemoveNonLightmapped ||
                                        ( Param->RemoveNonLightmapped && lightmapped ) )
                                    {
                                        outchunk->AppendSubChunk( meshes[ i ]->Chunk( ) );
                                    }
                                    else
                                    {
                                        bool b = lightmapped;
                                    }
                                    meshIsFound = true;
                                    break;
                                }
                            }
                        }
                    }
                    // Be sure to output any mesh not processed.  ( ex. any mesh attatched to a skeleton )
                    if( !meshIsFound && !Param->RemoveNonLightmapped )
                    {
                        outchunk->AppendSubChunk( sub, FALSE );
                    }
                }
                break;

                case Pure3D::Light::LIGHT :
                    //do not append light to output file if asked to remove lights
                    if( !Param->RemoveLight && !Param->RemoveNonLightmapped )
                    {
                        if(!glob(&Param->RemoveLightsName, sub->GetName()))
                        {
                            outchunk->AppendSubChunk(sub,FALSE);
                        }
                    }
                    break;

                case P3D_LIGHT_GROUP :
                    //do not append light to output file if asked to remove lights
                    if( !Param->RemoveLight && !Param->RemoveNonLightmapped  )
                    {
                        tlLightGroupChunk16* lightGroup = dynamic_cast<tlLightGroupChunk16*>(sub);
                        char** lights = lightGroup->GetLights();
                        int numLights = lightGroup->GetNumLights();

                        for(int i = 0; i < numLights; i++)
                        {
                            if(glob(&Param->RemoveLightsName, lights[i]))
                            {
                                for(int j = i; j < numLights-1; j++)
                                {
                                    lights[j] = lights[j+1];
                                }
                                numLights--;
                            }
                        }

                        if(numLights != 0)
                        {
//                        lightGroup->SetLights(lights, numLights);
                            lightGroup->SetNumLights(numLights);
                            outchunk->AppendSubChunk(lightGroup,FALSE);
                        }
                    }
                    break;

                case Pure3D::Shader::SHADER :
                {
                    tlShader shader( sub );
                    const char *name = shader.GetName( );
                    for( int i = 0; i < shaders.Count( ); ++i ){
                        if( strcmp( shaders[ i ]->GetName( ), name ) == 0 ){   
                            bool lightmapped = IsLightMapEnabled( shaders[i] );

                            //find the replacement shader
                            //turn off "lit" flag if Unlit is specified
                            //then take away the normal channel;
                            if( Param->Unlit != 0 ){                            
                                shaders[ i ]->SetIntParam( tlFourCC( "LIT" ), 0 );
                                shaders[ i ]->SetVertexNeeds( shaders[ i ]->VertexNeeds( ) & (~PDDI_V_NORMAL) );
                            }

                            if( !Param->RemoveNonLightmapped ||
                                ( Param->RemoveNonLightmapped && lightmapped ) )
                            {
                                // BEGIN DEBUG
                                unsigned long ulA = tlFourCC("TTEX");
                                unsigned long ulB = tlFourCC("LMAP");
                                // END DEBUG
                                const char *c = shaders[i]->GetTextureParam(tlFourCC("TTEX"));
                                outchunk->AppendSubChunk( shaders[ i ]->Chunk( ) );
                            }
                            break;
                        }
                    }
                }
                break;

                case Pure3D::Texture::TEXTURE:
                {
                    //test if we need to output a texture chunk or not
                    const char * name = sub->GetName( );
                    bool droped = false;
                    int i;
                    for( i = 0; i < dumpedtex.Count( ); ++i ){
                        char * tex = dumpedtex[ i ];
                        if( strcmp( name, tex ) == 0 ){
                            droped = true;
                            break;
                        }
                    }

                    //search for dumped grime table
                    for( i = 0; i < dumpedgrime.Count( ); ++i ){
                        char * tex = dumpedgrime[ i ];
                        if( strcmp( name, tex ) == 0 ){
                            droped = true;
                            break;
                        }
                    }

                    // Search through all the shaders to see if this belongs
                    // to a lightmap shader.
                    bool lightmapped = OutputTexture( name, shaders, true );

                    if( !droped ){
                        if( !Param->RemoveNonLightmapped ||
                            ( Param->RemoveNonLightmapped && lightmapped ) )
                        {
                            outchunk->AppendSubChunk(sub,FALSE);
                        }
                    }
                }
                break;

                case Pure3D::SceneGraph::SCENEGRAPH:
                {
                    outchunk->AppendSubChunk(sub, FALSE);
                }
                break;

                default:

                    // this is not a chunk that we care about
                    // so simply copy it to the output wrapper chunk
                    // the optional parameter to AppendSubChunk
                    // indicates that we have merely copied a pointer
                    // so the destructor of outchunk should not
                    // destroy this sub-chunk as that duty will be
                    // taken care of by the destructor of inchunk
                    if( !Param->RemoveNonLightmapped )
                    {
                        outchunk->AppendSubChunk(sub,FALSE);
                    }
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

        bool writeHistory = (Param->WriteHistory != FALSE);
        if(writeHistory && Param->ConditionalHistory)
        {
            // If requested to use conditional history, only write out
            // history chunk if something has actually changed.
            if(*inchunk == *outchunk)
            {
                writeHistory = false;
            }
        }
        if(writeHistory)
        {
            // Put a history chunk at the begining of the output.  A
            // history chunk shows what version of the tool was run on
            // the file and with what command-line parameters.
            outchunk->InsertSubChunk(Param->HistoryChunk(), 0);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
//        delete inchunk;
//        delete outchunk;

        //delete all lights and meshes
        // for( i = 0; i < lights.Count( ); ++i )
        //   delete lights[ i ];

        // for( i = 0; i < meshes.Count( ); ++i )
        //   delete meshes[ i ];

        for( i = 0; i < trimeshes.Count( ); ++i )
            delete trimeshes[ i ];

        // for( i = 0; i < shaders.Count( ); ++i )
        //   delete shaders[ i ];

        for( i = 0; i < dumpedgrimetex.Count( ); ++i )
            delete dumpedgrimetex[ i ];

        for( i = 0; i < dumpedtex.Count( ); ++i )
            delete [] dumpedtex[ i ];

        for( i = 0; i < dumpedgrime.Count( ); ++i )
            delete [] dumpedgrime[ i ];


        if( scene ){
            // delete scene;
            // scene = NULL;

            //delete original meshes also
            for( i = 0; i < originalmeshes.Count( ); ++i )
                delete originalmeshes[ i ];
        }

        delete projLightmap;
        delete inventory;

    } // end of main for loop

    // Cleanup

    delete Param;

    //print used time
    PrintUsedTime( );

    return 0;
}

//---------------------------------------------------------------------------------
//      Light vertex
//---------------------------------------------------------------------------------
void CBVColor( tlBSPTree *tritree,  tlPrimGroup *prm, const tlTable<tlLight*> & lights, tlPhotonMap &photonmap, tlTable<tlShader *>&shaders, Parameters *Param )
{
    if( Param->Verbosity )
        printf( "CBV Coloring...\n" );
    
    const tlShader *shader = GetShader( prm->GetShader(), shaders );
    const bool useVertexColour = shader && ( shader->GetIntParam( "PLMD" ) == 3 ||
                                             shader->GetIntParam( "PLMD" ) == 4 );
    const bool useDiffuse = shader && shader->HasColourParam( "DIFF" );
    const tlColour materialDiffuseColour( useDiffuse ? shader->GetColourParam( "DIFF" ) : TLCOLOUR_WHITE );

    for( int j = 0; j < prm->GetVertexCount( ); ++j ){
        tlColour clr(TLCOLOUR_BLACK);
        tlVertex *pVertex = prm->GetVertex( j );
        const tlColour vertexColour( useVertexColour ? pVertex->GetColour( Param->TargetCBVSet - 1 ) : TLCOLOUR_WHITE );

        if( !Param->PhotonMap || photonmap.IsPrimaryIgnored() )
        {
            tlColour lightColour(TLCOLOUR_BLACK);

            for( int k = 0; k < lights.Count( ); ++k )
            {
                tlLight* light = lights[k];
                if(Param->RayCast)
                {
                    lightColour = lightColour + lights[ k ]->DiffuseLightShadow( pVertex->GetCoord( ), pVertex->GetNormal( ), tritree );
                }
                else
                {
                    lightColour = lightColour + lights[ k ]->DiffuseLight( pVertex->GetCoord( ), pVertex->GetNormal( ) );
                }
            }
            
            clr = materialDiffuseColour * lightColour;
            clr = clr * vertexColour;
        }

        if( Param->PhotonMap ){
            clr = clr + photonmap.Irradiance( pVertex->GetCoord( ), pVertex->GetNormal( ) );
        } 
        
        clr = clr * ::powf( 2.0f, Param->Exposure );          
        pVertex->SetColour( Clamp( clr ), Param->TargetCBVSet - 1 );

    }
}

//----------------------------------------------------------------------------------
//      Create light map for a primgroup
//----------------------------------------------------------------------------------
tlTexture * CreateLightMap( tlPrimGroupMesh *parentMesh, tlPrimGroup *pgrm, int order, tlTable<tlPrimGroupMesh *> &meshes, tlTable<tlTriMeshIntersect *>&trimeshes, const tlPhotonMap *photonMap, tlTable<tlLight*>&lights,  tlTable<tlShader *> & shaders, tlTable<tlTexture *> &dumpedgrime,  bool bMergeGrime, bool bIntensityOnly, Parameters *Param )
{
    char name[ 128 ];

    sprintf( name, "%s_%d_%s", parentMesh->GetName( ), order, "lightmap" );

    parentMesh->Mark( LIGHT_MAPPING );
    pgrm->Mark( LIGHT_MAPPING );

    tlTexture * grime = NULL;
    if( bMergeGrime ){
        grime = FindGrimeTexture( pgrm->GetShader( ), shaders, dumpedgrime );        
    }
        
    if( Param->Verbosity != 0 )
        printf( "Creating light map for primgroup: %s\n", parentMesh->GetName( ) );

    tlTexture *lmtex = pgrm->BuildLightMap( lights, meshes, trimeshes, photonMap, Param->Exposure, grime, Param->Filter,  du, dv, sDen, bIntensityOnly );
    if( lmtex == NULL )
    {
        printf( "Warning: Unable to create lightmap %s\n", name );
        return NULL;
    }

    lmtex->SetName( name );
    lmtex->GetImage( 0 )->SetName( name );

    // Set the BPP as requested by command line options
    const bool USE_ALPHA = false;
    bool usePalette      = ( Param->BPP <= 8 );
    lmtex->Convert( Param->BPP, usePalette, USE_ALPHA, Param->Dither != 0);            
 
    pgrm->Mark( 0 );
    parentMesh->Mark( 0 );

    return lmtex;
}

//----------------------------------------------------------------------------------
//      Create light map for a primgroup
//----------------------------------------------------------------------------------
tlTexture * CreateLightMap( tlPrimGroupMesh *parentMesh, tlPrimGroup *pgrm, int order, tlTable<tlPrimGroupMesh *> &meshes, tlBSPTree *tritree, const tlPhotonMap *photonMap, tlTable<tlLight*>&lights,  tlTable<tlShader *> & shaders, tlTable<tlTexture *> &dumpedgrime,  bool bMergeGrime, bool bIntensityOnly, Parameters *Param )
{
    char name[ 128 ];

    sprintf( name, "%s_%d_%s", parentMesh->GetName( ), order, "lightmap" );

    tlTexture * grime = NULL;
    if( bMergeGrime ){
        grime = FindGrimeTexture( pgrm->GetShader( ), shaders, dumpedgrime );        
    }
        
    if( Param->Verbosity != 0 )
        printf( "Creating light map for primgroup: %s\n", parentMesh->GetName( ) );

    tlTexture *lmtex = pgrm->BuildLightMap( lights, tritree, photonMap, Param->Exposure, grime, Param->Filter,  du, dv, sDen, bIntensityOnly );
    if( lmtex == NULL )
    {
        printf( "Warning: Unable to create lightmap %s\n", name );
        return NULL;
    }

    lmtex->SetName( name );
    lmtex->GetImage( 0 )->SetName( name );

    // Set the BPP as requested by command line options
    const bool USE_ALPHA = false;
    bool usePalette      = ( Param->BPP <= 8 );
    lmtex->Convert( Param->BPP, usePalette, USE_ALPHA, Param->Dither != 0);    

    return lmtex;
}

//----------------------------------------------------------------------------------
//          Attach a texture to a shader
//----------------------------------------------------------------------------------
void AttachLightMapToShader( tlTexture *tex,  const char * shaderName, tlTable<tlShader *> &shaders, bool bMergeGrime  )
{
    tlShader *shader = NULL;
    int i;
    for( i = 0; i < shaders.Count( ); ++i ){
        shader = shaders[ i ];
        if( strcmp( shader->GetName( ), shaderName ) == 0 )
            break;
    }

    if( !shader )
        return;
    
    const char *type = shader->GetShaderType( );

    if( strcmp( type, SimpleShader ) == 0 ){
        // If the simple shader has no texture, make the lightmap the only texture.
        if( strcmp( shader->GetTextureParam( "TEX" ), "" ) == 0 )
        {
            shader->SetIntParam( tlFourCC( "BLMD" ), 0 );
            shader->SetTextureParam( "TEX", tex->GetName() );
        }
        else
        {
            //turn a simple shader to lightmap shader
            shader->SetShaderType( "lightmap" );
            //set blending mode as modulate
            shader->SetIntParam( tlFourCC( "BLMD" ), 0 );
            shader->SetTextureParam( "LMAP", tex->GetName( ) );
        }
    }
    else if( strcmp( type, LayeredShader ) == 0 ){

        //for layered shader, we convert it to layeredlmap shader
        //if not merging to grime layer, otherwise, we
        //convert it to lightmap shader
        if( bMergeGrime ){
            //turn a simple shader to lightmap shader
            shader->SetShaderType( "lightmap" );
            shader->SetIntParam( tlFourCC( "BLMD" ), 0 );
            shader->SetTextureParam( tlFourCC("LMAP"), tex->GetName( ) );     
            
            //delete un-used param
            shader->DeleteTextureParam( tlFourCC( "TTEX" ) );
            shader->DeleteIntParam( tlFourCC( "TBLM" ) );

            //reset the vertex flag back to layered shader
            //for the PS2
            shader->SetVertexNeeds( 18 );         //NORMAL & 2 UV
            shader->SetVertexMask( -46 );
        }
        else{   //convert a layeredlmap shader
                            
            shader->SetShaderType( "layeredlmap" );        
            shader->SetTextureParam( tlFourCC("LMAP"), tex->GetName( ) );       
        }           
    }
    else if( strcmp( type, LightMapShader ) == 0 ){
        //keep it as a light map shader only change the light map texture
        shader->SetTextureParam( tlFourCC("LMAP"), tex->GetName( ) );
    }
    else if( strcmp( type, LayeredLightMapShader ) == 0 ){
        //keep it as a layered light map shader only change the light map texture
        shader->SetTextureParam( tlFourCC("LMAP"), tex->GetName( ) );
    }

    //turn off lighting for this shader
    shader->SetIntParam( tlFourCC( "LIT" ), 0 );
    unsigned long vertexNeeds = shader->VertexNeeds( );
    unsigned long vertexMasks = shader->VertexMask( );

    shader->SetVertexNeeds( ( vertexNeeds & ~PDDI_V_NORMAL ) | PDDI_V_COLOUR  );
    shader->SetVertexMask( vertexMasks  & ~PDDI_V_NORMAL );
}

//-------------------------------------------------------------------------------------
//      Find the shader matching the given name.
//-------------------------------------------------------------------------------------
tlShader* GetShader( const char * shaderName, tlTable<tlShader *> &shaders )
{
    tlShader *shader = NULL;
    for( int i = 0; i < shaders.Count( ); ++i ){
        tlShader *tmpshader = shaders[ i ];
        if( strcmp( tmpshader->GetName( ), shaderName ) == 0 ){
            shader = tmpshader;
            break;
        }
    }

    return shader;
}

//-------------------------------------------------------------------------------------
//      check if light mapping is turned on for a shader
//-------------------------------------------------------------------------------------
bool IsLightMapEnabled( const char * shaderName, tlTable<tlShader *> &shaders )
{
    tlShader *shader = NULL;
    for( int i = 0; i < shaders.Count( ); ++i ){
        tlShader *tmpshader = shaders[ i ];
        if( strcmp( tmpshader->GetName( ), shaderName ) == 0 ){
            shader = tmpshader;
            break;
        }
    }

    if( !shader )
        return false;

    return IsLightMapEnabled( shader );
}

//-------------------------------------------------------------------------------------
//      check if light mapping is turned on for a shader
//-------------------------------------------------------------------------------------
bool IsLightMapEnabled( tlShader *shader )
{

    const char *type = shader->GetShaderType( );

    //check for simple and layered only right now
    if( strcmp( type, SimpleShader ) == 0  ||  strcmp( type, LayeredShader ) == 0 
        || strcmp( type, LayeredLightMapShader ) == 0  ){
        if( shader->GetIntParam( "PLMD" ) == 2 ||
            shader->GetIntParam( "PLMD" ) == 4 )
            return true;
        else
            return false;
    }
    else if( strcmp( type, LightMapShader ) == 0 )
        return true;
    else
        //not working for other shaders at this time
        return false;
}
void TransformNode(tlScenegraphNode* node, tlMatrix transform, tlTable<tlPrimGroupMesh *>&meshes, tlTable<tlPrimGroupMesh *>&originalmeshes,  SpaceType type )
{
    tlScenegraphAttachment* attach = dynamic_cast<tlScenegraphAttachment*>(node);
    if(attach){
        printf("error : can;t handle attachment noides in scenegraph!\n");
        return;
    }

    tlScenegraphTransform* trans = dynamic_cast<tlScenegraphTransform*>(node);
    if(trans){
        transform = trans->GetTransform() * transform;      

    }

    tlScenegraphBranch* br = dynamic_cast<tlScenegraphBranch*>(node);
    if(br){
        for(int i = 0; i < br->GetChildCount(); i++)
        {
            TransformNode(br->GetChild(i), transform, meshes, originalmeshes, type);
        }
        return;
    }

    tlScenegraphDrawable* dr = dynamic_cast<tlScenegraphDrawable*>(node);
    if(dr){
        char* drawName = dr->GetDrawable();


        if( type == eWorldSpace ){             //transform from object to world space
            tlPrimGroupMesh* pgMesh = FindMeshByName( originalmeshes, drawName);
            if( pgMesh ){            
                tlPrimGroupMesh *mesh = new tlPrimGroupMesh( *pgMesh );

                mesh->Transform(transform);        //now mesh is in world space, append it to meshes
                meshes.Append( mesh );
            }
        }
        else{      //transform meshes back to object space
            tlPrimGroupMesh* pgMesh = FindMeshByName( meshes, drawName);    //search it in the meshes

            if( pgMesh && pgMesh->GetMark( ) != OBJECTSPACE_TRANSFORMED ){
                tlMatrix inverse = Inverse( transform );            
                pgMesh->Transform( inverse );
                pgMesh->Mark( OBJECTSPACE_TRANSFORMED  );
            }
        }

    }

    //tlScenegraphVisibility
    //tlScenegraphCamera
    //tlScenegraphLightGroup
}


tlPrimGroupMesh * FindMeshByName( tlTable<tlPrimGroupMesh *>&meshes, const char *name )
{
    for( int i = 0; i < meshes.Count( ); ++i ){
        if( strcmp( meshes[ i ]->GetName( ), name ) == 0  )
            return meshes[ i ];
    }

    return NULL;
}


bool OutputTexture( const char * name, const tlTable<tlShader *> &shaders, bool useTEX = false )
{
    for( int i = 0; i < shaders.Count( ); ++i ){
        tlShader *shader = shaders[ i ];

        //if light map enabled
        if( IsLightMapEnabled( shader ) )
        {
            //check if it is a light map of layered shader
            const char * lightmap = shader->GetTextureParam( tlFourCC( "TTEX" ) );
            if( lightmap && strcmp( name, lightmap ) == 0 )
                return true;
            
            lightmap = shader->GetTextureParam( tlFourCC( "LMAP" ) );
            if( lightmap && strcmp( name, lightmap ) == 0 )
                return true;

            if( useTEX )
            {
                const char * lightmap = shader->GetTextureParam( tlFourCC( "TEX" ) );
                if( lightmap && strcmp( name, lightmap ) == 0 )
                    return true;
            }
        }
    }

    return false;

}

const char * GetLightMapName( tlShader *shader )
{
    const char *type = shader->GetShaderType( );

    //check for simple and layered only right now
    if( IsLightMapEnabled( shader ) ){
        //layered shader and simple shader have no light map yet, even the
        //ISLM is turn on
        if( strcmp( type, LightMapShader ) == 0  || strcmp( type, LayeredLightMapShader ) == 0 )
            return shader->GetTextureParam( tlFourCC( "LMAP" ) );
        else
            return NULL;
    }
    else
        return NULL;
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

void FindGrimeToMerge( tlTable< char *> &dumpedgrime, tlTable<tlShader *>&shaders, tlTable<tlPrimGroupMesh*>&meshes, Parameters *Param )
{
    for( int i = 0; i < shaders.Count( ); ++i ){
        tlShader *shader = shaders[ i ];

        //check layered shader only
        if( strcmp( shader->GetShaderType( ), LayeredShader ) != 0 )
            continue;                

        const char *grime = shader->GetTextureParam( tlFourCC( "TTEX" ) );

        //if grime map is not specified, then continue
        if( grime == NULL || strcmp( grime, "" ) == 0 )
            continue;    

        if( IsLightMapEnabled( shader ) ){
            // If no include/exclude names are specfied, process as a whole.
            if( Param->GeoName.Count() == 0 && Param->ExcludeGeoName.Count() == 0 ){
                char * tmp = strnew( grime );
                dumpedgrime.Append( tmp  );
            }
            else{
                bool bDumped = false;
                for( int j = 0; j < meshes.Count( ); ++j ){
                    tlPrimGroupMesh* pgMesh = meshes[ j ];

                    // Check command line args to see if this mesh should be processed
                    if( IsLitMesh( *pgMesh ) )
                    {
                        continue; 
                    }

                    for( int k = 0; k < pgMesh->NumPrimGroups( ); ++k ){
                        tlPrimGroup *prm = pgMesh->GetPrimGroup( k );
              
                        if( strcmp( prm->GetShader( ), shader->GetName( ) ) == 0 ){
                            bDumped = true;
                            break;
                        }

                    }

                    if( bDumped )
                        break;
                }

                if( bDumped ){
                    char * tmp = strnew( grime );
                    dumpedgrime.Append( tmp );
                }

            }
        }
    }
}

tlTexture * FindGrimeTexture( const char *shaderName, tlTable<tlShader *>&shaders, tlTable<tlTexture *> &dumpedgrime )
{
    tlShader *shader = NULL;
    for( int i = 0; i < shaders.Count( ); ++i ){
        tlShader * tmp = shaders[ i ];

        if( strcmp( tmp->GetName( ), shaderName ) == 0 ){
            shader = tmp;
            break;
        }
    }

    assert( shader );

    const char * shaderType = shader->GetShaderType( );

    if( strcmp( shaderType, SimpleShader ) == 0  || strcmp( shaderType, LightMapShader ) == 0 )
        return NULL;

    const char * grime = shader->GetTextureParam( "TTEX" );

    if( grime == NULL )
        return NULL;

    if( strcmp( "", grime ) == 0 )
        return NULL;

    for( i = 0; i < dumpedgrime.Count( ); ++i ){
        tlTexture * tex = dumpedgrime[ i ];

        if( strcmp( tex->GetName( ), grime ) ==  0 ){
            return tex;
        }
    }

    return NULL;
}
        
void ResetColor( tlPrimGroup *pgrp, tlColour clr )
{
    for( int i = 0; i < pgrp->GetVertexCount( ); ++i ){
        tlVertex * vertex = pgrp->GetVertex( i );
        //reset color of vertex to white
        vertex->SetColour( clr, Param->TargetCBVSet - 1);
    }
}
    

void ConstructBSPTree( tlBSPTree &tritree, tlTable<tlTriangleIntersect *> &triangles )
{

    tlBox box;
    box.Invalidate();

    for( int i = 0; i < triangles.Count( ); ++i ){
        tlTriangleIntersect *tri = triangles[ i ];

        box.AddPoint( tri->GetVertex( 0 )->GetCoord( ) );
        box.AddPoint( tri->GetVertex( 1 )->GetCoord( ) );
        box.AddPoint( tri->GetVertex( 2 )->GetCoord( ) );
    }

    if( box.high.x == box.low.x ){
        box.high.x += EXPANSION;
        box.low.x -= EXPANSION;
    }
    else if( box.high.y == box.low.y ){
        box.high.y += EXPANSION;
        box.low.y -= EXPANSION;
    }
    else if( box.high.z == box.low.z ){
        box.high.z += EXPANSION;
        box.low.z -= EXPANSION;
    }

    printf("Begin constructing BSP tree...\n" );        

    tlPoint p;
     
    p.x = box.Length( )/MAXIMUM_SPLIT_NUM;
    p.y = box.Width( )/MAXIMUM_SPLIT_NUM;
    p.z= box.Height( )/MAXIMUM_SPLIT_NUM;
    tlBSPTreeNode * node = tritree.Construct( triangles, box, p );

    tritree.SetRoot( node );
    printf("End constructing BSP tree...\n" );
}

// Create a primgroup combining all the geometry from a primgroup mesh.
static void CombinePrimGroups( tlPrimGroup *dest, const tlPrimGroupMesh *source )
{
    int destVtxNum = 0;
    
    dest->SetVertexCount( source->NumVertices() );

    int grpNum;
    for( grpNum = 0; grpNum < source->NumPrimGroups(); grpNum++ )
    {
        tlPrimGroup *prm = source->GetPrimGroup( grpNum );
        
        //ignore any primgroup having no normal chunk
        if( !( prm->GetVertexType( ) & PDDI_V_NORMAL ) )
        {
            continue;
        }
        
        int vtxNum;
        int vtxCount = prm->GetVertexList().Count();
        for( vtxNum = 0; vtxNum < vtxCount; vtxNum++ )
        {
            dest->SetVertex( destVtxNum, prm->GetVertex( vtxNum ) );
            destVtxNum++;
        }
    }
}

// Test to see whether or not a light contributes to map - as directed
// by command line specifications.
static bool IsLighting( const tlLight &light )
{
    bool lighting = true;

    // Are include light names specified? (-k option)
    if( Param->LightName.Count() > 0 )
    {
        if( glob( &Param->LightName, light.GetName() ) == FALSE )
        {
            // This is not one of the lights named for inclusion.
            lighting = false;
        }
    }
    // Are exclude mesh names specified? (-K option)
    if( Param->ExcludeLightName.Count() > 0 )
    {
        if( glob( &Param->ExcludeLightName, light.GetName() ) == TRUE )
        {
            // This is one of the lights named for exclusion.
            lighting = false;
        }
    }

    return lighting;
}

// Test to see whether or not a mesh should be lit - as directed
// by command line specifications.
static bool IsLitMesh( const tlPrimGroupMesh & mesh )
{
    bool lit = true;

    // Are include mesh names specified? (-g option)
    if( Param->GeoName.Count() > 0 )
    {
        if( glob( &Param->GeoName, mesh.GetName() ) == FALSE )
        {
            // This is not one of the meshes named for inclusion.
            lit = false;
        }
    }
    // Are exclude mesh names specified? (-G option)
    if( Param->ExcludeGeoName.Count() > 0 )
    {
        if( glob( &Param->ExcludeGeoName, mesh.GetName() ) == TRUE )
        {
            // This is one of the meshes named for exclusion.
            lit = false;
        }
    }

    return lit;
}

// Test to see whether or not a mesh should be lit - as directed
// by command line specifications.
static bool IsLightMappable( const tlPrimGroup &prm )
{
    bool lightMappable = true;

    tlShader *shader = prm.GetShaderPtr();

    // The primgroup must have a normal chunk
    if( !( prm.GetVertexType( ) & PDDI_V_NORMAL ) )
    {
        lightMappable = false;
    }

    if( shader && shader->GetIntParam( "LIT" ) == 1 )
    {
        // Current runtime doesn't support dynamically lit prelight objects.
        lightMappable = false; 
    }

    return lightMappable;
}

void ReportError( LightError error, const char * primitiveName )
{
    switch( error ){
        case eMultiScene:
            printf("Error: There are multiple scenegraphs existing in this arts file. p3dlight can't handle it correctly!\n" );
            break;

        case eNoNormalLightmap:
            printf("Error: primitive %s does not have normal channel. Light map won't be created!\n" );
            break;
    }
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

void FindLightmapBounds( tlBox *boundingBox, tlTable<tlPrimGroupMesh*> meshes, tlTable<tlShader *>shaders)
{
    boundingBox->Invalidate();
    int ch;
    
    printf("Computing bounds of lightmap\n");
    for( ch = 0; ch < meshes.Count( ); ++ch ){
        tlPrimGroupMesh* pgMesh = meshes[ ch ];
        
        // Check command line args to see if this mesh should be lit.
        if( !IsLitMesh( *pgMesh ) )
        {
            continue; 
        }
        
        int i;
        for( i = 0; i < pgMesh->NumPrimGroups( ); ++i )
        {
            tlPrimGroup *prm = pgMesh->GetPrimGroup( i );
            
            if( !IsLightMappable( *prm ) )
            {
                continue;
            }

            if( !IsLightMapEnabled( prm->GetShaderPtr() ) )
            {
                continue;
            }
            
            int j;
            for( j = prm->GetVertexCount() - 1; j >= 0; j-- )
            {
                boundingBox->AddPoint( prm->GetVertex( j )->GetCoord() );
            }
        }
    }
}

// Force the prelight mode (lightmap or CBV) of the the shader if so requested.
void ForcePrelightMode( const tlPrimGroupMesh &mesh )
{
    // Check this mesh against named geo.
    if( IsLitMesh( mesh ) )
    {
        int primIdx;
        for( primIdx = 0; primIdx < mesh.NumPrimGroups(); primIdx++)
        {
            tlPrimGroup *prm = mesh.GetPrimGroup( primIdx );
            
            if( IsLightMappable( *prm ) )
            {
                tlShader *shader = prm->GetShaderPtr();
                assert(shader != NULL);
                
                int plmd = shader->GetIntParam( "PLMD" );
                
                if( Param->LightMap || Param->LightMapAll )
                {
                    if( plmd == 1 )
                    {
                        plmd = 2;
                        shader->SetIntParam( "PLMD", plmd );
                    }
                    else if( plmd == 3 )
                    {
                        plmd = 4;
                        shader->SetIntParam( "PLMD", plmd );
                    }
                }
                else if( Param->CBVColor )
                {
                    if( plmd == 2 )
                    {
                        plmd = 1;
                        shader->SetIntParam( "PLMD", plmd );
                    }
                    else if( plmd == 4 )
                    {
                        plmd = 3;
                        shader->SetIntParam( "PLMD", plmd );
                    }
                }
            }
        }
    }
}

