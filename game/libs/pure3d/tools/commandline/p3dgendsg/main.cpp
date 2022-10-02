/*===========================================================================
    File: main.cpp 

    This tool generates a dsg (d-scene graph) from an input file


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

#include <../../../../../code/constants/srrchunks.h>
#include "Culling/SpatialTreeFactory.h"
#include "Culling/Bounds.h"
#include "Culling/Vector3f.h"

#include <tlCollisionObject.hpp>

void VerifyBoundsAcceptable( Bounds3f& irBounds, float iAcceptableExtent, const char* ipName );
void ConvertMatrix(tlMatrix& irMat, rmt::Matrix& orMat);
float ToZero(tlBox box);
bool ToZeroCheck( tlDataChunk* ipSub, tlBox& irBBox );

static bool sCrashNow;

Parameters* Param;

int main(int argc, char* argv[])
{
    sCrashNow = false;
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    // for each file on the command-line, do the following:
    for(int CurFile = 0; CurFile < Param->Files.Count(); CurFile++) 
    {
        tlInventory* pInventory = new tlInventory;

        if ( Param->Verbosity > 0 )
        {
            printf("Processing file '%s'\n", Param->Files[ CurFile ]);
        }
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ CurFile ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ CurFile ]);
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
        // go through all the sub-chunks of the input and
        // process the ones you care about

        Bounds3f WorldBounds;
        tlBox BBox;
        SpatialTreeFactory StaticTF;
        SpatialTree* pStaticTree;
        ReserveArray<BoxPts> EntityBoxes,StaticPhysBoxes,IntersectBoxes,
                             FenceBoxes,DynaPhysBoxes,RoadBoxes,PathBoxes,AnimBoxes;
        BoxPts BBoxSP;

        rmt::Vector OffsetVector(0.01f,0.01f,0.01f);

        Vector3f TODO_GRANULARITY( 20.0f, 10000.0f, 20.0f );


        StaticTF.Reset( (inchunk->SubChunkCount()+1000) *2 );
        
        AnimBoxes.Allocate(       (inchunk->SubChunkCount()+1000) *2 );
        EntityBoxes.Allocate(       (inchunk->SubChunkCount()+1000) *2 );
        StaticPhysBoxes.Allocate(   (inchunk->SubChunkCount()+1000) *2 );
        IntersectBoxes.Allocate(    (inchunk->SubChunkCount()+1000) *2 );
        FenceBoxes.Allocate(        (inchunk->SubChunkCount()+1000) *2 );
		DynaPhysBoxes.Allocate(		(inchunk->SubChunkCount()+1000) *2 );
        RoadBoxes.Allocate(         (inchunk->SubChunkCount()+1000) *2  );
        PathBoxes.Allocate(         (inchunk->SubChunkCount()+1000) *2  );

        WorldBounds.mMin.SetTo( Vector3f(0.0f, 0.0f, 0.0f) ); WorldBounds.mMax.SetTo( Vector3f(0.0f, 0.0f, 0.0f) ); 


        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                //
                case Pure3D::BillboardObject::QUAD_GROUP:
                {
                    tlBillboardQuadGroupChunk* pBQuads = (tlBillboardQuadGroupChunk*)sub;

                    int numSubChunks = pBQuads->GetNumQuads();
                    tlBillboardQuadChunk* pQuad;
                    bool firstQuad=true;

                    for(int j=numSubChunks-1; j>-1; j--)
                    {
                        if(pBQuads->GetSubChunk(j)->ID() == Pure3D::BillboardObject::QUAD)
                        {    
                            pQuad = (tlBillboardQuadChunk*)pBQuads->GetSubChunk(j);

                            Vector3f radius(pQuad->Width(),pQuad->Height(),pQuad->Distance());
                            Vector3f translation(pQuad->Translation()); 
                            float len = radius.Length();

                            BoxPts tempBox;

                            //
                            // Copy & paste/paraphrase from known buggy version in  atg 1.7 (?) end of november 2002
                            //
                            switch(pQuad->BillboardMode())
                            {
                                case p3dBillboardConstants::BillboardMode::NO_AXIS:
                                {
                                    tempBox.mBounds.mMax = radius;
                                    tempBox.mBounds.mMin = radius;
                                    radius.Scale(-1.0f,-1.0f,1.0f); 
                                    tempBox.mBounds.Accumulate( radius );
                                    break;
                                }
                                case p3dBillboardConstants::BillboardMode::ALL_AXIS:
                                {
                                    tempBox.mBounds.mMax.Set( len,len,len );
                                    tempBox.mBounds.mMin.Set( len,len,len );
                                    tempBox.mBounds.Accumulate( -len,-len,-len );
                                    break;
                                }
                                case p3dBillboardConstants::BillboardMode::X_AXIS:
                                {
                                    tempBox.mBounds.mMax.Set( radius.x,len,len );
                                    tempBox.mBounds.mMin.Set( radius.x,len,len );
                                    tempBox.mBounds.Accumulate( -radius.x,-len,-len );
                                    break;
                                }
                                case p3dBillboardConstants::BillboardMode::Y_AXIS:
                                {
                                    tempBox.mBounds.mMax.Set( len,radius.y,len );
                                    tempBox.mBounds.mMin.Set( len,radius.y,len );
                                    tempBox.mBounds.Accumulate( -len,-radius.y,-len );
                                    break;
                                }
                                default:
                                {
                                    tempBox.mBounds.mMax.Set( len,len,len );
                                    tempBox.mBounds.mMin.Set( len,len,len );
                                    tempBox.mBounds.Accumulate( -len,-len,-len );
                                    break;
                                }
                            }
                            tempBox.mBounds.mMin.Add(translation);
                            tempBox.mBounds.mMax.Add(translation);

                            if(firstQuad)
                            {
                                firstQuad=false;
                                BBoxSP.mBounds.mMin = tempBox.mBounds.mMin;
                                BBoxSP.mBounds.mMax = tempBox.mBounds.mMax;
                            }
                            else
                            {
                                BBoxSP.mBounds.Accumulate(tempBox.mBounds.mMin);
                                BBoxSP.mBounds.Accumulate(tempBox.mBounds.mMax);
                            }
                        }
                    }

                    WorldBounds.Accumulate( BBoxSP.mBounds.mMin );
                    WorldBounds.Accumulate( BBoxSP.mBounds.mMax );

                    VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                    BBoxSP.mBounds.mMin.Add(OffsetVector);
                    BBoxSP.mBounds.mMax.Sub(OffsetVector);

                    StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMin), 0 ); 
                    StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMax), 1 ); 

                    EntityBoxes.Add(BBoxSP);

                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

                case SRR2::ChunkID::PED_PATH:
                {
                    tlPedpathChunk* pPPath = (tlPedpathChunk*)sub;

                    tlPoint startPoint, endPoint;

                    tlPoint* pPoints = pPPath->Points();

                    // point ordering doesn't matter for purposes of bbox 
                    //generation

                    startPoint = pPoints[pPPath->GetNumPoints()-1];

                    for(int j=pPPath->GetNumPoints()-2; j>-1; j--)
                    {
                        BBoxSP.mBounds.mMin = (Vector3f) startPoint;
                        BBoxSP.mBounds.mMax = (Vector3f) startPoint;

                        endPoint = pPoints[j];
                        BBoxSP.mBounds.Accumulate(endPoint);

                        startPoint = endPoint;

                        WorldBounds.Accumulate( BBoxSP.mBounds.mMin );
                        WorldBounds.Accumulate( BBoxSP.mBounds.mMax );

                        BBoxSP.mBounds.mMin.Add(OffsetVector);
                        BBoxSP.mBounds.mMax.Sub(OffsetVector);
                        
                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                        StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMin), 0 ); 
                        StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMax), 1 ); 

                        PathBoxes.Add(BBoxSP);
                    }
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

                case SRR2::ChunkID::ROAD_SEGMENT_DATA:
                {
                    pInventory->Store(sub);
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

                case SRR2::ChunkID::ROAD:
                {
                    tlRoadChunk* pRoadChunk = (tlRoadChunk*)sub;
                    for(int j=pRoadChunk->SubChunkCount()-1; j>-1; j--)
                    {
                        tlRoadSegmentChunk* pRSegChunk = (tlRoadSegmentChunk*)pRoadChunk->GetSubChunk(j);
                        tlRoadSegmentDataChunk* pRSegDataChunk = (tlRoadSegmentDataChunk*)toollib_find<tlRoadSegmentDataChunk>(pInventory,pRSegChunk->GetRoadSegmentData());

                        //if( strcmp(pRSegChunk->GetRoadSegmentData(), "z1l1_road278Shape") == 0)
                        //{
                        //    printf("niao niao\n");
                        //}
                        tlMatrix mat = pRSegChunk->HierarchyMatrix();
						rmt::Matrix xFormMat;

                        ConvertMatrix(mat, xFormMat);

                        tlPoint boxPoints[4];
                        boxPoints[0] = pRSegDataChunk->Bottom();
                        boxPoints[1] = pRSegDataChunk->Top();
                        boxPoints[2] = pRSegDataChunk->Direction();
                        boxPoints[3] = tlPoint(0.0f,0.0f,0.0f);

                        boxPoints[0].Transform( xFormMat );
                        boxPoints[1].Transform( xFormMat );
                        boxPoints[2].Transform( xFormMat );
                        boxPoints[3].Transform( xFormMat );

                        BBoxSP.mBounds.mMin = (Vector3f) boxPoints[0];
                        BBoxSP.mBounds.mMax = (Vector3f) boxPoints[0];
                        //BBoxSP.mBounds.Accumulate(boxPoints[0]);
                        BBoxSP.mBounds.Accumulate(boxPoints[1]);
                        BBoxSP.mBounds.Accumulate(boxPoints[2]);
                        BBoxSP.mBounds.Accumulate(boxPoints[3]);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                        WorldBounds.Accumulate( BBoxSP.mBounds.mMin );
                        WorldBounds.Accumulate( BBoxSP.mBounds.mMax );

                        BBoxSP.mBounds.mMin.Add(OffsetVector);
                        BBoxSP.mBounds.mMax.Sub(OffsetVector);

                        StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMin), 0 ); 
                        StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMax), 1 ); 

                        RoadBoxes.Add(BBoxSP);
                    }
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;
                
                //
                // Add one count to the static entity nodes for each of the 
                // intersections, since they will now contain an icon for navigation
                //
                case SRR2::ChunkID::INTERSECTION:
                {
                    tlIntersectionChunk* pIntersectionChunk = (tlIntersectionChunk*)sub;

                    tlPoint center = pIntersectionChunk->Centre();
                    float extent = pIntersectionChunk->GetRadius();

                    center.x -= extent;
                    center.y -= extent;
                    center.z -= extent;

                    BBoxSP.mBounds.mMin.SetTo( center );
                    
                    extent *= 2.0f;
                    center.x += extent;
                    center.y += extent;
                    center.z += extent;

                    BBoxSP.mBounds.mMax.SetTo( center );

                    VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                    WorldBounds.Accumulate( BBoxSP.mBounds.mMin );
                    WorldBounds.Accumulate( BBoxSP.mBounds.mMax );

                    BBoxSP.mBounds.mMin.Add(OffsetVector);
                    BBoxSP.mBounds.mMax.Sub(OffsetVector);

                    StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMin), 0 ); 
                    StaticTF.Seed( ((Vector3f&)BBoxSP.mBounds.mMax), 1 ); 

                    AnimBoxes.Add(BBoxSP); 
                    AnimBoxes.Add(BBoxSP); //add a second one for the second arrow
                }
                break;

                case SRR2::ChunkID::ENTITY_DSG:
                {
                    for(int j=((tlEntityDSGChunk*)sub)->SubChunkCount()-1; j>-1; j--)
                    {
                        tlPrimGroupMesh* pMesh = new tlPrimGroupMesh();
                            pMesh->LoadFromChunk((tlEntityDSGChunk*)sub->GetSubChunk(j));

                            BBox = pMesh->Box(); 
                           
                            tlBox tempFucked = BBox;
                            
    						ToZeroCheck(sub, BBox);
    
                            BBox.low.Add(OffsetVector);
                            BBox.high.Sub(OffsetVector);

                            StaticTF.Seed( ((Vector3f&)BBox.low), 0 ); 
                            StaticTF.Seed( ((Vector3f&)BBox.high), pMesh->NumPrimGroups()); 

                            VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                            WorldBounds.Accumulate( (Vector3f&)BBox.low );
                            WorldBounds.Accumulate( (Vector3f&)BBox.high );

                            BBoxSP.mBounds.mMin.SetTo(BBox.low);
                            BBoxSP.mBounds.mMax.SetTo(BBox.high);
                            EntityBoxes.Add(BBoxSP);
                        delete pMesh;
                    }
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;
				
				case SRR2::ChunkID::INSTA_ENTITY_DSG:
                {
                    
					tlDataChunk* p_datachunk = NULL;
					tlDataChunk* p_sub = NULL;
					tlDataChunk* p_transformchunk = NULL;
					tlScenegraphTransformChunk* p_STC =NULL;
					tlPrimGroupMesh* pMesh = new tlPrimGroupMesh();
					tlBox OBox;

                    pMesh->LoadFromChunk(sub->GetSubChunk(0));
                    BBox = pMesh->Box(); 
                         
//                    BBox.low.Add(OffsetVector);
//                    BBox.high.Sub(OffsetVector);
					
					OBox = BBox;

					//Find the InstanceChunk
					int i=0;
					do
					{
						p_datachunk=sub->GetSubChunk(i++);
						//printf("Pointer at %s \n",p_datachunk->GetName());
					} while( (p_datachunk->ID())!= SRR2::ChunkID::INSTANCES);
					
										
					p_sub=p_datachunk;
					//dig down to the SceneGraphTransformChunk
					do
					{
						p_sub=p_sub->GetSubChunk(0);
						//printf("	pointer at %s \n",p_sub->GetName());
					} while ((p_sub->ID()) != Pure3D::SceneGraph::TRANSFORM);
						
					p_transformchunk=p_sub;

					//process each occurance of instanced object.
					for (i=0;i<p_transformchunk->SubChunkCount();i++)
					{

						p_sub= p_transformchunk->GetSubChunk(i);
						p_STC= dynamic_cast <tlScenegraphTransformChunk*> (p_sub);
						//rAssert(p_STC != NULL);
						//printf("		Processing STC %s\n",p_STC->GetName());
						
						//get the matrix from ScenegraphTransformChunk and do a tranform on the bbox 
						
						tlMatrix matrix;
						matrix= p_STC->GetTransform();

						rmt::Matrix mat;

						//manually make a new matrix
						unsigned int i, j;
						for ( i = 0; i < 4; ++i )
						{
							for ( j = 0; j < 4; ++j )
							{
								
								mat.m[i][j] = matrix.element[i][j];
							}
						}
						
						rmt::Vector high_temp;

						BBox = OBox;

						high_temp = BBox.high -BBox.low;

						//BBox.high.Transform( mat );

						BBox.low.Transform( mat );
						BBox.high.Transform( mat );
						
						//BBox.high=BBox.low + high_temp;
					
	
                        BBox.low.Add(OffsetVector);
                        BBox.high.Sub(OffsetVector);

    					ToZeroCheck(sub,BBox);
                        
                        StaticTF.Seed( ((Vector3f&)BBox.low), 0 ); 
						StaticTF.Seed( ((Vector3f&)BBox.high), pMesh->NumPrimGroups()); 
						WorldBounds.Accumulate( (Vector3f&)BBox.low );
						WorldBounds.Accumulate( (Vector3f&)BBox.high );
						BBoxSP.mBounds.mMin.SetTo(BBox.low);
						BBoxSP.mBounds.mMax.SetTo(BBox.high);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

						EntityBoxes.Add(BBoxSP);
					}//end for loop to process each occurance of instanced object
                    delete pMesh;
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

				case SRR2::ChunkID::INSTA_STATIC_PHYS_DSG:
                {
                    tlDataChunk* p_datachunk = NULL;
					tlDataChunk* p_sub = NULL;
					tlDataChunk* p_transformchunk = NULL;
					tlScenegraphTransformChunk* p_STC =NULL;
					
					int i=0;

					tlPoint min, max;
                    tlCollisionObject* pCollObj = new tlCollisionObject();                 	
									
					tlBox OBox;
					//if ( strcmp(sub->GetName(),"l1_picnictable_Shape")==0 ) 
                         //strcmp(sub->GetName(),"l1r7_grave_Shape")==0 ||
                         //strcmp(sub->GetName(),"l1r7_cemgraveb_Shape")==0 ||
                         //strcmp(sub->GetName(),"l1_treebig_Shape")==0 )
					//{
					//	printf("moo\n");
					//}
        
					do 
					{
						p_datachunk=sub->GetSubChunk(i++);
						//printf("Pointer at %s \n",p_datachunk->GetName());
					}	while( (p_datachunk->ID())!= Pure3D::Mesh::MESH );

					tlMeshChunk* pMesh = (tlMeshChunk*)(p_datachunk);
                    
                    i=0;
                    for(i=0;(pMesh->GetSubChunk(i)->ID())!= Pure3D::Mesh::BOX; i++)
                    {
                       
					}	
                    BBox = ((tlBBoxChunk*)(pMesh->GetSubChunk(i)))->Box();
					                    
		            /*			
                    
					i=0;
					do 
					{
						p_datachunk=sub->GetSubChunk(i++);
						//printf("Pointer at %s \n",p_datachunk->GetName());
					}	while( (p_datachunk->ID())!= Simulation::Collision::OBJECT);

					pCollObj->LoadFromChunk(p_datachunk);

                    pCollObj->GetExtensions(min, max); 
               
//                    BBox.low.Add(min, OffsetVector);
//                    BBox.high.Sub(max, OffsetVector);
				
                    // Correct for mismatch of functionality on/offline: 
                    //Do it the online way; see CollisionVolume::UpdateBBox
    
                    tlPoint boxSize,boxCenter, basePosn, tempPosn;

                    basePosn = tlPoint(0.0f,0.0f,0.0f);

                    boxSize.Sub(max, min);
                    boxSize.Scale(0.5f);
                    boxCenter.Add(max, min);
                    boxCenter.Scale(0.5f);

                    BBox.low = basePosn - boxSize;
                    BBox.high = basePosn + boxSize;
					
                    min = BBox.low;
                    max = BBox.high;
                    */
					OBox = BBox;
					//Find the InstanceChunk
					i=0;
					do
					{
						p_datachunk=sub->GetSubChunk(i++);
					//	printf("Pointer at %s \n",p_datachunk->GetName());
					} while( (p_datachunk->ID())!= SRR2::ChunkID::INSTANCES);
					

										
					p_sub=p_datachunk;
					//dig down to the SceneGraphTransformChunk
					do
					{
						p_sub=p_sub->GetSubChunk(0);
					//	printf("	pointer at %s \n",p_sub->GetName());
					} while ((p_sub->ID()) != Pure3D::SceneGraph::TRANSFORM);
						
					p_transformchunk=p_sub;

					//process each occurance of instanced object.
					for (i=0;i<p_transformchunk->SubChunkCount();i++)
					{

						p_sub= p_transformchunk->GetSubChunk(i);
						p_STC= dynamic_cast <tlScenegraphTransformChunk*> (p_sub);
						//rAssert(p_STC != NULL);
						//printf("		Processing STC %s\n",p_STC->GetName());
						
						//get the matrix from ScenegraphTransformChunk and do a tranform on the bbox 
						
						tlMatrix matrix;
						matrix= p_STC->GetTransform();
						rmt::Matrix mat;

						//manually make a new matrix
						unsigned int i, j;
						for ( i = 0; i < 4; ++i )
						{
							for ( j = 0; j < 4; ++j )
							{
								
								mat.m[i][j] = matrix.element[i][j];
							}
						}
						
						rmt::Vector high_temp;

						BBox = OBox;

						high_temp = BBox.high -BBox.low;

						//BBox.high.Transform( mat );

                        // - Account for rotation
						BBox.low.Transform( mat );
						BBox.high.Transform( mat );
                        //tempPosn = boxCenter;
                        //tempPosn.Transform( mat );

                        //pCollObj->

                        //BBox.low = tempPosn+BBox.low;
                        //BBox.high = tempPosn+BBox.high;

                        //BBox.low = tempPosn-boxSize;//+boxCenter
                        //BBox.high = tempPosn+boxSize;//+boxCenter

						//BBox.high=BBox.low + high_temp;			
               
                        BBox.low.Add(BBox.low, OffsetVector);
                        BBox.high.Sub(BBox.high, OffsetVector);
	
    					ToZeroCheck(sub,BBox);

						StaticTF.Seed( ((Vector3f&)BBox.low), 0); 
                        StaticTF.Seed( ((Vector3f&)BBox.high),1);
						
						WorldBounds.Accumulate( (Vector3f&)BBox.low );
						WorldBounds.Accumulate( (Vector3f&)BBox.high );
						BBoxSP.mBounds.mMin.SetTo(BBox.low);
						BBoxSP.mBounds.mMax.SetTo(BBox.high);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

						StaticPhysBoxes.Add(BBoxSP);
					}//end for loop to process each occurance of instanced object
                    delete pCollObj;
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

				case SRR2::ChunkID::DYNA_PHYS_DSG:
                {
                    tlDataChunk* p_datachunk = NULL;
					tlDataChunk* p_sub = NULL;
					tlDataChunk* p_transformchunk = NULL;
					tlScenegraphTransformChunk* p_STC =NULL;
					
					int i=0;

					tlPoint min, max;
                    tlCollisionObject* pCollObj = new tlCollisionObject();                 	
									
					tlBox OBox;
					                    					
                    
					i=0;
					//traverse chunk until we find the collision chunk
					do 
					{
						p_datachunk=sub->GetSubChunk(i++);
						//printf("Pointer at %s \n",p_datachunk->GetName());
					}	while( (p_datachunk->ID())!= Simulation::Collision::OBJECT);

					//make a bbox from collision box
					pCollObj->LoadFromChunk(p_datachunk);

                    pCollObj->GetExtensions(min, max); 
               
//                    BBox.low.Add(min, OffsetVector);
//                    BBox.high.Sub(max, OffsetVector);			
							
                    BBox.low = min;
                    BBox.high = max;

                    OBox = BBox;

					
					//Find the InstanceChunk
					i=0;
					do
					{
						p_datachunk=sub->GetSubChunk(i++);
						//printf("Pointer at %s \n",p_datachunk->GetName());
					} while( (p_datachunk->ID())!= SRR2::ChunkID::INSTANCES);
					

										
					p_sub=p_datachunk;
					//dig down to the SceneGraphTransformChunk
					do
					{
						p_sub=p_sub->GetSubChunk(0);
						//printf("	pointer at %s \n",p_sub->GetName());
					} while ((p_sub->ID()) != Pure3D::SceneGraph::TRANSFORM);
						
					p_transformchunk=p_sub;

					//process each occurance of instanced object.
					for (i=0;i<p_transformchunk->SubChunkCount();i++)
					{

						p_sub= p_transformchunk->GetSubChunk(i);
						p_STC= dynamic_cast <tlScenegraphTransformChunk*> (p_sub);
						//rAssert(p_STC != NULL);
						//printf("		Processing STC %s\n",p_STC->GetName());
						
						//get the matrix from ScenegraphTransformChunk and do a tranform on the bbox 
						
						tlMatrix matrix;
						matrix= p_STC->GetTransform();

						rmt::Matrix mat;

						//manually make a new matrix
						unsigned int i, j;
						for ( i = 0; i < 4; ++i )
						{
							for ( j = 0; j < 4; ++j )
							{
								
								mat.m[i][j] = matrix.element[i][j];
							}
						}
						
						rmt::Vector high_temp;

						BBox = OBox;

						high_temp = BBox.high -BBox.low;

						//BBox.high.Transform( mat );

						BBox.low.Transform( mat );
						BBox.high.Transform( mat );

						//BBox.high=BBox.low + high_temp;
						
    					ToZeroCheck(sub,BBox);
					
					
                    BBox.low.Add(min, OffsetVector);
                    BBox.high.Sub(max, OffsetVector);			
	

						StaticTF.Seed( ((Vector3f&)BBox.low), 0); 
                        StaticTF.Seed( ((Vector3f&)BBox.high),1);
						
						WorldBounds.Accumulate( (Vector3f&)BBox.low );
						WorldBounds.Accumulate( (Vector3f&)BBox.high );
						BBoxSP.mBounds.mMin.SetTo(BBox.low);
						BBoxSP.mBounds.mMax.SetTo(BBox.high);

    					ToZeroCheck(sub,BBox);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

						DynaPhysBoxes.Add(BBoxSP);
					}//end for loop to process each occurance of instanced object
                    delete pCollObj;
                    outchunk->AppendSubChunk(sub,FALSE);               
					
				}
				break;
  
                case SRR2::ChunkID::STATIC_PHYS_DSG:
                {
                    tlPoint min, max;
                    tlCollisionObject* pCollObj = new tlCollisionObject();
                        pCollObj->LoadFromChunk(sub->GetSubChunk(0));

                        pCollObj->GetExtensions(min, max); 
               
                        BBox.low.Add(min, OffsetVector);
                        BBox.high.Sub(max, OffsetVector);

    					ToZeroCheck(sub,BBox);

                        StaticTF.Seed( ((Vector3f&)BBox.low), 0); 
                        StaticTF.Seed( ((Vector3f&)BBox.high),1); 

                        WorldBounds.Accumulate( (Vector3f&)BBox.low );
                        WorldBounds.Accumulate( (Vector3f&)BBox.high );

                        BBoxSP.mBounds.mMin.SetTo(BBox.low);
                        BBoxSP.mBounds.mMax.SetTo(BBox.high);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                        StaticPhysBoxes.Add(BBoxSP);
                    delete pCollObj;
                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;

                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh* pMesh = new tlPrimGroupMesh();
                        pMesh->LoadFromChunk(sub);

                        BBox = pMesh->Box(); 

                        BBox.low.Add(OffsetVector);
                        BBox.high.Sub(OffsetVector);

                        ToZeroCheck(sub,BBox);
                        
                        StaticTF.Seed( ((Vector3f&)BBox.low), 0 ); 
                        StaticTF.Seed( ((Vector3f&)BBox.high), pMesh->NumPrimGroups()); 

                        WorldBounds.Accumulate( (Vector3f&)BBox.low );
                        WorldBounds.Accumulate( (Vector3f&)BBox.high );

                        BBoxSP.mBounds.mMin.SetTo(BBox.low);
                        BBoxSP.mBounds.mMax.SetTo(BBox.high);

                        VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                        IntersectBoxes.Add(BBoxSP);
                    delete pMesh;

                    outchunk->AppendSubChunk(sub,FALSE);
                }
                break;
                
                case SRR2::ChunkID::FENCE_DSG:
                {
                    tlWallChunk* pWall = ((tlWallChunk*)sub->GetSubChunk(0));
                    Bounds3f bound;

                    bound.mMin.SetTo((Vector3f&)pWall->GetStart());
                    bound.mMax.SetTo((Vector3f&)pWall->GetStart());
                    bound.Accumulate((Vector3f&)pWall->GetEnd());
                    
                    BBox.low  = bound.mMin;
                    BBox.high = bound.mMax;

                    BBox.low.Add(OffsetVector);
                    BBox.high.Sub(OffsetVector);

                    ToZeroCheck(sub, BBox);
        
                    StaticTF.Seed( ((Vector3f&)BBox.low), 0  ); 
                    StaticTF.Seed( ((Vector3f&)BBox.high), 1 ); 

                    WorldBounds.Accumulate( (Vector3f&)BBox.low );
                    WorldBounds.Accumulate( (Vector3f&)BBox.high );

                    BBoxSP.mBounds.mMin.SetTo(BBox.low);
                    BBoxSP.mBounds.mMax.SetTo(BBox.high);

                    VerifyBoundsAcceptable( BBoxSP.mBounds, 200.0f, sub->GetName() );

                    FenceBoxes.Add(BBoxSP);
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

        //Add a coupla bounding seeds; bound correction to handle
        //p3dsplit/modified, which subdivides from the origin
        WorldBounds.mMin.x = rmt::Floor(WorldBounds.mMin.x/TODO_GRANULARITY.x)*TODO_GRANULARITY.x;
        WorldBounds.mMin.y = rmt::Floor(WorldBounds.mMin.y/TODO_GRANULARITY.y)*TODO_GRANULARITY.y;
        WorldBounds.mMin.z = rmt::Floor(WorldBounds.mMin.z/TODO_GRANULARITY.z)*TODO_GRANULARITY.z;
        StaticTF.Seed( WorldBounds.mMin, 0 );
        StaticTF.Seed( WorldBounds.mMax, 0 );

        ///////////////////////////////////////////////////////////////////////
        // TreeFactory: Grow a Tree, damn you! 
        ///////////////////////////////////////////////////////////////////////
        TODO_GRANULARITY.y = WorldBounds.mMax.y - WorldBounds.mMin.y;
        StaticTF.Generate( TODO_GRANULARITY );

        StaticTF.ExtractTree( &pStaticTree );

        tlTreeDSGChunk* pNewTreeChunk = new tlTreeDSGChunk();
        if(sCrashNow)
        {
            //we've encountered some really bad bounding boxes which a fucking
            //proper tree generation, and overwriting memory as a result
            //
            // So.... CRASH! Wheee... Always wantred to do this on Purpose for ONCE
            printf("\nmommy?\n");
            _flushall();
            pNewTreeChunk = NULL;
        }

        _flushall();
        
        pNewTreeChunk->SetBoundsMin(WorldBounds.mMin);
        pNewTreeChunk->SetBoundsMax(WorldBounds.mMax);
        pNewTreeChunk->SetNumNodes(0);

        ContiguousBinNode< SpatialNode >* pTreeRoot = pStaticTree->GetRoot();

        SpatialTreeIter TreeWalker;
        TreeWalker.SetToRoot(*pStaticTree);

        int i;
        for(i=EntityBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(EntityBoxes[i]).mSEntityElems.Reserve(1);
        }

        for(i=StaticPhysBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(StaticPhysBoxes[i]).mSPhysElems.Reserve(1);
        }

        for(i=IntersectBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(IntersectBoxes[i]).mIntersectElems.Reserve(1);
        }

        for(i=FenceBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(FenceBoxes[i]).mFenceElems.Reserve(1);
        }

		for(i=DynaPhysBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(DynaPhysBoxes[i]).mDPhysElems.Reserve(1);
        }

		for(i=RoadBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(RoadBoxes[i]).mRoadElems.Reserve(1);
        }
        
		for(i=PathBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(PathBoxes[i]).mPathElems.Reserve(1);
        }
        
		for(i=AnimBoxes.mUseSize-1;i>-1;i--)
        {
            TreeWalker.rSeekNode(AnimBoxes[i]).mAnimElems.Reserve(1);
        }

        for( i=0; i<pTreeRoot->GetSubTreeSize()+1; i++ )
        {
            tlContiguousBinNodeChunk* pCBNChunk = new tlContiguousBinNodeChunk();
            tlSpatialNodeChunk* pSpatialNodeChunk = new tlSpatialNodeChunk();

            pSpatialNodeChunk->SetPlaneAxis( (pTreeRoot+i)->mData.mSubDivPlane.mAxis ); 
            pSpatialNodeChunk->SetPlanePosn( (pTreeRoot+i)->mData.mSubDivPlane.mPosn ); 

            pSpatialNodeChunk->SetNumSEntities((pTreeRoot+i)->mData.mSEntityElems.mUseSize);
            pSpatialNodeChunk->SetNumSPhys((pTreeRoot+i)->mData.mSPhysElems.mUseSize);
            pSpatialNodeChunk->SetNumIntersects((pTreeRoot+i)->mData.mIntersectElems.mUseSize);
            pSpatialNodeChunk->SetNumDPhys(((pTreeRoot+i)->mData.mDPhysElems.mUseSize) + 10);
            pSpatialNodeChunk->SetNumFences((pTreeRoot+i)->mData.mFenceElems.mUseSize);
            pSpatialNodeChunk->SetNumRoads((pTreeRoot+i)->mData.mRoadElems.mUseSize);
            pSpatialNodeChunk->SetNumPaths((pTreeRoot+i)->mData.mPathElems.mUseSize);
            pSpatialNodeChunk->SetNumAnims((pTreeRoot+i)->mData.mAnimElems.mUseSize);
            
            pCBNChunk->SetParentOffset( (pTreeRoot+i)->GetParentOffset() );
            pCBNChunk->SetSubTreeSize( (pTreeRoot+i)->GetSubTreeSize() );

            pCBNChunk->AppendSubChunk( pSpatialNodeChunk, TRUE );
            pNewTreeChunk->AppendSubChunk( pCBNChunk, TRUE );
            pNewTreeChunk->SetNumNodes( pNewTreeChunk->GetNumNodes() +1 );
        }
      
        outchunk->AppendSubChunk(pNewTreeChunk,TRUE);

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } else {
            strcpy(buf,Param->Files[CurFile]);
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

void VerifyBoundsAcceptable( Bounds3f& irBounds, float iAcceptableExtent, const char* ipName )
{
    Vector3f Diagonal= irBounds.mMax-irBounds.mMin;
    Diagonal.x = Diagonal.Length();
    if(Diagonal.x > iAcceptableExtent)
    {
        printf("***ACK: %24s is %.0fm in size > %.0fm. If track art, ignore.\n", 
                         ipName, Diagonal.x,                           iAcceptableExtent );
    }
}

void ConvertMatrix(tlMatrix& irMat, rmt::Matrix& orMat)
{
	//manually make a new matrix
	unsigned int i, j;
	for ( i = 0; i < 4; ++i )
	{
		for ( j = 0; j < 4; ++j )
		{
			
			orMat.m[i][j] = irMat.element[i][j];
		}
	}
}

bool ToZeroCheck( tlDataChunk* ipSub, tlBox& irBBox )
{
    if( ::ToZero(irBBox) > 10240.0f )
    {
	    printf("***WARNING: %s is %f (>10240) Meters from origin!!!\n",ipSub->GetName(),::ToZero(irBBox) );
        sCrashNow = true;
        return false;
    }
    return true;
}

float ToZero (tlBox box)
{
	float distance =0;

	distance =  (box.low.x *box.low.x) + (box.low.z * box.low.z) ;

	distance = sqrt( distance);
	return distance;
	
	//return 0;
}

