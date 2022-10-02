#ifndef PATH_H
#define PATH_H

struct path
{
    const char * p_path;
    const char * p_next;
    char delim;
};

void path_start( path *, const char *, char delim );
void path_next( path *, char *, char * );
void path_end( path * );

#endif 