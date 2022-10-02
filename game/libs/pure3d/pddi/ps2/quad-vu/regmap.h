//---------------------------------------------------------------------
// VU1 register map defines
// May-9-2000 Neall
// May-9-2002 v17 (hey, two years to the day!)
//---------------------------------------------------------------------

#ifndef _REGMAP_H
#define _REGMAP_H

///////////////////////////////////////////
// - needed for multitexture
// 0x3ad - 0x3ad [ Gs State pointers]  1 QW
// 0x3ae - 0x3bd [ Gs State packets ] 16 QW
//                             total: 17 QW
///////////////////////////////////////////
// - needed for clipper
// 0x3be - 0x3c1 [ Scratch area     ]  4 QW
// 0x3c2 - 0x3ca [ Vertex Queue     ]  9 QW
// 0x3cb - 0x3cb [ Cliptag          ]  1 QW
// 0x3cc - 0x3e3 [ Clip buffer 0    ] 24 QW
// 0x3e4 - 0x3e4 [ Cliptag          ]  1 QW 
// 0x3e5 - 0x3fc [ Clip buffer 1    ] 24 QW
// 0x3fd - 0x3ff [ Vertex Queue LUT ]  3 QW
//                             total: 66 QW

#define SKINNING_SCRATCH   0x04

#define TOP_OF_GS_STATE    0x3ad
#define TOP_OF_CLIPPER     0x3be

#define GS_STATE_PACKET    TOP_OF_GS_STATE

#define TOP_OF_SCRATCH     TOP_OF_CLIPPER
#define SPILL_ADDRESS      0x3bf
#define VQ_ADDR            0x3c2
#define CLIP_BUFFER_TAG_0  0x3cb
#define CLIP_BUFFER_0      0x3cc
#define CLIP_BUFFER_TAG_1  0x3e4
#define CLIP_BUFFER_1      0x3e5
#define VERTEX_QUEUE_LUT   0x3fd

#define VQ_LUT0            (VQ_ADDR+3)
#define VQ_LUT1            (VQ_ADDR+6)
#define VQ_LUT2            (VQ_ADDR+0)

//;------ VU1 register map -----
//;VF00  constant
//;VF01-VF15 (VF25 if not lighting) scratch
//;----lighting
//;VF16   Er   Eg    Eb    Ea   ; additive lighting component (Ag * Am + Em)
//;VF17  Ls0  Ls1   Ls2   Ls3   ; specular intensity (Dl * Sm)
//;VF18  L0x  L1x   L2x   L3x   ; light direction matrix
//;VF19  L0y  L1y   L2y   L3y
//;VF20  L0z  L1z   L2z   L3z
//;VF21  L0r  L0g   L0b     0   ; light diffuse colour matrix (Dl * Dm)
//;VF22  L1r  L1g   L1b     0
//;VF23  L2r  L2g   L2b     0
//;VF24  L3r  L3g   L3b     0
//;VF25   vx   vy    vz   Shi   ; viewer position, material shininess
//;----transform/fog
//;VF26  m00  m01   m02   m03   ; transform matrix
//;VF27  m10  m11   m12   m13
//;VF28  m20  m21   m22   m23
//;VF29  m30  m31   m32   m33
//;VF30  vsx  vsy   vsz  fogSc  ; viewport scale, fog scale
//;VF31  vox  voy   voz  fogOf  ; viewport offset, fog offset
//
//;VI00  constant
//;VI01-VI10 scratch
//;VI11  clipper enabled & backface flag
//;VI12  tristrip flag
//;VI13  vertex count
//;VI14  GIFtag address
//;VI15  subroutine return address
//
//; notes:
//; Ag = global ambient
//; Am = material ambient
//; Em = material emissive
//; Dl = light diffuse
//; Dm = material diffuse
//; Sm = specular intensity


#define _LADDITIVE   VF16
#define _LSPECULAR   VF17
#define _LVX         VF18
#define _LVY         VF19
#define _LVZ         VF20
#define _LRGB0       VF21
#define _LRGB1       VF22
#define _LRGB2       VF23
#define _LRGB3       VF24
#define _VIEW        VF25
#define _LSHININESS  VF25
#define _SHININESS   VF25w
#define _CTM0        VF26
#define _CTM1        VF27
#define _CTM2        VF28
#define _CTM3        VF29
#define _VPS         VF30
#define _FOGSCALE    VF30w
#define _VPO         VF31
#define _FOGOFFSET   VF31w

#define _CLIPPER        VI11
#define _TRISTRIP       VI12
#define _NVER           VI13
#define _GIFTAG         VI14

#endif
