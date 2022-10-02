/*===========================================================================
    File: main.cpp 

    Takes a .p3d file exported from Maya with a single animated, phys object and bundles it into an InstAnimDynaPhysDSG object thats ready to be instanced.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlInstAnimDynaPhysDSGChunk.hpp>
#include <tlAnimDSGWrapper.hpp>

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
        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }

		// build the chunk that will hold the animation/geometry data for our DSG object
		tlAnimDSGWrapperChunk* pDSGObject = new tlAnimDSGWrapperChunk;
		


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
			// Textures don't go inside our wrapper
  			case Pure3D::Texture::TEXTURE:
				outchunk->AppendSubChunk(sub,FALSE);
				break;
			// Shaders don't go inside our wrapper
			case Pure3D::Shader::SHADER:
				outchunk->AppendSubChunk(sub,FALSE);
				break;
            case P3D_COMPOSITE_DRAWABLE:
				pDSGObject->SetName( sub->GetName() );
			case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
			case P3D_MULTI_CONTROLLER:
			case Simulation::Collision::OBJECT:
			case Pure3D::BillboardObject::QUAD_GROUP:
			case Pure3D::Mesh::MESH:
			case Pure3D::Animation::AnimationData::ANIMATION:
			case Simulation::Physics::OBJECT:
			case P3D_SKELETON:
			case StateProp::STATEPROP:
				pDSGObject->AppendSubChunk(sub,FALSE);
                default:
					// Just ignore any unhandled subchunks

                    break;
            }
        }
		// Place the wrapped DSG object in our output
		outchunk->AppendSubChunk( pDSGObject, FALSE );

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
		delete pDSGObject;
    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

