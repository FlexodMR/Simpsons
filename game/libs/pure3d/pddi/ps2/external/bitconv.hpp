//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BITCONV_HPP
#define BITCONV_HPP


typedef unsigned char u_char;
typedef unsigned int u_int;

//--------------------------------------------------------
int BlockConv4to32(unsigned char*, unsigned char*);
int BlockConv8to32(unsigned char*, unsigned char*);

//--------------------------------------------------------
int PageConv4to32(int, int, u_char *, u_char *);
int PageConv8to32(int, int, u_char *, u_char *);
int PageConv16to32(int, int, u_char *, u_char *);

//--------------------------------------------------------
int Conv4to32(int width, int height, u_char * p_input, u_char *p_output);
int Conv8to32(int width, int height, u_char * p_input, u_char *p_output);
int Conv16to32(int width, int height, u_char * p_input, u_char *p_output);



#endif // BITCONV_HPP
