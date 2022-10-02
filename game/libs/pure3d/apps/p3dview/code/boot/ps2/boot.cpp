//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<interface/kernel.hpp>
#include<kernel/ps2/kernel.hpp>
#include<config/arguments.hpp>
#include <radmath/radmath.hpp>

int ServerMain(Kernel* kernel, Arguments* args);

PS2* kernel;

int main(int argc, char** argv)
{
    radMathInitialize();

    Arguments args("");
    kernel = new PS2;

    kernel->SetWorkingDirectory("");

    int rc = ServerMain(kernel, &args);
    delete kernel;
}

char* compileInfo = "";
char* compileChangelist = "";
char* compileTime = "";
char* compileUser = "";
char* compileServer = "";

