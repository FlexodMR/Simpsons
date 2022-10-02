/*===========================================================================
    File: main.cpp 

    This tool processes textures and images in a Pure3D file


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

const unsigned int NUM_IMAGE_FORMATS = 23;
const char* IMAGE_FORMATS[NUM_IMAGE_FORMATS] =
{
    "IMG_RAW",
    "IMG_PNG",
    "IMG_TGA",
    "IMG_BMP",
    "IMG_IPU",
    "IMG_DXT",
    "IMG_DXT1",
    "IMG_DXT2",
    "IMG_DXT3",
    "IMG_DXT4",
    "IMG_DXT5",
    "IMG_PS2_4BIT",
    "IMG_PS2_8BIT",
    "IMG_PS2_16BIT",
    "IMG_PS2_32BIT",
    "IMG_GC_4BIT",
    "IMG_GC_8BIT",
    "IMG_GC_16BIT",
    "IMG_GC_32BIT",
    "IMG_GC_DXT1",
    "IMG_OTHER",
    "IMG_INVALID",
    "IMG_UNKNOWN"
};

Parameters* Param;
void Process(tlTexture& texture);
void Process(tlSprite& sprite);
void Process(tlImage& image);
int filesize = 0;
int totalsize = 0;
bool gInMipmap = false;
tlImageFormat firstLevelMMFormat = IMG_RAW;
bool gMMFormatFailed = false;
bool gReduced = false;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    // the gamecube only supports the DXT1 format, but we always
    // want to try and see if we can use that format
    if (Param->GameCubeImage)
    {
        Param->DXT1Only = true;
    }

    // Make sure we're not going to try and do any auto-detection
    if(Param->DXT1Only)
    {
        Param->Format = 1;
    }

    // The DXTn formats are probably best for the xbox
    if(Param->XBoxImage)
    {
        if(!Param->Format)
        {
            Param->Format = 9;
        }
    }

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
    else if (Param->NewBpp > 0)
    {
        Param->NewBpp = 4;
    }

    tlDataChunk::RegisterDefaultChunks();
    tlDataChunk* outchunk = NULL;
    char output_filename[P3DMAXNAME];

    // If we have an output file, out everything together
    // If Query mode, no output file.
    if( Param->OutputFile && !Param->Query )
    {
        outchunk = new tlDataChunk;
        if(Param->WriteHistory)
        {
            // put a history chunk in the output
            // a history chunk shows what version of the tool
            // was run on the file with what command-line 
            // parameters
            outchunk->AppendSubChunk(Param->HistoryChunk());
        }
        strcpy(output_filename, Param->OutputFile);
    }


    // for each file on the command-line, do the following:
    for(int i = 0; i < Param->Files.Count(); i++) 
    {
        bool bImageOK = true;

        filesize = 0;
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

        tlFile::FileFormat fileFormat = tlFile::FORMAT_UNKNOWN;
        // Unless it is specifically requested to read input as an image, try to detect format.
        if(!Param->ImageFile)
        {
            fileFormat = input.DetectFormat();
        }
        else
        {
            printf(" WARNING: The -i option is not now needed and will eventually be removed\n");
            fileFormat = tlFile::FORMAT_IMAGE;
        }

        // build an output chunk for this file if we don't have an output file.
        // If Query mode, no output file.
        if(!Param->OutputFile && !Param->Query && !Param->ImageOutputFile )
        {
            outchunk = new tlDataChunk;
            if(Param->WriteHistory)
            {
                // put a history chunk in the output
                // a history chunk shows what version of the tool
                // was run on the file with what command-line 
                // parameters
                outchunk->AppendSubChunk(Param->HistoryChunk());
            }
            strcpy(output_filename, Param->Files[i]);
        }

        tlDataChunk* inchunk = NULL;

        if (Param->ImageFile || fileFormat == tlFile::FORMAT_IMAGE)
        {
            tlImage image;
            bImageOK = image.Load(input);

            if ( bImageOK )
            {
                image.SetName(JustFileName( Param->Files[i] ));
                tlImageFormat imageFormat = tlImage::DetectFormat( input );

                // we don't need the tlFile anymore
                // this cleans up the tlFile object including the
                // tlFileByteStream
                input.Close();

                if ( Param->Query )
                {
                    Process( image );
                }
                else if (Param->SpriteExport)
                {
                    tlSprite sprite;
                    sprite.SetImage(&image);
                    Process(sprite);
                    // Write it out
                    if ( outchunk != NULL )
                        outchunk->AppendSubChunk(sprite.Chunk());
                }
                else if( outchunk != NULL )
                {
                    tlTexture texture(image);
                    Process(texture);
                    
                    outchunk->AppendSubChunk(texture.Chunk());
                }
                else if(fileFormat == tlFile::FORMAT_IMAGE && Param->ImageOutputFile)
                {
                    Process(image);
                    
                    // Write the output image
                    image.Save(imageFormat, Param->Files[i]);
                    // image.Save(Param->Files[ i ]);
                }

                if (!Param->OutputFile)
                {
                    // Change extension on output filename
                    ForceExtension(output_filename, "p3d");
                }
            }
            else
            {
                printf( "Error loading image \"%s\"\n", Param->Files[i] );
            }
        }
        else if(fileFormat == tlFile::FORMAT_P3D)
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
                    case Pure3D::Texture::TEXTURE:
                    {
                        tlTexture texture(sub);

                        if( (Param->NamePatterns.Count() == 0) ||
                            glob(&Param->NamePatterns, texture.GetName()))
                        {
                            if( (Param->ExcludeNamePatterns.Count() == 0) ||
                                glob(&Param->ExcludeNamePatterns, texture.GetName()) == FALSE )
                            {
                                Process(texture);
                            }
                            // Process again if requested format doesn't work.
                            if ( gMMFormatFailed )
                            {
                                texture.LoadFromChunk(sub); // Recreate texture from subchunk.
                                int oldFormat = Param->Format;
                                Param->Format = 0; // Temporarily ignore format request.
                                Process(texture);
                                Param->Format = oldFormat; // Restore format.
                                gMMFormatFailed = false;   // Reset error flag.
                            }
                        }

                        if ( outchunk != NULL )
                            outchunk->AppendSubChunk(texture.Chunk());
                    }
                    break;
                
                    case Pure3D::Texture::IMAGE:
                    {
                        tlImage image(sub);

                        if( (Param->NamePatterns.Count() == 0) ||
                            glob(&Param->NamePatterns, image.GetName()))
                        {
                            if( (Param->ExcludeNamePatterns.Count() == 0) ||
                                glob(&Param->ExcludeNamePatterns, image.GetName()) == FALSE )
                                Process(image);
                        }

                        if ( outchunk != NULL )
                            outchunk->AppendSubChunk(image.Chunk());
                    }
                    break;

                    case Pure3D::Texture::SPRITE:
                    {
                        tlSprite sprite(sub);

                        if( (Param->NamePatterns.Count() == 0) ||
                            glob(&Param->NamePatterns, sprite.GetName()))
                        {
                            if( (Param->ExcludeNamePatterns.Count() == 0) ||
                                glob(&Param->ExcludeNamePatterns, sprite.GetName()) == FALSE )
                                Process(sprite);
                        }

                        if ( outchunk != NULL )
                            outchunk->AppendSubChunk(sprite.Chunk());
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
                        if ( outchunk != NULL )
                            outchunk->AppendSubChunk(sub,FALSE);
                        break;
                }
            }
        }
        else
        {
            printf( "Error loading file \"%s\" : unknown file type\n", Param->Files[i] );
        }
            

        // If image failed to load, don't process.
        if ( bImageOK )
        {
            if( Param->Verbosity>5 )
            {
                if ( outchunk != NULL )
                    outchunk->Print();
            }

            // If Query mode or output to image, output is not created.
            if( !Param->OutputFile && !Param->Query && !Param->ImageOutputFile)
            {
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
                delete outchunk;
            }

            // cleanup the no-longer-needed wrapper chunks
            // Hmm, this will crash if we have more than one input
            // but one output.  Commented out for now.

            // delete inchunk;

            if(Param->ShowSize)
            {
                printf("File:    %-20s %4dK (%8d bytes)\n", Param->Files[i], filesize / 1024 , filesize);
            }

            totalsize += filesize;
        }

    } // end of main for loop

    // If Query mode, output is not created.
    if( Param->OutputFile && !Param->Query )
    {
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
        delete outchunk;
    }      

    if(Param->ShowSize)
    {
        printf("Total                         %4dK (%8d bytes)\n", totalsize / 1024, totalsize);
    }

    // Cleanup

    delete Param;
    return 0;
}

void Process(tlTexture& texture)
{
    int bpp = Param->NewBpp;
    if(Param->NotAlpha && texture.GetImage(0)->HasAlpha())
    {
        return;
    }

    if( Param->MaxImageSize2x2 != 0 )
    {
        int h = texture.GetHeight();
        int w = texture.GetWidth();
        if ( h == w && h > Param->MaxImageSize2x2 )
        {
            texture.SetSize( Param->MaxImageSize2x2, Param->MaxImageSize2x2 );
        }
    }
    int i;
    for( i = 0; ( i < texture.GetImageCount() ) && ( !gReduced ); i++ )
    {
        Process(*texture.GetImage(i));
        if( texture.GetImageCount( ) > 1 )
        {
            if( gReduced )
            {
                // Delete unused portion of mipmaps.
                int numRemoved = texture.GetImageCount() - 1;
                tlTable<tlImage*>& images = texture.GetImages();
                images.Delete(0, numRemoved);
                assert(images.Count() > 0);
                images.SetCount(1);
                texture.SetSize(images[0]->GetWidth(), images[0]->GetHeight());
            }
            gInMipmap = true;
            firstLevelMMFormat = texture.GetImage( 0 )->GetFormat( );
        }
    }
    // Reset the mipmap flags.
    gInMipmap = false;    
    gReduced  = false;

    texture.SetBpp(texture.GetImage(0)->GetBpp());
    texture.SetAlphaDepth(texture.GetImage(0)->HasAlpha() ? 8 : 0);

    if(Param->GameCubeImage)
    {
        if( texture.GetImage(0)->GetFormat() == IMG_DXT1 )
        {
            texture.SetTextureType( TEXTYPE_DXT1 );
        }
        else
        {
            texture.SetGCFormat();
        }
    }
    else
    {
        switch( texture.GetImage(0)->GetFormat() )
        {
            case IMG_DXT1:
                texture.SetTextureType( TEXTYPE_DXT1 );
                break;
            case IMG_DXT2:
                texture.SetTextureType( TEXTYPE_DXT2 );
                break;
            case IMG_DXT3:
                texture.SetTextureType( TEXTYPE_DXT3 );
                break;
            case IMG_DXT4:
                texture.SetTextureType( TEXTYPE_DXT4 );
                break;
            case IMG_DXT5:
                texture.SetTextureType( TEXTYPE_DXT5 );
                break;
            default:
                if( texture.GetImage(0)->IsPalettized() )
                {
                    texture.SetTextureType( TEXTYPE_PALETTIZED );
                }
                else
                {
                    texture.SetTextureType( TEXTYPE_RGB );
                }
                break;
        }
    }

    int texturesize = texture.MemorySize();
    filesize += texturesize;
    if(Param->ShowSize)
    {
        printf("Texture: %-20s %4dK (%8d bytes)\n", texture.GetName(), texturesize / 1024, texturesize);
    }
}

void Process(tlSprite& sprite)
{
    sprite.SetName(sprite.GetImage()->GetName());

    // Allow some level of control over the minimum and maximum texture sizes
    sprite.SetMinSpriteSize(Param->MinSpriteSize);
    sprite.SetMaxSpriteSize(Param->MaxSpriteSize);

    // this will chop the sprite up into power of 2 sized sections, so the sprite
    // can be memory imaged.
    if (Param->DiceSprite)
    {
        sprite.SplitImage();
    }

    sprite.SetShader(NULL);
    
    sprite.SetNativeX(640);
    sprite.SetNativeY(480);

    int i = 0;
    for(;i < sprite.GetImageCount(); i++)
    {
        Process( *sprite.GetImage( i ) );
    }
}

void Process(tlImage& image)
{
    unsigned int bpp = Param->NewBpp;

    if ( Param->Query )
    {
        printf    ( "\t           Image: \"%s\"\n", image.GetName() );

        int texturesize = image.MemorySize();
        int bpp = image.GetBpp();
        int alphaDepth = image.GetRealAlphaDepth();
        bool hasAlpha = image.HasAlpha();
        printf    ( "\t      Dimensions: %d x %d\n", image.GetWidth(), image.GetHeight() );
        printf    ( "\t          Format: %s\n", IMAGE_FORMATS[ image.GetFormat() ] );

        if ( image.IsPalettized() ) 
        {
            printf( "\t   Palette Count: %d", image.GetPaletteCount() );
            if ( image.GetRawClrUsed() > 0 )
            {
                printf("    (Colors used: %d)", image.GetRawClrUsed() );
            }
            printf("\n");
        }
        else
        {
            printf( "\t        Bitdepth: %d-bit\n", image.GetBpp());
        }

        printf( "\t           Alpha: %s\n", ( hasAlpha ? "YES" : "NO" ) );
        if(hasAlpha)
        {
            if(alphaDepth == 0)
            {
                printf( "\tAlpha Depth Used: 1 bit  (opaque only)" );
            }
            else
            {
                printf( "\tAlpha Depth Used: %d bit%s\n", alphaDepth, ( ( alphaDepth > 1 ) ? "s" : "" ) );
            }
        }

        printf    ( "\t            Size: %4dK (%8d bytes)\n", texturesize / 1024, texturesize);
        printf( "\n" );
        return;
    }

    if(Param->Filter != 0.0f)
    {
        image.Blur( Param->Filter );
    }

    if(Param->Contrast != 0.0f || Param->Brightness != 0.0f || Param->Hue != 0.0f ||
       Param->Saturation != 0.0f || Param->Lightness != 0.0f || Param->GammaCorrection != 0.0f)
    {
        image.Adjust( Param->Contrast, Param->Brightness, Param->Hue,
                      Param->Saturation, Param->Lightness, Param->GammaCorrection );
    }
    else if(Param->GammaCorrection != 0.0f)
    {
        image.Gamma(Param->GammaCorrection);
    }

    if(Param->HighlightNTSC)
    {
        //if the image has illegal NTSC colors then add the bmp name to illegal files
        if (image.HighlightNTSCIllegalColours() == true)
        {
            char outputbuffer [255];
            sprintf(outputbuffer,"ERROR:   ====> Texture: %s has illegal NTSC colours \n",image.GetName());
            //fstream fout;
            //fout.open(,ios::out | ios::trunc );

            //fout.open("badNTSC.txt",filebuf::
              //  fout.open(
            //fout<<outputbuffer;
           // fout.close();
            
            FILE* pFile = NULL;
            
            pFile = fopen("D:\\badNTSC.txt","a+");
            
            if (pFile == NULL)
            {
                printf("FUCK file ptr is NULL!! \n");
                //Assert(0);
            }
            else
            {
                fprintf(pFile,"%s",outputbuffer);
                fclose(pFile);
            }


        }

    }

	if( Param->NTSCFix )
	{
		double desaturation = image.DesaturateForNTSC();
		if( Param->Verbosity > 1 )
		{
			if( desaturation < 0.0 )
			{
				printf( "Desaturated %s by %.1f%%.\n", image.GetName(), desaturation );
			}
		}
	}
    
    if(Param->ClampNTSC)
    {
        image.ClampNTSCIllegalColours();
    }

    if ( Param->Solid && !gInMipmap )
    {
        if(image.SolidColour())
        {
            if(Param->Verbosity > 1)
            {
                printf("image %s is solid colour\n", image.GetName());
            }
            bpp = 4;
            image.Resize(8,8);
            gReduced = true;
        }
    }

    if( Param->MaxImageSize2x2 != 0 )
    {
        int h = image.GetHeight();
        int w = image.GetWidth();

        if ( h == w && h > Param->MaxImageSize2x2 )
        {
            printf("Reducing size of: %s\n", image.GetName() );

            int lvl = h / Param->MaxImageSize2x2;

            tlImage* mipmap = NULL;

            mipmap = image.GenerateMipmap(lvl - 1);

            image.Resize( Param->MaxImageSize2x2, Param->MaxImageSize2x2 );
            image = *mipmap;
            delete mipmap;
        }
    }
    
    if( Param->Format )
    {
        tlImageFormat format = image.GetFormat();
        switch( Param->Format )
        {
            case 1:
                if( !Param->DXT1Only || (image.GetRealAlphaDepth() < 2) )
                {
                    format = IMG_DXT1;
                }
                break;
            case 2:
                format = IMG_DXT2;
                break;
            case 3:
                format = IMG_DXT3;
                break;
            case 4:
                format = IMG_DXT4;
                break;
            case 5:
                format = IMG_DXT5;
                break;
            case 9:
            default:
                if( image.GetRealAlphaDepth() > 4 )
                {
                    if( !Param->DXT1Only )
                    {
                        format = IMG_DXT5;
                    }
                }
                else if( image.GetRealAlphaDepth() > 1 )
                {
                    if( !Param->DXT1Only )
                    {
                        format = IMG_DXT3;
                    }
                }
                else
                {
                    format = IMG_DXT1;
                }
                break;
        }
                
        if (gInMipmap)
        {
            // All mipmap levels must have the same format.
            if (format != firstLevelMMFormat)
            {
                gMMFormatFailed = true;
            }
        }
        if((format != image.GetFormat()) && (Param->Verbosity > 1))
        {
            printf( "Converting to DXT%d Format\n", format - IMG_DXT1 + 1 );
        }
        image.Convert( 32, false, image.HasAlpha(), Param->Dither != 0 );
        image.SetFormat( format );

    }
    if((image.GetFormat() > IMG_DXT5) || (image.GetFormat() < IMG_DXT1))
    {
        if( (Param->NewBpp) && ((bpp < image.GetBpp()) || Param->Upgrade) )
        {
            if(Param->Optimize)
            {
                // Optimize palettized images
                if(bpp < 24)
                {
                    if(image.ColoursUsed() < 16)
                    {
                        bpp = 4;
                    }
                }
                else
                {
                    if(image.GetRealAlphaDepth() == 0)
                    {
                        bpp = 24;
                        image.SetAttributes( image.GetWidth(), image.GetHeight(), bpp, false, false );
                    }
                }
            }
            if(Param->Verbosity > 1)
            {
                printf("Converting image %s from %dbpp to %dbpp\n", 
                       image.GetName(),
                       image.GetBpp(),
                       bpp );
            }
            image.Convert(bpp, (bpp < 24), image.HasAlpha(), Param->Dither != 0);            
        }
        if( Param->GameCubeImage )
        {
            //image.SetGCFormat();
            image.SetFormat( IMG_PNG );
        }
        else
        {
            image.SetFormat( IMG_PNG );
        }
    }

    // The '!!' (not not) operator converts to a (bool) argument, suppressing a compiler warning.
    // I tried casting with (bool) and (static_cast<bool>) but those didn't silence the compiler.
    image.SetQuickSave( !!Param->QuickSave );

}

