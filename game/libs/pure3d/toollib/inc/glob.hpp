//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _GLOB_HPP
#define _GLOB_HPP

class tlStringTable;

/* Match STRING against the pattern PATTERN, returning TRUE if
    it matches, FALSE if not.  */

int glob (const char *pattern, const char *string);

/* Match STRING against all patterns, returning TRUE if any match,
    FALSE if not.  */
int glob (tlStringTable* patterns, const char *string);

#endif

