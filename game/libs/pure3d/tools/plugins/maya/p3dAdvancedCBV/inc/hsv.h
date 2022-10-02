#ifndef __HSV_H_
#define __HSV_H_

// Description: Converts HSV color space to RGB color space.
void HSV2RGB(double H, double S, double V, double& R, double& G, double& B);

// Description: Converts RGB color space to HSV color space.
void RGB2HSV(double R, double G, double B, double& H, double& S, double& V);

#endif      // __HSV_H_
