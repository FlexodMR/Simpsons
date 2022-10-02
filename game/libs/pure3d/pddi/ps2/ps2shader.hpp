/*====================================================================
   ps2shader.hpp
   03-Dec-00 Created by Neall
   All shaders on the PS2 must derive from this class!

   Copyright (c)2000, 2001, 2002 Radical Entertainment Ltd
   All rights reserved.
====================================================================*/

#ifndef _PS2SHADER_HPP
#define _PS2SHADER_HPP

#include <pddi/base/baseshader.hpp>
#include <pddi/ps2/packet.hpp>
#include <pddi/ps2/ps2vucode.hpp>

struct ps2LightingProperties
{
   // 72 bytes
   pddiColourVector diffuse;
   pddiColourVector emissive;
   float specular;
   float shininess;

   ps2LightingProperties()
   {
       specular  = 0.0f;
       shininess = 0.0f;
       diffuse.Set(0.0f,0.0f,0.0f,0.0f);
       emissive.Set(0.0f,0.0f,0.0f,1.0f);
   }
};
   
struct GSContext;
class ps2PrimBuffer;

class ps2Shader : public pddiBaseShader
{
public:
    // return vu program address to run
    virtual void Bind(GSContext* gsContext, VifStream& stream) = 0;
    virtual void Validate(unsigned vertexFormat) = 0;

    inline unsigned GetMicrocode() { return microcode; }

protected:
    unsigned microcode;
};


// PDDI enum -> GS 
namespace SHADER
{
    enum DitherMatrixType
    {
        Opaque,
        Alpha
    };

    extern const u_long DitherMatrix[2]; // one for opaque, one for alpha

    typedef struct BlendParam
    {
       unsigned A, B, C, D, FIX;
    };

    // PDDI enum -> GS translation tables
    extern const unsigned filterMinTable[];     // pddiFilterMode
    extern const unsigned filterMagTable[];     // pddiFilterMode
    extern const unsigned uvTable[];            // pddiUVMode
    extern const unsigned alphaTestTable[];     // pddiCompareMode
    extern const BlendParam alphaBlendTable[];  // pddiBlendMode
    extern const int zCompareTable[];           // pddiCompareMode
    extern const unsigned primTable[];          // pddiPrimType
    extern const int destAlphaTestTable[];
    extern const float mipTable[3];              // for mipmap K parameter
} // namespace SHADER

#endif /* _PS2SHADER_HPP */
