/*===========================================================================
    File: main.cpp 

    This tool creates Simpsons Instances.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#pragma warning(disable:4786)

#include <list>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlAnimObjDSGWrapperChunk.hpp>
#include <tlInventory.hpp>
#include "Param.hpp"
#include <iostream>
#include <sstream>

Parameters* Param;

char separator = '_';

std::list<const char*> gLoadedLibraries;

bool LoadFromLibrary( const char* name, tlDataChunk* outchunk );

tlInventory drawableInventory;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlDataChunk::RegisterDefaultChunks();

    tlInventory skeletonInventory;

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

        char prepend[128];
        strcpy( prepend, Param->Files[i] );
        char* sep = strchr( prepend, separator );
        if ( !sep )
        {
            printf("Could not get prepend string!\n");
            exit(-1);
        }

        *sep = '\0';

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

        bool hasScenegraphs = false;

        int ch;
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            bool save = true;
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {
                case P3D_SKELETON:
                    {
                        tlSkeleton* skel = new tlSkeleton();
                        skel->LoadFromChunk16( sub );
                        skeletonInventory.Store( skel );
                        break;
                    }
                case Pure3D::SceneGraph::SCENEGRAPH:
                    {
                        //This is a scenegraph, all the scenegraph drawables
                        //Should be named the same as the name of the
                        //scenegraph (We will make it so otherwise. Haha!)
                        tlScenegraph* sceneGraph = new tlScenegraph();
                        sceneGraph->LoadFromChunk( sub );

                        //Name is the name of the thing that's instanced!  
                        const char* sceneName = sceneGraph->GetName();

                        //Should load a NAME thing from the library and add it
                        //to this p3d file.
                        if ( !LoadFromLibrary( sceneName, outchunk ) )
                        {
                            delete sceneGraph;
                            save = false;
                            break;
                        }
                            
                        tlScenegraphBranch* root = dynamic_cast<tlScenegraphBranch*>( sceneGraph->Find( "root" ) );
                        if ( !root || root->GetChildCount() != 1 )
                        {
                            printf( "Scenegraph %s has no root! Skipped\n", sceneName );
                            delete sceneGraph;
                            save = false;
                            break;
                        }
                        
                        tlScenegraphTransform* mainTransform = dynamic_cast<tlScenegraphTransform*>( root->GetChild( 0 ) );
                        if ( !mainTransform )
                        {
                            printf( "Scenegraph %s Is missing the root transform! Skipped\n", sceneName );
                            delete sceneGraph;
                            save = false;
                            break;
                        }

                        tlMatrix rootMat = mainTransform->GetTransform();
                        tlMatrix identity;
                        identity.IdentityMatrix();
                        mainTransform->SetTransform( identity );
     
                        if ( strcmp(mainTransform->GetName(), sceneGraph->GetName()) )
                        {
                            printf( "Scenegraph root transform not the same name as %s\n", sceneGraph->GetName() );
                            delete sceneGraph;
                            save = false;
                            break;
                        }
                        
                        //Now we have the main group node for the scenegraph.
                        //Yay.

                        unsigned int numInstances = mainTransform->GetChildCount();
                        unsigned int i;

                        for ( i = 0; i < numInstances; ++i )
                        {
                            //These should be transform->Drawable combinations
                            //or drawable with a skeleton combinations.
                            tlScenegraphTransform* transform = dynamic_cast<tlScenegraphTransform*>( mainTransform->GetChild( i ) );
							tlScenegraphDrawable* drawable = dynamic_cast<tlScenegraphDrawable*>( mainTransform->GetChild( i ) );
                            if ( transform || drawable )
                            {
								if( Param->Duplicate && !transform )
								{
									printf( "Scenegraph %s can/'t use duplicate parameter with composite drawables! Skipped.\n", sceneName );
									save = false;
									break;
								}

								if( transform )
								{
									// We have a transform, but no drawable. No problem, the child should
									//be the drawable.
									drawable = dynamic_cast<tlScenegraphDrawable*>( transform->GetChild( 0 ) );
									if ( !drawable )
									{
										printf( "Scenegraph %s Should have a drawable as a child of transform: %s! Skipped\n", sceneName, transform->GetName() );
										//delete sceneGraph;
										save = false;
										break;
									}
								}
								else
								{
									// We have a drawable, but no transformation. No
									//problem, we'll get the transform from the first
									//node of the drawable's skeleton and create a transform.
									tlSkeleton* skeleton = toollib_find<tlSkeleton>( &skeletonInventory, drawable->GetName() );
									if( !skeleton )
									{
										printf( "Unable to find skeleton for drawable %s in Scenegraph %s! Skipped.\n", drawable->GetName(), sceneName );
										save = false;
										break;
									}
									tlSkeletonJoint* joint = skeleton->GetJoint( 0 );
									tlMatrix& m = joint->GetRestPose();
									tlScenegraphTransform* newTrans = new tlScenegraphTransform();
									if( !newTrans )
									{
										printf( "Unable to create new transform node for scenegraph %s! Skipped.\n", sceneName );
										save = false;
										break;
									}
									newTrans->SetTransform( m );
									newTrans->SetChildCount( 1 );
									newTrans->SetChild( 0, drawable );
									mainTransform->SetChild( i, newTrans );
								}
                                //Set the name to name, he he.
                                if ( Param->Duplicate )
                                {
                                    char newName[256];
                                    sprintf( newName, "%s_%s%d", prepend, sceneName, i );

                                    drawable->SetName( newName );   
                                    drawable->SetDrawable( newName );
                                }
                                else
                                {
                                    drawable->SetName( sceneName );   
                                    drawable->SetDrawable( sceneName );
                                }

                                if ( Param->Duplicate )
                                {
                                    //This is where it gets a little funny.
                                    static unsigned int count = 0;

                                    //Find all the drawables with the given name and create a duplicate
                                    //With a new indexed name.
                                    //Also get the skeleton.
                                    tlInventory::Iterator<tlSkeleton> skelIt( &drawableInventory );

                                    tlMatrix mat = transform->GetTransform();
                                    mat = mat * rootMat;

                                    bool skelFound = false;  //This demands that there is either a skeleton or not.  NO combination of objects allowed.

                                    tlSkeleton* skel = skelIt.First();
                                    while ( skel )
                                    {
                                        skelFound = true;

                                        tlDataChunk* tempChunk = skel->Chunk16();
                                        tlSkeleton* newSkel = new tlSkeleton( tempChunk );
                                        delete tempChunk;

                                        char newName[256];
                                        sprintf( newName, "%s_%s%d",prepend, skel->GetName(), count );
                                        newSkel->SetName( newName );

                                        //Transform the root joint...
                                        newSkel->GetJoint( 0 )->SetName( newName );
                                        newSkel->GetJoint( 0 )->Transform( mat );

                                        outchunk->AppendSubChunk( newSkel->Chunk() );
                                        skel = skelIt.Next();
                                    }

                                    tlInventory::Iterator<tlPrimGroupMesh> meshIt( &drawableInventory );
                                   
                                    tlPrimGroupMesh* pgm = meshIt.First();
                                    assert( pgm );

                                    if ( !pgm )
                                    {
                                        printf( "Error, missing mesh %s!\n", sceneName );
                                        delete sceneGraph;
                                        save = false;
                                        break;
                                    }
                                    
                                    while ( pgm )
                                    {
                                        tlPrimGroupMesh* newPGM = new tlPrimGroupMesh( *pgm );
                                        char newName[256];
                                        sprintf( newName, "%s_%s%d", prepend, pgm->GetName(), count );
                                        newPGM->SetName( newName );

                                        if ( !skelFound )
                                        {
                                            newPGM->Transform( mat );
                                        }                                                            

                                        outchunk->AppendSubChunk( newPGM->Chunk() );

                                        pgm = meshIt.Next();
                                    }
                              
                                    tlInventory::Iterator<tlCompositeDrawable> cdIt( &drawableInventory );

                                    tlCompositeDrawable* cd = cdIt.First();

                                    while ( cd )
                                    {
                                        tlCompositeDrawable* newCD = new tlCompositeDrawable( cd );
                                    
                                        char newName[256];
                                        sprintf( newName, "%s_%s%d",prepend, cd->GetName(), count );
                                        newCD->SetName( newName );

                                        sprintf( newName, "%s_%s%d", prepend, cd->GetSkeletonName(), count );
                                        newCD->SetSkeletonName( newName );

                                        tlTable<tlCompositeDrawableProp*> propTable( newCD->GetSubProps() );

                                        unsigned int propIndex;
                                        for ( propIndex = 0; propIndex < propTable.Count(); ++propIndex )
                                        {
                                            tlCompositeDrawableProp* prop = propTable[ propIndex ];

                                            sprintf( newName, "%s_%s%d", prepend, prop->GetName(), count );
                                            prop->SetName( newName );
                                        }
                                        
                                        outchunk->AppendSubChunk( newCD->Chunk() );

                                        cd = cdIt.Next();
                                    }

                                    //Increment the instance count.
                                    ++count;
                                }
                            }
                            else
                            {
                                //NO SUPPORT FOR ANYTHING ELSE!
                                printf( "Scenegraph %s Should have a transform next Something IS Terribly Wrong with this Prop Layout! Skipped\n", sceneName);
                                exit (-1);
                                delete sceneGraph;
                                save = false;
                                break;

/*                                //This is okay, but we need the position of the original to make this work...
                                tlScenegraphDrawable* drawable = dynamic_cast<tlScenegraphDrawable*>( mainTransform->GetChild( i ) );
                                if ( !drawable )
                                {
                                    printf( "Scenegraph %s Should have a drawable as a child of transform: %s! Skipped\n", sceneName, transform->GetName() );
                                    delete sceneGraph;
                                    save = false;
                                    break;
                                }
                                const char* drawableName = drawable->GetName();
                                tlSkeleton* skel = toollib_find<tlSkeleton>(&skeletonInventory, drawableName );

                                tlScenegraphTransform* trans = new tlScenegraphTransform();
                                assert( trans );
                                trans->SetName( drawableName );
                                trans->SetChildCount( 1 );
                                trans->SetChild( 0, drawable );

                                int index;
                                tlMatrix mat = skel->FindJoint(drawableName, &index)->GetRestPose();
                                mat = mat * rootMat;

                                trans->SetTransform( mat );
                                assert( index >= 0 );

                                mainTransform->SetChild( i, trans );
                            
                                //Set the name to name, he he.
                                if ( Param->Duplicate )
                                {
                                    char newName[256];
                                    sprintf( newName, "%s_%s%d", prepend, sceneName, i );

                                    drawable->SetName( newName );   
                                    drawable->SetDrawable( newName );
                                }
                                else
                                {
                                    drawable->SetName( sceneName );   
                                    drawable->SetDrawable( sceneName );
                                }
*/
                            }
                        }

                        if ( save )
                        {
                            //Wrap this in a instances chunk.
                            tlInstancesChunk* instances = new tlInstancesChunk();

                            char newName[256];
                            strcpy(newName, prepend);
                            strcat(newName, "_");
                            strcat(newName, sceneGraph->GetName() );
                            instances->SetName( newName );
                            instances->AppendSubChunk( sceneGraph->Chunk() );
                            outchunk->AppendSubChunk( instances );
                        }

                        hasScenegraphs = true;
                    }
                    break;

                default:
                    break;
            }
        }

        if ( !hasScenegraphs )
        {
            printf( "ERROR: %s has no scenegraphs!\n", Param->Files[i] );
        }
        else
        {
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

            outchunk->SortSubChunks();

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);
        }

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

bool LoadFromLibrary( const char* name, tlDataChunk* outchunk )
{
    assert( Param->LibraryPath );

	tlAnimObjDSGWrapperChunk* animObj = 0;

    std::list< const char* >::iterator i;

    for ( i = gLoadedLibraries.begin(); i != gLoadedLibraries.end(); i++ )
    {  
        const char* storedName = *i;

        if ( strcmp( name, storedName ) == 0 )
        {
            //We've already got one!
            return true;
        }
    }    

    char fullname[256];
    sprintf( fullname, "%s\\%s.p3d", Param->LibraryPath, name );

    if ( Param->Verbosity > 0 )
    {
        printf("Opening file '%s'\n", fullname);
    }

    // open next file into a tlFile object
    tlFile input(new tlFileByteStream(fullname,omREAD), tlFile::FROMFILE);
    if(!input.IsOpen()) 
    {
        printf("Could not open %s\n", fullname);
        return false;
    }

    gLoadedLibraries.push_back( name );

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
            //Add all the chunks we wanna skip here.
            case P3D_HISTORY:
			case P3D_EXPORT_INFO:
                break;
			case P3D_SKELETON:
            case P3D_COMPOSITE_DRAWABLE:
			case P3D_MULTI_CONTROLLER:
			case Pure3D::AnimatedObject::FACTORY:
			case Pure3D::AnimatedObject::OBJECT:
			case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
			case Pure3D::BillboardObject::QUAD_GROUP:
			case Pure3D::Animation::AnimationData::ANIMATION:
			case StateProp::STATEPROP:
				{
					if( !animObj )
					{
						animObj = new tlAnimObjDSGWrapperChunk();
						if( !animObj )
						{
							printf( "Failed to allocate AnimObjDSGWrapperChunk.\n" );
							exit( -1 );
						}
						animObj->SetVersion( 1 );
					}
					if( sub->ID() == P3D_COMPOSITE_DRAWABLE )
					{
						// The artDB is expecting a name called name_Shape. Compdrawables don't
						// append _Shape, so lets append that right now to the wrapper chunk
						{
							std::ostringstream stream;
							stream << sub->GetName() << "_Shape";
							animObj->SetName( stream.str().c_str() );
						}
						char hasAlpha = 0;
						// Look to see if any of the composite drawable has alpha.
						tlCompositeDrawableChunk16* compDraw = static_cast<tlCompositeDrawableChunk16*>( sub );
						for( int i = 0; i < compDraw->SubChunkCount() && hasAlpha == 0; ++i )
						{
							tlDataChunk*& child = compDraw->GetSubChunk( i );
							if( child->ID() == P3D_COMPOSITE_DRAWABLE_SKIN_LIST )
							{
								tlCompositeDrawableSkinListChunk16* skinList = static_cast<tlCompositeDrawableSkinListChunk16*>( child );
								for( int j = 0; j < skinList->SubChunkCount() && hasAlpha == 0; ++j )
								{
									tlDataChunk*& skinChild = skinList->GetSubChunk( j );
									tlCompositeDrawableSkinChunk16* skin = dynamic_cast<tlCompositeDrawableSkinChunk16*>( skinChild );
									hasAlpha = skin ? skin->GetIsTranslucent() : 0;
								}
							}
							else if( child->ID() == P3D_COMPOSITE_DRAWABLE_PROP_LIST )
							{
								tlCompositeDrawablePropListChunk16* propList = static_cast<tlCompositeDrawablePropListChunk16*>( child );
								for( int j = 0; j < propList->SubChunkCount() && hasAlpha == 0; ++j )
								{
									tlDataChunk*& propChild = propList->GetSubChunk( j );
									tlCompositeDrawablePropChunk16* prop = dynamic_cast<tlCompositeDrawablePropChunk16*>( propChild );
									hasAlpha = prop ? prop->GetIsTranslucent() : 0;
								}
							}
							else if( child->ID() == P3D_COMPOSITE_DRAWABLE_EFFECT_LIST )
							{
								tlCompositeDrawableEffectListChunk16* effectList = static_cast<tlCompositeDrawableEffectListChunk16*>( child );
								for( int j = 0; j < effectList->SubChunkCount() && hasAlpha == 0; ++j )
								{
									tlDataChunk*& effectChild = effectList->GetSubChunk( j );
									tlCompositeDrawableEffectChunk16* effect = dynamic_cast<tlCompositeDrawableEffectChunk16*>( effectChild );
									hasAlpha = effect ? effect->GetIsTranslucent() : 0;
								}
							}
						}
						animObj->SetHasAlpha( hasAlpha );
					}
					animObj->AppendSubChunk( sub );
				}
				break;
			case Simulation::Collision::OBJECT:
			case Simulation::Physics::OBJECT:
				{
					if( animObj )
					{
						animObj->AppendSubChunk( sub );
					}
					else
					{
						outchunk->AppendSubChunk( sub );
					}
				}
				break;
            case Pure3D::Mesh::MESH:
                {
					if( animObj )
					{
						animObj->AppendSubChunk( sub );
					}
                    else if ( Param->Duplicate )
                    { 
                        tlPrimGroupMesh* pgm = new tlPrimGroupMesh();
                        pgm->LoadFromChunk( sub );
                        drawableInventory.Store( pgm );
                    }
                    else
                    {
                        outchunk->AppendSubChunk( sub );
                    }
                    break;
                }
            default:
                outchunk->AppendSubChunk( sub );
				break;
        }
    }

	if( animObj )
	{
		outchunk->AppendSubChunk( animObj, 1 );
	}

    return true;
}
