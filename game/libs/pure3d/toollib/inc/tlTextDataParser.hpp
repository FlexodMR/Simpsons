/*===========================================================================
    File:: tlTextDataParser.hpp
    This is just ported from the run-time

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/
#ifndef __TL_TEXTDATAPARSER_HPP__
#define __TL_TEXTDATAPARSER__

#include <stdio.h>

class tlTextDataParser
{

 public:
    tlTextDataParser(FILE *file);
    tlTextDataParser(char *data, int len);
  ~tlTextDataParser();

    void Reset(void);

    // returns false on eof
    bool Advance(void);

    // Searches ahead for the string and returns
    bool AdvanceTo(char *s);


    bool Eof(void) { return mCurrentTokenStart >= mDataLen; }

    // Returns data of the current token
    int CurrentToken(char *dest, int destlen);
    char *DupCurrentToken(void);

    int CurrentLine(void) { return mCurrentLine; }

    int TokenCountAtCurrentBracketLevel(const char *token);


    bool  PushPosition(void);
    bool  PopPosition(void);

 private:

    char *mData;
    int   mDataLen;
    
    int   mCurrentTokenStart;
    int   mCurrentTokenLen;

    int   mCurrentLine;

    bool  IsSeperator(char c);

    bool  IsCurrentTokenComment(void);

    int   mBracketLevel;

    bool  mDataPushed;
    int   mPushedCurrentTokenStart;
    int   mPushedCurrentTokenLen;
    int   mPushedCurrentLine;
    int   mPushedBracketLevel;
};






#endif
