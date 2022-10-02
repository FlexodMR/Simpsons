//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//**********************************************************************************
//
// Class tlEventAnimTextLoader
//
//
#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "tlEventAnimation.hpp"
#include "tlChannel.hpp"
#include "tlAnimation.hpp"
#include "tlInventory.hpp"
#include "tlString.hpp"

//----------------------------------------------------------------
// New Event animation stuff
//----------------------------------------------------------------
tlEvent::tlEvent(void)
:
name(0),
param(0)
{

}

tlEvent::tlEvent(const tlEvent& rhs)
:
name(0),
param(0)
{
    Copy(rhs);
}

tlEvent::~tlEvent()
{
    delete name;
}

tlEvent::tlEvent(tlEventChunk* eventChunk)
:
name(0),
param(0)
{
    this->SetName(eventChunk->GetName());
    this->SetParam(eventChunk->GetParam());
    
    if(eventChunk->SubChunkCount()>0)
    {
        //
        // There can only be one subchunk
        //        
        tlEventDataImageChunk* eventDataChunk = dynamic_cast<tlEventDataImageChunk*>(eventChunk->GetSubChunk(0));

        if(eventDataChunk)
        {
            CreateFromImageFormat(  eventDataChunk->GetData(), 
                                    eventDataChunk->GetDataLen(), 
                                    eventDataChunk->GetDataFormat());
            PrintElements();
        }
    }
}

tlEventChunk* tlEvent::Chunk()
{
    tlEventChunk* eventChunk = new tlEventChunk();

    eventChunk->SetName(this->GetName());
    eventChunk->SetParam(this->GetParam());

    //
    // Only create extra data if there is any
    //
    if(dataElements.Count()>0)
    {
        char* image;
        int   imageSize;
        char  imageFormat[32];

        image = NULL;
        imageFormat[0] = '\0';

        CreateImageFormat(&image, imageSize, imageFormat);
        tlEventDataImageChunk* eventDataChunk = new tlEventDataImageChunk();

        eventDataChunk->SetDataFormat(imageFormat);
        eventDataChunk->SetDataLen(imageSize);
        eventDataChunk->SetData((UBYTE*)image, imageSize);

        eventChunk->AppendSubChunk(eventDataChunk);
    }

    return(eventChunk);
}


void tlEvent::AddData(int intData)
{
    tlEventDataSimpleElement<int>* dataSimpleElement = new tlEventDataSimpleElement<int>(intData);
    tlEventDataElement* dataElement = dynamic_cast<tlEventDataElement*>(dataSimpleElement);
    dataElement->SetType(tlEventDataElement::INT);
    dataElements.Append(dataElement);
}

void tlEvent::AddData(float floatData)
{
    tlEventDataSimpleElement<float>* dataSimpleElement = new tlEventDataSimpleElement<float>(floatData);
    tlEventDataElement* dataElement = dynamic_cast<tlEventDataElement*>(dataSimpleElement);
    dataElement->SetType(tlEventDataElement::FLOAT);
    dataElements.Append(dataElement);
}

void tlEvent::AddData(const char* stringData)
{
    tlEventDataSimpleElement<tlString>* dataSimpleElement = new tlEventDataSimpleElement<tlString>(tlString(stringData));
    tlEventDataElement* dataElement = dynamic_cast<tlEventDataElement*>(dataSimpleElement);
    dataElement->SetType(tlEventDataElement::STRING);
    dataElements.Append(dataElement);
}

void tlEvent::PurgeData(void)
{
    dataElements.Delete(0, dataElements.Count());
}


void tlEvent::CreateImageFormat
(
 char** dataImage, 
 int& dataImageSize, 
 char* dataFormat
)
{
    int dataElementsNum = dataElements.Count();
    int stringstart   = 0;
    int i;

    //
    // Initialize the returned members
    //
    dataImageSize = 0;
    *dataImage = NULL;
    dataFormat[0] = '\0';

    //
    // Trivially reject if there are no elements
    //
    if(dataElementsNum == 0) return;

    //
    // First we need to find out what the size of the image is
    //
    for(i=0;i<dataElementsNum;i++)
    {
        tlEventDataElement* dataElement = dataElements[i];

        if(dataElement)
        {
            tlEventDataElement::dataType dataType = dataElement->GetType();

            switch(dataType)
            {
                case tlEventDataElement::INT:
                {
                    dataImageSize += sizeof(int);
                    stringstart   += sizeof(int);
                }
                break;
                case tlEventDataElement::FLOAT:
                {
                    dataImageSize += sizeof(float);
                    stringstart   += sizeof(float);
                }
                break;
                case tlEventDataElement::STRING:
                {
                    tlEventDataSimpleElement<tlString>* dataSimpleElement = dynamic_cast<tlEventDataSimpleElement<tlString>*>(dataElement);

                    tlString stringData = dataSimpleElement->GetData();
                    
                    //
                    // DWORD align length
                    //
                    long stringLen = stringData.Length()+1;
                    stringLen = (stringLen + 3) & (~3);
                    dataImageSize += sizeof(char*);
                    stringstart   += sizeof(char*);
                    dataImageSize += stringLen;
                }
                break;
            
                default:
                    assert(0 && "no type defined for eventData");
                    break;
            }
        }
    }

    //
    // Now Create the actual image data
    //
    char* localDataImage = new char[dataImageSize];
    memset(localDataImage, 0,sizeof(char)*dataImageSize);

    dataFormat[0] = '\0';
    int currentdata = 0;

    for(i = 0;i<dataElementsNum;i++)
    {
        tlEventDataElement* dataElement = dataElements[i];

        if(dataElement)
        {
            tlEventDataElement::dataType dataType = dataElement->GetType();

            switch(dataType)
            {
                case tlEventDataElement::INT:
                {
                    tlEventDataSimpleElement<int>* dataSimpleElement = dynamic_cast<tlEventDataSimpleElement<int>*>(dataElement);
                    int *i = (int *) &localDataImage[currentdata];
                    *i = dataSimpleElement->GetData();
                    currentdata += sizeof(int);
                    strcat(dataFormat,"i");
                }
                break;
                case tlEventDataElement::FLOAT:
                {
                    tlEventDataSimpleElement<float>* dataSimpleElement = dynamic_cast<tlEventDataSimpleElement<float>*>(dataElement);
                    float *i = (float *) &localDataImage[currentdata];
                    *i = dataSimpleElement->GetData();
                    currentdata += sizeof(float);
                    strcat(dataFormat,"f");
                }
                break;
                case tlEventDataElement::STRING:
                {
                    tlEventDataSimpleElement<tlString>* dataSimpleElement = dynamic_cast<tlEventDataSimpleElement<tlString>*>(dataElement);
                    tlString stringData = dataSimpleElement->GetData();
                    
                    //
                    // Where to bind the string and allocates room for a pointer
                    //
                    localDataImage[currentdata] = stringstart; 
                    currentdata += sizeof(char *);   

                    //
                    // Copy into the dataImage
                    //
                    char* stringLocation = (char *) &localDataImage[stringstart];
                    strcpy(stringLocation ,stringData.GetString());
                    
                    //
                    // DWORD align length
                    //
                    long stringLen = stringData.Length()+1;
                    stringLen = (stringLen + 3) & (~3);
                    stringstart += stringLen;

                    strcat(dataFormat,"s");
                }
                break;
            
                default:
                    assert(0 && "no type defined for eventData");
                    break;
            }
        }
    }

    //
    // Copy the data pointer to the caller... 
    // easier to look at in the code
    //
    *dataImage = localDataImage;
}

void tlEvent::CreateFromImageFormat
( 
    const unsigned char* dataImage, 
    int dataImageSize, 
    const char* dataFormat
)
{
    //
    // Clear out all of the elements
    //
    PurgeData();

    //
    // Now bind the stringData
    //
    long formatLength = strlen(dataFormat);
    char dataPosition = 0;
    for(int i=0;i<formatLength;i++)
    {
        switch(dataFormat[i])
        {
            case 'i':
            {
                int intData = (int)dataImage[dataPosition];
                this->AddData(intData);
                dataPosition += sizeof(int);
            }
            break;
            case 'f':
            {
                float* floatData = (float*)(&dataImage[dataPosition]);
                this->AddData(*floatData);
                dataPosition += sizeof(float);
            }
            break;
            case 's':
            {
                long  pointerOffset  = (long)dataImage[dataPosition]; // where the string is!
                const unsigned char* stringPosition = dataImage+pointerOffset;
                this->AddData((char*)stringPosition);
                dataPosition += sizeof(char*);
            }
            break;

            default:
                break;
        }
    }
}

void tlEvent::PrintElements(void)
{
    int dataCount = dataElements.Count();

    for(int i=0;i<dataCount;i++)
    {
        dataElements[i]->PrintFormated();
    }
}

void tlEvent::SetName(const char* newName)
{
    delete name;
    name = strnew(newName);
}

tlEvent& tlEvent::operator=(const tlEvent& rhs)
{
    return(Copy(rhs));
}

tlEvent& tlEvent::Copy(const tlEvent& rhs)
{
    if(this == &rhs)
    {
        return(*this);
    }

    name     = strnew(rhs.name);
    param    = rhs.param;
    dataElements = rhs.dataElements;

    return *this;
}


long tlEventAnimTextLoader::Load(FILE *file, tlInventory* newStore)
{
    if (file == NULL)
    {
        return NULL;
    }

    this->store = newStore;

    tlTextDataParser *parser = new tlTextDataParser(file);

    long success = ParseScript(parser);

    delete parser;
    return success;
}

long tlEventAnimTextLoader::ParseScript(tlTextDataParser *parser)
{
    long returnValue = 0;

    while (!parser->Eof())
    {
        char token[128];

        bool ok = parser->Advance();
        if (ok)
        {
            parser->CurrentToken(token, sizeof(token));

            if (!strcmp(token, "eventanim"))
            {
                // Allocate a tlAnimation for new 'eventanim'
                tlAnimation* eventAnim = ParseEventAnim(parser);
                if(eventAnim && store)
                {
                    returnValue = 1; // at least one animation

                    // "store" is this->(tlInventory*).
                    // It is allocated externally and the pointer
                    // is copied within ::Load()
                    store->Store(eventAnim);
                }
            }
            else 
            {
                printf("Script Unrecognised token on line %d: %s\n", parser->CurrentLine(), token);
            }
        }
    }

    return returnValue;
}

//===========================================================================
// tlEventAnimTextLoader::ParseEventAnim
//===========================================================================
// Description: Called during parsing of an event sequence/script.
//              The current token for the parse stream is expected to be
//              "eventanim" within the block:
//
//                  eventanim
//                  {
//                  }
//
// Constraints: 
//
// Parameters:  tlTextDataParser* parser: Pointer to the parser for the sequence/script.
//
// Return:      (tlAnimation*): If successful, pointer to new tlAnimation 
//                              created to store the event animation data;
//                              NULL if parsing of script fails.
//
//===========================================================================
tlAnimation* tlEventAnimTextLoader::ParseEventAnim(tlTextDataParser *parser)
{

    char token[128];
    char value[128];
    bool found;

    // Check to make sure I am at the start of the sequencer   
    parser->CurrentToken(token, sizeof(token));
    if (strcmp(token, "eventanim")) return NULL;

    int startline = parser->CurrentLine();

    // Look for the start of the event anim block ignoring all inbetween
    found = parser->AdvanceTo("{");
    if (!found) 
    {
        printf("EventAnim definition on line %d missing open brace.\n", startline);
        return NULL;
    }

    //
    // Build the event animationChannel Keys
    //
    tlAnimation *eventanim = new tlAnimation;
    eventanim->SetAnimationType(Pure3DAnimationTypes::EVENT_EVT);

    // The number of "eventChannel{}" blocks specified at the current
    // brace level within the sequence/script.  * Currently unused. *
    int numGroups = parser->TokenCountAtCurrentBracketLevel("eventChannel");

    int currentAnimationGroup = 0;

    while (!parser->Eof())
    {
        parser->Advance();
        parser->CurrentToken(token, sizeof(token));

        if (!strcmp("name", token)) 
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            eventanim->SetName(value);
            continue;
        }

        if (!strcmp("framerate", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            float fr = (float)atof(value);
            eventanim->SetFrameRate(fr);
            continue;
        }

        if (!strcmp("length", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            eventanim->SetNumFrames(atoi(value));
            continue;
        }

        if (!strcmp("cyclic", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            bool cyclic = (atoi(value) != 0);
            eventanim->SetCyclic(cyclic);
            continue;
        }

        //
        // New Channel version
        //
        if (!strcmp("eventChannel", token))
        {
            //
            // Create a new tlAnimationGroup to store the "eventChannel{}" data block.
            //
            tlAnimationGroup* animGroup = ParseEventChannel(parser, currentAnimationGroup);
            if(animGroup)
            {
                // Always replaces AnimationGroup at index 0?
                // Why do the other functions here use 'currentAnimationGroup' yet
                // this uses index constant of '0'?
                eventanim->SetAnimationGroup(*animGroup, animGroup->GetGroupId(), animGroup->GetName() );

 //           delete animGroup; // since animGroup gets copied in SetAnimationGroup       
            }

            currentAnimationGroup++;

            continue;
        }

        // End of sequencer definition
        if (!strcmp("}", token))
        {
            break;
        }

        printf("ParseEventAnim Unrecognised token on line %d: %s\n", parser->CurrentLine(), token);
    }

    // make sure I have not run off of the end of the data
    if (parser->Eof())
    {
        printf("Error parsing event anim defined on line %d  No end brace!\n", startline);

        // Delete the allocated tlAnimation object first!
        delete eventanim;

        return NULL;
    }

    return eventanim;
}

//===========================================================================
// tlEventAnimTextLoader::ParseEventChannel
//===========================================================================
// Description: Called during parsing of an event sequence/script.
//              The current token for the parse stream is expected to be
//              "eventChannel" within the block:
//
//                  eventanim
//                  {
//                      eventChannel
//                      {
//                      }
//                  }
//
// Constraints: 
//
// Parameters:  tlTextDataParser* parser: Pointer to the parser for the sequence/script.
//              int animGroupID: The given group ID 
//
// Return:      (tlAnimationGroup*): If successful, pointer to new tlAnimationGroup
//                                   created to store the data for this "eventChannel{}"
//                                   block; NULL if parsing of script fails.
//
//===========================================================================
tlAnimationGroup* tlEventAnimTextLoader::ParseEventChannel
(
    tlTextDataParser *parser,
    int animGroupID
)
{
    char token[128];
    char value[128];
    bool found;

    // Check to make sure I am at the start of the sequencer   
    parser->CurrentToken(token, sizeof(token));
    if (strcmp(token, "eventChannel")) return NULL;

    int startline = parser->CurrentLine();

    // Look for the start of the event anim block ignoring all inbetween
    found = parser->AdvanceTo("{");
    if (!found) 
    {
        printf("EventAnim definition on line %d missing open brace.\n", startline);
        return NULL;
    }

    //
    // Here we should have a constructed channel and Group
    //
    tlAnimationGroup* animGroup = new tlAnimationGroup;
    animGroup->SetGroupId(animGroupID);

    //
    // Build the event animationChannel Keys
    //
    int maxevent = parser->TokenCountAtCurrentBracketLevel("event");
    // Create an event animation channel with enough keys to handle all "event{}" blocks.
    animGroup->CreateEventChannel(tlFourCC(Pure3DAnimationChannels::Event::EVENT_EVT), maxevent);
    // And pull out the newly created event animation channel.
    tlEventChannel* eventChannel = animGroup->GetEventChannel(Pure3DAnimationChannels::Event::EVENT_EVT);
    int currentevent = 0;

    if(eventChannel == NULL)
    {
        assert(0 && "Couldn't create channel");
        return (animGroup);       // empty animation group
    }

    while (!parser->Eof())
    {
        parser->Advance();
        parser->CurrentToken(token, sizeof(token));

        //
        // I need to get the address since it's stored in the mapping
        //
        if(!strcmp("address", token))
        {
            //
            // Should really have some check that user doesn't specify "address" twice.
            //
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            animGroup->SetName(value);
            continue;
        }
        if (!strcmp("event", token)) 
        {
            if (currentevent >= maxevent)
            {
                printf("ParseEventAnim error: more events in an event animation then specified, line %d\n", parser->CurrentLine());
                parser->AdvanceTo("}");
                continue;
            }

            short time;
            // Parse, allocate and populate a tlEvent object from the "event{}" block.
            tlEvent *event = ParseEvent(parser, time);
            if(event != NULL)
            {
                eventChannel->SetKey(currentevent, time, *event);
                delete event; // since SetKey Copys
                currentevent++;
            }

            continue;
        }
        
        // End of Event Channel definition
        if (!strcmp("}", token))
        {
            break;
        }

        printf("ParseEventChannel Unrecognised token on line %d: %s\n", parser->CurrentLine(), token);
    }

    //
    // This just makes sure that the keys are sorted
    //
    eventChannel->MakeValid();

    return animGroup;
}


//===========================================================================
// tlEventAnimTextLoader::ParseEvent
//===========================================================================
// Description: Called during parsing of an event sequence/script.
//              The current token for the parse stream is expected to be
//              "event" within the block:
//
//                  eventanim
//                  {
//                      eventChannel
//                      {
//                          event
//                          {
//                          }
//                      }
//                  }
//
// Constraints: 
//
// Parameters:  tlTextDataParser* parser: Pointer to the parser for the sequence/script.
//              float &time: Storage for the time at which this event key is set.
//
// Return:      (tlEvent*): If successful, pointer to new tlEvent created to
//                          store the data for this "event{}" block; 
//                          NULL if parsing of script fails.
//
//===========================================================================
tlEvent *tlEventAnimTextLoader::ParseEvent(tlTextDataParser *parser, short &time)
{
    char token[128];
    char value[128];
    bool found;

    // Check to make sure I am at the start of the sequencer   
    parser->CurrentToken(token, sizeof(token));
    if (strcmp(token, "event")) return NULL;

    int startline = parser->CurrentLine();

    // Look for the start of the event anim block ignoring all inbetween
    found = parser->AdvanceTo("{");
    if (!found) 
    {
        printf("Event definition on line %d missing open brace.\n", startline);
        return NULL;
    }

    tlEvent *event = new tlEvent;

    while (!parser->Eof())
    {
        parser->Advance();
        parser->CurrentToken(token, sizeof(token));

        if (!strcmp("name", token)) 
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            event->SetName(value);
            continue;
        }

        if (!strcmp("param", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            event->SetParam((unsigned)atoi(value));
            continue;
        }

        if (!strcmp("time", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            time = (short)atof(value);
            continue;
        }


        if (!strcmp("data", token)) 
        {
          // Finally to the data section.
          // Parse the datatypes and values into the tlEvent object.
            ParseEventData(parser, event);
            continue;
        }

        // End of sequencer definition
        if (!strcmp("}", token))
        {
            break;
        }

        printf("ParseEvent Unrecognised token on line %d: %s\n", parser->CurrentLine(), token);
    }

    // make sure I have not run off of the end of the data
    if (parser->Eof())
    {
        printf("Error parsing event defined on line %d  No end brace!\n", startline);
        delete event;
        time = 0;
        return NULL;
    }
    
    return event;
}


//===========================================================================
// tlEventAnimTextLoader::ParseEvent
//===========================================================================
// Description: Called during parsing of an event sequence/script.
//              The current token for the parse stream is expected to be
//              "data" within the block:
//
//                  eventanim
//                  {
//                      eventChannel
//                      {
//                          event
//                          {
//                              data
//                              {
//                              }
//                          }
//                      }
//                  }
//
//              Data can be specified as "int", "float" or "string"; e.g.:
//
//                  data
//                  {
//                      int 42
//                      float 3.14
//                      string foo
//                  }
//
// Constraints: String can not contain spaces, nor can it be assigned within quotes.
//
// Parameters:  tlTextDataParser* parser: Pointer to the parser for the sequence/script.
//              tlEvent *event: Pointer to tlEvent to which the data will be added.
//
// Return:      (bool): TRUE if data is added successful; else FALSE.
//
//===========================================================================
bool tlEventAnimTextLoader::ParseEventData(tlTextDataParser *parser, tlEvent *event)
{

    char token[128];
    char value[128];
    bool found;

    // Check to make sure I am at the start of the sequencer   
    parser->CurrentToken(token, sizeof(token));
    if (strcmp(token, "data")) return false;

    int startline = parser->CurrentLine();

    // make sure the data is defined only once
    if(0)// (event->GetDataLength() != 0) //TODO!!
    {
        printf("ParesEventData error: Data already defined for event. error on line %d\n", parser->CurrentLine());
        return false;
    }

    // Look for the start of the event data block ignoring all inbetween
    found = parser->AdvanceTo("{");
    if (!found) 
    {
        printf("EventData definition on line %d missing open brace.\n", startline);
        return false;
    }

    while (!parser->Eof())
    {
        parser->Advance();
        parser->CurrentToken(token, sizeof(token));

        if (!strcmp("int", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            event->AddData(atoi(value));
            continue;
        }

        if (!strcmp("float", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            event->AddData((float)atof(value));
            continue;
        }

        // Note: String can not contain spaces, nor can it be assigned within quotes.
        if (!strcmp("string", token))
        {
            parser->Advance();
            parser->CurrentToken(value, sizeof(value));
            event->AddData(value);
            continue;
        }

        // End of sequencer definition
        if (!strcmp("}", token))
        {
            break;
        }

        printf("ParseEventData Unrecognised token on line %d: %s\n", parser->CurrentLine(), token);
    }

    // make sure I have not run off of the end of the data
    if (parser->Eof())
    {
        printf("Error parsing event data defined on line %d  No end brace!\n", startline);
        return false;
    }

    return true;
}
