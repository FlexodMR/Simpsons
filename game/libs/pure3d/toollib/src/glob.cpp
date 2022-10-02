//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <stdlib.h>
#include <stdio.h>
#include "glob.hpp"
#include "tlStringTable.hpp"

#ifndef FALSE
#define FALSE 0
#endif

#ifndef TRUE
#define TRUE 1
#endif

/* Match STRING against the pattern PATTERN, returning TRUE if
it matches, FALSE if not.  */
int
glob (const char *pattern, const char *string)
{
    register const char *p = pattern;
    register const char *n = string;
    register char c;

    while ((c = *p++) != '\0') {
        switch (c) {
        case '?':
            if (*n == '\0'){
                return (FALSE);
            }
            break;
        case '*':
            for (c = *p++; c == '?' || c == '*'; c = *p++, ++n){
                if (c == '?' && *n == '\0'){
                    return (FALSE);
                }
            }

            if (c == '\0'){
                return (TRUE);
            }

            for (--p; *n != '\0'; ++n) {
                if ((*n == c) && glob (p, n) == TRUE){
                    return (TRUE);
                }
            }
            return (FALSE);
            break;

        default:
            if (c != *n){
                return (FALSE);
            }
            break;
        }
        ++n;
    }

    if (*n == '\0'){
        return (TRUE);
    }else{
        return (FALSE);
    }
}

int glob (tlStringTable* patterns, const char *string)
{
    for(int pat = 0; pat < patterns->Count(); pat++)
    {
        if(glob((*patterns)[pat],string))
        {
            return TRUE;
        }
    }
    return FALSE;
}


