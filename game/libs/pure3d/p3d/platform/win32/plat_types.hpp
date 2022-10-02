//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PLAT_TYPES_HPP
#define _PLAT_TYPES_HPP

#ifndef WIN32
#error Win32 platform header included in non-Win32 build
#endif

typedef __int64          P3D_S64;
typedef unsigned __int64 P3D_U64;
typedef int              P3D_S32;
typedef unsigned         P3D_U32;
typedef char             P3D_S8;
typedef unsigned char    P3D_U8;
typedef short            P3D_S16;
typedef unsigned short   P3D_U16;
typedef unsigned short   P3D_UNICODE;

#endif

