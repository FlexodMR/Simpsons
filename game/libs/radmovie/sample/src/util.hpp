//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifdef RAD_WIN32
#include <windows.h>
#endif 

void utilATGLibInit
( 
    #ifdef RAD_WIN32
    HINSTANCE hInstance
    #elif defined RAD_PS2
    int argc, char** argv
    #else
    void 
    #endif
);

void utilATGLibTerminate( void );
void utilATGLibService( void );

void utilPure3DInit( void );
void utilPure3DTerminate( void );
