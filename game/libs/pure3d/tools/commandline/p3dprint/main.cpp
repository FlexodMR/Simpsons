/*===========================================================================
    File:: main.cpp

    This program prints the contents of a P3D file by calling the Print()
    method on the tlDataChunk read from the file.

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "toollib.hpp"
#include "Param.hpp"

Parameters* Param;

void main(int argc, char* argv[])
{
    // Process parameters
    Param = new Parameters(argc,argv);

    // register default chunk handler
    tlDataChunk::RegisterDefaultChunks();

    for(int i = 0; i < Param->Filec; i++) {
        // open each file
        tlFile input(new tlFileByteStream(Param->Filev[ i ],omREAD), tlFile::FROMFILE);
        if(!input.IsOpen()) {
            printf("Could not open %s\n", Param->Filev[ i ]);
            exit(-1);
        }

      
        // make a tlDataChunk from the file
        tlDataChunk* filechunk = new tlDataChunk(&input);

        if(Param->Machine)
        {
            filechunk->PrintFormatted();
        }else{
            printf("File: %s\n",Param->Filev[ i ]);
            if(Param->Depth == 0xffffffff)
            {
                Param->Depth--;
            }
            filechunk->Print(0,Param->Depth + 1);
        }
            
        // close the input file
        input.Close();

        delete filechunk;
    }

    // Cleanup
    delete Param;
    exit(0);
}

