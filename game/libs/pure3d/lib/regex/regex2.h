//===========================================================================
// Component:   regular expression library
//
// Description: Henry Spencer's regular expression library.
//
// Constraints: Reformatted so the damn thing compiles..
//
//===========================================================================

// Recompilation protection flag.
#ifndef __REGEX2_H  
#define __REGEX2_H  

//===========================================================================
// Nested Includes
//===========================================================================
#include <stdio.h>
#include <sys/types.h>      // off_t

#include "regtypes.h"
#include "regerror.h"

//===========================================================================
// Forward References
//===========================================================================

#ifdef __cplusplus
extern "C" {
#endif

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

#define	MAGIC1	((('r'^0200)<<8) | 'e')
#define	MAGIC2	((('R'^0200)<<8)|'E')

#define	USEBOL	01	/* used ^ */
#define	USEEOL	02	/* used $ */
#define	BAD	    04	/* something wrong */

#define	OPRMASK	0x7c000000
#define	OPDMASK	0x03ffffff
#define	OPSHIFT	(26)
#define	OP(n)	((n)&OPRMASK)
#define	OPND(n)	((n)&OPDMASK)
#define	SOP(op, opnd)	((op)|(opnd))

/* operators			   meaning	operand			*/
/*						(back, fwd are offsets)	*/
#define	OEND	(1<<OPSHIFT)	/* endmarker	-			*/
#define	OCHAR	(2<<OPSHIFT)	/* character	unsigned char		*/
#define	OBOL	(3<<OPSHIFT)	/* left anchor	-			*/
#define	OEOL	(4<<OPSHIFT)	/* right anchor	-			*/
#define	OANY	(5<<OPSHIFT)	/* .		-			*/
#define	OANYOF	(6<<OPSHIFT)	/* [...]	set number		*/
#define	OBACK_	(7<<OPSHIFT)	/* begin \d	paren number		*/
#define	O_BACK	(8<<OPSHIFT)	/* end \d	paren number		*/
#define	OPLUS_	(9<<OPSHIFT)	/* + prefix	fwd to suffix		*/
#define	O_PLUS	(10<<OPSHIFT)	/* + suffix	back to prefix		*/
#define	OQUEST_	(11<<OPSHIFT)	/* ? prefix	fwd to suffix		*/
#define	O_QUEST	(12<<OPSHIFT)	/* ? suffix	back to prefix		*/
#define	OLPAREN	(13<<OPSHIFT)	/* (		fwd to )		*/
#define	ORPAREN	(14<<OPSHIFT)	/* )		back to (		*/
#define	OCH_	(15<<OPSHIFT)	/* begin choice	fwd to OOR2		*/
#define	OOR1	(16<<OPSHIFT)	/* | pt. 1	back to OOR1 or OCH_	*/
#define	OOR2	(17<<OPSHIFT)	/* | pt. 2	fwd to OOR2 or O_CH	*/
#define	O_CH	(18<<OPSHIFT)	/* end choice	back to OOR1		*/
#define	OBOW	(19<<OPSHIFT)	/* begin word	-			*/
#define	OEOW	(20<<OPSHIFT)	/* end word	-			*/

/* misc utilities */
#define	REG_OUT	(CHAR_MAX+1)	/* a non-character value */
#define	ISWORD(c)	(isalnum(c) || (c) == '_')

/* note that CHadd and CHsub are unsafe, and CHIN doesn't yield 0/1 */
#define	CHadd(cs, c)	((cs)->ptr[(uch)(c)] |= (cs)->mask, (cs)->hash += (c))
#define	CHsub(cs, c)	((cs)->ptr[(uch)(c)] &= ~(cs)->mask, (cs)->hash -= (c))
#define	CHIN(cs, c)	((cs)->ptr[(uch)(c)] & (cs)->mask)
#define	MCadd(p, cs, cp)	mcadd(p, cs, cp)	/* regcomp() internal fns */
#define	MCsub(p, cs, cp)	mcsub(p, cs, cp)
#define	MCin(p, cs, cp)	mcin(p, cs, cp)

#define	REG_BASIC	    0000
#define	REG_EXTENDED	0001
#define	REG_ICASE	    0002
#define	REG_NOSUB	    0004
#define	REG_NEWLINE	    0010
#define	REG_NOSPEC	    0020
#define	REG_PEND	    0040
#define	REG_DUMP	    0200

#define	REG_NOTBOL	        00001
#define	REG_NOTEOL	        00002
#define	REG_STARTEND	    00004
#define	REG_TRACE	        00400	// tracing of execution
#define	REG_LARGE	        01000	// force large representation
#define	REG_BACKR	        02000	// force use of backref code

#define	BOL	(REG_OUT+1)
#define	EOL	(BOL+1)
#define	BOLEOL	(BOL+2)
#define	NOTHING	(BOL+3)
#define	BOW	(BOL+4)
#define	EOW	(BOL+5)
#define	CODEMAX	(BOL+5)		// highest code used
#define	NONCHAR(c)	((c) > CHAR_MAX)
#define	NNONCHAR	(CODEMAX-CHAR_MAX)

//===========================================================================
// Function Declarations
//===========================================================================

// regperform.c //
extern int regperform( const char* expression, const char* control );

// regcomp.c //
extern int regcomp( regex_t* preg, const char* pattern, int cflags );

// regexec.c //
extern int regexec(const regex_t *, const char *, size_t, regmatch_t [], int);

// regfree.c //
extern void regfree(regex_t *);

// debug.c //
extern void regprint( regex_t* r, FILE* d );

#ifdef __cplusplus
}
#endif

#endif // __REGEX2_H
