//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <stdlib.h>
#include <stdio.h>

#include "util.h"

void warning(char *msg)
{
	printf("WARNING: %s\n",msg);
}

void error(char *msg)
{
	printf("ERROR: %s\n",msg);
	exit(1);
}

