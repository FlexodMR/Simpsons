#include "regex2.h"

#define     NUM_SUBEXPRESSIONS 10

int regperform( const char* expression, const char* control )
{
//    if ( ! ( ( expression != NULL ) && ( control != NULL ) ) )
//    {
//        return (-1);
//    }

    int                         result = 0;

    regex_t                     reg;
    regmatch_t                  subs[NUM_SUBEXPRESSIONS];

    result = regcomp( &reg, expression, REG_EXTENDED );
    if ( result == 0 )
    {
        result = regexec( &reg, control, NUM_SUBEXPRESSIONS, subs, 0 );
    }

    regfree(&reg);

    return result;
}
