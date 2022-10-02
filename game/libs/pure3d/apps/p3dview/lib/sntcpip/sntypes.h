/****************************************************************************/
/*                                                                          */
/* Copyright SN Systems Ltd 2000                                            */
/*                                                                          */
/* File:        sntypes.h                                                   */
/* Version:     1.02                                                        */
/* Description: Common types used by SN Systems files                       */
/*                                                                          */
/* Change History:                                                          */
/* Vers Date        Author     Changes                                      */
/* 1.00 25-May-2000 D.Lowther  File Released                                */
/* 1.01 19-Jun-2000 D.Lowther  Version changed to 1.01 for 1.01 TCP/IP      */
/*                             stack release. No other changes.             */
/* 1.02 26-Jun-2000 D.Lowther  Changed version to 1.02 to keep in step      */
/*                                                                          */
/*                                                                          */
/****************************************************************************/

#ifndef _SNTYPES_H_
#define _SNTYPES_H_

/* Cause syntax error if more than one target definition is compiled */
#define SN_ERROR_DUPLICATED   two_or_more_targets_in_sntypes_h; struct xzqq=0

/* Cause syntax error if zero target definitions compiled */
#define SN_ERROR_NOTARGET     zero_targets_in_sntypes_h;        struct xzqq=0

/* Macros used later in definition of whether target is Little/Big endian */
#define SN_END_LITTLE  0
#define SN_END_BIG     1

/* Definitions for MIPS R3000 */
/* -------------------------- */
#ifdef R3000
  /* Check this set of definitions is unique */
  #ifdef SN_TYPES_DEFINED
    SN_ERROR_DUPLICATED;
  #else
    #define SN_TYPES_DEFINED

    /* On R3000 short=16bit, int=32bit, long=32bit */
    typedef char             sn_char;
    typedef unsigned char    sn_uchar;
    typedef short            sn_int16;
    typedef unsigned short   sn_uint16;
    typedef int              sn_int32;
    typedef unsigned int     sn_uint32;

    /* On PS2 R3000 is configured as Little Endian */
    #define SN_ENDIAN        SN_END_LITTLE

  #endif /* !SN_TYPES_DEFINED */
#endif /* R3000 */


/* Definitions for MIPS R5900 */
/* -------------------------- */
#ifdef R5900
  /* Check this set of definitions is unique */
  #ifdef SN_TYPES_DEFINED
    SN_ERROR_DUPLICATED;
  #else
    #define SN_TYPES_DEFINED

    /* On R5900 short=16bit, int=32bit, long=64bit */
    typedef char             sn_char;
    typedef unsigned char    sn_uchar;
    typedef short            sn_int16;
    typedef unsigned short   sn_uint16;
    typedef int              sn_int32;
    typedef unsigned int     sn_uint32;

    /* On PS2 R5900 is configured as Little Endian */
    #define SN_ENDIAN        SN_END_LITTLE

  #endif /* !SN_TYPES_DEFINED */
#endif /* R5900 */

/* Definitions for Win32 (VC++) */
/* ---------------------------- */
#ifdef _WIN32
  /* Check this set of definitions is unique */
  #ifdef SN_TYPES_DEFINED
    SN_ERROR_DUPLICATED;
  #else
    #define SN_TYPES_DEFINED

    /* On Win32 short=16bit, int=32bit, long=32 bit */
    typedef char             sn_char;
    typedef unsigned char    sn_uchar;
    typedef short            sn_int16;
    typedef unsigned short   sn_uint16;
    typedef int              sn_int32;
    typedef unsigned int     sn_uint32;

    /* 80x86 Processors are Little Endian */
    #define SN_ENDIAN        SN_END_LITTLE

  #endif /* !SN_TYPES_DEFINED */
#endif /* _WIN32 */

/* Check that a target was defined */
/* ------------------------------- */
#ifndef SN_TYPES_DEFINED
  SN_ERROR_NOTARGET;
#endif /* !SN_TYPES_DEFINED */

/* Definitions which are the same for all targets */

typedef sn_int16         sn_bool;
#define SN_FALSE         0
#define SN_TRUE          1

#endif /* _SNTYPES_H_ */


