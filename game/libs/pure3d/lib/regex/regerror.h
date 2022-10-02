//===========================================================================
// Component:   regular expression library
//
// Description: Henry Spencer's regular expression library.
//
// Constraints: Reformatted so the damn thing compiles..
//
//===========================================================================

// Recompilation protection flag.
#ifndef __REGERROR_H  
#define __REGERROR_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include "regtypes.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

#ifdef __cplusplus
extern "C"
{
#endif      // __cplusplus

#define	REG_OKAY	     0
#define	REG_NOMATCH	     1
#define	REG_BADPAT	     2
#define	REG_ECOLLATE	 3
#define	REG_ECTYPE	     4
#define	REG_EESCAPE	     5
#define	REG_ESUBREG	     6
#define	REG_EBRACK	     7
#define	REG_EPAREN	     8
#define	REG_EBRACE	     9
#define	REG_BADBR	    10
#define	REG_ERANGE	    11
#define	REG_ESPACE	    12
#define	REG_BADRPT	    13
#define	REG_EMPTY	    14
#define	REG_ASSERT	    15
#define	REG_INVARG	    16
#define	REG_ATOI	    255	        // convert name to number (!)
#define	REG_ITOA	    0400	    // convert number to name (!)

extern size_t regerror(int, const regex_t *, char *, size_t);

#ifdef __cplusplus
}
#endif      // __cplusplus

#endif // __REGERROR_H  
