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
#include <tlShaderChunk.hpp>
#include <tlFrameControllerChunk.hpp>
#include <tlMultiControllerChunk16.hpp>
#include <tlCompositeDrawableChunk16.hpp>
#include "AnimDSGList.hpp"
#include "Param.hpp"
#include <list>
#include <string>
#include <sstream>
#include <set>
#include <map>
#define WIN32_LEAN_AND_MEAN
#include <windows.h>

using namespace std;

Parameters* Param;

struct ShaderAttributes
{
	unsigned long hasTranslucency;
	string shaderName;

};
// Needed for STL set sorting.
bool operator<(const ShaderAttributes& lhs, const ShaderAttributes& rhs )
{
	return (lhs.shaderName < rhs.shaderName);
}

static unsigned long DoesShaderHaveAlpha( set<ShaderAttributes> shaderList, const char* shaderName )
{
	ShaderAttributes attr;
	attr.shaderName = shaderName;

	set<ShaderAttributes>::iterator it = shaderList.find( attr );
	if ( it != shaderList.end() )
	{
		return it->hasTranslucency;
	}
	else
	{
		printf("\n TEXTURE ANIMATION does not have a SHADER IN THIS PURE3D FILE!!!!");
		return false;
	}
	
}

struct TexController
{
	string name;
	tlFrameControllerChunk* pController;
};

typedef	map< string, tlBillboardQuadGroupChunk* > BillboardList;

int AddAllBillboards( tlDataChunk* parentChunk, BillboardList* );
// Searches all subchunks and places all Composite Drawables into the given store 
// as AnimDSG chunks
// returns the number found
int AddAllCompositeDrawables( tlDataChunk* parentChunk, BillboardList* billboardList, AnimDSGList* store, tlDataChunk* outchunk );

int main(int argc, char* argv[])
{
	AnimDSGList* p_animDSGlist=new AnimDSGList();
	bool badart = false;

	// A set of all billboards in the source file
	// It is necessary to keep this list because we can't keep any billboards 
	// free-floating because they will wrapped up and placed at the origin. So
	// we keep this list and use it to match up billboards to compositedrawable->props
	BillboardList billboardList;

	list< TexController > textureControllers;
	// The shaderList is intended to be used to determine whether or not a shader is translucent
	// or not. Devin added a "HasAlpha" chunk into my AnimDSGEntity
	// So we need to search the shaders->HasTransluceny chunk to determine this

	set< ShaderAttributes > shaderList;

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

		//
		AddAllBillboards( inchunk, &billboardList );
		// Find all composite drawables and turn them into AnimDSG chunks
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
                // Billboards should be placed inside the DSG object they are part of
				// Otherwise they go into the wrapped loader and get placed at the origin
			case Pure3D::BillboardObject::QUAD_GROUP:
				// Should be handled already by AddAllBillboards
				break;
			case P3D_COMPOSITE_DRAWABLE:
				// Should be handled already by AddAllCompositeDrawables
				break;


			case Pure3D::Shader::SHADER:
				{
					tlShaderChunk* pShaderChunk = dynamic_cast<tlShaderChunk*>( sub );
					if (pShaderChunk != NULL)
					{
						ShaderAttributes attr;
						attr.hasTranslucency = pShaderChunk->HasTranslucency();
						attr.shaderName = pShaderChunk->GetName();
						shaderList.insert( attr );
					}
					else
					{
						printf("\nShader Chunk dynamic cast failed!!!");
					}
				}
				outchunk->AppendSubChunk( sub, FALSE );
				break;
				
			case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
				{
					tlAnimDSGChunkWrapper* p_anim = NULL;
					tlFrameControllerChunk* p_framecon = (tlFrameControllerChunk*) sub;
					if( p_framecon->GetType() != Pure3DAnimationTypes::TEXTURE_TEX )
					{
						printf("\nFound Frame Controller %s,Searching for Parent AnimDSGChunk... \n",sub->GetName());
						p_anim = p_animDSGlist->getanim(p_framecon->GetHierarchyName());
						
						if(p_anim != NULL && p_anim->GetChunk() != NULL )
						{
							printf("\tFound Matching AnimDSGChunk\n");
							p_anim->FoundFrameController();
							p_anim->GetChunk()->AppendSubChunk(sub,FALSE);
							p_anim->AddFrameController( p_framecon );

							// Michael Riegger - ok, it appears that whoever added HasAlpha
							// has never bother to actually set it. 
							// It will default to 0
							// BUT! We probably want it on for various things, like billboards
							// Billboards should have it on
							// Other types of animation probably need to be check to see if they use shaders 
							// that reference textures that are translucent
								
							switch( p_framecon->GetType() )
							{
								// I SEVERLY doubt that any artist is going to make an opaque
								// billboard, because it would look horrible ingame.
							case Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG:
								p_anim->GetChunk()->SetHasAlpha( 1 );
							break;
							case Pure3DAnimationTypes::EFFECT_EFX:
								// An Effect. Almost certainly has alpha.
								p_anim->GetChunk()->SetHasAlpha( 1 );
								break;
							case Pure3DAnimationTypes::SHADER_SHAD:
								// What the hell is this? A shader animation?
								// Determine if the shader associated with it has alpha

								p_anim->GetChunk()->SetHasAlpha( DoesShaderHaveAlpha( shaderList, p_framecon->GetHierarchyName() ) );
								
								break;
							default:	
								// Some other type of animation
								// Does it require alpha? Who knows? Lets warn the user that we are not setting 
								// the HasAlpha chunk
								printf("\nHasAlpha defaulting to OFF");

								break;
							};
							
							
						}
						else
						{
							printf("\n\tERROR: cant find Parent AnimDSGChunk, %s is missing the Composite Drawable\n \n",p_framecon->GetHierarchyName());
							badart= true;
						}
					}
					else
					{
						TexController controller;
						controller.name = p_framecon->GetName();
						controller.pController = dynamic_cast<tlFrameControllerChunk*>(sub);
						//						
						string* controllerName = new string( p_framecon->GetName() );

						textureControllers.push_back( controller );
			

					}

					break;
				}
            case P3D_MULTI_CONTROLLER:
                {
                    printf("\nFound MultiController %s,  Searching for Parent AnimDSGChunk... \n",sub->GetName());
					                    
					tlMultiControllerChunk16* pMultiChunk = (tlMultiControllerChunk16*) sub;
                    

					// Try and find out if the multicontroller name is the same as any of the DSG objects
					// that are present. 
					tlAnimDSGChunkWrapper* pAnim = p_animDSGlist->getanim(pMultiChunk->GetName());
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

                    int i;
                    for ( i = 0; i < pMultiChunk->SubChunkCount(); i++ )
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
		

									// Search through all the frame controllers and try and find it						
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
									// Its not a texture controller
									if( !bFound )
									{
										// Try and find the DSG object that is referenced by this frame controller
										tlAnimDSGChunkWrapper* pCurrent = p_animDSGlist->FindFrameController( pData[ i ].name );
										if ( pAnim == NULL )
										{
											// We have found the DSG object for this track
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
						    printf("\tFound Matching AnimDSGChunk\n");
						    pAnim->GetChunk()->AppendSubChunk(sub,FALSE);
                        }
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
		printf("\t VERIFYING AnimDSGChunks\n");
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
			printf("AnimDSGmaker completed, without ERRORS.\n");
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







int AddAllCompositeDrawables( tlDataChunk* parentChunk, BillboardList* billboardList, AnimDSGList* store, tlDataChunk* outchunk )
{
	int numFound = 0;

	for ( int ch = 0 ; ch < parentChunk->SubChunkCount() ; ch++)
	{
		tlDataChunk* sub = parentChunk->GetSubChunk( ch );
		if ( sub->ID() == P3D_COMPOSITE_DRAWABLE )			
		{
            tlAnimDSGChunk* p_animDSG = new tlAnimDSGChunk ();
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
			printf("\nFound Comp Drawable %s,creating AnimDSGChunk\n",sub->GetName());
			p_animDSG->SetName(sub->GetName());
			p_animDSG->AppendSubChunk(sub,FALSE);
			outchunk->AppendSubChunk(p_animDSG,FALSE);
			numFound++;
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
				billboardList->insert( std::make_pair( pBillboard->GetName(), pBillboard ) );
			}
	
		}
	}
	return numFound;
}
