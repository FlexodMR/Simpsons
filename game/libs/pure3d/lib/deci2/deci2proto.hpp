/*===========================================================================
   File:: deci2proto.hpp

   These classes define the DECI2 protocol for communication with
   the PS2 Tool.

   Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _DECI2PROTO_HPP
#define _DECI2PROTO_HPP

const unsigned char DECI2_DEFAULT_PRIORITY = 0xd0;

enum Deci2Proto
{
   // Sony protocols

   DECI2_PROTOCOL_DCMP     = 0x0001,
   DECI2_PROTOCOL_NETMP    = 0x0400,
   DECI2_PROTOCOL_EFILEP   = 0x0120,
   DECI2_PROTOCOL_ISDBGP   = 0x0130,
   DECI2_PROTOCOL_ITDBGP   = 0x0140,
   DECI2_PROTOCOL_ESDBGP   = 0x0230,
   DECI2_PROTOCOL_ETDBGP   = 0x0240,
   DECI2_PROTOCOL_ITTY     = 0x0110,
   DECI2_PROTOCOL_ETTY     = 0x0210,

   // Pure3D protocols
   DECI2_PROTOCOL_EVIEWER  = 0x0a00,  // Neall's trestbed
   DECI2_PROTOCOL_CONSOLE  = 0x0a10  // Remote console 
};

const char DECI2_NODE_ID_IOP  = 'I';
const char DECI2_NODE_ID_EE   = 'E';
const char DECI2_NODE_ID_HOST = 'H';

/* netmp message code */
enum NetmpCode 
{
   NETMP_CODE_CONNECT,  /* connect request */
   NETMP_CODE_CONNECTR, /* connect reply   */
   NETMP_CODE_RESET,    /* reset request   */
   NETMP_CODE_RESETR,   /* reset reply     */
   NETMP_CODE_MESSAGE,  /* message request */
   NETMP_CODE_MESSAGER, /* message reply   */
   NETMP_CODE_STATUS,   /* status request  */
   NETMP_CODE_STATUSR,  /* status reply    */
   NETMP_CODE_KILL,     /* kill request    */
   NETMP_CODE_KILLR,    /* kill reply      */
   NETMP_CODE_VERSION,  /* version request */
   NETMP_CODE_VERSIONR  /* version reply   */
};

/* netmp result code */
enum NetmpResult 
{
   NETMP_ERR_OK,           /* good            */
   NETMP_ERR_INVAL,        /* invalid request */
   NETMP_ERR_BUSY,         /* protocol busy   */
   NETMP_ERR_NOTCONN,      /* can not connect */
   NETMP_ERR_ALREADYCONN,  /* already connect */
   NETMP_ERR_NOMEM,        /* no memory       */
   NETMP_ERR_NOPROTO       /* no protocol     */
};

// Note that these structs are memory images, don't change their
// layout unless you know what you're doing.


#pragma pack(push)
#pragma pack(1)

struct deci2
{
   operator char*() { return (char*)this; }

   // Data
   unsigned short length;
   unsigned short reserved;
   unsigned short protocol;
   unsigned char  source;
   unsigned char  destination;
};


struct netmp : public deci2
{
   netmp();

   // Data
   unsigned char code : 8;
   unsigned char result : 8;
};

struct netmpConnectData
{
   unsigned char  priority;
   unsigned char  unused;
   unsigned short protocol;
};

// This data structure is variable sized

const int DECI2_MAXPROTOCOLS = 20;
   
struct netmpConnect : public netmp
{
   netmpConnect(int numprotocols);
   
   void SetProtocol(int p, 
                    unsigned char  priority,
                    Deci2Proto     protocol);

   // Data
   netmpConnectData protocols[DECI2_MAXPROTOCOLS];
};

struct netmpReset : public netmp
{
   netmpReset();

   //Data
   short reserved;
   int ee_boot_param[2];
   int iop_boot_param[2];
};

#pragma pack(pop)
#endif
