//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <math.h>
#include <stdlib.h>

//===========================================================================
// HSV2RGB
//===========================================================================
// Description: Converts HSV color space to RGB color space.
//
//                  H = 0.0 - 360.0
//                  S = 0.0 - 1.0
//                  V = 0.0 - 1.0
//
//                  R = 0.0 - 1.0
//                  G = 0.0 - 1.0
//                  B = 0.0 - 1.0
//
// Constraints: I wanted to use tlColour::HSV functions, but they were
//              completely wack-o, so I've integrated my own.
//
//  Parameters: double H,S,V: Hue, Saturation and Value.
//              double &R, &G, &B: Storage for resulting Red, Green and Blue.
//
//      Return: (void)
//
//===========================================================================
void HSV2RGB(double H, double S, double V, double& R, double& G, double& B)
{
    if (S == 0.0)
    {
        R = G = B = V;
    }
    else
    {
        if (H == 360.0)
            H = 0;
        H /= 60.0;
        int i = (int)floor(H);
        double f = H - (double)i;
        double p = V*(1.0-S);
        double q = V*(1.0-(S*f));
        double t = V*(1.0-(S*(1.0-f)));
        switch (i) {
        case 0:
            R = V; G = t; B = p;
            break;
        case 1:
            R = q; G = V; B = p;
            break;
        case 2:
            R = p; G = V; B = t;
            break;
        case 3:
            R = p; G = q; B = V;
            break;
        case 4:
            R = t; G = p; B = V;
            break;
        case 5:
            R = V; G = p; B = q;
            break;
        }
    }
}

//===========================================================================
// HSV2RGB
//===========================================================================
// Description: Converts RGB color space to HSV color space.
//
//                  R = 0.0 - 1.0
//                  G = 0.0 - 1.0
//                  B = 0.0 - 1.0
//
//                  H = 0.0 - 360.0
//                  S = 0.0 - 1.0
//                  V = 0.0 - 1.0
//
// Constraints: I wanted to use tlColour::HSV functions, but they were
//              completely wack-o, so I've integrated my own.
//
//  Parameters: double R, G, B: Red, Green and Blue.
//              double &H, &S, &V: Storage for Hue, Saturation and Value.
//
//      Return: (void)
//
//===========================================================================
void RGB2HSV(double R, double G, double B, double& H, double& S, double& V)
{
    double cmax, cmin, delta;

    cmin = __min(__min(R, G), B);
    cmax = __max(__max(R, G), B);

    V = cmax;
    if ( V == 0.0 )
    {
        S = 0.0;
        H = 0.0;
        return;
    }

    S = (cmax-cmin) / cmax;

    H = 0.0;
    delta = cmax-cmin;
    if ( (S > 0.0) && (delta > 0.0) )
    {
        if ( R == cmax )
        {
            if ( G >= B )
            {
                H = ( G - B ) / delta;
            }
            else
            {
                H = ( ( G - B + delta ) / delta ) + 5;
            }
        }
        if ( G == cmax )
        {
            if ( B > R )
            {
                H = 2 + ( ( B - R ) / delta );
            }
            else
            {
                H = 1 + ( ( B - R + delta ) / delta );
            }
        }
        if ( B == cmax )
        {
            if ( R > G )
            {
                H = 4 + ( ( R - G ) / delta );
            }
            else
            {
                H = 3 + ( ( R - G + delta ) / delta );
            }
        }

        H *= 60;
        if (H < 0.0)
            H += 360;
    }
}

