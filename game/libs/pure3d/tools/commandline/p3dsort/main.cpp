/*===========================================================================
    File: main.cpp 

    Sort chunks by their ChunkID's


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <typeinfo>
#include "Param.hpp"

//#include <../../../../../code/constants/srrchunks.h>
#include <tlShaderChunk.hpp>
#include <tlTextureChunk.hpp>

Parameters* Param;

int AssignInverseShadowState( tlShader* ipShader );
int AssignAlphaState( tlShader* ipShader, tlInventory* ipInventory  );

static bool HasAlphaBillboards(tlDataChunk* chunk, tlInventory* ipInventory);

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
        // open next file into a tlFile object
        tlFile input(new tlFileByteStream(Param->Files[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) 
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            exit(-1);
        }

        tlInventory* pInventory = new tlInventory;
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


        if( Param->SetAlphas )
        {
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk

                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                // look at the id of the subchunk to decide if we 
                // want to do something with it or not
                switch(sub->ID())
                {
                    //
                case Pure3D::Texture::TEXTURE:                
                {
                    //////////////////////////////////////////////////////////////////////////
                    //The following is a hack because we cant read in p3dps2'd textures.
                    // Some weird assert about a bad width
                    //////////////////////////////////////////////////////////////////////////
                    tlTexture *texture = new tlTexture();// sub );
                    texture->SetName(sub->GetName());
                    texture->SetAlphaDepth(((tlTextureChunk*)sub)->GetAlphaDepth());
                    pInventory->Store(texture);
                    
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }
                case Pure3D::Shader::SHADER:                
                {
                    tlShader *shader = new tlShader( sub );
                    pInventory->Store(shader);
                    
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }
    
                case Pure3D::Mesh::MESH:
                {
                    tlPrimGroupMesh *pgmesh = new tlPrimGroupMesh( sub );
                    pInventory->Store(pgmesh);
                    
                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::ENTITY_DSG:
                {
                    tlPrimGroupChunk* pPGC = dynamic_cast< tlPrimGroupChunk* >(sub->GetSubChunk(0)->GetSubChunk(0));
                    tlEntityDSGChunk* pEDSG = dynamic_cast< tlEntityDSGChunk* > (sub);

                    tlShader* pShader = toollib_find<tlShader>(pInventory,pPGC->GetShader());
                    if(!pShader)
                    {
                        printf("Shader %s not found.\n", pPGC->GetShader());
                    }
                    else
                    {
                        pEDSG->SetHasAlpha( pEDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));

                        if(sub->GetSubChunk(0)->GetSubChunk(3)->ID() == Pure3D::Mesh::RENDERSTATUS)
                        {
                            tlRenderStatusChunk* pRSC = (tlRenderStatusChunk*)(sub->GetSubChunk(0)->GetSubChunk(3));
                            pRSC->SetCastShadow( AssignInverseShadowState(pShader) );
                        }
                        else
                        {
                            printf("huh? RenderStatusChunk missing!\n");
                        }
                    }


                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::DYNA_PHYS_DSG:
                {
                    tlDynaPhysDSGChunk* pDPDSG = (tlDynaPhysDSGChunk*)(sub);
                    tlMeshChunk* pMC = (tlMeshChunk*)(sub->GetSubChunk(0));
					if ( pMC == NULL )
					{
						MessageBox(NULL,"tlDynaPhysDSGChunk doesn't have a mesh at subchunk zero!!","p3dsort fatal error",MB_OK);
						return( EXIT_FAILURE );
					}

                    //if(strcmp(pDPDSG->GetName(), "l1_krustyglass_Shape")==0)
                    //{
                    //    printf("moo");
                    //}

                    for(int i=0; i < pMC->SubChunkCount(); i++)
                    {
                        if(pMC->GetSubChunk(i)->ID() == Pure3D::Mesh::PRIMGROUP)
                        {
                            tlPrimGroupChunk* pPGC = (tlPrimGroupChunk*)(pMC->GetSubChunk(i));

                            tlShader* pShader = toollib_find<tlShader>(pInventory,pPGC->GetShader());
                            if(!pShader)
                            {
                                printf("Shader %s not found.\n", pPGC->GetShader());
                            }
                            else
                            {
                                //if(pDPDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ))
                                //{
                                //    printf("%s is set to hasAlpha\n",pDPDSG->GetName());
                                //}
                                //int Argh =pDPDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory );
                                pDPDSG->SetHasAlpha(pDPDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));
                            }
                        }
                    }

                    //if(strcmp(pDPDSG->GetName(), "l1_krustyglass_Shape")==0)
                    //{
                    //    printf("moo end\n");
                    //}

                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::INSTA_ENTITY_DSG:
                {
                    tlInstaEntityDSGChunk* pIEDSG = dynamic_cast< tlInstaEntityDSGChunk* >(sub);
                    tlMeshChunk* pMC = dynamic_cast< tlMeshChunk* > (sub->GetSubChunk(0));
                    tlShader* pShader = NULL; 
                    for(int i=0; i < pMC->SubChunkCount(); i++)
                    {
                        if(pMC->GetSubChunk(i)->ID() == Pure3D::Mesh::PRIMGROUP)
                        {
                            tlPrimGroupChunk* pPGC = dynamic_cast< tlPrimGroupChunk* >(pMC->GetSubChunk(i));

                            pShader = toollib_find<tlShader>(pInventory,pPGC->GetShader());

                            if(!pShader)
                            {
                                printf("Shader %s not found.\n", pPGC->GetShader());
                            }
                            else
                            {
                                pIEDSG->SetHasAlpha(pIEDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));
                            }
                        }
                        if(pMC->GetSubChunk(i)->ID() == Pure3D::Mesh::RENDERSTATUS)
                        {
                            tlRenderStatusChunk* pRSC = (tlRenderStatusChunk*)(pMC->GetSubChunk(i));
                            pRSC->SetCastShadow( AssignInverseShadowState(pShader) );
                        }
                    }

                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::INSTA_STATIC_PHYS_DSG:
                {
                    tlInstaStaticPhysDSGChunk* pISPDSG = dynamic_cast< tlInstaStaticPhysDSGChunk* >(sub);
                    tlMeshChunk* pMC = dynamic_cast< tlMeshChunk* >(sub->GetSubChunk(0));

                    for(int i=0; i < pMC->SubChunkCount(); i++)
                    {
                        if(pMC->GetSubChunk(i)->ID() == Pure3D::Mesh::PRIMGROUP)
                        {
                            tlPrimGroupChunk* pPGC = dynamic_cast< tlPrimGroupChunk* >(pMC->GetSubChunk(i));

                            tlShader* pShader = toollib_find<tlShader>(pInventory,pPGC->GetShader());
                   
                            if(!pShader)
                            {
                                printf("Shader %s not found.\n", pPGC->GetShader());
                            }
                            else
                            {
                                pISPDSG->SetHasAlpha(pISPDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));
                            }
                        }
                    }

                    outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::ANIM_COLL_DSG:
                {
                    tlAnimCollDSGChunk* pACDSG = dynamic_cast<tlAnimCollDSGChunk* >(sub);

					// Does this thing have billboards, then its an automatically a translucent object
					if ( HasAlphaBillboards( sub, pInventory ) )
					{
						pACDSG->SetHasAlpha( 1  );
				
					}
					// Try and find the composite drawable chunk
					tlCompositeDrawableChunk16* pCompDraw = NULL;
					for (int i = 0 ; i < sub->SubChunkCount() ; i++)
					{
						if ( sub->GetSubChunk(i)->ID() == P3D_COMPOSITE_DRAWABLE )
						{
							pCompDraw = dynamic_cast< tlCompositeDrawableChunk16* > (sub->GetSubChunk( i ) );
							break;
						}
					}
					if( pCompDraw )
					{
                        int j;
						tlCompositeDrawablePropListChunk16* pPropList = dynamic_cast< tlCompositeDrawablePropListChunk16* >(pCompDraw->GetSubChunk(1));
						for(j=0; j<pPropList->SubChunkCount(); j++)
						{
							tlPrimGroupMesh* pPGMC = toollib_find<tlPrimGroupMesh>(pInventory,pPropList->GetSubChunk(j)->GetName());
							if ( pPGMC != NULL)
							{
								for(int i=0; i<pPGMC->NumPrimGroups(); i++)
								{
									tlPrimGroup* pPG = pPGMC->GetPrimGroup(i);

									tlShader* pShader = toollib_find<tlShader>(pInventory,pPG->GetShader());
                            
									if(!pShader)
									{
										printf("Shader %s not found.\n", pPG->GetShader());
									}
									else
									{
                                        pACDSG->SetHasAlpha(pACDSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));
									}
								}
							}
						}
                        tlCompositeDrawableEffectListChunk16* pEffectList = dynamic_cast< tlCompositeDrawableEffectListChunk16* >(pCompDraw->GetSubChunk(2));
						for(j=0; j<pEffectList->SubChunkCount(); j++)
						{
                            tlCompositeDrawableEffectChunk16* pEffect = (tlCompositeDrawableEffectChunk16*)pEffectList->GetSubChunk(j);
                            pACDSG->SetHasAlpha(pACDSG->GetHasAlpha() | pEffect->GetIsTranslucent());
                        }
                        

					}
					outchunk->AppendSubChunk(sub,FALSE);
                    break;
                }

                case SRR2::ChunkID::ANIM_DSG:
                {
                    tlAnimDSGChunk* pADSG = dynamic_cast<tlAnimDSGChunk*> (sub);
					
					// Does this thing have billboards, then its an automatically a translucent object
					if ( HasAlphaBillboards( sub, pInventory ) )
					{
						pADSG->SetHasAlpha( 1  );
				
					}


					// Try and find the composite drawable chunk
					tlCompositeDrawableChunk16* pCompDraw = NULL;
					for (int i = 0 ; i < sub->SubChunkCount() ; i++)
					{
						if ( sub->GetSubChunk(i)->ID() == P3D_COMPOSITE_DRAWABLE )
						{
							pCompDraw = dynamic_cast< tlCompositeDrawableChunk16* > (sub->GetSubChunk( i ) );
							break;
						}
					}
	                
					if ( pCompDraw == NULL )
					{
						MessageBox(NULL,"tlAnimDSGChunk doesn't have a composite drawable chunk","p3dsort fatal error",MB_OK);
						return( EXIT_FAILURE );
					}

					tlCompositeDrawablePropListChunk16* pPropList = dynamic_cast< tlCompositeDrawablePropListChunk16* > (pCompDraw->GetSubChunk(1) );
					if ( pPropList == NULL )
					{
						MessageBox(NULL,"Assumption incorrect! PropListChunk is not the second chunk!","p3dsort fatal error",MB_OK);
						return( EXIT_FAILURE );
					}
		

                    for(int j=0; j<pPropList->SubChunkCount(); j++)
                    {

                        tlPrimGroupMesh* pPGMC = toollib_find<tlPrimGroupMesh>(pInventory,pPropList->GetSubChunk(j)->GetName());


						if ( pPGMC != NULL)
						{
							for(int i=0; i<pPGMC->NumPrimGroups(); i++)
							{
								tlPrimGroup* pPG = pPGMC->GetPrimGroup(i);

								tlShader* pShader = toollib_find<tlShader>(pInventory,pPG->GetShader());
								if(!pShader)
								{
									printf("Shader %s not found.\n", pPG->GetShader());
								}
								else
								{
                                    pADSG->SetHasAlpha(pADSG->GetHasAlpha() | AssignAlphaState( pShader, pInventory ));
								}
							}
                        }

                    }

                    outchunk->AppendSubChunk(sub,FALSE);
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
        }
        else
        {
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk

                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                // look at the id of the subchunk to decide if we 
                // want to do something with it or not
                switch(sub->ID())
                {
                    //
                
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
        }

        outchunk->SortSubChunks();

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

int AssignInverseShadowState( tlShader* ipShader )
{
    //This is a nasty name hack, and I really hate doing it.
    //
    // Really. Hate. Doing It.
    //
    // It shouldn't be necessary, but it's that season again: 
    // 
    // final.
    //
    //It was made necessary because they wanted to see all
    //alpha's through the car windsheild. As a Result, every 
    //alpha has to be sorted in one pass. As a Result, all 
    //conflicts, for interpenetration of things containing 
    //alpha need to be handled on a case by case basis.
    //
    char pSomeName[256];
    strcpy(pSomeName, ipShader->GetName());
    pSomeName[8] = '\0';

    for(int i=7; i>-1; i--)
        pSomeName[i] = tolower(pSomeName[i]);

    if(strcmp(pSomeName,"treeshad")==0)
    {
        return 0;
    }
    return 1;
}


int AssignAlphaState(tlShader* ipShader, tlInventory* ipInventory )
{
    if(ipShader->HasIntParam(tlFourCC("ATST")))
    {
        //printf("%s ATST On\n", ipShader->GetName());
        if(ipShader->GetIntParam(tlFourCC("ATST")))
        {
            return 0;
        }
    }
    tlTexture* pTexture = toollib_find<tlTexture>(ipInventory,ipShader->GetTexture());

    if(!pTexture)
    {
        return ipShader->GetTranslucency(); 
    }
    else
    {
        return ipShader->GetTranslucency() | pTexture->GetAlphaDepth();
    }

    return 0;
}


static bool HasAlphaBillboards(tlDataChunk* chunk, tlInventory* pInventory)
{
	if ( chunk == NULL )
		return 0;

	
	switch( chunk->ID() ) 
	{

		case Pure3D::BillboardObject::QUAD_GROUP:
			{
				tlBillboardQuadGroupChunk* bbqg = dynamic_cast< tlBillboardQuadGroupChunk* >(chunk);
				if ( bbqg != NULL )
				{
					const char* shadername = bbqg->GetShader();
					// Lets see if the shader exists, and if it does, lookup its alpha state
					tlShader* pShader = toollib_find<tlShader>(pInventory,shadername);
                    if( pShader )
                    {
						int alphaState = AssignAlphaState( pShader, pInventory );
						// Did we find an alpha shader? Return true if we did
						if ( alphaState != 0 )
							return true;
                    }
					else
					{
                        printf("Shader %s not found.\n", shadername );
					}
				}
			}
			break;
		case Pure3D::BillboardObject::QUAD_V14:
			{
				const tlBillboardQuadGroup* bbqg = dynamic_cast< const tlBillboardQuadGroup* >(chunk);
				if ( bbqg != NULL )
				{
					const char* shadername = bbqg->GetShaderName();
					// Lets see if the shader exists, and if it does, lookup its alpha state
					tlShader* pShader = toollib_find<tlShader>(pInventory,shadername);
                    if( pShader )
                    {
						int alphaState = AssignAlphaState( pShader, pInventory );
						// Did we find an alpha shader? Return true if we did
						if ( alphaState != 0 )
							return true;
                    }
					else
					{
                        printf("Shader %s not found.\n", shadername );
					}
				}
				else
				{
					printf("DYNAMIC CAST FAILED!! - HasAlphaBillboards\n");
				}		
			}
			break;
		default:
			break;

	}

	for ( int i = 0 ; i < chunk->SubChunkCount() ; i++ )
	{
		if ( HasAlphaBillboards( chunk->GetSubChunk( i ), pInventory ) )
			return true;
	}
	return false;
}

