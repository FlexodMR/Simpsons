//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=======================================
// PS2 Lecture Series
// Course 6 - Advanced VU
// July 12, 2000
// Neall Verheyde (verheyde@radical.ca)
//=======================================

#ifndef _TRANSFORM_HPP
#define _TRANSFORM_HPP

struct Vector
{
   float x;
   float y;
   float z;
   float w;
};

struct Matrix
{
   float m[16];
};

void VectorTransform(Vector* input, Matrix* matrix, int count, Vector* output);

#endif
