//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <interface/framework.hpp>
#include <kernel/linux/kernel.hpp>
#include <config/arguments.hpp>

int ServerMain(Kernel* kernel, Arguments* args);

Linux* kernel;

int
main(int argc, char* argv[])
{
    Arguments args("");
    kernel = new Linux;

    kernel->SetWorkingDirectory(".");

    int rc = ServerMain(kernel, &args);
    delete kernel;
}


