//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ARGUMENTS_HPP_
#define _ARGUMENTS_HPP_

const int maxArgs = 64;

class Arguments
{
public:
    Arguments(int argc, char* argv[]);
    Arguments(char* args);
    ~Arguments();

    void  SetSwitchHasArg(const char* name);

    bool  GetSwitch(const char* name);
    const char* GetSwitchArg(int n, const char* name, const char* def = 0);
    const char* GetArg(int n, const char* def = 0);

private:
    void Classify(void);

    enum argType { NONE, ARG, SWITCH, SWITCH_ARG };

    int nArgs;

    char*   args[maxArgs];
    argType type[maxArgs];
};

#endif

