//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"arguments.hpp"
#include<string.h>

Arguments::Arguments(int argc, char* argv[])
{
    int nArgs = argc - 1;
    for(int i = 1; i < argc; i++)
    {
        args[i-1] = argv[i];
    }

    Classify();
}

Arguments::Arguments(char* inargs)
{
    nArgs = 0;

    if(!inargs)
        return;

    char* walk = inargs;

    while(*walk == ' ')
        walk++;
            
    while(*walk != 0)
    {
        if(*walk == '\"')
        {
            walk++;
            args[nArgs++] = walk;
            while ((*walk != '\"') && (*walk != 0))
            {
                walk++;
            }

            if(*walk == '\"')
                *walk++ = 0;
        }
        else
        {
            args[nArgs++] = walk;
            static int inQuotes = 0;
            inQuotes = 0;
            while((*walk != 0) /* && (*walk != '\n') */)
            {
                if(*walk == '\"')
                    inQuotes = !inQuotes;

                walk++;
                if((*walk == ' ') && !inQuotes)
                    break;
            }
        }
    
        if(*walk == ' ')
        {
            *walk++ = 0;
        }

        while((*walk == ' '))
        {
            walk++;
        }
    }

    Classify();
}

Arguments::~Arguments()
{
}


void Arguments::Classify(void)
{
    int i;

    for(i = 0; i < maxArgs; i++)
    {
        type[i] = NONE;
    }

    for(i = 0; i < nArgs; i++)
    {
        if(args[i][0] == '-')
        {
            type[i] = SWITCH;
        }
        else
        {
            type[i] = ARG;
        }
    }
}

void  Arguments::SetSwitchHasArg(const char* name)
{
    for(int i = 0; i < nArgs; i++)
    {
        if(type[i] == SWITCH)
        {
            if(strcmp(name, &args[i][1]) == 0)
            {
                if(type[i+1] == ARG)
                {
                    type[i+1] = SWITCH_ARG;
                }
            }
        }
    }
}

bool Arguments::GetSwitch(const char* name)
{
    for(int i = 0; i < nArgs; i++)
    {
        if(type[i] == SWITCH)
        {
            if(strcmp(name, &args[i][1]) == 0)
            {
                return true;
            }
        }
    }
    return false;
}

const char* Arguments::GetSwitchArg(int n, const char* name, const char* def)
{
    int count = 0;
    for(int i = 0; i < nArgs; i++)
    {
        if(type[i] == SWITCH)
        {
            if(strcmp(name, &args[i][1]) == 0)
            {
                if(type[i+1] == SWITCH_ARG)
                {
                    if(count == n)
                        return args[i+1];
                    else
                        count++;
                }
            }
        }
    }
    return def;
}

const char* Arguments::GetArg(int n, const char* def)
{
    int count = 0;

    for(int i = 0; i < nArgs; i++)
    {
        if(type[i] == ARG)
        {
            if(count++ == n)
            {
                return args[i];
            }
        }
    }
    return def;
}

