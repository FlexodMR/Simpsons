/*===========================================================================
    tltextdataparser.cpp
    12-Nov-01 Created by Liberty... Eric wrote the code.

    Copyright (c)2001 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#include "tlTextDataParser.hpp"
#include "tlFileByteStream.hpp"

#include <ctype.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

//******************************************************
//
// Class tlTextDataParser
// Constructor from memory
//
//
tlTextDataParser::tlTextDataParser(char *data, int len) :
    mData(NULL),
    mDataLen(len),
    mCurrentTokenStart(0),
    mCurrentTokenLen(0),
    mCurrentLine(1),
    mBracketLevel(0),
    mDataPushed(false)
{
    mData = new char[mDataLen];
    memcpy(mData, data, mDataLen);
}


//******************************************************
//
// Class tlTextDataParser
// Constructor from tFile
//
//
tlTextDataParser::tlTextDataParser(FILE *file) :
    mData(NULL),
    mDataLen(0),
    mBracketLevel(0),
    mDataPushed(false)
{

    tlFileByteStream* fileByteStream = new tlFileByteStream(file);

    mDataLen = fileByteStream->GetFileSize();
    if(mDataLen)
    {
        mData = new char[mDataLen];
        fileByteStream->GetBytes(mData, mDataLen);
    }
    Reset();

    delete fileByteStream;
}


//******************************************************
//
// Class tlTextDataParser
// Default destructor
//
//
tlTextDataParser::~tlTextDataParser()
{
    if (mData != NULL) delete[] mData;
    mData = NULL;
    mDataLen = 0;
    mCurrentTokenStart = 0;
    mCurrentTokenLen = 0;
    mCurrentLine = 0;
    mBracketLevel = 0;
    mDataPushed = false;
}


//******************************************************
//
// Class tlTextDataParser
// reset
//
//
void tlTextDataParser::Reset(void)
{
    mCurrentTokenStart = -1;
    mCurrentTokenLen = 0;
    mCurrentLine = 1;
    mBracketLevel = 0;
}



//******************************************************
//
// Class tlTextDataParser
// Advance
// 
//
bool tlTextDataParser::Advance(void)
{

    if (mData == NULL) return false;

    if (mCurrentTokenStart >= 0) mCurrentTokenStart += (mCurrentTokenLen + 1);
    else mCurrentTokenStart = 0;

    // Start with a zero lenght token
    mCurrentTokenLen = 0;

    // Find the start of the next token
    while ((mCurrentTokenStart < mDataLen) && IsSeperator(mData[mCurrentTokenStart])) 
    {
        ++mCurrentTokenStart;
    }
    
    // Check for EOF
    if (Eof()) 
    {
        return false;
    }

    // Find the length of the new token
    int maxlen = mDataLen - mCurrentTokenStart;      
    while ((mCurrentTokenLen < maxlen) && !IsSeperator(mData[mCurrentTokenStart + mCurrentTokenLen])) 
    {
        ++mCurrentTokenLen;
    }

    // If the current token is a comment, advance until 
    // the next line and try advancing from there
    if (IsCurrentTokenComment())
    {
        mCurrentTokenLen = 0;
        while ((mCurrentTokenStart < mDataLen) && (mData[mCurrentTokenStart] != 0x0A))
        {
            ++mCurrentTokenStart;
        }

        // Check for EOF
        if (Eof()) 
        {
            return false;
        }

        // I did just hit a return, didn't I?
        ++mCurrentLine;

        return Advance();
    }

    // Check for special tokens
    if (mCurrentTokenLen == 1)
    {
        if (mData[mCurrentTokenStart] == '{') ++mBracketLevel;
        if (mData[mCurrentTokenStart] == '}') --mBracketLevel;
    }

    // All done, report success
    return true;
}





//******************************************************
//
// Class tlTextDataParser
// Advance To
// 
//
bool tlTextDataParser::AdvanceTo(char *s)
{
    char token[128];

    while (!Eof())
    {
        CurrentToken(token, sizeof(token));
        if (!strcmp(token, s)) return true;
        Advance();
    }

    return false;
}



//******************************************************
//
// Class tlTextDataParser
// CurrentToken
// Returns data of the current token
//
int tlTextDataParser::CurrentToken(char *dest, int destlen)
{

    if (mData == NULL) return 0;
    if (dest == NULL || (destlen == 0))  return mCurrentTokenLen;
    if (mCurrentTokenStart < 0) return 0;

    dest[0] = 0;

    if (destlen < mCurrentTokenLen)
    {
        memcpy(dest, &mData[mCurrentTokenStart], destlen - 1);
        dest[destlen - 1] = 0;
    }
    else
    {
        memcpy(dest, &mData[mCurrentTokenStart], mCurrentTokenLen);
        dest[mCurrentTokenLen] = 0;
    }     

    return mCurrentTokenLen;
}



//*****************************************************
//
// Class tlTextDataParser
// Dup Current Token
//
char *tlTextDataParser::DupCurrentToken(void)
{

    if (mData == NULL) return NULL;
    if (Eof()) return NULL;
    if (mCurrentTokenLen == 0) return NULL;
    if (mCurrentTokenStart < 0) return NULL;

    char *s = new char[mCurrentTokenLen + 1];
        
    memcpy(s, &mData[mCurrentTokenStart], mCurrentTokenLen);
    s[mCurrentTokenLen] = 0;

    return s;
}




//******************************************************
//
// Class tlTextDataParser
// Is Seperator
//
//
inline bool tlTextDataParser::IsSeperator(char c)
{

    if (c == 0x0a) ++mCurrentLine;

    if (isalnum(c)) return false;
    if (c == '_')   return false;

    if (c == '+') return false;
    if (c == '-') return false;

    if (c == '{') return false;
    if (c == '}') return false;

    if (c == '/') return false;

    if (c == '.') return false;
    if (c == ':') return false;
    if (c == '\\') return false;


    return true;
}


//******************************************************
//
// Class tlTextDataParser
// Is Current Token Comment
//
//
inline bool tlTextDataParser::IsCurrentTokenComment(void)
{
        
    char *s = &mData[mCurrentTokenStart];
    if ((s[0] == '/') && (s[1] == '/')) return true;

    return false;
}





//******************************************************
//
// Class tlTextDataParser
// Token count at Current bracket level
//
//
int tlTextDataParser::TokenCountAtCurrentBracketLevel(const char *intoken)
{

    if (!PushPosition()) return 0;

    int count = 0;

    char token[256];
    int start_bracket_level = mBracketLevel;   

    while (mBracketLevel >= start_bracket_level)
    {
        if (Eof()) break;

        Advance();
        CurrentToken(token, sizeof(token));
        
        if (mBracketLevel != start_bracket_level) continue;

        if (!strcmp(intoken, token)) ++count;
    }

    PopPosition();
    return count;
}



//******************************************************
//
// Class tlTextDataParser
// Push Position
//
//
inline bool tlTextDataParser::PushPosition(void)
{
    if (mDataPushed) return false;

    mDataPushed = true;
    mPushedCurrentTokenStart = mCurrentTokenStart;
    mPushedCurrentTokenLen   = mCurrentTokenLen;
    mPushedCurrentLine       = mCurrentLine;
    mPushedBracketLevel      = mBracketLevel;
    
    return true;
}

//******************************************************
//
// Class tlTextDataParser
// Pop Position
//
//
inline bool tlTextDataParser::PopPosition(void)
{
    if (!mDataPushed) return false;

    mDataPushed = false;
    mCurrentTokenStart = mPushedCurrentTokenStart;
    mCurrentTokenLen   = mPushedCurrentTokenLen;
    mCurrentLine       = mPushedCurrentLine;
    mBracketLevel      = mPushedBracketLevel;
    return true;
}




