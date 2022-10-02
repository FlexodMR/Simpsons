/*===========================================================================
    Automatically generated by Jeeves, don't edit.  Edit p3dimage.sc instead

    File: Param.hpp 

    Command line parameters for p3dimage

       This tool processes textures and images in a Pure3D file

    Copyright (c) 2015 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _PARAM_HPP
#define _PARAM_HPP

#include "tlTable.hpp"
#include "tlStringTable.hpp"

class tFile;
class tlDataChunk;

class Parameters
{

public:
    tlStringTable Files;

    Parameters(int argc, char* argv[]);
    ~Parameters();

    void          ShortUsage();                  //: Print a short usage message
    void          Usage();                       //: Print a usage message
    void          VersionHistory(int count = 1); //: Print version history
    tlDataChunk*  HistoryChunk();                //: Return a File History chunk

    // Tool specific parameters

   int           NotAlpha            ;//: Don't modify images with alpha
   float         Saturation          ;//: Increase (pos. value) or decrease (neg.
                                     //   value) the image saturation.
   int           NTSCFix             ;//: Desaturate an image to avoid illegal
                                     //   NTSC colours, in apposed to clamping
                                     //   the colours.
   int           NewBpp              ;//: Force output images bits-per-pixel to
                                     //   Value
   float         Brightness          ;//: Increase (pos. value) or decrease (neg.
                                     //   value) the image brightness.
   int           ClampNTSC           ;//: Correct all illegal NTSC colours
   float         Contrast            ;//: Increase (pos. value) or decrease (neg.
                                     //   value) the image contrast.
   int           DiceSprite          ;//: Cut the sprite into sections which are 
                                     //  powers of two sized (on by default)
   int           Dither              ;//: With -b, dither an image when reducing 
                                     //  the bit depth
   int           Format              ;//: Specify converted dxtn format(1, 3, 5, 
                                     //  or 9 for Auto-detect)
   float         Filter              ;//: Blur pixels within radius using
                                     //   Gaussian blur filter
   int           GameCubeImage       ;//: Format images optimized for the
                                     //   GameCube; Also turns on DXT1Only
   float         GammaCorrection     ;//: Gamma correct images by Value
   int           ImageFile           ;//: Deprecated. Input files are image
                                     //   files, and not P3D files. Deprecated
                                     //   option - file detection is automatic.
   int           ImageOutputFile     ;//: Write the output as an image.  The
                                     //   input file which must be an image is
                                     //   overwritten with the results.
   int           ClampAlpha          ;//: Clamps all of the alpha values in the
                                     //   image to 1 bit values
   float         Lightness           ;//: Increase (pos. value) or decrease (neg.
                                     //   value) the image lightness.
   int           MinSpriteSize       ;//: Specifies the minimum size a sprite
                                     //   chunk can be
   int           MaxSpriteSize       ;//: Specifies the maximum size a sprite
                                     //   chunk can be
   int           HighlightNTSC       ;//: Turn all illegal NTSC colours Hot Pink
   char*         OutputFile          ;//: Specify output file name
   int           Optimize            ;//: Reduce the bit depth of images if they 
                                     //  use few enough colours
   int           PS2Image            ;//: Deprecated
   int           QuickSave           ;//: Quick encode with poor image quality;
                                     //   for debugging only
   int           Query               ;//: Query image information.
   int           Solid               ;//: Reduce the size and bit depth of solid 
                                     //  colour images
   int           ShowSize            ;//: Print memory size statistics for each
                                     //   texture
   int           SpriteExport        ;//: Export as Sprites instead of textures
   tlStringTable NamePatterns        ;//: Only process textures whose names match
                                     //   Pattern (eg. Brick*)
   tlStringTable ExcludeNamePatterns ;//: Do not process textures whose names
                                     //   match Pattern (eg. Brick*)
   int           Upgrade             ;//: With -b, convert to higher bit depths
                                     //   (eg. 4 bit to 8 bit)
   float         Hue                 ;//: Increase (pos. value) or decrease (neg.
                                     //   value) the image hue.
   int           XBoxImage           ;//: Format images optimized for the X-Box
   int           MaxImageSize2x2     ;//: Specifies the maximum size a texture
                                     //   chunk can be where the hiehgt == width
   int           DXT1Only            ;//: Only convert to DXT1, if the image
                                     //   needs DXT3/5, leave it alone

    // Standard parameters implemented by all tools

    int         Verbosity;                    //: How much noise should this program make?
    int         WriteHistory;                 //: Should the tool write a history chunk?

private:

   void filebuildup(char* filename);

   bool     isPattern;
   bool     Recurse;
   char* FilePattern;

    int      Argc;
    char**   Argv;
};

extern Parameters* Param;

#endif
