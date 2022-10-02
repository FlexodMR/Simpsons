//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GCCOMPONENTDESCRIPTION_HPP
#define GCCOMPONENTDESCRIPTION_HPP

class gcComponentDescription
{
  public:  

    void          *base;
    unsigned char  item;
    unsigned char  indextype;
    unsigned char  count;
    unsigned char  style;
    unsigned char  fraction;
    unsigned char  stride;
    unsigned short itemcount;  // padded to 4 byte boundary
};



#endif GCCOMPONENTDESCRIPTION_HPP
