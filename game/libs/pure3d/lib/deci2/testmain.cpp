/*===========================================================================
   File:: testmain.cpp

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "ViewerConnection.hpp"
#include <assert.h>
#include <stdio.h>

int
main(int argc, char* argv[])
{
   char* hostname;

   if(argc > 1)
   {
      hostname = argv[1];
   }else{
      hostname = "foxps2dev001";
   }

   ViewerConnection ps2;

   int result = ps2.Connect(hostname);
   
   if(result)
   {
      printf("ERROR: %s\n", ps2.Error());
      exit(-1);
   }

   //   ps2.Reset();

   ps2.KeyPress('`');
   ps2.KeyPress('H');
   ps2.KeyPress('E');
   ps2.KeyPress('L');
   ps2.KeyPress('L');
   ps2.KeyPress('O');
}
