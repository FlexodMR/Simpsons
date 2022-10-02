/*===========================================================================
    File: main.cpp 

    Takes a file with InstDynaPhysDSG objects or InstAnimDynaPhysDSG objects and adds corresponding breakables from the exporartlibrary to it


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <string>
#include <windows.h>
#include <sstream>
#include <set>

#include "Param.hpp"

Parameters* Param;

const int PROP_BREAKABLE_ID = 4;
const int PROP_ANIM_BREAKABLE_ID = 5;

// Searches a directory and all its subdirectories for the given file
std::string FindFile( std::string filename, std::string rootPath );


int main(int argc, char* argv[])
{
	std::set< std::string > breakablesToAdd;
    
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
            switch(sub->ID())
            {
				//
				case SRR2::ChunkID::INSTA_ANIM_DYNA_PHYS_DSG:
				case SRR2::ChunkID::DYNA_PHYS_DSG:
					{
						// The name of the DSG object is the name we will use to find the prop
						// breakable

						// We are looking for the object attribute chunk
						// it will tell us if the object is a PROP_BREAKABLE
						for (int i = 0 ; i < sub->SubChunkCount() ; i++ )
						{
							tlDataChunk* subSub = sub->GetSubChunk( i );
							if ( SRR2::ChunkID::OBJECT_ATTRIBUTES == subSub->ID() )
							{
	

								tlObjectAttributeChunk* objectAttributes = dynamic_cast< tlObjectAttributeChunk* > ( subSub );
								if ( objectAttributes != NULL )
								{
									// Read the physprop ID, if it is a "4" or "5" (PROP_BREAKBLE)
									// log the information of this chunk

									if (  objectAttributes->GetClassType() == PROP_BREAKABLE_ID ||
										  objectAttributes->GetClassType() == PROP_ANIM_BREAKABLE_ID )
									{
										// It is a propbreakable. Flag the type (the string name) in an std::set
										// and then we'll search for and add it into the chunkfile at the end of processing

										// Get rid of the _Shape and replace it with _breakable
										std::string filename = sub->GetName();
										int pos = filename.rfind("_Shape");
										if (pos != std::string::npos)
										{
											filename.erase( pos, 6 );
										}

										std::ostringstream oss;
										oss << filename << "_breakable.p3d";
										breakablesToAdd.insert( oss.str() );
									}
								}
								else
								{
									// Dynamic Cast failed!? Probably a programming bug
									// log an error and skip this chunk
									std::cerr << "Dynamic Cast <Object Attributes> FAILED!" << std::endl;
									return EXIT_FAILURE;
								}
							}
						}
					}
                default:
                    break;
			}// Switch
        }// For each sub chunk

		// Go to the exportartlibrary
		std::string exportArtLibraryPath;
		{
			const int BUFFER_SIZE = 1000;
			char buffer[BUFFER_SIZE];
			GetCurrentDirectory( BUFFER_SIZE, buffer );
			std::string path = buffer;

			// Switch to the exportartlibrary
			std::string::size_type pos = path.rfind("game\\build",path.length());
			if ( pos == std::string::npos )
			{
				std::cerr<<"Fatal error, exportartlibrary path not found"<<std::endl;
				return EXIT_FAILURE;
			}
			exportArtLibraryPath = path.erase(pos,INT_MAX);
			exportArtLibraryPath.insert( pos, "game\\exportartlibrary");
			
		}

		// Iterate through the set of breakables, find and add them to the outchunk
		std::set< std::string >::iterator it;


		for ( it = breakablesToAdd.begin() ; it != breakablesToAdd.end() ; it++ )
		{
			// Find the breakable from the exportart library
			// 
			std::string breakableFileName = FindFile( *it, exportArtLibraryPath );
			if ( breakableFileName != "" )
			{
				// add it to the outchunk
				tlFile input(new tlFileByteStream( breakableFileName.c_str() ,omREAD), tlFile::FROMFILE);
				if( input.IsOpen() ) 
				{
					tlDataChunk* breakableChunk = new tlDataChunk( &input );
			
					for(int ch=0; ch < breakableChunk->SubChunkCount(); ch++)
					{
				        tlDataChunk* sub = breakableChunk->GetSubChunk(ch);
						outchunk->AppendSubChunk( sub, FALSE );
					}

					input.Close();
				}
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
// Searches a directory and all its subdirectories for the given file
std::string FindFile( std::string filename, std::string rootPath )
{
	std::string filePath;
	LPTSTR subPath;
	const int RESULT_SIZE = 10000;
	char result[RESULT_SIZE];
	// search the current directory for the file
	if ( SearchPath(
	  rootPath.c_str(),      // pointer to search path
	  filename.c_str(),
	  NULL, // pointer to extension
	  RESULT_SIZE, // size, in characters, of buffer
	  result,     // pointer to buffer for found filename
	  &subPath   // pointer to pointer to file component
	) > 0 )
	{
		// File found, return it
		filePath = result;
	}
	else
	{

		// search all sub directories for the file
		
		WIN32_FIND_DATA findData;

		std::ostringstream directorySearchPath;
		directorySearchPath << rootPath << "\\*";

		HANDLE findHandle = FindFirstFile( directorySearchPath.str().c_str(), &findData );
		if ( findHandle != INVALID_HANDLE_VALUE )
		{
			while ( FindNextFile( findHandle, &findData) )
			{
				std::string fileName = findData.cFileName;
				if ( findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY && 
					 fileName != "." &&
					 fileName != ".." )
				{
					// change into the subdirectory
					std::ostringstream oss;
					oss << rootPath << "\\" << fileName;

					
					filePath = FindFile( filename, oss.str().c_str() );
					if ( filePath != "" )
						break;

				}
			}
			FindClose( findHandle );
		}


	}
	return filePath;
}

