//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <pddi/ps2/ps2debug.hpp>

#include <stdio.h>
#include <libvu0.h>
#include <libgraph.h>
#include <stdlib.h>

#define  VU1MEM ((unsigned char*)VU1_MEM)
#define  VU1SIZE    0x4000
#define  VU1QWORDS  0x1000

namespace Debug
{
    
double PS2ftod( float f )
{
    return (double)f;
}

inline float legalizefloat(unsigned x)
{
    if(x == 0xffffffff)
    {
        return 0.0f;
    }
    else
    {
        return *((float*)&x);
    }
}

#ifndef PS2MW
void DumpVU1(unsigned start = 0x0, unsigned end = 0x4000, unsigned char* mem = NULL)
#else
void DumpVU1(unsigned start , unsigned end , unsigned char* mem )
#endif
{
   int LineCount = 0;
   printf("VU1 dump:\n");
   unsigned char* base = mem ? &mem[start] : (unsigned char*)(&VU1MEM[start]);
   
   unsigned* ptr = (unsigned*)base;
   for(unsigned i = start; i <= end ; i += 16)
   {
      printf("%04x: %08x %08x %08x %08x -- %.2f %.2f %.2f %.2f -- %.4f %.4f\n", 
             i,
             ptr[3], ptr[2], ptr[1], ptr[0],
             PS2ftod(legalizefloat(ptr[3])), PS2ftod(legalizefloat(ptr[2])), PS2ftod(legalizefloat(ptr[1])), PS2ftod(legalizefloat(ptr[0])),
             PS2ftod((float)((ptr[1]>>4) & 4095) + (float)(ptr[1]&15)/16.0f),
             PS2ftod((float)((ptr[0]>>4) & 4095) + (float)(ptr[0]&15)/16.0f) );

      ptr += 4;
      LineCount++;  // hack to deal with io buffering bugs
      if(LineCount>8)
      {
         while(sceGsSyncV(0)==0){ /**/ };
         LineCount=0;
      }
   }
}

void DumpVU1RegsI()
{
   sceVu0IVECTOR vi;
   int adr,i;

   adr = 0x420;
   asm("ctc2 %0, $vi1": :"r"(adr));
   for(i=0; i<19; i++)
   {
      asm volatile ("vlqi.xyzw $vf2,($vi1++)");
      asm volatile ("sqc2 $vf2,0x0(%0)": :"r"(&vi));
      printf("vi%02d: %d (%04x)", i, vi[0], vi[0]);
      if(i==16)
         printf(" [status]\n");
      else if(i==17)
         printf(" [MAC]\n");
      else if(i==18)
         printf(" [clip]\n");
      else
         printf("\n");
   }
}

void DumpVU1RegsF()
{
   sceVu0FVECTOR vf;
   int adr,i;

   adr = 0x400;
   asm("ctc2 %0, $vi1": :"r"(adr));
   for(i=0; i<32; i++)
   {
      asm volatile ("vlqi.xyzw $vf2,($vi1++)");
      asm volatile ("sqc2 $vf2,0x0(%0)": :"r"(&vf));
      printf("vf%02d: %f %f %f %f -- %08x %08x %08x %08x\n", i, 
            vf[3],vf[2],vf[1],vf[0],
            *(unsigned*)&vf[3], *(unsigned*)&vf[2], *(unsigned*)&vf[1], *(unsigned*)&vf[0] );
   }
}

} // namespace Debug
