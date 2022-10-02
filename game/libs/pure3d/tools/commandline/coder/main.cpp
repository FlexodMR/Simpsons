//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// test.cpp : Defines the entry point for the console application.
//
#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "stdafx.h"
#include "generator.hpp"
#include <assert.h>

#include "Param.hpp"


Parameters* Param;

int main(int argc, char* argv[])
{

    Param = new Parameters( argc, argv );

    Generator creator;

    creator.SetParsed( Param->TemplateFile );
    creator.SetTarget( Param->OutputFile );
    creator.SetHeader( "header_cpp.tpl" );

    printf( "Begin creating code to file %s...\n", Param->OutputFile );
    creator.Generate( );

	printf("End creating code\n");
	return 0;
}

