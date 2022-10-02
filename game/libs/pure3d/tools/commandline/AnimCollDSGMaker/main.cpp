/*===========================================================================
    File: main.cpp 

    This tool searches a pure3d file and wraps the Comp Drawable and Framecontroller together


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlFrameControllerChunk.hpp>
#include <tlMultiControllerChunk16.hpp>
#include <tlCompositeDrawableChunk16.hpp>
#include <tlCollisionObjectChunk.hpp>
#include "AnimCollDSGList.hpp"
#include "Param.hpp"
#include <list>
#include <string>
#include <sstream>
#include <windows.h>

Parameters* Param;

using namespace std;

struct TexController
{
	string name;
	tlFrameControllerChunk* pController;
};

typedef	map< string, tlBillboardQuadGroupChunk* > BillboardList;
int AddAllBillboards( tlDataChunk* parentChunk, BillboardList* );
// Searches all subchunks and places all Composite Drawables into the given store 
// as AnimCollDSG chunks
// returns the number found
int AddAllCompositeDrawables( tlDataChunk* parentChunk, BillboardList* billboardList, AnimCollDSGList* store, tlDataChunk* outchunk );

int main(int argc, char* argv[])
{
	AnimCollDSGList* p_animDSGlist=new AnimCollDSGList();
	bool badart = false;

	// A set of all billboards in the source file
	// It is necessary to keep this list because we can't keep any billboards 
	// free-floating because they will wrapped up and placed at the origin. So
	// we keep this list and use it to match up billboards to compositedrawable->props
	BillboardList billboardList;

	list< TexController > textureControllers;

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
		AddAllBillboards( inchunk, &billboardList );
		// Find all composite drawables and turn them into AnimCollDSG chunks
		// Do this because other chunks depend on composite drawables appearing first
		// which isn't always guaranteed by the default sort order (see sim::Collision objects)
		// TBJ, how bout adding some comments, please?
		AddAllCompositeDrawables( inchunk, &billboardList, p_animDSGlist, outchunk );


        int ch;
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
            case P3D_COMPOSITE_DRAWABLE:
				// Do not process, all composite drawables should have been processed
				// by AddAllCompositeDrawables
				break;
			case Pure3D::BillboardObject::QUAD_GROUP:
				// Should be handled already by AddAllBillboards
				break;
            case Simulation::Collision::OBJECT:
				{
					tlAnimCollDSGChunkWrapper* p_anim = NULL;
					tlCollisionObjectChunk* pChunk = (tlCollisionObjectChunk*) sub;
					printf("\nFound %s %s,Searching for Parent AnimCollDSGChunk... \n",pChunk->GetType(), pChunk->GetName());
					
					p_anim = p_animDSGlist->getanim(pChunk->GetName());

					if(p_anim != NULL && p_anim->GetChunk() != NULL )
					{
						printf("\tFound Matching AnimCollDSGChunk\n");
                        p_anim->FoundCollisionObject();
						p_anim->GetChunk()->AppendSubChunk(pChunk,FALSE);
					}
					else
					{
						if ( p_anim == NULL )
						{
							std::cerr << "p_anim == NULL " << std::endl;
						}
						else if ( p_anim->GetChunk() == NULL )
						{
							std::cerr << "p_anim->GetChunk == NULL " << std::endl;

						}

						

					    ostringstream oss;
						oss << pChunk->GetName() << " is missing its mesh";

						MessageBox(NULL,oss.str().c_str(),"AnimCollDSGChunk Error",MB_OK);
						printf("\n\tERROR: cant find Parent AnimCollDSGChunk, %s is missing the Composite Drawable\n \n",pChunk->GetName() );
						badart= true;
					}
					break;
				}
			case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
				{
					tlAnimCollDSGChunkWrapper* p_anim = NULL;
					tlFrameControllerChunk* p_framecon = (tlFrameControllerChunk*) sub;
					if( p_framecon->GetType() != Pure3DAnimationTypes::TEXTURE_TEX )
					{
						printf("\nFound Frame Controller %s,Searching for Parent AnimCollDSGChunk... \n",sub->GetName());
						
						p_anim = p_animDSGlist->getanim(p_framecon->GetHierarchyName());
							
						if(p_anim != NULL && p_anim->GetChunk() != NULL )
						{
							printf("\tFound Matching AnimCollDSGChunk\n");
							p_anim->FoundFrameController();
							p_anim->GetChunk()->AppendSubChunk(sub,FALSE);
							p_anim->AddFrameController( p_framecon );
						}
						else
						{
						    ostringstream oss;
							oss << "Found a framecontroller " << p_framecon->GetName() << " and can't find its composite drawable ";
							oss << p_framecon->GetHierarchyName() << " in the file!";
							MessageBox(NULL,oss.str().c_str(),"AnimCollDSGChunk Error",MB_OK);

							printf("\n\tERROR: cant find Parent AnimCollDSGChunk, %s is missing the Composite Drawable\n \n",p_framecon->GetHierarchyName());
							badart= true;
						}
					}
					else
					{
						TexController controller;
						controller.name = p_framecon->GetName();
						controller.pController = dynamic_cast<tlFrameControllerChunk*>(sub);				
						string* controllerName = new string( p_framecon->GetName() );
						textureControllers.push_back( controller );
					}
					break;
				}
            case P3D_MULTI_CONTROLLER:
                {
                    printf("\nFound MultiController %s,  Searching for Parent AnimCollDSGChunk... \n",sub->GetName());
					                    
					tlMultiControllerChunk16* pMultiChunk = (tlMultiControllerChunk16*) sub;
      				// Try and find out if the multicontroller name is the same as any of the DSG objects
					// that are present. 
					tlAnimCollDSGChunkWrapper* pAnim = p_animDSGlist->getanim(pMultiChunk->GetName());
					if ( pAnim == NULL )
					{
						// There is one other format I'd like to try, besides multicontroller name == compdrawable name
						// multicontrollername = compdrawname_controller. Cary uses this format for his
						// animated icons and an artists might decide to use it for Travis stuff
						string compDrawableName = pMultiChunk->GetName();
						// STL string streams rock.
					    ostringstream oss;
					    oss << compDrawableName << "_controller";
						// Now try and find it
						pAnim = p_animDSGlist->getanim( oss.str().c_str() );
					}
                    for ( int i = 0; i < pMultiChunk->SubChunkCount(); i++ )
                    {
                        tlDataChunk* sub = pMultiChunk->GetSubChunk( i );
                        switch( sub->ID() )
                        {
                        case P3D_MULTI_CONTROLLER_TRACKS:
                            {
                                tlMultiControllerTracksChunk16* pMultiTracksChunk = (tlMultiControllerTracksChunk16*)sub;
                                int i;
                                for( i = 0; i < pMultiTracksChunk->NumTracks( ); i++ )
                                {
                                    tlMultiControllerTrackData* pData = pMultiTracksChunk->GetTracks();
									// Is it a texture controller?
									list<TexController>::iterator ti = textureControllers.begin();
									bool bFound = false;


									while( ti != textureControllers.end() )
									{
										if( strcmp( pData[ i ].name, ti->name.c_str() ) == 0 )
										{
											bFound = true;

											// Texture controllers have a big problem, their hierarchy name
											// holds the shader, not the DSG object. 
											// So we can only know to add it if the compdraw and multicontroller have the same name
											if ( pAnim != NULL )
											{
												pAnim->GetChunk()->AppendSubChunk( ti->pController ,FALSE);
												printf("Adding texture controller\n");
											}
											// Put the framecontroller into the AnimDSGEntity										   

											break;
										}
										++ti;
									}
									if( !bFound )
									{
										tlAnimCollDSGChunkWrapper* pCurrent = p_animDSGlist->FindFrameController( pData[ i ].name );
										if ( pAnim == NULL )
										{
											pAnim = pCurrent;
										}
										else if ( pCurrent != pAnim )
										{
											printf( "MultiController matched multiple DSG Chunks.\n" );
											printf( "Talk to Travis if you see this message.\n" );
											pAnim = NULL;
											break;
										}
									}
                                }
                            }
                        default:
                            {
                                break;
                            }
                        }
                    }
                    if ( pAnim != NULL )
                    {
                        if ( pAnim->GetChunk() != 0 )
                        {
						    printf("\tFound Matching AnimCollDSGChunk or texture controller\n");
						    pAnim->GetChunk()->AppendSubChunk(sub,FALSE);
                        }
                    }
					else
					{

					    ostringstream oss;
						oss << "Multicontroller " << sub->GetName() << " is being ignored. ";
						oss << "I don't know with which comp drawable it goes with!";

						MessageBox(NULL,oss.str().c_str(),"AnimCollDSGMaker",MB_OK);
					}
                    break;
                }
                default:

                {
				
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
		if ( !billboardList.empty() )
		{
			MessageBox(NULL,"billboardList not empty!","",MB_OK);
		}

		//verify that no missing FrameControllers
		printf("\n=============================================\n");
		printf("\t VERIFYING AnimCollDSGChunks\n");
		printf("\n=============================================\n");
		if (p_animDSGlist->verifychunks() != 0)
		{
			badart= true;
		}

		if (badart == true)
		{
			printf("============================================================================== \n \n");
			printf("ERROR: This file is imcomplete, File contains missing:\n	Bounding Volumes,and or Physics Chunks,and or FrameControllers, and or Composite Drawables  SEE ERRORS above\n \n");
			printf("============================================================================== \n \n");
			exit (-1);
		}
		else
		{
			printf("AnimCollDSGmaker completed, without ERRORS.\n");
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


int AddAllCompositeDrawables( tlDataChunk* parentChunk, BillboardList* billboardList, AnimCollDSGList* store, tlDataChunk* outchunk )
{
	int numFound = 0;
	for ( int ch = 0 ; ch < parentChunk->SubChunkCount() ; ch++)
	{
		tlDataChunk* sub = parentChunk->GetSubChunk( ch );
		if ( sub->ID() == P3D_COMPOSITE_DRAWABLE )			
		{

            tlAnimCollDSGChunk* p_animDSG = new tlAnimCollDSGChunk ();
            store->add(p_animDSG);
            tlCompositeDrawableChunk16* pCompDrawChunk = (tlCompositeDrawableChunk16*)sub;
            int j;
            for ( j = 0; j < pCompDrawChunk->SubChunkCount(); j++ )
            {

                tlDataChunk* sub = pCompDrawChunk->GetSubChunk( j );
                switch( sub->ID() )
                {

                case P3D_COMPOSITE_DRAWABLE_SKIN_LIST:
                    {
                        tlCompositeDrawableSkinListChunk16* pSkinListChunk = (tlCompositeDrawableSkinListChunk16*)sub;
                        store->GetCurrent( )->mSkins = pSkinListChunk->NumElements();
                        if ( store->GetCurrent( )->mSkins > 0 )
                        {
                            store->GetCurrent( )->mpSkinList = new tlCompositeDrawableSkinChunk16*[ store->GetCurrent( )->mSkins ];
                            for (int i = 0; i < pSkinListChunk->SubChunkCount(); i++ )
                            {
                                tlDataChunk* sub = pSkinListChunk->GetSubChunk( i );
                                tlCompositeDrawableSkinChunk16* pSubChunk = dynamic_cast<tlCompositeDrawableSkinChunk16*>( sub );
                                if ( pSubChunk )
                                {
                                    store->GetCurrent( )->mpSkinList[ i ] = pSubChunk;
                                }
                            }
                        }
                        break;
                    }
                case P3D_COMPOSITE_DRAWABLE_PROP_LIST:
                    {
                        tlCompositeDrawablePropListChunk16* pPropListChunk = (tlCompositeDrawablePropListChunk16*)sub;
                        store->GetCurrent( )->mProps = pPropListChunk->NumElements();
                        if ( store->GetCurrent( )->mProps > 0 )
                        {
                            store->GetCurrent( )->mpPropList = new tlCompositeDrawablePropChunk16*[ store->GetCurrent( )->mProps ];
                            for (int i = 0; i < pPropListChunk->SubChunkCount(); i++ )
                            {
                                tlDataChunk* sub = pPropListChunk->GetSubChunk( i );
                                tlCompositeDrawablePropChunk16* pSubChunk = dynamic_cast<tlCompositeDrawablePropChunk16*>( sub );
                                
								if ( pSubChunk )
                                {
                                    store->GetCurrent( )->mpPropList[ i ] = pSubChunk;
									// Lets check and see if this prop is a billboard, if it is, then we can toss the billboard
									// into this DSG object
									map< string, tlBillboardQuadGroupChunk* >::iterator it;

									it = billboardList->find( pSubChunk->GetName() );
									if ( it != billboardList->end() )
									{
										// An billboard with the same name as this compdraw's prop was found
										// insert the billboard into the DSG object
										p_animDSG->AppendSubChunk( it->second ,FALSE);
										billboardList->erase( it );
									}
                                }

                            }
                        }
                        break;
                    }
                case P3D_COMPOSITE_DRAWABLE_EFFECT_LIST:
                    {
                        tlCompositeDrawableEffectListChunk16* pEffectListChunk = (tlCompositeDrawableEffectListChunk16*)sub;
                        store->GetCurrent( )->mEffects = pEffectListChunk->NumElements();
                        if ( store->GetCurrent( )->mEffects > 0 )
                        {
                            store->GetCurrent( )->mpEffectList = new tlCompositeDrawableEffectChunk16*[ store->GetCurrent( )->mEffects ];
                            for (int i = 0; i < pEffectListChunk->SubChunkCount(); i++ )
                            {
                                tlDataChunk* sub = pEffectListChunk->GetSubChunk( i );
                                tlCompositeDrawableEffectChunk16* pSubChunk = dynamic_cast<tlCompositeDrawableEffectChunk16*>( sub );
                                if ( pSubChunk )
                                {
                                    store->GetCurrent( )->mpEffectList[ i ] = pSubChunk;
                                }
                            }
                        }
                        break;
                    }
                }
            }

			printf("\nFound Comp Drawable %s,creating AnimCollDSGChunk\n",sub->GetName());
			p_animDSG->SetName(sub->GetName());
			p_animDSG->AppendSubChunk(sub,FALSE);
			outchunk->AppendSubChunk(p_animDSG,FALSE);
		}
	

		
	}

	return numFound;
}

// Find all billboards in the chunkfile and put them into the given billboardlist

int AddAllBillboards( tlDataChunk* parentChunk, BillboardList* billboardList)
{
	int numFound = 0;
	for( int ch=0; ch < parentChunk->SubChunkCount(); ch++)
	{
		tlDataChunk* sub = parentChunk->GetSubChunk(ch);
		if (sub->ID() == Pure3D::BillboardObject::QUAD_GROUP)
		{
			tlBillboardQuadGroupChunk* pBillboard = dynamic_cast< tlBillboardQuadGroupChunk* >( sub );
			if ( pBillboard != NULL )
			{
				std::cout << "inserting bb " << pBillboard->GetName() << std::endl;
				billboardList->insert( std::make_pair( pBillboard->GetName(), pBillboard ) );
			}
	
		}
	}
	return numFound;
}
