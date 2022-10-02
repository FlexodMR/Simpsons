//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLFOURCC_HPP
#define _TLFOURCC_HPP

class tlFourCC
{
public:
    tlFourCC() : code(0) {}
    tlFourCC(unsigned int c);
    tlFourCC(const char* code);
    tlFourCC(char code0, char code1, char code2, char code3);
    ~tlFourCC(){}

    operator unsigned int() const { return code; }
    bool operator<(const tlFourCC& a) { return code < a.code; }

    const char* AsChar() const;

protected:

    unsigned int code;
};

#endif

// Local Variables: ***
// comment-column: 45 ***
// End: ***

