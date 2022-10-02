#define VIEWER_REVISION 1
#define VIEWER_RELEASE true

#include <stdio.h>
#include <constants/version.hpp>

static inline const char* ViewerVersionString(void)
{
    static char str[256];
    static int first = true;

    if(first)
    {
        first = false;
        if(VIEWER_RELEASE)
        {
            sprintf(str, "%s.%d", ATG_VERSION, VIEWER_REVISION);
        }
        else
        {
            sprintf(str, "%s.x (development)", ATG_VERSION);
        }
    }
    return str;
}
