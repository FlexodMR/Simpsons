/*===========================================================================
    File: main.cpp 

    Creates a breakables chunk for Simpsons2 (extracts tAnimatedObject and the tMultiController)


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlBreakableObjectChunk.hpp>

#include "Param.hpp"

Parameters* Param;

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
		tlBreakableObjectChunk* breakable = new tlBreakableObjectChunk;
        breakable->SetMaxInstances(Param->MaxInstances);
        breakable->SetBreakableType(Param->BreakableType);

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
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            switch(sub->ID())
            {

				// Simpsons wraps up free floating mesh chunks and places them at the origin
				// Probably not a good thing. Take meshes and insert them into our new chunk
			case Pure3D::Mesh::MESH:
				{
					breakable->AppendSubChunk( sub, FALSE );
				}					
				break;
				// If we are going to wrap meshes up, then we have to wrap composite drawables as well 
				// since they require the meshes to be in the inventory when they are loaded
			case P3D_COMPOSITE_DRAWABLE:
				{
					breakable->AppendSubChunk( sub, FALSE );
				}
				break;
                //
				// tFrameController, needed so I can clone this into multiple FCs
				// Actually this is a tAnimatedObjectFrameController
				// Note that the muticontroller is never used and should be killed
			case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
				{
					breakable->AppendSubChunk( sub, FALSE );	
				}
				break;
				// tAnimatedObjectFactory, needed to create the tAnimatedObjects
			case Pure3D::AnimatedObject::FACTORY:
			case Pure3D::AnimatedObject::OBJECT:
				{
					breakable->AppendSubChunk( sub, FALSE );
				}
				break;
				// Breakables often have particle systems
				// adjust maxinstances


           case Pure3D::ParticleSystem::SYSTEM_FACTORY:
                {
                    for (int subch = 0 ; subch < sub->SubChunkCount() ; subch++)
                    {
                        tlDataChunk* pSubChunk = sub->GetSubChunk(subch);
                        if (pSubChunk->ID() == Pure3D::ParticleSystem::INSTANCING_INFO)
                        {
                            tlParticleInstancingInfoChunk* pInstanceInfo = dynamic_cast<tlParticleInstancingInfoChunk*> (pSubChunk);
                            pInstanceInfo->SetMaxInstances( Param->MaxInstances ); 
                        }
                    }
					breakable->AppendSubChunk(sub, FALSE);
                }
                    break;
			case P3D_SKELETON:
			case P3D_MULTI_CONTROLLER:
			case Pure3D::ParticleSystem::SYSTEM:
			case Pure3D::Animation::AnimationData::ANIMATION:
					breakable->AppendSubChunk(sub, FALSE);

				break;
				// Ignore cameras
				// and export info
			case P3D_CAMERA:
			case P3D_EXPORT_INFO:
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
		outchunk->AppendSubChunk( breakable , FALSE );

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
		delete breakable;
    
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

