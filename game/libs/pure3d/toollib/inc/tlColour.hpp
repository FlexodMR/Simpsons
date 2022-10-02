/*===========================================================================
   File:: tlColour.hpp

   Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLCOLOUR_HPP
#define _TLCOLOUR_HPP

#include <assert.h>

class tlFile;

class tlYIQColour;

class ostream;

class tlColour
{
public:
   float red, green, blue, alpha;

   tlColour() : red(0.0f), green (0.0f), blue(0.0f), alpha(1.0f) {}
   
   tlColour(int r,int g,int b,int a = 255) :
         red(float(r)/255),
         green(float(g)/255),
         blue(float(b)/255),
         alpha(float(a)/255)
   {}

   tlColour(float r,float g,float b,float a = 1) :
         red(r),
         green(g),
         blue(b), 
         alpha(a)
   {}

   tlColour( const tlColour& c ) :
         red(   c.red ),
         green( c.green ),
         blue(  c.blue ),
         alpha( c.alpha )
   {}

   tlColour( unsigned long l );
   tlColour( const tlYIQColour& yiq);

   inline unsigned char RedCh() const {return (unsigned char)(red * 255);}
   inline unsigned char GreenCh() const {return (unsigned char)(green * 255);}
   inline unsigned char BlueCh() const {return (unsigned char)(blue * 255);}
   inline unsigned char AlphaCh() const {return (unsigned char)(alpha * 255);}
   inline double Luminosity() const { return 0.299 * red + 0.587 * green + 0.114 * blue; }
   unsigned short RGB565( );
   unsigned long ULong() const;

   void SetHSV( float h,  float s,  float v);
   void GetHSV( float &h, float &s, float &v);
   void SetHLS( float h,  float l,  float s );
   void GetHLS( float &h, float &l, float &s );

   const tlColour& Interpolate(const tlColour& c, float t) const;

   // Test for equality
   inline int operator==(const tlColour& c) const { return ((c.red==red)&&(c.blue==blue)&&(c.green==green)&&(c.alpha==alpha)); }
   tlColour& operator=( const tlColour& incol );

   //operator < so that colors can be used in a STD::SET
   bool tlColour::operator<( const tlColour& right ) const;

   void Clamp();  // clamp values to within 0-1
   
   void ClampNTSC();  // Make sure the colour is a valid NTSC colour
   bool IsLegalNTSC(); 
   
   void Gamma(float g);  // Gamma correct by g
   void Inverse( );      //inverse a color;

   // The following five colour adjustments mimic those in Photoshop 6.0
   void AdjustContrast( const tlColour &mean, float cAdjust );
   void AdjustBrightness( float bAdjust );
   void AdjustHue( float hAdjust );
   void AdjustSaturation( float sAdjust );
   void AdjustLightness( float lAdjust );

   // need for tlVertex::Compare
   // < and > not exactly meaningful for colour, but might as well keep in form with the tlPoint::Compare
   int Compare(const tlColour&);

   // File IO methods
   virtual void Read(tlFile* f);
   virtual void Write(tlFile* f);
   void Print(int index, int indent = 0);
   void PrintFormatted(int index, int indent = 0);
   void Init();

   bool GetFieldValue(char*, int) const;
   static bool GetFieldUpdatable();
   bool SetFieldValue(const char*);

   inline float& operator[]( int channel );    
   inline const float& operator[]( int channel ) const; 
   int MaxChannel() const;  // Return index of channel with highest value.

    friend ostream& operator<<(ostream& os, const tlColour& p);

    static const float UNDEFINED_HUE;

    double NTSCOverheatAmount( void );
	static double GetAmplitudeRatio( double Amplitude );

private:
   // used for NTSC filtering
   void FixAmplitude();

   void FixSaturation();

   // for NTSC colour correction
   static const double k_epsilon;
   static const double k_maxExcursion;
};

tlColour RandomColour();                // Returns a random colour

tlColour operator*(const tlColour& c, const float a);
tlColour operator*(const tlColour& a, const tlColour& b);
tlColour operator+(const tlColour& a, const tlColour& b);
tlColour operator-(const tlColour& a, const tlColour& b);
tlColour Clamp(tlColour& c);
tlColour Scale4(const tlColour& c, const float a); // Scale all four colour channels.

int Compare(const tlColour& c1, const tlColour& p2);

class tlYIQColour
{
public:
   float y, i, q;

   tlYIQColour() : y(0.0f), i(0.0f), q(0.0f) {}

   tlYIQColour(const tlColour& c);

   // return RGB colour values seperatly
   float Red();         
   float Green();
   float Blue();

private:
   static const double pi;
   static const double cos33;
   static const double sin33;
};

class tlColourLab : public tlColour
{
public:
   tlColourLab();
   tlColourLab( float c0, float c1, float c2, float alpha = 0.0f );
   tlColourLab( const tlColour& colour );
   virtual ~tlColourLab(); 

   void Lab2rgb();
   void rgb2Lab();
   void RandomRGB();

   inline float Lstar() const { return red; }
   inline float astar() const { return green; }
   inline float bstar() const { return blue; }

private:
};

// Inlines:

inline float& tlColour::operator[]( int channel ) 
{ 
   assert( channel >= 0 && channel <= 3 );
   if( channel < 2 )
   {
      return ( channel == 0 ) ? red : green;
   }
   
   return ( channel == 2 ) ? blue : alpha;
}   

inline const float& tlColour::operator[]( int channel ) const
{ 
   assert( channel >= 0 && channel <= 3 );
   if( channel < 2 )
   {
      return ( channel == 0 ) ? red : green;
   }
   
   return ( channel == 2 ) ? blue : alpha;
}    

class tlColourOffset : public tlColour
{
public:
    tlColourOffset( );
    tlColourOffset( const tlColour& colour );
    tlColourOffset(int r,int g,int b,int a = 255) : tlColour( r, g, b, a )
    {}
    tlColourOffset(float r,float g,float b,float a = 1) : tlColour( r, g, b, a )
    {}
    ~tlColourOffset( );
    void Read( tlFile *f );
    void Write( tlFile *f );
};
#endif
