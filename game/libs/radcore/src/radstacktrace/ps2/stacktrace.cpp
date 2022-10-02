//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/* lw $31,const($sp) is : 100 011 11101 11111 const */
/*                        1000 1111 1011 1111       */

#define RESTORE_RETURNVAL	0x8fbf0000
#define RESTORE_RETURNVAL_MASK	0xffff0000

/* ld $31,const($sp) is : 1101 011 11101 11111 const */
/*                        1000 1111 1011 1111       */

#define RESTORE_RETURNVAL2	0xdfbf0000

/* lq $31,const($sp) is : 011110 11101 11111 const */
/* EE-CORE SPECIFIC                                */

#define RESTORE_RETURNVAL3  0x7bbf0000

/* addiu $sp, $sp, const is 001 001 11101 11101 const */
/*                          0010 0111 1011 1101 const */

#define ADJUST_STACKP_C		0x27bd0000
#define ADJUST_STACKP_C_MASK	0xffff0000

/* addu $sp, $sp, $at is 000 000 11101 00001 11101 00000 100 001  */
/*                       0000 0011 1010 0001 1110 1000 0010 0001 */

#define ADJUST_STACKP_V		0x03a1e821
#define ADJUST_STACKP_V_MASK	0xffffffff

/* lui $at, const is 001 111 00000 00001 const */
/*		     0011 1100 0000 0001 const */

#define SET_UPPER_C		0x3c010000
#define SET_UPPER_C_MASK	0xffff0000

/* ori $at, $at, const is 001 101 00001 00001 const */
/*                        0011 0100 0010 0001 const */

#define OR_LOWER_C		0x34210000
#define OR_LOWER_C_MASK		0xffff0000

/* ori $at, $zero, const is 001 101 00000 00001 const */
/*                          0011 0100 0000 0001 const */

#define SET_LOWER_C		0x34010000
#define SET_LOWER_C_MASK	0xffff0000

/* jr $ra */
#define RETURN	    0x03e00008

#define CALL(f)	    (0x0c000000 | (((int) (f)) >> 2))

/*
 * This computation is expensive, so we cache the results;
 * a simple hash function and straight-forward replacement.
 */

#define HASH_SIZE   256

typedef struct _returnCache {
    unsigned int    *returnAddress;
    int 	    raOffset;
    int 	    spAdjust;
} ReturnCacheRec, *ReturnCachePtr;

static ReturnCacheRec	returnCache[HASH_SIZE];

#define HASH(ra)    ((((int) (ra)) >> 2) & (HASH_SIZE - 1))

typedef int Bool;

#define TRUE 1
#define FALSE 0

// Defined in code/ps2asm/mipsstack.s
extern "C" {
    unsigned int     *getReturnAddress (), *getStackPointer ();
}

//
// Defined in PS2 linker command file (.cmd)
//
#if defined RAD_PS2 
extern unsigned int _codestart;
extern unsigned int _codeend;
#endif


//
// radStackTracePs2Get( )
//
extern "C" void radStackTracePs2Get( unsigned int* results, int max, void * stackPointer, void * returnAddress )
{
    extern int	    main ();
    unsigned int    *ra, *ra_limit;
    unsigned int    *sp;
    unsigned int    inst;
    unsigned int    mainCall;
    unsigned short  const_upper;
    unsigned short  const_lower;
    int 	    ra_offset;
    int 	    sp_adjust;
    Bool	    found_ra_offset, found_sp_adjust;
    Bool	    found_const_upper, found_const_lower;
    ReturnCachePtr  rc;

    ra = ( unsigned int * ) returnAddress;
    sp = ( unsigned int * ) stackPointer;

    //printf("getStackTrace: %x %x\n", (int)ra, (int)sp);

    mainCall = CALL(main);

    //printf("mainCall : %x\n", (int)mainCall);

    while (ra && max) {
        rc = &returnCache[HASH(ra)];
        if (rc->returnAddress != ra)
        {
            found_ra_offset = FALSE;
            found_sp_adjust = FALSE;
            found_const_upper = FALSE;
            found_const_lower = FALSE;
            const_upper = 0;
            const_lower = 0;
            rc->returnAddress = ra;
            ra_limit = (unsigned int  *) 0x01f00000;
            ra_offset = 0;
            sp_adjust = -1;
            while ((!found_ra_offset || !found_sp_adjust) && ra < ra_limit)
            {
                inst = *ra;
            /* look for the offset of the PC in the stack frame */
                if ((inst & RESTORE_RETURNVAL_MASK) == RESTORE_RETURNVAL)
                {
                    ra_offset = inst & ~RESTORE_RETURNVAL_MASK;
                    found_ra_offset = TRUE;
                        //printf(" Found ra_offset: %x\n", ra_offset);
                }
                else if ((inst & RESTORE_RETURNVAL_MASK) == RESTORE_RETURNVAL2)
                {
                    ra_offset = inst & ~RESTORE_RETURNVAL_MASK;
                    found_ra_offset = TRUE;
                        //printf(" Found ra_offset2: %x\n", ra_offset);
                }
                else if ((inst & RESTORE_RETURNVAL_MASK) == RESTORE_RETURNVAL3)
                {
                    ra_offset = inst & ~RESTORE_RETURNVAL_MASK;
                    found_ra_offset = TRUE;
                        //printf(" Found ra_offset3: %x\n", ra_offset);
                }
                else if ((inst & ADJUST_STACKP_C_MASK) == ADJUST_STACKP_C)
                {
                    sp_adjust = (short)(inst & ~ADJUST_STACKP_C_MASK);
                    found_sp_adjust = TRUE;
                        //printf(" Found sp_adjust1: %x %x %x\n", sp_adjust, ra, inst);
                }
                else if ((inst & ADJUST_STACKP_V_MASK) == ADJUST_STACKP_V)
                {
                    sp_adjust = 0;
                    found_sp_adjust = TRUE;
                            //printf(" Found sp_adjust2: %x\n", sp_adjust);
                }
                else if ((inst & SET_UPPER_C_MASK) == SET_UPPER_C)
                {
                    const_upper = inst & ~SET_UPPER_C_MASK;
                    const_lower = 0;
                    found_const_upper = TRUE;
                }
                else if ((inst & OR_LOWER_C_MASK) == OR_LOWER_C)
                {
                    const_lower = inst & ~OR_LOWER_C_MASK;
                    found_const_lower = TRUE;
                }
                else if ((inst & SET_LOWER_C_MASK) == SET_LOWER_C)
                {
                    const_lower = inst & ~SET_LOWER_C_MASK;
                    const_upper = 0;
                    found_const_lower = TRUE;
                }
                else if (inst == RETURN)
                {
                    ra_limit = ra + 2;
                }

                ra++;
            }
                //printf("done loop: %x %x\n", sp_adjust, ra_offset);
            if (sp_adjust == 0 && (found_const_upper || found_const_lower))
            {
                sp_adjust = (const_upper << 16) | const_lower;
            }
            rc->raOffset = ra_offset;
            rc->spAdjust = sp_adjust;
        }
        /* if something went wrong, punt */
        if (rc->spAdjust <= 0) 
        {
            *results++ = 0;
            break;
        }
        ra = (unsigned int *) sp[rc->raOffset>>2];
            //printf("New ra: %x\n", (int) ra);
        sp += rc->spAdjust >> 2;

        // upper bound/lower bound check
        if ((unsigned)ra < (unsigned int)&_codestart || (unsigned)ra > (unsigned int)&_codeend) 
        {
            *results++ = 0;
            break;
        }

        if ((unsigned)ra & 0x3)
        {
            *results++ = 0;
            break;
        }
        *results++ = ((unsigned int) ra) - 8;

        if (ra[-2] == mainCall)
        {
            *results++ = 0;
            break;
        }

        if (ra[-2] < (unsigned int)&_codestart)
        {
            *results++ = 0;
            break;
        }
        max--;
    }
}

//
// radStackTraceGet( ) 
//
extern "C" void radStackTraceGet (unsigned int* results, int max)
{
    radStackTracePs2Get( results, max, getStackPointer( ), getReturnAddress( ) );
}

