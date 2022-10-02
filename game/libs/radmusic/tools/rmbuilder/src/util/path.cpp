#include <util/path.h>
#include <string.h>

void path_start( path * p_path, const char * p_path_in, char delim )
{
    p_path->p_path = p_path_in;
    p_path->p_next = p_path->p_path;
    p_path->delim = delim;
}

void path_next( path * p_path, char * p_out, char * p_next)
{
    bool inquote = false;
        
    while ( 1 )
    {
        if ( *p_path->p_next == 0 )
        {
            *p_out = 0;
            if ( p_next )
            {
                strcpy( p_next, p_path->p_next );            
            }
            return;
        }
        else if ( *p_path->p_next == '\"' )
        {
            inquote = !inquote;
        }
        else if ( *p_path->p_next == p_path->delim )
        {
            if ( ! inquote )
            {
                *p_out = 0;
                p_path->p_next++;
                if ( p_next )
                {
                    strcpy( p_next, p_path->p_next );
                }
                return;
            }
        }
        
        *p_out = *p_path->p_next;
        p_out++;
        p_path->p_next++;        
    }
}

void path_end( path * p_path )
{
}