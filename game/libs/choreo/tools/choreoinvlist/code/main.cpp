/*
 * choreoinvlist/main.cpp
 */


#include <choreo/scriptreader.hpp>
#include <choreo/utility.hpp>
#include <choreo/basebank.hpp>
#include <choreo/load.hpp>

#include <radfile.hpp>
#include <radtime.hpp>
#include <radplatform.hpp>
#include <radthread.hpp>
#include <radload/radload.hpp>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "invliststore.hpp"


char g_InputFilename[1024] = "";
char g_OutputFilename[1024] = "";
bool g_EnableScriptErrors = true;


void fttexit(int exitRC)
{
    radLoadTerminate();
    radFileTerminate();
    radTimeTerminate();
    radPlatformTerminate();
    radMemoryTerminate();
    radThreadTerminate();

    exit(exitRC);
}

bool scriptReaderErrorHandler(choreo::ScriptReader* script, void* context)
{
    if (g_EnableScriptErrors)
    {
        char errorMsg[1024];
        script->GetErrorMessage(errorMsg, sizeof(errorMsg));

        fprintf(stderr, "%s", errorMsg);
    }

    return true;
}

void findHook(const choreo::BaseBank* bank, const type_info& typeInfo, const char* name, tUID uid, void* context)
{
    InvListStore* store = (InvListStore*)context;
    store->SetFindClass(typeInfo.name());
    store->SetFindName(name);
}


// main line
int main(int argc, char** argv)
{
    // ftt init
    radThreadInitialize();
    radMemoryInitialize();
    radPlatformInitialize(0, 0);
    radTimeInitialize();
    radFileInitialize();
    radLoadInitialize();

    // parse args
    int argci = 1;
    while (argci < argc)
    {
        if ((strcmp(argv[argci], "-s") == 0) ||
            (strcmp(argv[argci], "--suppress-errors") == 0))
        {
            g_EnableScriptErrors = false;
        }
        else if ((strcmp(argv[argci], "-o") == 0) ||
                 (strcmp(argv[argci], "--output-file") == 0))
        {
            if ((argci + 1) >= argc)
            {
                fprintf(stderr, "Error:  No output file specified following %s option.\n", argv[argci]);
                fttexit(1);
            }

            if (strlen(g_OutputFilename) > 0)
            {
                fprintf(stderr, "Error:  Multiple output files specified.\n");
                fttexit(1);
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
                   "  -s, --suppress-errors           Suppresses script errors\n"
                   "  -o, --output-file name          Specify output file name\n"
                   "  -?, -h, --help                  Shows help (this message)\n",
                   argv[0]);
            fttexit(0);
        }
        else
        {
            if (strlen(g_InputFilename) > 0)
            {
                fprintf(stderr, "Error:  Multiple input files specified.\n");
                fttexit(1);
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
        inputFile = fopen(g_InputFilename, "rt");
        if (inputFile == 0)
        {
            fprintf(stderr, "Error:  Could not open file %s for reading.\n", g_InputFilename);
            fttexit(1);
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
        outputFile = fopen(g_OutputFilename, "wt");
        if (outputFile == 0)
        {
            fprintf(stderr, "Error:  Could not open file %s for writing.\n", g_OutputFilename);
            fttexit(1);
        }
    }

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

    // create output store
    InvListStore* store = new InvListStore(outputFile);
    store->AddRef();

    // register script handlers, error handlers & find hooks
    choreo::RegisterDefaultScriptHandlers();
    choreo::ScriptReader::InstallErrorHandler(scriptReaderErrorHandler, 0);
    choreo::InstallFindHook(findHook, (void*)store);

    // parse in-memory script while store outputs all find calls
    choreo::ReadFromScriptString(inputString, inputFilename, store);

    store->Release();

    if (outputFile != stdout)
    {
        fclose(outputFile);
    }

    free(inputString);

    fttexit(0);
    return 0;
}


// End of file.
