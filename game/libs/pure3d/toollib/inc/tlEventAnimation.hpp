//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TL_EVENTANIMATION_HPP
#define _TL_EVENTANIMATION_HPP

#include "tlTextDataParser.hpp"
#include "tlTable.hpp"
#include "tlChannelChunk.hpp"

#include <iostream>

class tlInventory;
class tlAnimation;
class tlAnimationGroup;

class tlEventDataElement
{
public:
    tlEventDataElement(){}
    virtual ~tlEventDataElement(){}
    enum dataType { UNDFINED, INT, FLOAT, STRING };
    dataType GetType(void){return(type);}
    void SetType(dataType newType){type = newType;}
    virtual void PrintFormated(void) = 0;
protected:
    dataType type;
};

template <class Type>
class tlEventDataSimpleElement : public tlEventDataElement
{
public:
    tlEventDataSimpleElement(Type newData):data(newData){}
    virtual ~tlEventDataSimpleElement(){}
    Type GetData(void){return(data);}
    virtual void PrintFormated(void);
private:
    tlEventDataSimpleElement(){}
    Type data;
};
template <class Type>
void tlEventDataSimpleElement<Type>::PrintFormated(void)
{
    char dataTypeString[32];

    switch(type)
    {
        case INT:
        {
            strcpy(dataTypeString, "INT");
        }
        break;

        case FLOAT:
        {
            strcpy(dataTypeString, "FLOAT");
        }
        break;

        case STRING:
        {
            strcpy(dataTypeString, "STRING");
        }
        break;

        case UNDFINED:
        default:
        {
            strcpy(dataTypeString, "UNDFINED");
        }
        break;
    }

    std::cout << " Data Element Type: " << dataTypeString << " Value: " << data << "\n";
//   cout.flush();
}


class tlEvent
{
public:
    tlEvent(void);
    tlEvent(const tlEvent& rhs);
    tlEvent(tlEventChunk* eventChunk);
    ~tlEvent();

    tlEvent& operator=(const tlEvent& rhs);

    tlEventChunk* Chunk();

    void SetName(const char* name);
    const char* GetName(void){return(name);}

    void SetParam(unsigned par){param = par;}
    unsigned GetParam(void){return(param);}

    void AddData(int   intData);
    void AddData(float floatData);
    void AddData(const char* stringData);
    void PurgeData(void);

protected:
    tlEvent& Copy(const tlEvent& rhs);

    char* name;
    unsigned param;

    void PrintElements(void);
    tlTable<tlEventDataElement*> dataElements;

    //
    // Produce the Image format of the dataElements
    //
    void CreateImageFormat( char** dataImage, int& dataImageSize, char* dataFormat);

    //
    // Construct the dataElements from an image format
    //
    void CreateFromImageFormat( const unsigned char* dataImage, int dataImageSize, const char* dataFormat);

};


class tlEventAnimTextLoader
{
 public:
     tlEventAnimTextLoader():store(0){}
    virtual ~tlEventAnimTextLoader(){}

    long Load(FILE *file, tlInventory* store);

 private:

    tlInventory* store;

    long ParseScript(tlTextDataParser *parser);
    tlAnimation* ParseEventAnim(tlTextDataParser *parser);
    tlAnimationGroup* ParseEventChannel(tlTextDataParser *parser, int groupName);
    tlEvent *ParseEvent(tlTextDataParser *parser, short &eventtime);
    bool ParseEventData(tlTextDataParser *parser, tlEvent *event);
};

#endif
