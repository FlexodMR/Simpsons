/*===========================================================================
    File: main.cpp 

    This tool converts a true type font to p3d format


    Copyright (c)  Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <toollib.hpp>

#include "Param.hpp"

Parameters* Param;

void ReadFromCharFile(tlTypeFace* typeface, const char* filename, bool unicode)
{
    FILE *charFile;

    if ((charFile = fopen( filename, "r" ))==NULL)
    {
        printf("ERROR: Character List File does not exist\n");
        return;
    }

    if (!typeface)
    {
        printf("ERROR: No typeface was created\n");
        return;
    }

    char inbuf[256];
    char delimiters[] = " ,\t\n";
    char *token;
    unsigned int currChar;
    unsigned int numChars = 0;

    if (unicode)
    {
        while(!feof(charFile))
        {
            fgets(inbuf, 256, charFile);
            token = strtok( inbuf, delimiters );
            numChars++;
            while(token!=NULL)
            {
                int pow16 = 1;
                currChar = 0;
                for (int i = strlen(token)-1; i >= 0; i--)
                {
                    switch (token[i])
                    {
                        case 'a':
                        case 'A':
                        {
                            currChar += (10 * pow16);
                            break;
                        }
                        case 'b':
                        case 'B':
                        {
                            currChar += (11 * pow16);
                            break;
                        }
                        case 'c':
                        case 'C':
                        {
                            currChar += (12 * pow16);
                            break;
                        }
                        case 'd':
                        case 'D':
                        {
                            currChar += (13 * pow16);
                            break;
                        }
                        case 'e':
                        case 'E':
                        {
                            currChar += (14 * pow16);
                            break;
                        }
                        case 'f':
                        case 'F':
                        {
                            currChar += (15 * pow16);
                            break;
                        }
                        case '0':
                        case '1':
                        case '2':
                        case '3':
                        case '4':
                        case '5':
                        case '6':
                        case '7':
                        case '8':
                        case '9':
                        {
                            currChar += ((token[i]-48) * pow16);
                            break;
                        }
                        default:
                        {
                            printf("WARNING: unicode character #%d in character list file is invalid\n", numChars);
                            break;
                        }
                    }
                    pow16 *= 16;
                }
                typeface->AddCharacter(currChar);
                token = strtok( NULL, delimiters );
            }
        }
    }
    else
    {
        while(!feof(charFile))
        {
            char tempbuf[256];

            fgets(inbuf, 256, charFile);            
            strcpy(tempbuf,inbuf);

            //find all escape sequences
            token = strtok( tempbuf, "\\" );
            while(token!=NULL)
            {
                switch(token[0])
                {
                    // space
                    case 's':
                    case 'S':
                    {
                        typeface->AddCharacter(32);
                        break;
                    }
                    // comma
                    case ',':
                    {
                        typeface->AddCharacter(',');
                        break;
                    }
                }
                token = strtok( NULL, "\\" );
            }

            //get all other characters
            token = strtok( inbuf, delimiters );        
            while(token!=NULL)
            {
                currChar=(unsigned int)(*token);
                typeface->AddCharacter(currChar);
                token = strtok( NULL, delimiters );
            }
        }
    }
    fclose(charFile);
}

//description( "Specify a list of extra glyphs to include.  Format is (unicode, left, right, top, bottom, width, height, filename)" ),

void ReadFromExtraGlyphsFile(tlTypeFace* typeface, const char* filename)
{
    FILE *charFile;

    if ((charFile = fopen( filename, "r" ))==NULL)
    {
        printf("ERROR: Extra Glyphs File does not exist\n");
        return;
    }

    if (!typeface)
    {
        printf("ERROR: No typeface was created\n");
        return;
    }

    char inbuf[256];
    char delimiters[] = " ,\t\n()";
    char *token;
    int line = 0;
    enum { UNICODE,LEFT,RIGHT,BASELINE,IMAGE,DONE } currParam;

    unsigned int unicode;
    unsigned short left;
    unsigned short right;
    unsigned short baseline;
    char image[256];

    while(!feof(charFile))
    {
        bool error = 0;

        fgets(inbuf, 256, charFile);
        token = strtok( inbuf, delimiters );
    
        line++;
        currParam = UNICODE;

        while((token!=NULL)&&(error==0))
        {
            switch (currParam)
            {
                case UNICODE:
                {
                    int pow16 = 1;
                    unicode = 0;
                    for (int i = strlen(token)-1; i >= 0; i--)
                    {
                        switch (token[i])
                        {
                            case 'a':
                            case 'A':
                            {
                                unicode += (10 * pow16);
                                break;
                            }
                            case 'b':
                            case 'B':
                            {
                                unicode += (11 * pow16);
                                break;
                            }
                            case 'c':
                            case 'C':
                            {
                                unicode += (12 * pow16);
                                break;
                            }
                            case 'd':
                            case 'D':
                            {
                                unicode += (13 * pow16);
                                break;
                            }
                            case 'e':
                            case 'E':
                            {
                                unicode += (14 * pow16);
                                break;
                            }
                            case 'f':
                            case 'F':
                            {
                                unicode += (15 * pow16);
                                break;
                            }
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                            {
                                unicode += ((token[i]-48) * pow16);
                                break;
                            }
                            default:
                            {
                                error = 1;
                                break;
                            }
                        }

                        if (error)
                        {
                            break;
                        }

                        pow16 *= 16;
                    }

                    token = strtok( NULL, delimiters );
                    currParam = LEFT;
                    break;
                }
                case LEFT:
                {
                    left = atoi(token);
                    token = strtok( NULL, delimiters );
                    currParam = RIGHT;
                    break;
                }
                case RIGHT:
                {
                    right = atoi(token);
                    token = strtok( NULL, delimiters );
                    currParam = BASELINE;
                    break;
                }
                case BASELINE:
                {
                    baseline = atoi(token);
                    token = strtok( NULL, delimiters );
                    currParam = IMAGE;
                    break;
                }
                case IMAGE:
                {
                    strcpy(image,token);
                    token = strtok( NULL, delimiters );
                    currParam = DONE;
                    break;
                }
            }
        }

        if (currParam != DONE)
        {
            printf("ERROR: line %d in extra glyphs file is invalid\n", line);
        }
        else
        {
            typeface->LoadCharacter(unicode, left, right, baseline, image);
        }
    }

    fclose(charFile);
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

        tlTypeFace typeface(Param->Files[i]);
        if (!typeface.IsOK())
        {
            printf("Could not open %s\n", Param->Files[ i ]);
            continue;
        }
        typeface.SetFontSize(Param->FontSize);
        typeface.SetBlitBorder(Param->GlyphBorder);
        typeface.SetFourBit(Param->EnableFourBitPal==1);
        typeface.SetAntiAlias(Param->DisableAntiAlias==0);
        typeface.SetAlphaBlending(Param->DisableAlphaBlending==0);
        typeface.SetForeGroundColour(tlColour(Param->ForeRed,Param->ForeGreen,Param->ForeBlue,Param->ForeAlpha));
        typeface.SetBackGroundColour(tlColour(Param->BackRed,Param->BackGreen,Param->BackBlue,Param->BackAlpha));
        typeface.SetSafeGlyphPacking(Param->DisableSafePack==0);
        if (Param->DisableDefaultChars==0)
        {
            typeface.AddDefaultCharacters(false);
        }

        if (Param->UnicodeListFile)
        {
            ReadFromCharFile(&typeface, Param->UnicodeListFile, true);
        }

        if (Param->CharListFile)
        {
            ReadFromCharFile(&typeface, Param->CharListFile, false);
        }

        if (Param->ExtraGlyphsFile)
        {
            ReadFromExtraGlyphsFile(&typeface, Param->ExtraGlyphsFile);
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

        switch (Param->FontType)
        {
        case 0:
            {
                tlTextureFont* font = typeface.CreateTextureFont(Param->TextureWidth, Param->TextureHeight);
                if (Param->FontName)
                {
                    font->SetName(Param->FontName);
                }
                outchunk->AppendSubChunk(font->Chunk());
                delete font;
            }
            break;
        case 1:
            {
                tlImageFont* font = typeface.CreateImageFont();
                if (Param->FontName)
                {
                    font->SetName(Param->FontName);
                }
                outchunk->AppendSubChunk(font->Chunk());
                delete font;
            }
            break;
        }

        if(Param->Verbosity>5)
        {
            outchunk->Print();
        }
        
        char buf[P3DMAXNAME];
        if(Param->OutputFile)
        {
            strcpy(buf,Param->OutputFile);
        } 
        else 
        {
            char* extension = strrchr(Param->Files[i], '.' );
            strcpy(buf,Param->Files[i]);
            buf[extension-(Param->Files[i])] = 0;
        }
            
        // create the new output file
        tlFile output(new tlFileByteStream(buf,omWRITE),tlFile::CHUNK32);

        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", Param->Files[i]);
            exit(-1);
        }

        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);

        // cleanup the no-longer-needed wrapper chunks
        delete outchunk;

    } // end of main for loop

    delete Param;
    return 0;
}

