//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<interface/kernel.hpp>
#include<kernel/xbox/kernel.hpp>
#include<config/arguments.hpp>

#include<xtl.h>

int ServerMain(Kernel* kernel, Arguments* args);

XBox* kernel;

void main(void)
{
    Arguments args("");
    kernel = new XBox;

    kernel->SetWorkingDirectory("D:\\");

    int rc = ServerMain(kernel, &args);
    delete kernel;
}




