/****************************************************************************/
/*                                                                          */
/* Copyright SN Systems Ltd 2000                                            */
/*                                                                          */
/* File:        sneeutil.h                                                  */
/* Version:     1.02                                                        */
/* Description: PS2 EE Utilities (General)                                  */
/*                                                                          */
/* Change History:                                                          */
/* Vers Date        Author     Changes                                      */
/* 1.00 25-May-2000 D.Lowther  File Released                                */
/* 1.01 19-Jun-2000 D.Lowther  Version changed to 1.01 for 1.01 TCP/IP      */
/*                             stack release. No other changes.             */
/* 1.02 26-Jun-2000 D.Lowther  Changed version to 1.02 to keep in step      */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/****************************************************************************/

#ifndef _SNEEUTIL_H_
#define _SNEEUTIL_H_

#include "sntypes.h"

sn_int32 sn_delay(sn_int32 ms);
sn_char* sn_strcat(sn_char* dest, const sn_char* src);



#endif /* _SNEEUTIL_H_ */

