#ifndef _SN_TTY_INCLUDED
#define _SN_TTY_INCLUDED

/* Maximum tty packet size that can be sent */
/* at once to IOP. snputs(...) breaks text  */
/* longer than this into smaller chunks.    */
#define SN_TTY_MAX_SIZE     0x200

/* RPC function number registered on IOP to */
/* accept TTY requests.                     */
/*                                          */
/* If you call this directly then the first */
/* four bytes of any data sent is the length*/
/* of the TTY to be send.                   */
#define SN_TY_RPC_FUNC_NO   0x534E03

/* Call this to send TTY data out.          */
int snputs(const char* pszStr);

#endif //#ifndef _SN_TTY_INCLUDED