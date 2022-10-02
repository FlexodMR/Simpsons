///////////////////////////////////////////////////////////////////////////////
// File: configparam.hpp
// Author: Young T. Son
// Creation Date: October 31, 2000
//

#ifndef CONFIGPARAM_HPP
#define CONFIGPARAM_HPP

const int nOptions = 100;

class ConfigParam
{
public:
    ConfigParam();
    ~ConfigParam();

    void Init( const char* fname, tPlatform* platform );
    const char* GetOptionStrVal( const char* option );
    int GetOptionIntVal( const char* option );
    float GetOptionFloatVal( const char* option );

private:
    int FindOptionIndex( const char* option );
    int m_nOptions;

    char* m_optionVals[nOptions];
    char* m_options[nOptions];
};

#endif
