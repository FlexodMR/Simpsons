/*
 * choreochunk/main.cpp
 */


#include "tlchoreoscriptchunk.hpp"

#include <choreo/constants.hpp>
#include <choreo/utility.hpp>

#include "tlFile.hpp"
#include "tlFileByteStream.hpp"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>


char g_InputFilename[1024] = "";
char g_OutputFilename[1024] = "";


// main line
int main(int argc, char** argv)
{
    bool extractScripts = false;
    tlFile::FileType chunkFileType = tlFile::CHUNK32;

    // parse args
    int argci = 1;
    while (argci < argc)
    {
        if ((strcmp(argv[argci], "-o") == 0) ||
            (strcmp(argv[argci], "--output-file") == 0))
        {
            if ((argci + 1) >= argc)
            {
                fprintf(stderr, "Error:  No output file specified following %s option.\n", argv[argci]);
                exit(1);
            }

            if (strlen(g_OutputFilename) > 0)
            {
                fprintf(stderr, "Error:  Multiple output files specified.\n");
                exit(1);
            }

            ++argci;
            choreo::StrPrintf(g_OutputFilename, sizeof(g_OutputFilename), argv[argci]);
        }
        else if ((strcmp(argv[argci], "-?") == 0) ||
                 (strcmp(argv[argci], "-h") == 0) ||
                 (strcmp(argv[argci], "--help") == 0))
        {
            printf("Usage:  %s [options] <inputFile>\n"
                   "Options:\n"
                   "  -x, --extract                   Extract script from Pure3D file\n"
                   "  -t, --file-type type            Specify output chunk file type\n"
                   "                                    type can be one of CHUNK16, CHUNK16SWAP,\n"
                   "                                    CHUNK32, or CHUNK32SWAP (default CHUNK32)\n"
                   "  -o, --output-file name          Specify output file name\n"
                   "  -?, -h, --help                  Shows help (this message)\n",
                   argv[0]);
            exit(0);
        }
        else if ((strcmp(argv[argci], "-x") == 0) ||
                 (strcmp(argv[argci], "--extract") == 0))
        {
            extractScripts = true;
        }
        else if ((strcmp(argv[argci], "-t") == 0) ||
                 (strcmp(argv[argci], "--file-type") == 0))
        {
            if ((argci + 1) >= argc)
            {
                fprintf(stderr, "Error:  No file type specified following %s option.\n", argv[argci]);
                exit(1);
            }

            ++argci;

            if (strcmp(argv[argci], "CHUNK16") == 0)
            {
                chunkFileType = tlFile::CHUNK16;
            }
            else if (strcmp(argv[argci], "CHUNK16SWAP") == 0)
            {
                chunkFileType = tlFile::CHUNK16SWAP;
            }
            else if (strcmp(argv[argci], "CHUNK32") == 0)
            {
                chunkFileType = tlFile::CHUNK32;
            }
            else if (strcmp(argv[argci], "CHUNK32SWAP") == 0)
            {
                chunkFileType = tlFile::CHUNK32SWAP;
            }
            else
            {
                fprintf(stderr, "Error:  Invalid file type \"%s\" specified.\n", argv[argci]);
                exit(1);
            }
        }
        else
        {
            if (strlen(g_InputFilename) > 0)
            {
                fprintf(stderr, "Error:  Multiple input files specified.\n");
                exit(1);
            }

            choreo::StrPrintf(g_InputFilename, sizeof(g_InputFilename), argv[argci]);
        }

        ++argci;
    }

    // open input file
    const char* inputFilename;
    FILE* inputFile;
    if (strlen(g_InputFilename) <= 0)
    {
        inputFile = stdin;
        inputFilename = "stdin";
    }
    else
    {
        inputFile = fopen(g_InputFilename, "rb");
        if (inputFile == 0)
        {
            fprintf(stderr, "Error:  Could not open file %s for reading.\n", g_InputFilename);
            exit(1);
        }
        inputFilename = g_InputFilename;
    }

    // open output file
    FILE* outputFile;
    if (strlen(g_OutputFilename) <= 0)
    {
        outputFile = stdout;
    }
    else
    {
        outputFile = fopen(g_OutputFilename, "wb");
        if (outputFile == 0)
        {
            fprintf(stderr, "Error:  Could not open file %s for writing.\n", g_OutputFilename);
            exit(1);
        }
    }

    // register script chunk handler
    tlDataChunk::RegisterChunk(choreo::SCRIPT_CHUNK_ID, tlChoreoScriptChunk::Create);

    if (extractScripts)
    {
        // read input p3d file
        tlFile inFile(new tlFileByteStream(inputFile), tlFile::FROMFILE);
        tlDataChunk* inChunk = new tlDataChunk(&inFile);

        for (int i = 0; i < inChunk->SubChunkCount(); ++i)
        {
            tlDataChunk* sub = inChunk->GetSubChunk(i);

            if (sub->ID() != choreo::SCRIPT_CHUNK_ID)
                continue;

            tlChoreoScriptChunk* scriptChunk = dynamic_cast<tlChoreoScriptChunk*>(sub);
            if (scriptChunk == 0)
                continue;

            // output script contents
            int len = strlen(scriptChunk->GetScript());
            fwrite(scriptChunk->GetScript(), 1, len, outputFile);
        }

        if (outputFile != stdout)
        {
            fclose(outputFile);
        }
    }
    else
    {
        // read all input into one big string
        int inputStringSize = 1024;
        char* inputString = (char*)malloc(inputStringSize);
        int inputCount = 0;

        while (!feof(inputFile))
        {
            inputCount += fread(inputString + inputCount, 1, inputStringSize - inputCount - 1, inputFile);

            if (inputCount >= (inputStringSize - 1))
            {
                inputStringSize *= 2;
                inputString = (char*)realloc(inputString, inputStringSize);
            }
        }

        inputString[inputCount] = '\0';

        if (inputFile != stdin)
        {
            fclose(inputFile);
        }

        // create the new output file
        tlFile outFile(new tlFileByteStream(outputFile), chunkFileType);

        tlChoreoScriptChunk* scriptChunk = new tlChoreoScriptChunk;
        scriptChunk->SetScript(inputString);

        tlDataChunk* outChunk = new tlDataChunk;
        outChunk->AppendSubChunk(scriptChunk);

        outChunk->Write(&outFile);
        delete outChunk;

        free(inputString);
    }

    return 0;
}


// End of file.
