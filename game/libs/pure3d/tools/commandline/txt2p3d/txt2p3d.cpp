//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<iostream.h>
#include<fstream.h>
#include<string.h>
#include<assert.h>
#include<stdlib.h>

#include<tlFile.hpp>
#include<tlFileByteStream.hpp>
#include<tlChunk16.hpp>
#include<tlhashtable.hpp>
//#include"tfbytstm.hpp"

int htoi(char* str)
{
    int res = 0;
    while(*str)
    {
        res <<= 4;
        if((*str >= '0') && (*str <= '9'))
            res = res + (*str - '0');
        else if((*str >= 'a') && (*str <= 'f'))
            res = res + 10 + (*str - 'a');
        else if((*str >= 'A') && (*str <= 'F'))
            res = res + 10 + (*str - 'A');

        str++;
    }
    return res;
}

int btoi(char* str)
{
    int res = 0;
    while(*str)
    {
        res <<= 1;
        res = res + (*str - '0');
        str++;
    }
    return res;
}

class Stack
{
    tlWriteChunk16* stack[20];
    bool contentFinished[20];
    int n;

public:
    Stack() {n=0;}

    void ContentFinish(void)
    {
        if(n == 0)
            return;

        if(contentFinished[n-1])
            return;

        contentFinished[n-1] = true;

        stack[n-1]->ContentFinish();
    }

    void Push(tlWriteChunk16* c) {assert(n < 20); contentFinished[n] = false; stack[n++] = c; }
    tlWriteChunk16* Pop(void) {assert(n > 0); return stack[--n]; }
};

tlHashTable keywords;
Stack stack;

class Parser
{
    ifstream* infile;
    char nextToken[256];
    int line;
    int putBack;

    inline int IsWhitespace(char ch)
    {
        return (ch == ' ') || (ch == '\n') || (ch == '\r') || (ch == '\f') || (ch == '\t');
    }

    void AbsorbWhitespace(void)
    {
        char ch;
        infile->get(ch);
        while(IsWhitespace(ch) && !infile->eof())
        {
            if((ch == '\n') || (ch == '\r'))
                line++;

            infile->get(ch);
        }
        infile->putback(ch);
    }

    void LookForQuote(void)
    {
        int pos = 0;

        char ch;
        infile->get(ch);
        while(ch != '\"' && !infile->eof())
        {
            if((ch == '\n') || (ch == '\r'))
                line++;

            assert(pos < 256);
            nextToken[pos++] = ch;
            infile->get(ch);
        }
        nextToken[pos] = 0;
    }

    void ReadToWhitespace(void)
    {
        int pos = 0;

        char ch;
        infile->get(ch);
        while(!IsWhitespace(ch) && !infile->eof())
        {
            assert(pos < 256);
            nextToken[pos++] = ch;
            infile->get(ch);
        }
        nextToken[pos] = 0;
        infile->putback(ch);
    }
    
    void AbsorbComment(void)
    {
        char ch;
        infile->get(ch);
        while((ch != '\n') && (ch != '\r') && !infile->eof())
        {
            infile->get(ch);
        }
        line++;
    }
    
public:
     Parser(char* filename)
     {
         nextToken[0] = 0;
         line = 0;
         infile = new ifstream(filename);
         putBack = 0;
     }

     int eof(void)
     {
         return infile->eof();
     }

     void PutBack(void)
     {
         assert(!putBack);
         putBack = 1;
     }

     void GetNextToken(void)
     {
         if(putBack)
         {
             putBack = 0;
             return;
         }

         AbsorbWhitespace();
         char ch;
         infile->get(ch);

         while(ch == '#')
         {
            AbsorbComment();
            AbsorbWhitespace();
            infile->get(ch);
         }

         if(ch == '\"')
         {
             LookForQuote();
         }
         else
         {
             infile->putback(ch);
             ReadToWhitespace();
         }
     }

     int AsInt(void)
     {
         if((nextToken[0] == '0') && (nextToken[1] == 'x'))
         {
             return htoi(nextToken+2);
         }
         else if((nextToken[0] == '0') && (nextToken[1] == 'b'))
         {
             return btoi(nextToken+2);
         }
         else
         {
             return atoi(nextToken);
         }
     }

     float AsFloat(void)
     {
         return (float)atof(nextToken);
     }

     char* AsString(void)
     {
         return nextToken;
     }
};

class Keyword
{
public : 
    virtual void text2data(Parser* in, tlFile* out) = 0;
};

class Chunk : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        stack.ContentFinish();
        tlWriteChunk16* ch = new tlWriteChunk16(out, in->AsInt());
        stack.Push(ch);
    }
};

class EndChunk : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        delete (tlWriteChunk16*)stack.Pop();
    }
};

class PString : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        out->PutPString(in->AsString());
    }
};

class Int : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        out->PutLong(in->AsInt());
    }
};

class Short : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        out->PutWord(in->AsInt());
    }
};

class Byte : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        out->PutChar(in->AsInt());
    }
};

class Float : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        in->GetNextToken();
        out->PutFloat(in->AsFloat());
    }
};

class Repeat : public Keyword
{
public:
    virtual void text2data(Parser* in, tlFile* out)
    {
        Keyword* repeat[32];
        in->GetNextToken();
        int n = in->AsInt();

        for(int i = 0; i < n; i++)
        {
            in->GetNextToken();
            repeat[i] = (Keyword*)(keywords.Find(in->AsString()));
            assert(repeat[i]);
        }

        in->GetNextToken();
        while(strcmp("endrepeat", in->AsString()) != 0)
        {
            in->PutBack();
            for(i = 0; i < n; i++)
            {
                repeat[i]->text2data(in,out);
            }
            in->GetNextToken();
        }
    }
};


void main(int argc, char* argv[])
{
    if(argc < 2)
    {
        cout << "Usage : txt2p3d <infile> <outlFile>";
        return;
    }

    Parser parser(argv[1]);

    tlFile file(new tlFileByteStream(argv[2],omWRITE), tlFile::CHUNK32);

    keywords.Add("chunk", (void*)(new Chunk));
    keywords.Add("endchunk", (void*)(new EndChunk));
    keywords.Add("pstring", (void*)(new PString));
    keywords.Add("int", (void*)(new Int));
    keywords.Add("short", (void*)(new Short));
    keywords.Add("byte", (void*)(new Byte));
    keywords.Add("float", (void*)(new Float));
    keywords.Add("repeat", (void*)(new Repeat));

    parser.GetNextToken();


    while(!parser.eof())
    {
        Keyword* k = (Keyword*)(keywords.Find(parser.AsString()));
        assert(k);
        k->text2data(&parser, &file);
        parser.GetNextToken();
    }
}

