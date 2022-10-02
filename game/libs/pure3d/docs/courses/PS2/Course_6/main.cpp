//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=======================================
// PS2 Lecture Series
// Course 6 - Advanced VU
// July 12, 2000
// Neall Verheyde (verheyde@radical.ca)
//=======================================

#include <stdio.h>
#include <stdlib.h>

#include "transform.hpp"

const int numVector = 10;


int main(int argc, char** argv)
{
   Vector vin[numVector];
   Vector vout[numVector];
   
   // this is a sample matrix
   Matrix m = 
   {
      { 0.0f, 1.0f, 0.0f, 0.0f,
        1.0f, 0.0f, 0.0f, 0.0f,
        0.0f, 0.0f, 2.0f, 0.0f,
        0.0f, 0.0f, 0.0f, 1.0f }
   };            


   // generate some random vectors to run through the matrix
   for(int i=0; i < numVector; i++)
   {
      vin[i].x = (float)(rand()%100);
      vin[i].y = (float)(rand()%100);
      vin[i].z = (float)(rand()%100);
   }

   // transform the vectors
   VectorTransform(vin, &m, numVector, vout);
   
   // print the results
   for(int i=0; i < numVector; i++)
   {
      printf("%d: (%.4f, %.4f, %.4f) -> (%.4f, %.4f, %.4f)\n", i,
            vin[i].x, vin[i].y, vin[i].z,
            vout[i].x, vout[i].y, vout[i].z);
   }

   return 0;
}
