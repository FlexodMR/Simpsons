
/*
This source code is a part of IKAN.
Copyright (c) 2000 University of Pennsylvania
Center for Human Modeling and Simulation
All Rights Reserved.

IN NO EVENT SHALL THE UNIVERSITY OF PENNSYLVANIA BE LIABLE TO ANY
PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
DAMAGES, INCLUDING LOST PROFITS, ARISING OUT OF THE USE OF THIS
SOFTWARE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF PENNSYLVANIA
HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

Permission to use, copy, modify and distribute this software and its
documentation for educational, research and non-profit purposes,
without fee, and without a written agreement is hereby granted,
provided that the above copyright notice and the following three
paragraphs appear in all copies. For for-profit purposes, please
contact University of Pennsylvania
(http://hms.upenn.edu/software/ik/ik.html) for the software license
agreement.

  
    THE UNIVERSITY OF PENNSYLVANIA SPECIFICALLY DISCLAIM ANY
    WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
    PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS ON AN "AS IS"
    BASIS, AND THE UNIVERSITY OF PENNSYLVANIA HAS NO OBLIGATION
    TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR
    MODIFICATIONS.
    
*/


//
// A collection of routines for doing various trigonometric operations
// and operations on angles. 
//

#include <radmath/radmath.hpp>

namespace sim
{

#ifndef _TRIGH
#define _TRIGH

inline float iszero(float x) 
{
    return x*x < 1e-6f;
}

#if 0
//
// Normalize an angle to to range -Pi..Pi
//
float angle_normalize(float x);


//
// Returns angle between angles x and y
//
float angle_distance(float x, float y);

#endif

// Solve a*cos(theta) + b*sin(theta) = c
int   solve_trig1(float a, float b, float c, float theta[2]);

// Solves
//      a*cos(theta) - b*sin(theta) = c
//      a*sin(theta) + b*cos(theta) = d
float solve_trig2(float a, float b, float c, float d);

//
// Returns both solutions for arcos and arcsin
//
int myacos(float x, float solns[2]);
int myasin(float x, float solns[2]);


//
// Use formula a^2 + b^2 - 2abcos(theta) = c^2 to get theta
//
inline int law_of_cosines(float a, float b, float c, float &angle)
{
    float temp = (a*a+b*b-c*c)/(2*a*b);
    
    if (rmt::Fabs(temp) > 1.0f)
        return 0;
    else
        angle = rmt::ACos(temp);
    
    return 1;
}

} // sim

#endif
