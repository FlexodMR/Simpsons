/*===========================================================================
   File:: tlColour.cpp

   Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlColour.hpp"
#include "tlMatrix.hpp"
#include "tlPoint.hpp"
#include "tlFile.hpp"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <math.h>

#include <iostream>


// This epsilon value is necessary because the standard color space conversion
// factors are only accurate to three decimal places.
const double tlColour::k_epsilon = 0.001;
// Specify the maximum amount you are willing to go
// above 1.0 and below 0.0. This should be set no
// higher than 0.2. 0.1 may produce better results.
// This value assumes RGB values from 0.0 to 1.0.
const double tlColour::k_maxExcursion = 0.1;

const float  tlColour::UNDEFINED_HUE = -1.0f;

const double tlYIQColour::pi = 3.14159265358979323846;
const double tlYIQColour::cos33 = cos(33 * pi / 180);
const double tlYIQColour::sin33 = sin(33 * pi / 180);

tlColour
operator*(const tlColour& c, const float a)
{
   tlColour result;
   result.red = a * c.red;
   result.green = a * c.green;
   result.blue = a * c.blue;
   result.alpha = c.alpha;

   return result;
}

tlColour
operator*(const tlColour& a, const tlColour& b)
{
   tlColour result;
   result.red = a.red * b.red;
   result.green = a.green * b.green;
   result.blue = a.blue * b.blue;
   result.alpha = a.alpha * b.alpha;      // hmm? what should this do?

   return result;
}

tlColour
operator+(const tlColour& a, const tlColour& b)
{
   tlColour result;
   result.red = a.red + b.red;
   result.green = a.green + b.green;
   result.blue = a.blue + b.blue;

   // Set alpha to max of two alphas.
   // 
   result.alpha = a.alpha;
   if(b.alpha>result.alpha)
   {
      result.alpha = b.alpha;
   }  

   return result;
}

tlColour
operator-(const tlColour& a, const tlColour& b)
{
   tlColour result;
   result.red = a.red - b.red;
   result.green = a.green - b.green;
   result.blue = a.blue - b.blue;

   // Set alpha to min of two alphas.
   result.alpha = (a.alpha < b.alpha) ? a.alpha : b.alpha;

   return result;
}

void
tlColour::Clamp()
{
   if(red<0.0f) red = 0.0f;
   if(red>1.0f) red = 1.0f;
   if(green<0.0f) green = 0.0f;
   if(green>1.0f) green = 1.0f;
   if(blue<0.0f) blue = 0.0f;
   if(blue>1.0f) blue = 1.0f;
   if(alpha<0.0f) alpha = 0.0f;
   if(alpha>1.0f) alpha = 1.0f;
}

// Scale all four colour channels.
tlColour Scale4(const tlColour& c, const float a)
{
    tlColour result;

    result.red   = c.red   * a;
    result.green = c.green * a;
    result.blue  = c.blue  * a;
    result.alpha = c.alpha * a;

    return result;
}

// Returns zero if all is well. If the signal will go too high it returns how
// high it will go. If the signal will go too low it returns how low it
// will go - a negative number.

double
tlColour::NTSCOverheatAmount( void )
{
   Clamp();
   assert(red >= 0.0 && red <= 1.0);
   assert(green >= 0.0 && green <= 1.0);
   assert(blue >= 0.0 && blue <= 1.0);

   tlYIQColour yiq(*this);

   //  Calculate the amplitude of the chroma signal.
   float c = sqrtf(yiq.i * yiq.i + yiq.q * yiq.q);

   // See if the composite signal will go too high or too low.
   float maxComposite = yiq.y + c;
   float minComposite = yiq.y - c;
   if (maxComposite > 1.0 + k_maxExcursion)
   {
      return maxComposite;
   }
   if (minComposite < -k_maxExcursion)
   {
      return minComposite;
   }
   return 0.0;
}

bool 
tlColour::IsLegalNTSC()
{
   return NTSCOverheatAmount() == 0.0;
}

void
tlColour::ClampNTSC()
{
   FixSaturation();
}

void tlColour::Inverse( )
{
    red   = 1.0f - red;
    green = 1.0f - green;
    blue  = 1.0f - blue;
    alpha = 1.0f - alpha;
}

double
tlColour::GetAmplitudeRatio( double Amplitude )
{
	if( Amplitude == 0.0f )
	{
		return 1.0f;
	}
	else if( Amplitude > 0.0f )
	{
		return ( 1.0f + k_maxExcursion - k_epsilon ) / Amplitude;
	}
	else
	{
		return ( k_maxExcursion - k_epsilon ) / -Amplitude;
	}
}

void 
tlColour::FixAmplitude()
{
   // maxComposite is slightly misnamed - it may be min or max.
   double maxComposite = NTSCOverheatAmount();
   if (maxComposite != 0.0)
   {
      double coolant;
      if (maxComposite > 0.0)
      {
         // Calculate the ratio between our maximum composite
         // signal level and our maximum allowed level.
         coolant = (1.0 + k_maxExcursion - k_epsilon) / maxComposite;
      }
      else
      {
         // Calculate the ratio between our minimum composite
         // signal level and our minimum allowed level.
         coolant = (k_maxExcursion - k_epsilon) / -maxComposite;
      }

      // Scale R, G and B down. This will move the composite signal
      // proportionally closer to zero.
      red *= (float)coolant;
      green *= (float)coolant;
      blue *= (float)coolant;
   }
}

void 
tlColour::FixSaturation()
{
   // maxComposite is slightly misnamed - it may be min
   // composite or maxComposite.
   double maxComposite = NTSCOverheatAmount();
   if (maxComposite != 0.0)
   {
      tlYIQColour yiq(*this);

      double c = sqrt(yiq.i * yiq.i + yiq.q * yiq.q);
      double coolant;
      // Calculate the ratio between the maximum chroma range allowed
      // and the current chroma range.
      if (maxComposite > 0)
      {
         // The maximum chroma range is the maximum composite value
         // minus the luminance.
         coolant = (1.0 + k_maxExcursion - k_epsilon - yiq.y) / c;
      }
      else
      {
         // The maximum chroma range is the luminance minus the
         // minimum composite value.
         coolant = (yiq.y - -k_maxExcursion - k_epsilon) / c;
      }
      // Scale I and Q down, thus scaling chroma down and reducing the
      // saturation proportionally.
      yiq.i *= (float)coolant;
      yiq.q *= (float)coolant;

      red = yiq.Red();
      green = yiq.Green();
      blue = yiq.Blue();
   }
}

void tlColour::Gamma(float g)
{
   float power = 1.0f / g;

   red =   (float)pow(red,   power);
   green = (float)pow(green, power);
   blue =  (float)pow(blue,  power);
}

//===========================================================================
// AdjustContrast
//===========================================================================
// Description: This function is intended to mimic the behavior of the 
//              Contrast operator in Photoshop.
//
//              The 'mean' colour identifies the "midpoint" from which the
//              RGB will be adjusted.  For general purposes this would be
//              a mid-grey.
//
//              Consider the following graph, where the 'o' characters depict
//              brightness distribution in an image:
//
//               |------o------o------o------.------o------o------o------|
//                <--- dark <---                          ---> light --->
//
//              The '.' identifies the midpoint, or mean.  Performing a
//              contrast operation will push the brightness to the ends of
//              the spectrum:
//
//               |---o---o---o---------------.---------------o---o---o---|
//                <--- dark <---                          ---> light --->
//
//              If the mean value is closer the left side of the spectrum
//              then the distribution and resulting contrast is different:
//
//               |--o-------.----------------o-----o-----o-----o-----o---|
//                <--- dark <---                          ---> light --->
//
//              Higher values introduce more spread, and thus more contrast.
//
// Constraints: This function works in RGB space an may alter the Hue for
//              the colour.
//
//  Parameters: const tlColor& mean: The RGB values used as the midpoint 
//                                   for the contrast operation.  See
//                                   above notes.
//              float cAdjust: The amount of contrast to introduce. 
//                             Higher values introduce more contrast.
//
//      Return: (void)
//
//===========================================================================
void tlColour::AdjustContrast( const tlColour &mean, float cAdjust )
{
    if( cAdjust == 0.0f )
    {
        return;
    }

    float oldAlpha = alpha;
    
    if( cAdjust < 0.0f )
    {
        cAdjust = rmt::Clamp( cAdjust / 100.0f, -1.0f, 1.0f );
        *this = Interpolate( mean, -cAdjust );
    }
    else // cAdjust > 0.0f
    {            
        static float cScale[101];
        static bool  initialized = false;
        int i;
        if( !initialized )
        {
            const double expOne = ::exp( 1.0 );
            for( i = 0; i <= 100; i++ )
            {
                double scale = (double)i / 100.0;
                int j;
                for( j = 0; j < 7; j++ )
                {
                    scale = ::exp( scale ) - 1.0;
                    scale = scale / ( expOne - 1.0 );
                }
                // slope of cScale[i] at i=0 should be one.
                cScale[i] = (float)( scale * 3978.0 );
            }
            initialized = true;
        }
        
        tlColour newRGB;
        // Round sAdjust to the nearest integer.
        int cIndex = rmt::Clamp( int( cAdjust + 0.5f ), 0, 100 );
        
        // Find the RGB with the requested contrast adjustment
        int j;
        for( j = 0; j < 3; j++ )
        {
            float slope = ( (*this)[j] - mean[j] ) * 0.01f;
                
            (*this)[j] += slope * cScale[cIndex];
        }

        Clamp();
    }
    
    alpha = oldAlpha;
}

void tlColour::AdjustBrightness( float bAdjust )
{
    if( bAdjust == 0.0f )
    {
        return;
    }

    bAdjust = rmt::Clamp( bAdjust, -100.0f, 100.0f ) / 255.0f;
    red   = rmt::Clamp( red   + bAdjust, -1.0f, 1.0f );
    green = rmt::Clamp( green + bAdjust, -1.0f, 1.0f );
    blue  = rmt::Clamp( blue  + bAdjust, -1.0f, 1.0f );         
}

void tlColour::AdjustHue( float hAdjust )
{
    if( hAdjust == 0.0f )
    {
        return;
    }

    float h, l, s;
    
    GetHLS( h, l, s ); // RGB->HLS
    h = rmt::Max( h, 0.0f ); // Always use a valid h value.
    
    h += hAdjust;
    
    // Ensure HLS values are within expected range (of SetHLS() ).
    while( h < 0.0f )
    {
        h += 360.0f;
    }
    while( h > 360.0f )
    {
        h -= 360.0f;
    }
    l = rmt::Clamp( l, 0.0f, 1.0f );
    s = rmt::Clamp( s, 0.0f, 1.0f );
    
    SetHLS( h, l, s ); // HLS->RGB
}

void tlColour::AdjustSaturation( float sAdjust )
{
    if( sAdjust == 0.0f )
    {
        return;
    }

    float oldAlpha = alpha;

    float max = rmt::Max( red, rmt::Max( green, blue ) );
    float min = rmt::Min( red, rmt::Min( green, blue ) );
    float mid = 0.5f * ( min + max );
    
    if( sAdjust < 0.0f )
    {
        sAdjust = rmt::Clamp( sAdjust / 100.0f, -1.0f, 1.0f );
        tlColour aveGray( mid, mid, mid );
        *this = Interpolate( aveGray, -sAdjust );
    }
    else // sAdjust > 0.0f
    {            
        // This appears to produce a close fit to the Photoshop adjustment.
        // This function might be re-visited later to find a closer fit.
        // Create it statically so as to compute it only once.
        static float sScale[101];
        static bool  initialized = false;
        int i;
        if( !initialized )
        {
            const double expOne = ::exp( 1.0 );
            for( i = 0; i <= 100; i++ )
            {
                double scale = (double)i / 100.0;
                int j;
                for( j = 0; j < 7; j++ )
                {
                    scale = ::exp( scale ) - 1.0;
                    scale = scale / ( expOne - 1.0 );
                }
                // slope of sScale[i] at i=0 should be one.
                sScale[i] = (float)( scale * 3978.0 );
            }
            initialized = true;
        }
        
        tlColour newRGB;
        // Round sAdjust to the nearest integer.
        int   sIndex = rmt::Clamp( int( sAdjust + 0.5f ), 0, 100 );
        
        // Find the RGB with the requested saturation adjustment or
        // the nearest valid saturation adjustment.

        for( i = sIndex; i >= 0; i-- )
        {
            bool  validRGB = true;
            
            int j;
            for( j = 0; j < 3; j++ )
            {
                float slope = ( (*this)[j] - mid ) * 0.01f;
                
                newRGB[j] = (*this)[j] + slope * sScale[i];
                if( newRGB[j] < 0.0f || newRGB[j] > 1.0f )
                {
                    validRGB = false;
                    break;
                }
            }
            if( validRGB )
            {
                break;
            }
        }
        
        *this = newRGB;                            
    }

    alpha = oldAlpha;
}

void tlColour::AdjustLightness( float lAdjust )
{
    if( lAdjust == 0.0f )
    {
        return;
    }

    float oldAlpha = alpha;

    static const tlColour BLACK( 0.0f, 0.0f, 0.0f );
    static const tlColour WHITE( 1.0f, 1.0f, 1.0f );
    
    lAdjust = rmt::Clamp( lAdjust, -100.0f, 100.0f ) / 100.0f;
    if( lAdjust < 0.0f )
    {
        *this = Interpolate( BLACK, -lAdjust );
    }
    else // lAdjust > 0.0f
    {
        *this = Interpolate( WHITE, lAdjust );
    }

    alpha = oldAlpha;
}

tlColour&
tlColour::operator=( const tlColour& incol ) 
{
   if( this == &incol )   // the same class object
   {
      return *this;
   }
   red   = incol.red;
   green = incol.green;
   blue  = incol.blue;
   alpha = incol.alpha;
   
   return *this;
}


tlColour
Clamp(tlColour& c)
{
   tlColour result;
   result.red   = c.red;
   result.green = c.green;
   result.blue  = c.blue;
   result.alpha = c.alpha;
   
   if(result.red<0.0f) result.red = 0.0f;
   if(result.red>1.0f) result.red = 1.0f;
   if(result.green<0.0f) result.green = 0.0f;
   if(result.green>1.0f) result.green = 1.0f;
   if(result.blue<0.0f) result.blue = 0.0f;
   if(result.blue>1.0f) result.blue = 1.0f;
   if(result.alpha<0.0f) result.alpha = 0.0f;
   if(result.alpha>1.0f) result.alpha = 1.0f;

   return result;
}

// Pass in colour with bit order 0xaarrggbb - matches pddiColour
tlColour::tlColour( unsigned long l ) 
{
   red   = (float)( (l & 0x00ff0000) >> 16 ) / 255;
   green = (float)( (l & 0x0000ff00) >> 8 ) / 255;
   blue  = (float)(l & 0x000000ff) / 255 ;
   alpha = (float)( (l & 0xff000000) >> 24 ) / 255;
}

// Return colour with bit order 0xaarrggbb - matches pddiColour
unsigned long
tlColour::ULong() const
{
   float tr = red;
   float tg = green;
   float tb = blue;
   float ta = alpha;

   if (tr < 0.0f) tr = 0.0f;
   if (tr > 1.0f) tr = 1.0f;
   if (tg < 0.0f) tg = 0.0f;
   if (tg > 1.0f) tg = 1.0f;
   if (tb < 0.0f) tb = 0.0f;
   if (tb > 1.0f) tb = 1.0f;
   if (ta < 0.0f) ta = 0.0f;
   if (ta > 1.0f) ta = 1.0f;

   unsigned long l;
   int R = (int)( tr * 255 );
   int G = (int)( tg * 255 );
   int B = (int)( tb * 255 );
   int A = (int)( ta * 255 );
   l = 0;
   l = l<<8 | A;
   l = l<<8 | R;
   l = l<<8 | G;
   l = l<<8 | B;
   
   return l;
}

unsigned short
tlColour::RGB565()
{
   unsigned short Colour;
   Colour = (((BlueCh() >> 3) & 0x1f) << 11);
   Colour |= (((GreenCh() >> 2) & 0x3f) << 5);
   Colour |= ((RedCh() >> 3) & 0x1f);
   return Colour;

}
int tlColour::Compare(const tlColour& c)
{
   if(red < c.red)
   {
      return -1;
   }
   if(red > c.red)
   {
      return 1;
   }

   if(green < c.green)
   {
      return -1;
   }
   if(green > c.green)
   {
      return 1;
   }

   if(blue < c.blue)
   {
      return -1;
   }
   if(blue > c.blue)
   {
      return 1;
   }

   if(alpha < c.alpha)
   {
      return -1;
   }
   if(alpha > c.alpha)
   {
      return 1;
   }

   return 0;

}

const tlColour& 
tlColour::Interpolate(const tlColour& c, float t) const
{
   static tlColour result;
   
   result.red   = (c.red   * t) + (red   * (1.0f - t));
   result.green = (c.green * t) + (green * (1.0f - t));
   result.blue  = (c.blue  * t) + (blue  * (1.0f - t));
   result.alpha = (c.alpha * t) + (alpha * (1.0f - t));

   return result;
}

void 
tlColour::Read(tlFile* f)
{
   *this = f->GetColour();
}

void
tlColour::Write(tlFile* f)
{
   f->PutColour(*this);
}

void
tlColour::Print(int index, int indent)
{
   printf("%*s%4d Red(%8.4f), Green(%8.4f), Blue(%8.4f), Alpha(%8.4f)\n",indent,"", index,
          red, green, blue, alpha);
}

void
tlColour::PrintFormatted(int index, int indent)
{
   assert("unimplemented" == 0);
}

void
tlColour::Init()
{
   red = green = blue = 0.0f;
   alpha = 1.0f;
}

bool
tlColour::GetFieldUpdatable()
{
   return true;
}

bool
tlColour::SetFieldValue( const char* value )
{
    float r2, g2, b2, a2;

    sscanf( value, "%f, %f, %f, %f", &r2, &g2, &b2, &a2);
    red = r2;
    green = g2;
    blue = b2;
    alpha = a2;
    return true;
}

bool tlColour::GetFieldValue(char* val, int len) const
{
   char buf[256];

   sprintf(buf, "Red(%8.4f), Green(%8.4f), Blue(%8.4f), Alpha(%8.4f)",
           red, green, blue, alpha);
   strncpy(val, buf, len);

   return true;
}

int tlColour::MaxChannel() const
{
   if( red > green && red > blue )
   {
      return 0;
   }
   if( green > blue )
   {
      return 1;
   }
   return 2;
}

tlYIQColour::tlYIQColour(const tlColour& col)
{
         
   // Convert from RGB to YUV space.
   y = (float)(.299 * col.red + .587 * col.green + .114 * col.blue);
   double u = 0.492 * (col.blue - y);
   double v = 0.877 * (col.red - y);

   // Convert from YUV to YIQ space. 
   i = (float)(cos33 * v - sin33 * u);
   q = (float)(sin33 * v + cos33 * u);
}

float
tlYIQColour::Red()
{
   // Convert from YIQ to YUV space. 
   double v =  cos33 * i + sin33 * q;
   
   // Convert from YUV to RGB
   return (float)((0.877 * y + v) / 0.877);
}

float
tlYIQColour::Green()
{
   // Convert from YIQ to YUV space. 
   double u = -sin33 * i + cos33 * q;
   double v =  cos33 * i + sin33 * q;
   
   // Convert from YUV to RGB
   double r = (0.877 * y + v) / 0.877;
   double b = (0.492 * y + u) / 0.492;

   return (float)((y - 0.114 * b - 0.299 * r) / 0.587);
}

float
tlYIQColour::Blue()
{
   // Convert from YIQ to YUV space. 
   double u = -sin33 * i + cos33 * q;
   
   // Convert from YUV to RGB
   return (float)((0.492 * y + u) / 0.492);
}

// From Foley, van Dam, Feiner, and Hughes.
// Set this colour (RGB) based on the HSV parameters.
// Assuming: h in [0,360], s and v in [0,1]
void tlColour::SetHSV(float h, float s, float v)
{
   if( s == 0 ) 
   {
      // achromatic (grey)
      red = green = blue = v;
      return;
   }

   h = (float)fmod( h / 60.0f, 6.0f);
   h = ( h < 0.0f) ? rmt::Max(h + 6.0f, 0.0f) : h;  // Make sure h is positive.
   h = ( h >= 6.0f) ? 0.0f : h; // Now h is [0.0f, 6.0f);
   
   int   i = rmt::Clamp( (int)h, 0, 5);
   float f = h - (float)i;                        // fractional part of h
   float p = v * ( 1.0f - s );
   float q = v * ( 1.0f - s * f );
   float t = v * ( 1.0f - s * ( 1.0f - f ) );

   switch( i ) 
   {
      case 0:
         red = v;
         green = t;
         blue = p;
         break;
      case 1:
         red = q;
         green = v;
         blue = p;
         break;
      case 2:
         red = p;
         green = v;
         blue = t;
         break;
      case 3:
         red = p;
         green = q;
         blue = v;
         break;
      case 4:
         red = t;
         green = p;
         blue = v;
         break;
      default:                // case 5:
         red = v;
         green = p;
         blue = q;
         break;
   }
}

// From Foley, van Dam, Feiner, and Hughes.
//  Given: rgb each in [0,1].
//  Desired: h in [0,360], s and v in [0,1], except if s=0, then h=UNDEFINED_HUE.
void tlColour::GetHSV(float &h, float &s, float &v)
{
   const int RED_CHANNEL( 0 ), GREEN_CHANNEL( 1 ), BLUE_CHANNEL( 2 );
   const int maxChannel = MaxChannel();
   const float max = (*this)[maxChannel];
   const float min = rmt::Min( red, rmt::Min( green, blue ) );

   v = max;

   float delta = max - min;

   if( max != 0.0f )
   {
      s = delta / max;
   }
   else
   {
      s = 0.0f;
      h = UNDEFINED_HUE;
      return;
   }

   if( maxChannel == RED_CHANNEL )
   {
      h = ( green - blue ) / delta;       // between yellow & magenta
   } 
   else if( maxChannel == GREEN_CHANNEL )
   {
      h = 2.0f + ( blue - red ) / delta;  // between cyan & yellow
   } 
   else
   {
      h = 4.0f + ( red - green ) / delta; // between magenta & cyan
   }
   h *= 60.0f;

   if( h < 0.0f )
   {
      h += 360.0f;
   }
}

//  Given: rgb each in [0,1].
//  Desired: h in [0,360] and s in [0,1], except if s=0, then h=UNDEFINED_HUE.}
void tlColour::GetHLS ( float &h, float &l, float &s )
{
    float max = rmt::Max( red, rmt::Max( green, blue ) );
    float min = rmt::Min( red, rmt::Min( green, blue ) );
    l = (max+min)/2;                    //brightness
    
    //caculate saturation
    if( max==min ){     //Achromatic case       
        s = 0;
        h = UNDEFINED_HUE;       
    }
    else{       //Chromatic case       
        //Calculate the saturation first
        if (l <= 0.5f )
            s = (max-min)/(max+min);
        else 
            s = (max-min)/(2-max-min);
        
        //Calculate the hue then
        float delta = max-min;
        if ( red == max )
            h = ( green - blue )/delta;    //Resulting color is between yellow and magenta
        else if( green == max )
            h = 2.f + ( blue - red )/delta;    //Resulting color is between cyan and yellow
        else // blue == max
            h = 4.f + (red - green)/delta;    //Resulting color is between magenta and cyan

        h = h*60.f;            //Convert to degrees
        
        if( h < 0.0f )
            h = h + 360;    //Make degrees be nonnegative
    }
}

// Set this colour (RGB) based on the HLS parameters.
// Assuming: h in [0,360], s and v in [0,1]
void tlColour::SetHLS( float h, float l, float s )
{
    if( s < k_epsilon ) // Achromatic case
    {
        red = green = blue = l;
        return;
    }
    
    h /= 60.0f; // Degrees to [0, 6]
    if( h < 0.0f || h >= 6.0f )
    {
        h = 0.0f;
    }

    // Inverse of calculations from GetHLS()
    float max = ( l <= 0.5f ) ? ( l * ( 1.0f + s ) ) : ( l + s - l * s );
    float min = 2.0f * l - max;
    float diff = ( max - min ) * ( h - ::floorf( h ) );
    float midLow  = min + diff;
    float midHigh = max - diff;

    // Colours fall into one of six categories.
    switch( (int)h )
    {
        case 0: 
            red = max;   green = midLow;  blue = min;
            break;
        case 1:
            green = max; red = midHigh;   blue = min;
            break;
        case 2:
            green = max; blue = midLow;   red = min;          
            break;
        case 3:
            blue = max;  green = midHigh; red = min;     
            break;
        case 4:
            blue = max;  red = midLow;    green = min;     
            break;
        case 5:
            red = max;   blue = midHigh;  green = min;     
            break;
        default: 
            red = max;   green = midLow;  blue = min;
            break;
    }
}

tlColour
RandomColour()
{
   tlColour result;

   float hue = 360.0f * ((float) rand()) / ((float)RAND_MAX);           // 0.0 - 360.0
   float saturation = ((float) rand()) / ((float)RAND_MAX*4) + 0.75f;   // 0.75 - 1.0
   float value = ((float) rand()) / ((float)RAND_MAX*2) + 0.5f;         // 0.5 - 1.0

   result.SetHSV(hue, saturation, value);
   
   return result;
}

//===========================================================================
//
// Description: The tlColourLab class adds Lab functionality to tlColour.
//
//              Lab (officially called 1977 CIE L*a*b*) is the preceptually   
//              uniform colour space spfecified by CIE.  Lab is represented
//              here using the internal rgb storage (i.e., L* is stored as red,
//              a* as green, and b* as blue).  This leverages the functionality
//              already built in the tlColour class.  The user, not the object,
//              is responsible for tracking which space is actually used.
//
// Author:      Harold Westlund
//
//===========================================================================

// Usually these constants are set by the monitor specifications.  However 
// since we don't have any montior information just use an average setting.
static const tlMatrix RGB_TO_XYZ( 
          0.640f, 0.330f, 0.030f, 0.000f,
          0.300f, 0.600f, 0.100f, 0.000f,
          0.150f, 0.060f, 0.790f, 0.000f,
          0.000f, 0.000f, 0.000f, 1.000f );    
static const tlMatrix XYZ_TO_RGB(     
          2.088f,-1.155f, 0.067f, 0.000f,
         -0.991f, 2.236f,-0.245f, 0.000f, 
         -0.321f, 0.050f, 1.272f, 0.000f, 
          0.000f, 0.000f, 0.000f, 1.000f );  // from ::Inverse( RGB_TO_XYZ )
static const tlPoint WHITE_CHROMATICITY( 0.3138f, 0.3310f, 0.3552f );

tlColourLab::tlColourLab()
{

}

tlColourLab::tlColourLab( const tlColour& colour ) : tlColour(colour)
{

}

tlColourLab::tlColourLab( float c0, float c1, float c2, float alpha ) : 
   tlColour( c0, c1, c2, alpha )
{

}

tlColourLab::~tlColourLab()
{

}

//==============================================================================
// Change the internal representation from Lab to rgb.  This is pretty much 
// straight out of the CIE manual.
void tlColourLab::Lab2rgb()
{
   tlPoint xyzRatio; // Ratio XYZ coords to white point.
   tlPoint Lab( red, green, blue );
   
   // First find ratio of luminance to white luminance
   if( Lab[0] <= ( 903.3f * 0.008856f ) )
   {
      xyzRatio[1] = Lab[0] / 903.3f;
   }
   else
   {
      xyzRatio[1] = (float)::pow( ( ( Lab[0] + 16.0 ) / 116.0 ), 3.0 );
   }

   tlPoint xyzRatioFunc;

   if( xyzRatio[1] <= 0.008856f )
   {
      xyzRatioFunc[1] = 7.787f * xyzRatio[1] + ( 16.0f / 116.0f );
   }
   else
   {
      xyzRatioFunc[1] = (float)::pow( xyzRatio[1], 1.0 / 3.0 );
   }
   xyzRatioFunc[0] = Lab[1] / 500.0f  +  xyzRatioFunc[1];
   xyzRatioFunc[2] = xyzRatioFunc[1]  -  Lab[2] / 200.0f;

   // Find ratio of colors to white point
   int channel;
   for( channel = 0; channel < 3; channel += 2 )
   {
      if(xyzRatioFunc[channel] <= ( 7.787f * 0.008856f + 16.0f / 116.0f ) )
      {
         xyzRatio[channel] = ( 1.0f / 7.787f ) * 
                             ( xyzRatioFunc[channel] - (16.0f / 116.0f ) );
      }
      else
      {
         xyzRatio[channel] = (float)::pow( xyzRatioFunc[channel], 3.0 );
      }
   }

   tlPoint xyz = xyzRatio * WHITE_CHROMATICITY;
   tlPoint rgb = VectorTransform( XYZ_TO_RGB, xyz );

   red   = rgb[0];
   green = rgb[1];
   blue  = rgb[2];
}

//==============================================================================
// Change the internal representation from rgb to Lab. This is pretty much 
// straight out of the CIE manual.
void tlColourLab::rgb2Lab()
{
   tlPoint lab;
   tlPoint rgb( red, green, blue );
   
   tlPoint xyz      = VectorTransform( RGB_TO_XYZ, rgb );
   tlPoint xyzRatio = xyz / WHITE_CHROMATICITY;

   // Find lightness ( L* )
   if( xyzRatio.y <= 0.008856f )
      lab[0] = 903.3f * xyzRatio.y;
   else
      lab[0] = 116.0f * (float)::pow( xyzRatio.y, 1.0 / 3.0 ) - 16.0f;
 
   // Find a* and b* channels
   tlPoint xyzTemp;
   int channel;
   for( channel = 0; channel < 3; channel++ )
   {
      if( xyzRatio[channel] <= 0.008856f )
      {
         xyzTemp[channel] = 7.787f * xyzRatio[channel] + ( 16.0f / 116.0f );
      }
      else
      {
         xyzTemp[channel] = (float)::pow( (double)( xyzRatio[channel] ), 1.0 / 3.0 );
      }
   }
   lab[1] = 500.0f * ( xyzTemp.x - xyzTemp.y );
   lab[2] = 200.0f * ( xyzTemp.y - xyzTemp.z );

   red   = lab[0];
   green = lab[1];
   blue  = lab[2];

}

std::ostream& operator<<(std::ostream& os, const tlColour& c) 
{ 
    return os << " R : " << c.red << " G : " << c.green << " B : " << c.blue; 
}

//operator < so that colors can be used in a STD::SET
bool tlColour::operator<( const tlColour& right ) const
{
   if( red < right.red )
   {
       return true;
   }
   if( red > right.red )
   {
       return false;
   }
   if( green < right.green )
   {
       return true;
   }
   if( green > right.green )
   {
       return false;
   }
   if( blue < right.blue )
   {
       return true;
   }
   if( blue > right.blue )
   {
       return false;
   }
   if( alpha < right.alpha )
   {
       return true;
   }
   return false;
}

//-------------------------------colour offset---------------------------------
tlColourOffset::tlColourOffset( )
: tlColour( )
{

}

tlColourOffset::~tlColourOffset( )
{
}

tlColourOffset::tlColourOffset( const tlColour& colour )
:   tlColour( colour )
{
}

void tlColourOffset::Read(tlFile* f)
{
   *this = f->GetColourOffset();
}

void tlColourOffset::Write(tlFile* f)
{
   f->PutColourOffset(*this);
}
