/*===========================================================================
    File: main.cpp 

    Generates mipmaps.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <math.h>

#include "Param.hpp"

Parameters* Param;

using namespace std;
typedef map< string, long > STR2LONG;



int main(int argc, char* argv[])
{
    STR2LONG mmmap;      //a map from texture's name to its mipmap dimension bounder
    STR2LONG::iterator it;
    
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    if (Param->NewBpp > 24)
    {
        Param->NewBpp = 32;
    }
    else if (Param->NewBpp > 8)
    {
        Param->NewBpp = 24;
    }
    else if (Param->NewBpp > 4)
    {
        Param->NewBpp = 8;
    }

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

        char output_filename[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(output_filename, Param->OutputFile);
        }
        else
        {
            strcpy(output_filename, Param->Files[i]);
        }

        tlDataChunk* inchunk = NULL;

        if (Param->ImageFile)
        {
            tlImage image(input);
            image.SetName(Param->Files[i]);

            // we don't need the tlFile anymore
            // this cleans up the tlFile object including the
            // tlFileByteStream
            input.Close();

            tlTexture texture(image);

            if ((Param->Gamecube) && (image.GetBpp() > 16) )
            {
                outchunk->AppendSubChunk(texture.Chunk());
                
                if (!Param->OutputFile)
                {
                    // Change extension on output filename
                    ForceExtension(output_filename, "p3d");
                }
                continue;
            }
            texture.GenerateMipmaps(Param->Levels,
                                    Param->MinDimension,
                                    Param->NewBpp,
                                    !Param->NoColourKey,
                                    (unsigned char*)(&Param->ColourKey));

            if(Param->Dither && (Param->NewBpp <= 8) && (Param->NewBpp < image.GetBpp()))
            {
                tlTable<tlImage*>& images = texture.GetImages();

                // Create a 32 bit mip map with which to compare for dithering.
                tlTexture sourceTexture(image);
                sourceTexture.GenerateMipmaps(Param->Levels,
                                              Param->MinDimension,
                                              32,  // bpp
                                              !Param->NoColourKey,
                                              (unsigned char*)(&Param->ColourKey));
                tlTable<tlImage*>& sourceImages = sourceTexture.GetImages();

                for(int count = 0; count < texture.GetImageCount(); count++)
                {
                    images[count]->Dither(*(sourceImages[count]));
                }
            }
            
            if(Param->DropLevels)
            {
                int count = texture.GetImageCount();
                int remain = count - Param->DropLevels;
                if(remain < 1)
                {
                    remain = 1;
                }
                int remove = count - remain;
                tlTable<tlImage*>& images = texture.GetImages();
                images.Delete(0, remove);
                images.SetCount(remain);
                assert(images.Count() > 0);
                texture.SetSize(images[0]->GetWidth(), images[0]->GetHeight());
            }

            outchunk->AppendSubChunk(texture.Chunk());

            if (!Param->OutputFile)
            {
                // Change extension on output filename
                ForceExtension(output_filename, "p3d");
            }
        }
        else
        {
            // make a tlDataChunk from the file
            // this is the wrapper chunk for the input
            inchunk = new tlDataChunk(&input);

            // we don't need the tlFile anymore
            // this cleans up the tlFile object including the
            // tlFileByteStream
            input.Close();

            if(Param->Verbosity>6)
            {
                inchunk->Print();
            }

            int ch;

            //first go through all sub-chunks, and build up mmmap from
            //all shaders
            for( ch = 0; ch < inchunk->SubChunkCount( ); ch++ ){
                 tlDataChunk *sub = inchunk->GetSubChunk(ch);

                 if( sub->ID( ) == Pure3D::Shader::SHADER ){
                      long  ubounder, lbounder;

                      tlShader shader( sub );
                      ubounder = shader.GetIntParam( "MMAX" ) + 3;
                      lbounder = shader.GetIntParam( "MMIN" ) + 3;
                      ubounder = (long)pow( (double)2, (double)ubounder );
                      lbounder = (long)pow( (double)2, (double)lbounder );

                      it = mmmap.find( shader.GetTexture( ) );
                      if( it == mmmap.end( ) ){       //not found
                            long value = ( ubounder << 16  ) | lbounder;
                            mmmap.insert( STR2LONG::value_type( shader.GetTexture( ), value ) );
                      }
                      else{          //texture exist already
                            long ub, lb;
                            lb = (*it).second & 0x0000ffff;
                            ub = (*it).second >> 16;

                            if( ub < ubounder )
                                 ub = ubounder;

                            if( lb > lbounder )
                                 lb = lbounder;

                            long value = ( ub << 16  ) | lb;

                            (*it).second = value;
                      }
                 }
            }
                            

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
                    case Pure3D::Shader::SHADER:
                    {
                        tlShader shader(sub);

                        if(Param->ProcessShaders)
                        {
                            if(Param->Bilinear)
                            {
                                shader.SetIntParam("FIMD", 3);
                            }else{
                                shader.SetIntParam("FIMD", 4);
                            }
                        }

                        if(Param->Sharpness != 999999.0f) //999999.0f is the default value
                        {
                            shader.SetFloatParam("MSHP", Param->Sharpness);
                        }

                        outchunk->AppendSubChunk(shader.Chunk());
                        break;
                    }
                    case Pure3D::Texture::TEXTURE:
                    {
                        tlTexture texture(sub);

                        if ((Param->Gamecube) && (texture.GetTextureType() == TEXTYPE_RGB))
                        {
                            outchunk->AppendSubChunk(texture.Chunk());
                            continue;
                        }

                        if((Param->NamePatterns.Count() == 0) ||
                            glob(&Param->NamePatterns, texture.GetName()))
                        {
                            //now we search the mmmap to find the lower-bounder 
                            //and upper-bounder of the texture specified by the 
                            //shader
                            int dim = Param->MinDimension;
                            it = mmmap.find( texture.GetName( ) );

                            if( it != mmmap.end( ) ){       //texture name  in mmmap
                                 
                                 int lb = (int)( (*it).second & 0x0000ffff );

                                 //if the min-dimension given in commandline less than
                                 //what is specified by shader, we take the shader's 
                                 //sepcification
                                 dim = lb > dim ? lb  : dim;
                                                        
                            }

                            int textureBpp;
                            if(texture.GetVolumeImageCount()>0)
                            {
                                textureBpp = texture.GetVolumeImage(0)->GetBpp();
                            }
                            else
                            {
                                textureBpp = texture.GetImage(0)->GetBpp();
                            }

                            texture.GenerateMipmaps(Param->Levels,
                                                    dim,
                                                    Param->NewBpp,
                                                    !Param->NoColourKey,
                                                    (unsigned char*)(&Param->ColourKey));

                            if(Param->Dither && (Param->NewBpp <= 8) && (Param->NewBpp < textureBpp))
                            {
                                // Create a 32 bit mip map with which to compare for dithering.
                                tlTexture sourceTexture(sub);
                                sourceTexture.GenerateMipmaps(Param->Levels,
                                                              Param->MinDimension,
                                                              32,  // bpp
                                                              !Param->NoColourKey,
                                                              (unsigned char*)(&Param->ColourKey));
                                if(texture.GetVolumeImageCount() > 0)
                                {
                                    tlTable<tlVolumeImage*>& volumeImages       = texture.GetVolumeImages();
                                    tlTable<tlVolumeImage*>& sourceVolumeImages = sourceTexture.GetVolumeImages();

                                    for(int volumeCount = 0; volumeCount < sourceVolumeImages.Count(); volumeCount++)
                                    {
                                        tlTable<tlImage*>& images       = volumeImages[volumeCount]->GetImages();
                                        tlTable<tlImage*>& sourceImages = sourceVolumeImages[volumeCount]->GetImages();

                                        for(int count = 0; count < sourceImages.Count(); count++)
                                        {
                                            images[count]->Dither(*(sourceImages[count]));
                                        }
                                    }
                                }
                                else
                                {
                                    tlTable<tlImage*>& images = texture.GetImages();
                                
                                    tlTable<tlImage*>& sourceImages = sourceTexture.GetImages();
                                    for(int count = 0; count < sourceImages.Count(); count++)
                                    {
                                        images[count]->Dither(*(sourceImages[count]));
                                    }
                                }
                            }

                            if(Param->DropLevels)
                            {
                                if (texture.GetVolumeImageCount()>0)
                                {
                                    int count = texture.GetVolumeImageCount();
                                    int remain = count - Param->DropLevels;
                                    if(remain < 1)
                                    {
                                        remain = 1;
                                    }
                                    int remove = count - remain;
                                    tlTable<tlVolumeImage*>& images = texture.GetVolumeImages();
                                    images.Delete(0, remove);
                                    assert(images.Count() > 0);
                                    images.SetCount(remain);
                                    texture.SetSize(images[0]->GetWidth(), images[0]->GetHeight());
                                }
                                else
                                {
                                    int count = texture.GetImageCount();
                                    int remain = count - Param->DropLevels;
                                    if(remain < 1)
                                    {
                                        remain = 1;
                                    }
                                    int remove = count - remain;
                                    tlTable<tlImage*>& images = texture.GetImages();
                                    images.Delete(0, remove);
                                    assert(images.Count() > 0);
                                    images.SetCount(remain);
                                    texture.SetSize(images[0]->GetWidth(), images[0]->GetHeight());
                                }
                            }
                        }

                        outchunk->AppendSubChunk(texture.Chunk());
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
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }

        // create the new output file
        tlFile output(new tlFileByteStream(output_filename, omWRITE), tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", output_filename);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        if (inchunk != NULL)
        {
            delete inchunk;
        }
        delete outchunk;

    } // end of main for loop

    // Cleanup

    delete Param;
    return 0;
}

