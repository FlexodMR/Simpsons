/*===========================================================================
    File: main.cpp 

    This tool extracts images and textures from a Pure3D file, possibly replacing them with references.


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "toollib.hpp"

#include "Param.hpp"

Parameters* Param;

bool SaveImage(tlImage* img, tlImageFormat image_format)
{
    char name[P3DMAXNAME];
    name[ 0 ] = 0;
    if( Param->Directory ){
         strcpy( name, ".\\" );
         strcat( name, Param->Directory );
         strcat( name, "\\" );
    }

    strcat(name, img->GetName());
    ForceExtension(name, img->GetFileExtension( image_format ));

    if (img->Save(image_format, name ))
    {
        if (Param->Reference)
        {
            char img_ref[P3DMAXNAME];
            strcpy(img_ref, img->GetName());
            ForceExtension(img_ref, img->GetFileExtension(image_format));
            img->SetReference(img_ref);
            img->SetFormat(image_format);
        }
        return true;
    }
    else
    {
        char name[P3DMAXNAME];
        strcpy(name, img->GetName());
        ForceExtension(name, img->GetFileExtension(image_format));

        fprintf(stderr,"Failed to save %s\n", name);
        return false;
    }
}

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


        tlImageFormat image_format;
        if (Param->PNG)
        {
            image_format = IMG_PNG;
        }
        else if (Param->Targa)
        {
            image_format = IMG_TGA;
        }
        else if (Param->Raw)
        {
            image_format = IMG_RAW;
        }
        else if( Param->DXT1 ){
            image_format = IMG_DXT1;
        }
        else if( Param->DXT3 ){
            image_format = IMG_DXT3;
        }
        else if( Param->DXT5 ){
            image_format = IMG_DXT5;
        }
        else{
            image_format = IMG_BMP;
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
                case Pure3D::Texture::IMAGE:
                {
                    tlImage img(sub);

                    char name[P3DMAXNAME];
                    name[ 0 ] = 0;
                    if( Param->Directory )
                    {
                         strcpy( name, ".\\" );
                         strcat( name, Param->Directory );
                         strcat( name, "\\" );
                    }

                    strcat(name, img.GetName());               
                    ForceExtension(name, img.GetFileExtension( image_format ));               
                  
                    if (img.Save(image_format, name))
                    {
                        if(Param->Reference)
                        {
                            char img_ref[P3DMAXNAME];
                            strcpy(img_ref, img.GetName());
                            ForceExtension(img_ref, img.GetFileExtension(image_format));

                            img.SetReference(img_ref);
                            img.SetFormat(image_format);
                            outchunk->AppendSubChunk(img.Chunk());
                        }
                        else
                        {
                            // Write out the old chunk
                            outchunk->AppendSubChunk(sub,FALSE);
                        }
                    }
                    else
                    {
                        outchunk->AppendSubChunk(sub,FALSE);
                    }
                    break;
                }
                
                case Pure3D::Texture::TEXTURE:
                {
                    tlTexture tex(sub);
                    if (tex.GetVolumeImageCount()>0)
                    {
                        for(int i = 0; i < tex.GetVolumeImageCount(); i++)
                        {
                            tlVolumeImage* volImg = tex.GetVolumeImage(i);
                            for (int j = 0; j < volImg->GetDepth(); j++)
                            {
                                SaveImage(volImg->GetImage(j),image_format);
                            }
                        }
                    }
                    else
                    {
                        for (int j = 0; j < tex.GetImageCount(); ++j)
                        {
                            SaveImage(tex.GetImage(j),image_format);
                        }
                    }

                    if (Param->Reference)
                    {
                        outchunk->AppendSubChunk(tex.Chunk());
                    }
                    else
                    {
                        outchunk->AppendSubChunk(sub, FALSE);
                    }

                    break;
                }
                    
                case Pure3D::Texture::SPRITE:
                {
                    tlSprite sprite(sub);

                    // Write chunk
                    // Note, we currently don't do references
                    outchunk->AppendSubChunk(sub,FALSE);

                    // Now write the BMP
                    if(Param->Targa)
                    {
                      tlImage *img = sprite.GetImage();
                      SaveImage( img, IMG_TGA );
                    } 
                    else if(Param->PNG)
                    {   
                      tlImage *img = sprite.GetImage();
                      SaveImage( img, IMG_PNG );                  
                    } 
                    else 
                    {
                        tlImage *img = sprite.GetImage();
                        SaveImage( img, IMG_BMP );                                  
                    }
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

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }
        
        // Only write a new file if we're changing the old one

        if(Param->Reference )
        {
            char buf[P3DMAXNAME];
            if(Param->OutputFile)
            {
                strcpy(buf,Param->OutputFile);
            } else {
                strcpy(buf,Param->Files[i]);
            }
            
            // create the new output file
            tlFile output(new tlFileByteStream(buf,omWRITE), tlFile::CHUNK32);

            if(!output.IsOpen()) 
            {
                printf("Could not open %s for writing\n", buf);
                exit(-1);
            }

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


