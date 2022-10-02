/*===========================================================================
    File: main.cpp 

    This tool wraps all appropriate chunks in their SRR2 equivalents


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

//Required by Simpsons SRR2
#include <tlMeshChunk.hpp>
#include <tlCollisionObjectChunk.hpp>
#include <tlIntersectDSGChunk.hpp>
#include <tlWorldSphereDSGChunk.hpp>
#include <tlGameAttrChunk.hpp>
#include <tlTypes.hpp>
#include <../../../../../code/constants/srrchunks.h>
#include <../../../../../libs/pure3d/tools/commandline/p3dgendsg/Culling/ReserveArray.h>
#include <map>

const char* TERRAIN_TYPE_NAME = "TerrainType";

Parameters* Param;

void CalcIntesectFields
( 
   ReserveArray<unsigned long int>& irTriIndices,
   ReserveArray<tlPoint>&       irTriPts, 
   ReserveArray<tlPoint>&       orTriNorms, 
   ReserveArray<tlPoint>&       orTriCentroids, 
   ReserveArray<float>&             orTriRadius 
);

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

	std::map<TLUID, unsigned long> terrainMap;

    tlDataChunk::RegisterDefaultChunks();

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
        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

        int ch;

        assert(!(Param->WorldSphere&&Param->Intersects));

        if(Param->WorldSphere)
        {
            tlWorldSphereDSGChunk* pWSChunk = new tlWorldSphereDSGChunk();
            pWSChunk->SetNumMeshes(0);
			pWSChunk->SetNumBillBoardQuads(0);
            // go through all the sub-chunks of the input and
            // process the ones you care about
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk

                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                // look at the id of the subchunk to decide if we 
                // want to do something with it or not
                switch(sub->ID())
                {
				case SRR2::ChunkID::LENS_FLARE_DSG:
					{
						pWSChunk->AppendSubChunk(sub, FALSE);
					}
					break;
                case Pure3D::Mesh::MESH:
                    {
                        pWSChunk->AppendSubChunk(sub,FALSE);
                        pWSChunk->SetNumMeshes(pWSChunk->GetNumMeshes()+1);
                    }
                    break;
				case Pure3D::Animation::AnimationData::ANIMATION:
					pWSChunk->AppendSubChunk(sub,FALSE);
					break;
				case P3D_SKELETON:
					pWSChunk->AppendSubChunk(sub,FALSE);
					break;
				case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
					pWSChunk->AppendSubChunk(sub,FALSE);
					break;

                case P3D_MULTI_CONTROLLER:
                    {
                        pWSChunk->AppendSubChunk(sub,FALSE);
                        pWSChunk->SetName(sub->GetName());
                    }
                    break;
				case P3D_COMPOSITE_DRAWABLE:
					{
						pWSChunk->AppendSubChunk(sub,FALSE);
					}
					break;	
				case Pure3D::BillboardObject::QUAD_GROUP:
					{
						pWSChunk->AppendSubChunk(sub,FALSE);
	                    pWSChunk->SetNumBillBoardQuads(pWSChunk->GetNumBillBoardQuads()+1);
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
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }
            }

            outchunk->AppendSubChunk(pWSChunk,TRUE);
        }
        else //WorldSphere == False
        {
			// First pass, look for shaders and their terrain properties.
			for( ch = 0; ch < inchunk->SubChunkCount(); ++ch )
			{
				tlDataChunk* sub = inchunk->GetSubChunk( ch );
				if( sub->ID() == Pure3D::GameAttr::GAME_ATTR )
				{
					tlGameAttrChunk* attr = static_cast<tlGameAttrChunk*>( sub );
					for( int attrCh = 0; attrCh < attr->SubChunkCount(); ++attrCh )
					{
						tlDataChunk* subAttr = attr->GetSubChunk( attrCh );
						if( subAttr->ID() == Pure3D::GameAttr::INT_PARAM )
						{
							tlGameAttrIntParamChunk* intParm = static_cast<tlGameAttrIntParamChunk*>( subAttr );
							if( strcmp( intParm->GetParamName(), TERRAIN_TYPE_NAME ) == 0 )
							{
								// Add new.
								terrainMap[ tlEntity::MakeUID( attr->GetName() ) ] = intParm->GetValue();
							}
						}
					}
				}
			}
            // go through all the sub-chunks of the input and
            // process the ones you care about
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk

                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                // look at the id of the subchunk to decide if we 
                // want to do something with it or not
                switch(sub->ID())
                {
                    //
                case Pure3D::Mesh::MESH:
                    {
                        if(Param->Intersects)
                        {
                           int i;
                           tlPrimGroupMesh* pPGMesh = new tlPrimGroupMesh();
                           pPGMesh->LoadFromChunk(sub);
                           tlPrimGroup* pPG;
                           bool addTerrainTypes = false;

                           int j;
                           int totalIndices = 0;
                           int totalVertices = 0;
                           for( j = 0; j < pPGMesh->NumPrimGroups(); ++j )
                           {
                               pPG = pPGMesh->GetPrimGroup( j );
                               pPG->Index();
                               totalIndices += pPG->GetIndexCount();
                               totalVertices += pPG->GetVertexCount();
                           }

                           ReserveArray<unsigned long> indexList;
                           ReserveArray<tlPoint>       vertexList;
                           ReserveArray<tlPoint>       centroidList;
                           ReserveArray<tlPoint>       normList;
                           ReserveArray<float>         radiusList;
						   ReserveArray<unsigned char> terrainTypes;

                           indexList.Reserve( totalIndices ); 
                           indexList.Allocate();
                           vertexList.Reserve( totalVertices );                       
                           vertexList.Allocate();
							
						   int indexOffset = 0;
                           for( j = 0; j < pPGMesh->NumPrimGroups(); ++j )
                           {
                               pPG = pPGMesh->GetPrimGroup( j );
							   pPG->Index();
                               tlTable<unsigned long int>&  rIndexList  = pPG->GetIndexList();
                               tlTable<tlVertex*>&          rVertexList = pPG->GetVertexList();
                               for( i = 0; i < rIndexList.Count(); ++i )
                               {
								  unsigned long int index = rIndexList[ i ] + indexOffset;
                                  indexList.Add( index );
                               }
                               for( i = 0; i < rVertexList.Count(); ++i )
                               {
                                   tlPoint temp;
                                   temp.x = rVertexList[ i ]->GetCoord().x;
                                   temp.y = rVertexList[ i ]->GetCoord().y;
                                   temp.z = rVertexList[ i ]->GetCoord().z;
                                   vertexList.Add( temp );
                               }
							   indexOffset += pPG->GetVertexCount();
                           }

                           centroidList.Allocate( indexList.mSize / 3 );
                           normList.Allocate( indexList.mSize / 3 );
                           radiusList.Allocate( indexList.mSize / 3 );

                           terrainTypes.Reserve( indexList.mSize / 3 );
						   terrainTypes.Allocate();

                           // Fill the terrain types.
                           for( j = 0; j < pPGMesh->NumPrimGroups(); ++j )
                           {
                               pPG = pPGMesh->GetPrimGroup( j );
                               TLUID materialID = tlEntity::MakeUID( pPG->GetMaterial() );
                               unsigned long terrainType = 0;
                               std::map<TLUID, unsigned long>::iterator cur = terrainMap.find( materialID );
                               if( cur != terrainMap.end() )
                               {
                                   terrainType = terrainMap[ materialID ];
                                   if( terrainType != 0 )
                                   {
                                       addTerrainTypes = true;
                                   }
                               }
							   unsigned char temp = terrainType & 0xFF;
							   // Extract the 31st bit (Maya couldn't put the flag into the 32nd where
							   //you'd expect it to be) and put it into the 8th bit.
							   temp |= ( terrainType & ( 1 << 30 ) ) >> 23;
							   
                               for( int k = 0; k < ( pPG->GetIndexCount() / 3 ); ++k )
                               {
                                   terrainTypes.Add( temp );
                               }
                           }

                           CalcIntesectFields( indexList, vertexList, normList, centroidList, radiusList);

                           tlIntersectDSGChunk* pIDSG = new tlIntersectDSGChunk();

                           pIDSG->SetPositions( vertexList.mpData,   vertexList.mUseSize);
                           //pIDSG->SetCentroids( centroidList.mpData, centroidList.mUseSize);
                           pIDSG->SetIndices(   indexList.mpData,    indexList.mUseSize);
                           pIDSG->SetNormals(   normList.mpData,     normList.mUseSize);
                           //pIDSG->SetRadii(     radiusList.mpData,   radiusList.mUseSize);

                           pIDSG->SetNumPositions( vertexList.mUseSize);
                           //pIDSG->SetNumCentroids( centroidList.mUseSize);
                           pIDSG->SetNumIndices(   indexList.mUseSize);
                           pIDSG->SetNumNormals(   normList.mUseSize);
                           //pIDSG->SetNumRadii(     radiusList.mUseSize);

                           if( addTerrainTypes )
                           {
                               tlTerrainTypeChunk* terrainTypeChunk = new tlTerrainTypeChunk();
                               if( terrainTypeChunk == 0 )
                               {
                                   printf( "Unable to allocate Terrain Type Chunk!\n" );
                                   exit( -1 );
                               }
                               terrainTypeChunk->SetNumTypes( terrainTypes.mUseSize );
                               terrainTypeChunk->SetTypes( terrainTypes.mpData, terrainTypes.mUseSize );
                               terrainTypeChunk->SetVersion( 0 );
                               pIDSG->AppendSubChunk( terrainTypeChunk );
                           }

                           for(i=((tlMeshChunk*)sub)->SubChunkCount()-1; i>-1; i--)
                           {
                               if( ((tlMeshChunk*)sub)->GetSubChunk(i)->ID() == Pure3D::Mesh::BOX ||
                                   ((tlMeshChunk*)sub)->GetSubChunk(i)->ID() == Pure3D::Mesh::SPHERE 
                                   )
                               {
                                   pIDSG->AppendSubChunk(sub->GetSubChunk(i),FALSE);
                               }
                           }

                           outchunk->AppendSubChunk(pIDSG,TRUE);
                           delete pPGMesh;
                        }
                        else
                        {
                           tlEntityDSGChunk* pEntityDSG = new tlEntityDSGChunk();
                           pEntityDSG->AppendSubChunk(sub,FALSE);
                    
                           pEntityDSG->SetName(sub->GetName());
                           pEntityDSG->SetVersion(((tlMeshChunk*)sub)->GetVersion());

                           outchunk->AppendSubChunk(pEntityDSG);//,FALSE);
                           //delete pEntityDSG;
                        }
                    }
                    break;

                case Simulation::Collision::OBJECT:
                    {
                        tlStaticPhysDSGChunk* pStaticPhysDSG = new tlStaticPhysDSGChunk();
                        pStaticPhysDSG->AppendSubChunk(sub,FALSE);
                    
                        pStaticPhysDSG->SetName(sub->GetName());
                        pStaticPhysDSG->SetVersion(((tlCollisionObjectChunk*)sub)->GetVersion());

                        outchunk->AppendSubChunk(pStaticPhysDSG);//,FALSE);
                        //delete pStaticPhysDSG;
                    }
                    break;
                
                case SRR2::ChunkID::FENCELINE:
                   {
                       for(int i=0; i<sub->SubChunkCount(); i++)
                       {
                           tlFenceDSGChunk* pFenceDSG = new tlFenceDSGChunk();

                           pFenceDSG->AppendSubChunk(sub->GetSubChunk(i),FALSE);
                           outchunk->AppendSubChunk(pFenceDSG);//,FALSE);
                       }
                  
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
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }
            }
        }//End of WorldSphere == FALSE

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
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

void CalcIntesectFields
( 
   ReserveArray<unsigned long int>& irTriIndices, 
   ReserveArray<tlPoint>&       irTriPts, 
   ReserveArray<tlPoint>&       orTriNorms, 
   ReserveArray<tlPoint>&       orTriCentroids, 
   ReserveArray<float>&             orTriRadius 
)
{
   rmt::Vector tmpA, tmpB;
   rmt::Vector *pPt0, *pPt1, *pPt2;

   if(irTriIndices.mUseSize > 0) //Indexed Geometry
   {
      orTriNorms.AddUse(    irTriIndices.mUseSize/3);
      orTriCentroids.AddUse(irTriIndices.mUseSize/3);
      orTriRadius.AddUse(   irTriIndices.mUseSize/3);

      for( int i=0; i<irTriIndices.mUseSize; i+=3 )
      {
         pPt0 = &irTriPts[irTriIndices[i]];
         pPt1 = &irTriPts[irTriIndices[i+1]];
         pPt2 = &irTriPts[irTriIndices[i+2]];

         tmpA.Sub( *pPt1, *pPt0 );
         tmpB.Sub( *pPt2, *pPt0 );

         orTriNorms[i/3].CrossProduct( tmpA, tmpB );
         orTriNorms[i/3].Normalize();

         tmpA.Add( *pPt0, *pPt1);
         tmpA.Add( *pPt2 );
         tmpA.Scale( 0.33333333f );

         orTriCentroids[i/3] = tmpA;

         tmpA.Sub( *pPt2, tmpA ); 
         tmpB.Sub( *pPt1, orTriCentroids[i/3] ); 

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         tmpB.Sub( *pPt0, orTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         orTriRadius[i/3] = tmpA.Magnitude();
      }
   }
   else //De-indexed Geometry
   {
      orTriNorms.AddUse(    irTriPts.mUseSize/3);
      orTriCentroids.AddUse(irTriPts.mUseSize/3);
      orTriRadius.AddUse(   irTriPts.mUseSize/3);

      for( int i=0; i < irTriPts.mUseSize; i += 3 )
      {
         pPt0 = &irTriPts[i];
         pPt1 = &irTriPts[i+1];
         pPt2 = &irTriPts[i+2];

         tmpA.Sub( *pPt1, *pPt0 );
         tmpB.Sub( *pPt2, *pPt0 );

         orTriNorms[i/3].CrossProduct( tmpA, tmpB );
         orTriNorms[i/3].Normalize();

         tmpA.Add( *pPt0, *pPt1);
         tmpA.Add( *pPt2 );
         tmpA.Scale( 0.33333333f );

         orTriCentroids[i/3] = tmpA;

         tmpA.Sub( *pPt2, tmpA ); 
         tmpB.Sub( *pPt1, orTriCentroids[i/3] ); 

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         tmpB.Sub( *pPt0, orTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         orTriRadius[i/3] = tmpA.Magnitude();         
      }
   }
}

