//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PS2STRUCTS_HPP_INCLUDED
#define PS2STRUCTS_HPP_INCLUDED

#include <eestruct.h>
#include <eetypes.h>
#include <string.h>

#include <pddi/ps2/ps2buildconfig.hpp>
#include <pddi/pdditype.hpp>

namespace UTIL
{
    inline unsigned Hash(const char* x)
    {
        if(x)
        {
            unsigned h = 0;
            char* s = (char*)x;
            while(*s)
            {
                h *= 65599;
                h = (h ^ *s);
                ++s;
            }
            return h;
        }
        return 0;
    }

    inline int Log2(int x)
    {
        int r = 0;
        int tmp = x;
        while(tmp > 1)
        {
            r++;
            tmp = tmp >> 1;

            if((tmp << r) != x)
                // not power of 2
                return -1;
        }
        return r;
    };
    
    inline int BitCount(unsigned a)
    {
        int count = 0;
        while(a)
        {
            count += a&1;
            a>>=1;
        }
        return count;
    }
    
    inline float Fabs(const float a)
    {
        unsigned x = *(unsigned*)&a & 0x7fffffff;  // strip of bit 31
        return *(float*)&x;
    }

    template <class T> inline T Max(const T a, const T b)
    {
        return a < b ? b : a;
    }

    template <class T> inline T Min(const T a, const T b)
    {
        return a < b ? a : b;
    }
    
    template <class T> inline T Bound(const T val, const T x)
    {
        return ((val + x - 1)/x)*x;
    }

    inline unsigned DivUp( unsigned num , unsigned divisor )
    {
        return ( num % divisor ) ? num / divisor + 1 : num / divisor;
    }

    inline unsigned short PackColour16(pddiColour c)
    {
        int red =   ((c.Red()   >> 3) & 0x1f);
        int green = ((c.Green() >> 3) & 0x1f) << 5;
        int blue =  ((c.Blue()  >> 3) & 0x1f) << 10;
        int alpha = ((c.Alpha() >> 7) & 0x01) << 15;
        return (unsigned short)(red|green|blue|alpha);
    }
};
    
//-----------------------------------------------------------------------------
struct pddiColourByteVector
{
    float Red()   { return (float)r; }
    float Green() { return (float)g; }
    float Blue()  { return (float)b; }
    float Alpha() { return (float)a; }

    void Set(float R, float G, float B, float A = 128.0f)
    {
        r=(unsigned char)R;
        g=(unsigned char)G;
        b=(unsigned char)B;
        a=(unsigned char)A;
    }

    pddiColourByteVector& operator=(pddiColour c)
    {
        Set(c.Red(), c.Green(), c.Blue(), c.Alpha());
        return *this;
    }
        
    void Normalize()
    {
    }

    // Usually used to make the PS2 vertex colours behave like the other consoles.
    // Note that alpha doesn't need to be changed.
    void NormalizeHalf()
    {
        r /= 2;
        g /= 2; 
        b /= 2;
    }

    void SetNormalized(pddiColour c)
    {
        *this = c;
        Normalize();
    }

    void SetHalfNormalized(pddiColour c)
    {
        *this = c;
        NormalizeHalf();
    }

    unsigned char r;
    unsigned char g;
    unsigned char b;
    unsigned char a;
};

//-----------------------------------------------------------------------------
struct pddiColourVector
{
    float Red()   { return r; }
    float Green() { return g; }
    float Blue()  { return b; }
    float Alpha() { return a; }

    void Set(float R, float G, float B, float A = 128.0f)
    {
        r=R;
        g=G;
        b=B;
        a=A;
    }

    pddiColourVector& operator=(pddiColour c)
    {
        Set(c.Red(), c.Green(), c.Blue(), c.Alpha());
        return *this;
    }
        
    void Normalize()
    {
        r *= (1.0f/255.0f);
        g *= (1.0f/255.0f);
        b *= (1.0f/255.0f);
        a *= (1.0f/255.0f);
    }

    // Usually used to make the PS2 vertex colours behave like the other consoles.
    // Note that alpha doesn't need to be changed.
    void NormalizeHalf()
    {
        r *= (0.5f/255.0f);
        g *= (0.5f/255.0f);
        b *= (0.5f/255.0f);
        a *= (1.0f/255.0f);
    }

    void SetNormalized(pddiColour c)
    {
        *this = c;
        Normalize();
    }

    void SetHalfNormalized(pddiColour c)
    {
        *this = c;
        NormalizeHalf();
    }

    float r;
    float g;
    float b;
    float a;
};


//------------------------------------------------------------------------------
// nv todo:  Get rid of this 
class ADPacket
{
public:
    ADPacket(void* a)
    {
        base = ptr = (unsigned*)a;
        tagBase = NULL;
    }

    unsigned* GetBase()     { return base; }
    unsigned* GetNextAddr() { return ptr; }


    sceGifTag* GetTagBase() { return tagBase; }

    unsigned GetSizeQW()    { return ((unsigned)ptr - (unsigned)base) / 16; }

    void BeginTag() { tagBase = (sceGifTag*)ptr; ptr[0]=ptr[1]=ptr[2]=ptr[3]=0;  ptr += 4; }
    void EndTag()
    {
        sceGifTag* tag = tagBase;
        tag->NLOOP = ((unsigned)ptr - (unsigned)(tagBase+1)) / 16;
        tag->EOP = 1;
        tag->PRE = 1;
        tag->NREG = 1;
        tag->REGS0 = 0xe;  //A+D
        tagBase = NULL;
    }

    void BeginUnpack(unsigned addr)
    {
        unpackAddr = addr;
        unpackBase = (unsigned*)ptr;
        unpackBase[0] = 0;
        unpackBase[1] = 0;
        unpackBase[2] = 0;
        unpackBase[3] = 0;
        ptr += 4;
    }

    void EndUnpack()
    {
        unsigned qw = ((unsigned)ptr - (unsigned)(unpackBase+1)) / 16;
        unpackBase[3] =  SCE_VIF1_SET_UNPACK(unpackAddr, qw, 0x6c, 0);
        unpackBase = NULL;
    }

    void BeginDirect()
    {
        directBase = (unsigned*)ptr++;
    }

    void EndDirect()
    {
        unsigned qw = ((unsigned)ptr - (unsigned)(directBase+1)) / 16;
        *directBase = SCE_VIF1_SET_DIRECT(qw, 0);
        directBase = NULL;
    }

    unsigned GetUnpackAddr()
    {
        unsigned offset = ((unsigned)ptr - (unsigned)unpackBase) / 16;
        return unpackAddr + offset - 1;  // don't include unpack code
    }

    unsigned* reserve(unsigned qw)
    {
        unsigned* ret = (unsigned*)ptr;
        ptr += qw*4;
        return ret;
    }

    void AddRaw(void* data, int count)
    {
        memcpy(ptr, data, count);
        ptr += count/4;
    }

    void AddQwords(void* data, int qwc)
    {
        u_long128* s = (u_long128*)data;
        u_long128* d = (u_long128*)ptr;
        do { *d++ = *s++; } while(--qwc);
    }

    void qw(unsigned q0, unsigned q1, unsigned q2, unsigned q3)
    {
        *ptr++ = q0;
        *ptr++ = q1;
        *ptr++ = q2;
        *ptr++ = q3;
    }

    void ad(unsigned reg, void* val)
    {
        unsigned long* lptr = (unsigned long*)ptr;
        *lptr++ = *(unsigned long*)val;
        *lptr++ = reg;
        ptr += 4;
    }

    private:
    unsigned* base;
    unsigned* ptr;
    sceGifTag* tagBase;
    unsigned* unpackBase;
    unsigned unpackAddr;
    unsigned* directBase;
};

#endif // PS2STRUCTS_HPP_INCLUDED
