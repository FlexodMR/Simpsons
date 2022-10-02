/*===========================================================================
    File: main.cpp 

    Converts a scrooby project between referencing source images, and referencing p3dimaged files


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlScroobyProjectChunk.hpp>

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

        int ch;
        // go through all the sub-chunks of the input and
        // process the ones you care about
        for(ch=0; ch < inchunk->SubChunkCount(); ch++)
        {
            // create the next sub-chunk

            tlDataChunk* sub = inchunk->GetSubChunk(ch);

            // look at the id of the subchunk to decide if we 
            // want to do something with it or not
            tlScroobyImageResourceChunk* image = NULL;
            tlDataChunk* prjSub = NULL;
            tlDataChunk* pagSub = NULL;
            int pages;
            int images;
            switch(sub->ID())
            {
                case Pure3D::Scrooby::PROJECT :
                    // Cycle through the pages
                    for( pages = 0; pages < sub->SubChunkCount(); pages++ )
                    {
                        prjSub = sub->GetSubChunk( pages );
                        if( prjSub->ID() == Pure3D::Scrooby::PAGE )
                        {
                            for( images = 0; images < prjSub->SubChunkCount(); images++ )
                            {
                                pagSub = prjSub->GetSubChunk( images );
                                if( pagSub->ID() == Pure3D::Scrooby::RESOURCEIMAGE )
                                {
                                    image = dynamic_cast<tlScroobyImageResourceChunk*>( pagSub );
                                    if( image )
                                    {
                                        char* filename = new char[strlen( image->GetFilename() )+1];
                                        strcpy( filename, image->GetFilename() );
                                        if( strcmp( JustExtension( filename ), "png" ) == 0 )
                                        {
                                            filename[strlen(filename)-3] = 0;
                                            image->SetFilename( strcat( filename, "p3d" ) );
                                        }
                                        else if( strcmp( JustExtension( filename ), "bmp" ) == 0 )
                                        {
                                            filename[strlen(filename)-3] = 0;
                                            image->SetFilename( strcat( filename, "p3d" ) );
                                        }
                                        else if( strcmp( JustExtension( filename ), "tga" ) == 0 )
                                        {
                                            filename[strlen(filename)-3] = 0;
                                            image->SetFilename( strcat( filename, "p3d" ) );
                                        }
                                        else if( strcmp( JustExtension( filename), "p3d" ) == 0 )
                                        {
                                            filename[strlen(filename)-3] = 0;
                                            image->SetFilename( strcat( filename, "png" ) );
                                        }
                                        delete [] filename;
                                    }
                                }
                            }
                        }
                    }
                    outchunk->AppendSubChunk(sub,FALSE);
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

