//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PARAM_HPP
#define _PARAM_HPP

class tFile;
class tlDataChunk;

class Parameters
{
    int      Argc;
    char**   Argv;

public:
    int      Filec;
    char**   Filev;

    Parameters(int argc, char* argv[]);
    ~Parameters();

    int Machine;
    unsigned int Depth;
    
    int         Verbosity;                    //: How much noise should this program make?
    int         WriteHistory;                 //: Should the tool write a history chunk?
    void        Usage();                      //: Print a usage message
    void        History(int count = 1);       //: Print version history
};

extern Parameters* Param;

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***

