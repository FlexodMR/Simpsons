/*===========================================================================
    File: main.cpp 

    Convert all textures and images of a p3d file into DXTn image format


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>
#include <tlImage.hpp>
#include "tlImageChunk.hpp"
#include "tlTextureChunk.hpp"
#include <time.h>

#include "Param.hpp"

struct tm startTime = { 0, 0, 12, 25, 11, 93 };
void ResetTime( );
void PrintUsedTime( );


Parameters* Param;

int main(int argc, char* argv[])
{
    // the constructor of this class processes command-line
    // parameters
    Param = new Parameters(argc,argv);

    tlImageFormat imgFrmt;
    bool bAutoDetect;

    if( Param->Format == 0 )
    {
        if( Param->DXT1Only ){
            bAutoDetect = false;
            imgFrmt = IMG_DXT1;
        }
        else{
            bAutoDetect = true;
            imgFrmt = IMG_DXT;
        }
    }
    else
    {
        bAutoDetect = false;
        switch (Param->Format)
        {
            case 1:
                imgFrmt = IMG_DXT1;
                break;
            case 3:
                imgFrmt = IMG_DXT3;
                break;
            case 5:
                imgFrmt = IMG_DXT5;
                break;
            default:
                imgFrmt = IMG_DXT1;
                break;
        }
    }

    tlDataChunk::RegisterDefaultChunks();

    //Reset the time for printint used time
    ResetTime( );

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
                case Pure3D::Texture::IMAGE:
                {
                    tlImage img(sub);
                    if (bAutoDetect)
                    {                        
                        int depth = img.GetRealAlphaDepth( );
                        
                        if( depth > 4 )         //alpha bits depth > 4
                            imgFrmt = IMG_DXT5;
                        else if( depth > 1)
                            imgFrmt = IMG_DXT3; //alpha bits depth > 1
                        else
                            imgFrmt = IMG_DXT1;
                    }

                    if ( Param->DXT1Only && img.GetRealAlphaDepth() > 1 )
                    {
                        imgFrmt = img.GetFormat();
                    }

                    img.SetFormat(imgFrmt);
               
                    if ( Param->Verbosity > 1 )
                    {
                        printf("Processing image '%s'\n", img.GetName());
                    }
                    if( Param->QuickSave ){
                        img.SetQuickSave( true );
                    }
                    outchunk->AppendSubChunk(img.Chunk());
                }
                break;
            
                /*
                  //dxtn for volume images not supported yet because runtime loader won't load it properly
                  case Pure3D::Texture::VOLUME_IMAGE:
                  {
                  tlVolumeImage volImg(sub);
                  for (int i = 0; i < volImg.GetDepth(); i++)
                  {
                  tlImage* img = volImg.GetImage(i);
                  if (bAutoDetect)
                  {
                  imgFrmt = img->HasAlpha() ? IMG_DXT3 : IMG_DXT1;
                  }
                  img->SetFormat(imgFrmt);
                  if ( Param->Verbosity > 1 )
                  {
                  printf("Processing image '%s'\n", img->GetName());
                  }
                  }
                  outchunk->AppendSubChunk(volImg.Chunk());
                  }
                  break;
                */

                case Pure3D::Texture::TEXTURE:
                {
                    //create a new empty texture chunk from the old one
                    tlTexture texture( sub );
                    int i;
                    if (bAutoDetect)
                    {
                        texture.SetAlphaDepth(texture.GetRealImageAlphaDepth(0));

                        int depth = texture.GetAlphaDepth( );

                        if( depth > 4 )         //alpha bits depth > 4
                            imgFrmt = IMG_DXT5;
                        else if( depth > 1)
                            imgFrmt = IMG_DXT3; //alpha bits depth > 1
                        else
                            imgFrmt = IMG_DXT1;
                    }

 
                    for(i = 0; i < texture.GetImageCount(); i++)
                    {
                        tlImage* img = texture.GetImage(i);

                        if ( Param->DXT1Only && img->GetRealAlphaDepth() > 1 )
                        {
                            imgFrmt = img->GetFormat();
                        }

                        img->SetFormat( imgFrmt );
                    }
                    for( i = 0; i < texture.GetVolumeImageCount(); i++)
                    {
                        tlVolumeImage* img = texture.GetVolumeImage(i);

                        img->SetFormat( imgFrmt );
                    }
                    
                    if ( Param->Verbosity > 1 )
                    {
                        printf("Processing texture'%s'\n", texture.GetName());
                    }


                    if( Param->QuickSave )
                    {
                        for(i = 0; i < texture.GetImageCount(); i++)
                        {
                            tlImage* img = texture.GetImage(i);
                            img->SetQuickSave( true );
                        }
                        for( i = 0; i < texture.GetVolumeImageCount(); i++)
                        {
                            tlVolumeImage* img = texture.GetVolumeImage(i);
                            img->SetFormat( imgFrmt );
                            img->SetQuickSave( true );
                        }
                    }
                    outchunk->AppendSubChunk(texture.Chunk());

                    /*
                      //dxtn for volume images not supported yet because runtime loader won't load it properly
                      if (texture.GetVolumeImageCount()>0)
                      {
                      for(int i = 0; i < texture.GetVolumeImageCount(); i++)
                      {
                      tlVolumeImage* volImg = texture.GetVolumeImage(i);
                      for (int j = 0; j < volImg->GetDepth(); j++)
                      {
                      tlImage* img = volImg->GetImage(j);
                      if (bAutoDetect)
                      {
                      imgFrmt = img->HasAlpha() ? IMG_DXT3 : IMG_DXT1;
                      }
                      img->SetFormat(imgFrmt);
                      if ( Param->Verbosity > 1 )
                      {
                      printf("Processing image '%s'\n", img->GetName());
                      }
                      }
                      }
                      }
                    */
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

        output.SetType(tlFile::CHUNK32);
        
        outchunk->SetID(Pure3D::DATA_FILE);

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete inchunk;
        delete outchunk;
    
    } // end of main for loop

    if( Param->Verbosity ){
        //print used time
        PrintUsedTime( );
    }

    // Cleanup

    delete Param;
    return 0;
}

void PrintUsedTime( )
{

    time_t ltime;

    struct tm *end;

    _tzset();

    time( &ltime );
    end = localtime( &ltime );

    int hours, minutes, seconds;

    if( end->tm_sec < startTime.tm_sec ){
        --end->tm_min;
        seconds = 60 + end->tm_sec - startTime.tm_sec;
    }
    else
        seconds = end->tm_sec - startTime.tm_sec;


    if( end->tm_min < startTime.tm_min ){
        --end->tm_hour;
        minutes = 60 + end->tm_min - startTime.tm_min;
    }
    else
        minutes = end->tm_min - startTime.tm_min;



    if( end->tm_hour < startTime.tm_hour ){
        --end->tm_yday;
        hours = 24 + end->tm_hour - startTime.tm_hour;
    }
    else
        hours = end->tm_hour - startTime.tm_hour;


    printf( "Total time used is: %d hours - %d minutes - %d seconds\n", hours, minutes, seconds );

}

void ResetTime( )
{
    time_t ltime;

    struct tm *start;

    _tzset();

    time( &ltime );
    start = localtime( &ltime );

    startTime = *start;

}
