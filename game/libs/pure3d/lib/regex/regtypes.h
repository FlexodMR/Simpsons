//===========================================================================
// Component:   regular expression library
//
// Description: Henry Spencer's regular expression library.
//
// Constraints: Reformatted so the damn thing compiles..
//
//===========================================================================

// Recompilation protection flag.
#ifndef __REGTYPES_H  
#define __REGTYPES_H  

typedef off_t regoff_t;

typedef struct 
{
    int re_magic;
    size_t re_nsub;		// number of parenthesized subexpressions
    const char *re_endp;	// end pointer for REG_PEND
    struct re_guts *re_g;	// none of your business :-)
} regex_t;

typedef struct 
{
    regoff_t rm_so;		// start of match
    regoff_t rm_eo;		// end of match
} regmatch_t;

/*
 * The internal representation is a *strip*, a sequence of
 * operators ending with an endmarker.  (Some terminology etc. is a
 * historical relic of earlier versions which used multiple strips.)
 * Certain oddities in the representation are there to permit running
 * the machinery backwards; in particular, any deviation from sequential
 * flow must be marked at both its source and its destination.  Some
 * fine points:
 *
 * - OPLUS_ and O_PLUS are *inside* the loop they create.
 * - OQUEST_ and O_QUEST are *outside* the bypass they create.
 * - OCH_ and O_CH are *outside* the multi-way branch they create, while
 *   OOR1 and OOR2 are respectively the end and the beginning of one of
 *   the branches.  Note that there is an implicit OOR2 following OCH_
 *   and an implicit OOR1 preceding O_CH.
 *
 * In state representations, an operator's bit is on to signify a state
 * immediately *preceding* "execution" of that operator.
 */
typedef long sop;		/* strip operator */
typedef long sopno;

/*
 * Structure for [] character-set representation.  Character sets are
 * done as bit vectors, grouped 8 to a byte vector for compactness.
 * The individual set therefore has both a pointer to the byte vector
 * and a mask to pick out the relevant bit of each byte.  A hash code
 * simplifies testing whether two sets could be identical.
 *
 * This will get trickier for multicharacter collating elements.  As
 * preliminary hooks for dealing with such things, we also carry along
 * a string of multi-character elements, and decide the size of the
 * vectors at run time.
 */
typedef struct {
	unsigned char*              ptr;		/* -> uch [csetsize] */
	unsigned char               mask;		/* bit within array */
	unsigned char               hash;		/* hash code */
	size_t                      smultis;
	char*                       multis;		/* -> char[smulti]  ab\0cd\0ef\0\0 */
} cset;

/* stuff for character categories */
typedef unsigned char cat_t;

/*
 * main compiled-expression structure
 */
struct re_guts 
{
	int                         magic;
	sop*                        strip;		    /* malloced area for strip */
	int                         csetsize;		/* number of bits in a cset vector */
	int                         ncsets;		    /* number of csets in use */
	cset*                       sets;		    /* -> cset [ncsets] */
	unsigned char*              setbits;		/* -> uch[csetsize][ncsets/CHAR_BIT] */
	int                         cflags;		    /* copy of regcomp() cflags argument */
	sopno                       nstates;		/* = number of sops */
	sopno                       firststate;	    /* the initial OEND (normally 0) */
	sopno                       laststate;	    /* the final OEND */
	int                         iflags;		    /* internal flags */
	int                         nbol;		    /* number of ^ used */
	int                         neol;		    /* number of $ used */
	int                         ncategories;	/* how many character categories */
	cat_t*                      categories;	    /* ->catspace[-CHAR_MIN] */
	char*                       must;		    /* match must contain this string */
	int                         mlen;		    /* length of must */
	size_t                      nsub;		    /* copy of re_nsub */
	int                         backrefs;		/* does it use back references? */
	sopno                       nplus;		    /* how deep does it nest +s? */
	/* catspace must be last */
	cat_t                       catspace[1];	/* actually [NC] */
};

/*
 * parse structure, passed up and down to avoid global variables and
 * other clumsinesses
 */
struct parse {
	char *next;		/* next character in RE */
	char *end;		/* end of string (-> NUL normally) */
	int error;		/* has an error been seen? */
	sop *strip;		/* malloced strip */
	sopno ssize;		/* malloced strip size (allocated) */
	sopno slen;		/* malloced strip length (used) */
	int ncsalloc;		/* number of csets allocated */
	struct re_guts *g;
#	define	NPAREN	10	/* we need to remember () 1-9 for back refs */
	sopno pbegin[NPAREN];	/* -> ( ([0] unused) */
	sopno pend[NPAREN];	/* -> ) ([0] unused) */
};

#endif      // __REGTYPES_H

