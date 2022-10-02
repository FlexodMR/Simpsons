/*===========================================================================

    File: main.cpp 

    Main for p3ddel

    This tool deletes chunks from P3D files, either by chunk ID, or by name.


    Copyright (c) 1998, 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "toollib.hpp"
#include "Param.hpp"


bool GetChunkName(tlDataChunk* chunk, char* buf)
{
    for (int i = 0; i < chunk->GetFieldCount(); ++i)
    {
        if (!chunk->GetFieldIsArray(i) &&
             (strcmp(chunk->GetFieldType(i), "string") == 0) &&
             (strcmp(chunk->GetFieldName(i), "Name") == 0))
        {
            chunk->GetFieldValue(i, buf, 255);
            return true;
        }
    }

    return false;
}


Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    // load chunk handlers for default chunks
    tlDataChunk::RegisterDefaultChunks();

    int keepdefault = TRUE;

    // make sure -d and -k are not specified at the same time
    if(Param->KeepList.Count())
    {
        keepdefault = FALSE;
        if(Param->DeleteList.Count())
        {
            printf("p3ddel: ERROR -d and -k are mutually exclusive\n");
            exit(-1);
        }
    }

    // make sure that when -D is specified it is the only option specified
    if(Param->DelDuplicate  
        && (Param->MeshDeletePattern.Count() ||
             Param->MeshKeepPattern.Count() ||  
             Param->CompositeDeletePattern.Count() ||
             Param->CompositeKeepPattern.Count() ||
             Param->MaterialDeletePattern.Count() ||  
             Param->MaterialKeepPattern.Count() ||  
             Param->TextureDeletePattern.Count() ||  
             Param->TextureKeepPattern.Count() ||  
             Param->AnimDeletePattern.Count() ||  
             Param->AnimKeepPattern.Count() ))      
    {
        printf("p3ddel: ERROR -D cannot be used with other delete flags\n");
        exit(-1);
    }
 

    if(Param->DelDuplicate)
    {
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

            int ch, chInd;
            tlDataChunk* subCh;
            tlDataChunk* curSubCh;
			bool bProcessDefault = true;
			if( Param->DeleteList.Count() )
			{
				bProcessDefault = false;
			}
            // remove the duplicate chunks
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                bool duplicate = false;
                // create the next sub-chunk
                curSubCh = inchunk->GetSubChunk(ch);

				bool bProcess = bProcessDefault;
				int i;
                for( i = 0; i < Param->DeleteList.Count(); ++i )
                {
                    if( curSubCh->ID() == (unsigned)Param->DeleteList[i] )
                    {
                        bProcess = true;
                    }
                }
                for( i = 0; i < Param->KeepList.Count(); ++i )
                {
                    if( curSubCh->ID() == (unsigned)Param->KeepList[i] )
                    {
                        bProcess = false;
						break;
                    }
                }
				if( bProcess )
				{
					// compare with all the chunks before curSubCh
					for(chInd = ch-1; 0 <= chInd; chInd--)
					{
						subCh = inchunk->GetSubChunk(chInd);
						bool bCompare = bProcessDefault;
						for( i = 0; i < Param->DeleteList.Count(); ++i )
						{
							if( subCh->ID() == (unsigned)Param->DeleteList[ i ] )
							{
								bCompare = true;
							}
						}
						for( i = 0; i < Param->KeepList.Count(); ++i )
						{
							if( subCh->ID() == (unsigned)Param->KeepList[i] )
							{
								bCompare = false;
								break;
							}
						}
						if( !bCompare )
						{
							continue;
						}
						if( curSubCh->NameCompare(*subCh))
						{
							duplicate = true;
							if( Param->CompareID )
							{
								if( curSubCh->ID() != subCh->ID() )
								{
									duplicate = false;
								}
							}
							else if( Param->CompareEverything )
							{
								if(!(*curSubCh == *subCh ))
								{
									printf("Warning, chunk %d and %d have the same name (%s) but different contents\n",
											 chInd, ch, curSubCh->GetName());
									duplicate = false;
								}
							}
							if(duplicate)
							{
								break;
							}
						}
					}
				}
                if(!duplicate)
                {
                    outchunk->AppendSubChunk(curSubCh,FALSE);
                }
				else if( Param->Verbosity > 1 )
				{
					printf( "Removing duplicate chunk %d - %s (ID: 0x%08x)\n", ch, curSubCh->GetName(), curSubCh->ID() );
				}
            }

            if(Param->Verbosity>5)
            {
                outchunk->Print();
            }
        
            char* outfile;

            if(Param->OutFile)
            {
                outfile = Param->OutFile;
            } else {
                outfile = Param->Files[i];
            }
        
            // create the new output file
            tlFile output(new tlFileByteStream(outfile,omWRITE), tlFile::CHUNK32);

            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", Param->Files[i]);
                exit(-1);
            }

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);

            // cleanup the no-longer-needed wrapper chunks
            delete inchunk;
            delete outchunk;
    
        } // end of for loop

    }
    else
    {
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

            char chunk_name[256];
            int ch;
            // go through all the sub-chunks of the input and
            // process the ones you care about
            for(ch=0; ch < inchunk->SubChunkCount(); ch++)
            {
                // create the next sub-chunk
                tlDataChunk* sub = inchunk->GetSubChunk(ch);

                int keepthis = keepdefault;

                int i;
                for( i = 0 ; i < Param->DeleteList.Count() ; i++)
                {
                    if(sub->ID() == (unsigned)Param->DeleteList[i])
                    {
                        keepthis = FALSE;
                    }
                }

                for( i = 0 ; i < Param->KeepList.Count() ; i++)
                {
                    if(sub->ID() == (unsigned)Param->KeepList[i])
                    {
                        keepthis = TRUE;
                    }
                }

                switch(sub->ID())
                {
                    case Pure3D::Texture::TEXTURE:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->TextureDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->TextureKeepPattern.Count() &&
                                !glob(&Param->TextureKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case Pure3D::Mesh::MESH:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->MeshDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->MeshKeepPattern.Count() &&
                                !glob(&Param->MeshKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case Pure3D::Mesh::SKIN:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->SkinDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->SkinKeepPattern.Count() &&
                                !glob(&Param->SkinKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case P3D_COMPOSITE_DRAWABLE:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->CompositeDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->CompositeKeepPattern.Count() &&
                                !glob(&Param->CompositeKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case Pure3D::Animation::AnimationData::ANIMATION:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->AnimDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->AnimKeepPattern.Count() &&
                                !glob(&Param->AnimKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->AnimDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->AnimKeepPattern.Count() &&
                                !glob(&Param->AnimKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    case Pure3D::Shader::SHADER:
                    {
                        if (GetChunkName(sub, chunk_name))
                        {
                            if(glob(&Param->MaterialDeletePattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                            if(Param->MaterialKeepPattern.Count() &&
                                !glob(&Param->MaterialKeepPattern, chunk_name))
                            {
                                keepthis = FALSE;
                            }
                        }
                        break;
                    }
                    default:
                        break;
                }
                if(keepthis)
                {
                    outchunk->AppendSubChunk(sub,FALSE);
                }
            
            }

            if(Param->Verbosity>5)
            {
                outchunk->Print();
            }
        
            char* outfile;

            if(Param->OutFile)
            {
                outfile = Param->OutFile;
            } else {
                outfile = Param->Files[i];
            }
        
            // create the new output file
            tlFile output(new tlFileByteStream(outfile,omWRITE), tlFile::CHUNK32);

            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", Param->Files[i]);
                exit(-1);
            }

            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write(&output);

            // cleanup the no-longer-needed wrapper chunks
            delete inchunk;
            delete outchunk;
    
        } // end of for loop
    }
    // Cleanup

    delete Param;
    return 0;
}

