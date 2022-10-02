/*===========================================================================
    File:: tlKeyDefs.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLKEYDEFS_HPP
#define _TLKEYDEFS_HPP

// The Key Flags.
// Currently, only three are used.

#define KEY_FLAG_DELETE    0x00000001    // This key should be deleted
#define KEY_FLAG_KEYFRAME  0x00000002    // This key was marked as a KEYFRAME so should never be optimized out
#define KEY_FLAG_EXTRAKEY  0x00000004    // This key was added so there are never more than 64 frames between keys

// other defines

#define MAXKEYSPACE 63

// Packing macros

// ---------------------------- From   p3d\anim\include\channel.h

// packed angle format: 31         21          10          0
//                      |ZZZZZZZZZZ|YYYYYYYYYYY|XXXXXXXXXXX|
#define KEYGETX(x) (((x)<<5) & 0xffff)
#define KEYGETY(y) (((y)>>6) & 0xffe0)
#define KEYGETZ(z) (((z)>>16) & 0xffc0)

#define KEYPACK(x,y,z) ( \
  ( (ULONG) ((UWORD)(((UWORD)x)+16)) >>5) \
| ( (ULONG) ( ((UWORD)(((UWORD)y)+16)) >>5)<<11) \
| ( (ULONG) ( ((UWORD)(((UWORD)z)+32)) >>6)<<22) \
    )

// ---------------------------- From   p3d\anim\include\channel.h


#endif

