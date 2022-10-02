//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "strokefont.hpp"
#include <p3d/shader.hpp>
#include <p3d/utility.hpp>
#include <p3d/matrixstack.hpp>
#include <stdlib.h>

struct Stroke
{
    char x;
    char y;
};

struct Glyph
{
    short firstStroke;
    unsigned char nStroke;
    unsigned char nVerts;
};

static Stroke StrokeTable[] =
{
    {-8,8}, /*   */
    {-5,5},{0,-12},{0,2},{-50,0},{0,7},{-1,8},{0,9},{1,8},{0,7}, /* ! */
    {-8,8},{-4,-12},{-4,-5},{-50,0},{4,-12},{4,-5}, /* " */
    {-10,11},{1,-16},{-6,16},{-50,0},{7,-16},{0,16},{-50,0},{-6,-3},{8,-3},{-50,0},{-7,3},{7,3}, /* # */
    {-10,10},{-2,-16},{-2,13},{-50,0},{2,-16},{2,13},{-50,0},{7,-9},{5,-11},{2,-12},{-2,-12},{-5,-11},{-7,-9},{-7,-7},{-6,-5},{-5,-4},{-3,-3},{3,-1},{5,0},{6,1},{7,3},{7,6},{5,8},{2,9},{-2,9},{-5,8},{-7,6}, /* $ */
    {-12,12},{9,-12},{-9,9},{-50,0},{-4,-12},{-2,-10},{-2,-8},{-3,-6},{-5,-5},{-7,-5},{-9,-7},{-9,-9},{-8,-11},{-6,-12},{-4,-12},{-2,-11},{1,-10},{4,-10},{7,-11},{9,-12},{-50,0},{5,2},{3,3},{2,5},{2,7},{4,9},{6,9},{8,8},{9,6},{9,4},{7,2},{5,2}, /* % */
    {-13,13},{10,-3},{10,-4},{9,-5},{8,-5},{7,-4},{6,-2},{4,3},{2,6},{0,8},{-2,9},{-6,9},{-8,8},{-9,7},{-10,5},{-10,3},{-9,1},{-8,0},{-1,-4},{0,-5},{1,-7},{1,-9},{0,-11},{-2,-12},{-4,-11},{-5,-9},{-5,-7},{-4,-4},{-2,-1},{3,6},{5,8},{7,9},{9,9},{10,8},{10,7}, /* & */
    {-5,5},{0,-10},{-1,-11},{0,-12},{1,-11},{1,-9},{0,-7},{-1,-6}, /* ' */
    {-7,7},{4,-16},{2,-14},{0,-11},{-2,-7},{-3,-2},{-3,2},{-2,7},{0,11},{2,14},{4,16}, /* ( */
    {-7,7},{-4,-16},{-2,-14},{0,-11},{2,-7},{3,-2},{3,2},{2,7},{0,11},{-2,14},{-4,16}, /* ) */
    {-8,8},{0,-12},{0,0},{-50,0},{-5,-9},{5,-3},{-50,0},{5,-9},{-5,-3}, /* * */
    {-13,13},{0,-9},{0,9},{-50,0},{-9,0},{9,0}, /* + */
    {-5,5},{1,8},{0,9},{-1,8},{0,7},{1,8},{1,10},{0,12},{-1,13}, /* , */
    {-13,13},{-9,0},{9,0}, /* - */
    {-5,5},{0,7},{-1,8},{0,9},{1,8},{0,7}, /* . */
    {-11,11},{9,-16},{-9,16}, /* / */
    {-10,10},{-1,-12},{-4,-11},{-6,-8},{-7,-3},{-7,0},{-6,5},{-4,8},{-1,9},{1,9},{4,8},{6,5},{7,0},{7,-3},{6,-8},{4,-11},{1,-12},{-1,-12}, /* 0 */
    {-10,10},{-4,-8},{-2,-9},{1,-12},{1,9}, /* 1 */
    {-10,10},{-6,-7},{-6,-8},{-5,-10},{-4,-11},{-2,-12},{2,-12},{4,-11},{5,-10},{6,-8},{6,-6},{5,-4},{3,-1},{-7,9},{7,9}, /* 2 */
    {-10,10},{-5,-12},{6,-12},{0,-4},{3,-4},{5,-3},{6,-2},{7,1},{7,3},{6,6},{4,8},{1,9},{-2,9},{-5,8},{-6,7},{-7,5}, /* 3 */
    {-10,10},{3,-12},{-7,2},{8,2},{-50,0},{3,-12},{3,9}, /* 4 */
    {-10,10},{5,-12},{-5,-12},{-6,-3},{-5,-4},{-2,-5},{1,-5},{4,-4},{6,-2},{7,1},{7,3},{6,6},{4,8},{1,9},{-2,9},{-5,8},{-6,7},{-7,5}, /* 5 */
    {-10,10},{6,-9},{5,-11},{2,-12},{0,-12},{-3,-11},{-5,-8},{-6,-3},{-6,2},{-5,6},{-3,8},{0,9},{1,9},{4,8},{6,6},{7,3},{7,2},{6,-1},{4,-3},{1,-4},{0,-4},{-3,-3},{-5,-1},{-6,2}, /* 6 */
    {-10,10},{7,-12},{-3,9},{-50,0},{-7,-12},{7,-12}, /* 7 */
    {-10,10},{-2,-12},{-5,-11},{-6,-9},{-6,-7},{-5,-5},{-3,-4},{1,-3},{4,-2},{6,0},{7,2},{7,5},{6,7},{5,8},{2,9},{-2,9},{-5,8},{-6,7},{-7,5},{-7,2},{-6,0},{-4,-2},{-1,-3},{3,-4},{5,-5},{6,-7},{6,-9},{5,-11},{2,-12},{-2,-12}, /* 8 */
    {-10,10},{6,-5},{5,-2},{3,0},{0,1},{-1,1},{-4,0},{-6,-2},{-7,-5},{-7,-6},{-6,-9},{-4,-11},{-1,-12},{0,-12},{3,-11},{5,-9},{6,-5},{6,0},{5,5},{3,8},{0,9},{-2,9},{-5,8},{-6,6}, /* 9 */
    {-5,5},{0,-5},{-1,-4},{0,-3},{1,-4},{0,-5},{-50,0},{0,7},{-1,8},{0,9},{1,8},{0,7}, /* : */
    {-5,5},{0,-5},{-1,-4},{0,-3},{1,-4},{0,-5},{-50,0},{1,8},{0,9},{-1,8},{0,7},{1,8},{1,10},{0,12},{-1,13}, /* ; */
    {-12,12},{8,-9},{-8,0},{8,9}, /* < */
    {-13,13},{-9,-3},{9,-3},{-50,0},{-9,3},{9,3}, /* = */
    {-12,12},{-8,-9},{8,0},{-8,9}, /* > */
    {-9,9},{-6,-7},{-6,-8},{-5,-10},{-4,-11},{-2,-12},{2,-12},{4,-11},{5,-10},{6,-8},{6,-6},{5,-4},{4,-3},{0,-1},{0,2},{-50,0},{0,7},{-1,8},{0,9},{1,8},{0,7}, /* ? */
    {-13,14},{5,-4},{4,-6},{2,-7},{-1,-7},{-3,-6},{-4,-5},{-5,-2},{-5,1},{-4,3},{-2,4},{1,4},{3,3},{4,1},{-50,0},{-1,-7},{-3,-5},{-4,-2},{-4,1},{-3,3},{-2,4},{-50,0},{5,-7},{4,1},{4,3},{6,4},{8,4},{10,2},{11,-1},{11,-3},{10,-6},{9,-8},{7,-10},{5,-11},{2,-12},{-1,-12},{-4,-11},{-6,-10},{-8,-8},{-9,-6},{-10,-3},{-10,0},{-9,3},{-8,5},{-6,7},{-4,8},{-1,9},{2,9},{5,8},{7,7},{8,6},{-50,0},{6,-7},{5,1},{5,3},{6,4}, /* @ */
    {-9,9},{0,-12},{-8,9},{-50,0},{0,-12},{8,9},{-50,0},{-5,2},{5,2}, /* A */
    {-11,10},{-7,-12},{-7,9},{-50,0},{-7,-12},{2,-12},{5,-11},{6,-10},{7,-8},{7,-6},{6,-4},{5,-3},{2,-2},{-50,0},{-7,-2},{2,-2},{5,-1},{6,0},{7,2},{7,5},{6,7},{5,8},{2,9},{-7,9}, /* B */
    {-10,11},{8,-7},{7,-9},{5,-11},{3,-12},{-1,-12},{-3,-11},{-5,-9},{-6,-7},{-7,-4},{-7,1},{-6,4},{-5,6},{-3,8},{-1,9},{3,9},{5,8},{7,6},{8,4}, /* C */
    {-11,10},{-7,-12},{-7,9},{-50,0},{-7,-12},{0,-12},{3,-11},{5,-9},{6,-7},{7,-4},{7,1},{6,4},{5,6},{3,8},{0,9},{-7,9}, /* D */
    {-10,9},{-6,-12},{-6,9},{-50,0},{-6,-12},{7,-12},{-50,0},{-6,-2},{2,-2},{-50,0},{-6,9},{7,9}, /* E */
    {-10,8},{-6,-12},{-6,9},{-50,0},{-6,-12},{7,-12},{-50,0},{-6,-2},{2,-2}, /* F */
    {-10,11},{8,-7},{7,-9},{5,-11},{3,-12},{-1,-12},{-3,-11},{-5,-9},{-6,-7},{-7,-4},{-7,1},{-6,4},{-5,6},{-3,8},{-1,9},{3,9},{5,8},{7,6},{8,4},{8,1},{-50,0},{3,1},{8,1}, /* G */
    {-11,11},{-7,-12},{-7,9},{-50,0},{7,-12},{7,9},{-50,0},{-7,-2},{7,-2}, /* H */
    {-4,4},{0,-12},{0,9}, /* I */
    {-8,8},{4,-12},{4,4},{3,7},{2,8},{0,9},{-2,9},{-4,8},{-5,7},{-6,4},{-6,2}, /* J */
    {-11,10},{-7,-12},{-7,9},{-50,0},{7,-12},{-7,2},{-50,0},{-2,-3},{7,9}, /* K */
    {-10,7},{-6,-12},{-6,9},{-50,0},{-6,9},{6,9}, /* L */
    {-12,12},{-8,-12},{-8,9},{-50,0},{-8,-12},{0,9},{-50,0},{8,-12},{0,9},{-50,0},{8,-12},{8,9}, /* M */
    {-11,11},{-7,-12},{-7,9},{-50,0},{-7,-12},{7,9},{-50,0},{7,-12},{7,9}, /* N */
    {-11,11},{-2,-12},{-4,-11},{-6,-9},{-7,-7},{-8,-4},{-8,1},{-7,4},{-6,6},{-4,8},{-2,9},{2,9},{4,8},{6,6},{7,4},{8,1},{8,-4},{7,-7},{6,-9},{4,-11},{2,-12},{-2,-12}, /* O */
    {-11,10},{-7,-12},{-7,9},{-50,0},{-7,-12},{2,-12},{5,-11},{6,-10},{7,-8},{7,-5},{6,-3},{5,-2},{2,-1},{-7,-1}, /* P */
    {-11,11},{-2,-12},{-4,-11},{-6,-9},{-7,-7},{-8,-4},{-8,1},{-7,4},{-6,6},{-4,8},{-2,9},{2,9},{4,8},{6,6},{7,4},{8,1},{8,-4},{7,-7},{6,-9},{4,-11},{2,-12},{-2,-12},{-50,0},{1,5},{7,11}, /* Q */
    {-11,10},{-7,-12},{-7,9},{-50,0},{-7,-12},{2,-12},{5,-11},{6,-10},{7,-8},{7,-6},{6,-4},{5,-3},{2,-2},{-7,-2},{-50,0},{0,-2},{7,9}, /* R */
    {-10,10},{7,-9},{5,-11},{2,-12},{-2,-12},{-5,-11},{-7,-9},{-7,-7},{-6,-5},{-5,-4},{-3,-3},{3,-1},{5,0},{6,1},{7,3},{7,6},{5,8},{2,9},{-2,9},{-5,8},{-7,6}, /* S */
    {-8,8},{0,-12},{0,9},{-50,0},{-7,-12},{7,-12}, /* T */
    {-11,11},{-7,-12},{-7,3},{-6,6},{-4,8},{-1,9},{1,9},{4,8},{6,6},{7,3},{7,-12}, /* U */
    {-9,9},{-8,-12},{0,9},{-50,0},{8,-12},{0,9}, /* V */
    {-12,12},{-10,-12},{-5,9},{-50,0},{0,-12},{-5,9},{-50,0},{0,-12},{5,9},{-50,0},{10,-12},{5,9}, /* W */
    {-10,10},{-7,-12},{7,9},{-50,0},{7,-12},{-7,9}, /* X */
    {-9,9},{-8,-12},{0,-2},{0,9},{-50,0},{8,-12},{0,-2}, /* Y */
    {-10,10},{7,-12},{-7,9},{-50,0},{-7,-12},{7,-12},{-50,0},{-7,9},{7,9}, /* Z */
    {-7,7},{-3,-16},{-3,16},{-50,0},{-2,-16},{-2,16},{-50,0},{-3,-16},{4,-16},{-50,0},{-3,16},{4,16}, /* [ */
    {-7,7},{-7,-12},{7,12}, /* \ */
    {-7,7},{2,-16},{2,16},{-50,0},{3,-16},{3,16},{-50,0},{-4,-16},{3,-16},{-50,0},{-4,16},{3,16}, /* ] */
    {-8,8},{-2,-6},{0,-9},{2,-6},{-50,0},{-5,-3},{0,-8},{5,-3},{-50,0},{0,-8},{0,9}, /* ^ */
    {-8,8},{-8,11},{8,11}, /* _ */
    {-5,5},{1,-12},{0,-11},{-1,-9},{-1,-7},{0,-6},{1,-7},{0,-8}, /* ` */
    {-9,10},{6,-5},{6,9},{-50,0},{6,-2},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* a */
    {-10,9},{-6,-12},{-6,9},{-50,0},{-6,-2},{-4,-4},{-2,-5},{1,-5},{3,-4},{5,-2},{6,1},{6,3},{5,6},{3,8},{1,9},{-2,9},{-4,8},{-6,6}, /* b */
    {-9,9},{6,-2},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* c */
    {-9,10},{6,-12},{6,9},{-50,0},{6,-2},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* d */
    {-9,9},{-6,1},{6,1},{6,-1},{5,-3},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* e */
    {-5,7},{5,-12},{3,-12},{1,-11},{0,-8},{0,9},{-50,0},{-3,-5},{4,-5}, /* f */
    {-9,10},{6,-5},{6,11},{5,14},{4,15},{2,16},{-1,16},{-3,15},{-50,0},{6,-2},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* g */
    {-9,10},{-5,-12},{-5,9},{-50,0},{-5,-1},{-2,-4},{0,-5},{3,-5},{5,-4},{6,-1},{6,9}, /* h */
    {-4,4},{-1,-12},{0,-11},{1,-12},{0,-13},{-1,-12},{-50,0},{0,-5},{0,9}, /* i */
    {-5,5},{0,-12},{1,-11},{2,-12},{1,-13},{0,-12},{-50,0},{1,-5},{1,12},{0,15},{-2,16},{-4,16}, /* j */
    {-9,8},{-5,-12},{-5,9},{-50,0},{5,-5},{-5,5},{-50,0},{-1,1},{6,9}, /* k */
    {-4,4},{0,-12},{0,9}, /* l */
    {-15,15},{-11,-5},{-11,9},{-50,0},{-11,-1},{-8,-4},{-6,-5},{-3,-5},{-1,-4},{0,-1},{0,9},{-50,0},{0,-1},{3,-4},{5,-5},{8,-5},{10,-4},{11,-1},{11,9}, /* m */
    {-9,10},{-5,-5},{-5,9},{-50,0},{-5,-1},{-2,-4},{0,-5},{3,-5},{5,-4},{6,-1},{6,9}, /* n */
    {-9,10},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6},{7,3},{7,1},{6,-2},{4,-4},{2,-5},{-1,-5}, /* o */
    {-10,9},{-6,-5},{-6,16},{-50,0},{-6,-2},{-4,-4},{-2,-5},{1,-5},{3,-4},{5,-2},{6,1},{6,3},{5,6},{3,8},{1,9},{-2,9},{-4,8},{-6,6}, /* p */
    {-9,10},{6,-5},{6,16},{-50,0},{6,-2},{4,-4},{2,-5},{-1,-5},{-3,-4},{-5,-2},{-6,1},{-6,3},{-5,6},{-3,8},{-1,9},{2,9},{4,8},{6,6}, /* q */
    {-7,6},{-3,-5},{-3,9},{-50,0},{-3,1},{-2,-2},{0,-4},{2,-5},{5,-5}, /* r */
    {-8,9},{6,-2},{5,-4},{2,-5},{-1,-5},{-4,-4},{-5,-2},{-4,0},{-2,1},{3,2},{5,3},{6,5},{6,6},{5,8},{2,9},{-1,9},{-4,8},{-5,6}, /* s */
    {-5,7},{0,-12},{0,5},{1,8},{3,9},{5,9},{-50,0},{-3,-5},{4,-5}, /* t */
    {-9,10},{-5,-5},{-5,5},{-4,8},{-2,9},{1,9},{3,8},{6,5},{-50,0},{6,-5},{6,9}, /* u */
    {-8,8},{-6,-5},{0,9},{-50,0},{6,-5},{0,9}, /* v */
    {-11,11},{-8,-5},{-4,9},{-50,0},{0,-5},{-4,9},{-50,0},{0,-5},{4,9},{-50,0},{8,-5},{4,9}, /* w */
    {-8,9},{-5,-5},{6,9},{-50,0},{6,-5},{-5,9}, /* x */
    {-8,8},{-6,-5},{0,9},{-50,0},{6,-5},{0,9},{-2,13},{-4,15},{-6,16},{-7,16}, /* y */
    {-8,9},{6,-5},{-5,9},{-50,0},{-5,-5},{6,-5},{-50,0},{-5,9},{6,9}, /* z */
    {-7,7},{2,-16},{0,-15},{-1,-14},{-2,-12},{-2,-10},{-1,-8},{0,-7},{1,-5},{1,-3},{-1,-1},{-50,0},{0,-15},{-1,-13},{-1,-11},{0,-9},{1,-8},{2,-6},{2,-4},{1,-2},{-3,0},{1,2},{2,4},{2,6},{1,8},{0,9},{-1,11},{-1,13},{0,15},{-50,0},{-1,1},{1,3},{1,5},{0,7},{-1,8},{-2,10},{-2,12},{-1,14},{0,15},{2,16}, /* { */
    {-4,4},{0,-16},{0,16}, /* | */
    {-7,7},{-2,-16},{0,-15},{1,-14},{2,-12},{2,-10},{1,-8},{0,-7},{-1,-5},{-1,-3},{1,-1},{-50,0},{0,-15},{1,-13},{1,-11},{0,-9},{-1,-8},{-2,-6},{-2,-4},{-1,-2},{3,0},{-1,2},{-2,4},{-2,6},{-1,8},{0,9},{1,11},{1,13},{0,15},{-50,0},{1,1},{-1,3},{-1,5},{0,7},{1,8},{2,10},{2,12},{1,14},{0,15},{-2,16}, /* } */
    {-12,12},{-9,3},{-9,1},{-8,-2},{-6,-3},{-4,-3},{-2,-2},{2,1},{4,2},{6,2},{8,1},{9,-1},{-50,0},{-9,1},{-8,-1},{-6,-2},{-4,-2},{-2,-1},{2,2},{4,3},{6,3},{8,2},{9,-1},{9,-3}, /* ~ */
    {-7,7},{-1,-12},{-3,-11},{-4,-9},{-4,-7},{-3,-5},{-1,-4},{1,-4},{3,-5},{4,-7},{4,-9},{3,-11},{1,-12},{-1,-12} /* DEL */
};

static Glyph GlyphTable[] = 
{
    {   0,  1,  0},    /*   */
    {   1,  9, 10},    /* ! */
    {  10,  6,  4},    /* " */
    {  16, 12,  8},    /* # */
    {  28, 27, 42},    /* $ */
    {  55, 32, 52},    /* % */
    {  87, 35, 66},    /* & */
    { 122,  8, 12},    /* ' */
    { 130, 11, 18},    /* ( */
    { 141, 11, 18},    /* ) */
    { 152,  9,  6},    /* * */
    { 161,  6,  4},    /* + */
    { 167,  9, 14},    /* , */
    { 176,  3,  2},    /* - */
    { 179,  6,  8},    /* . */
    { 185,  3,  2},    /* / */
    { 188, 18, 32},    /* 0 */
    { 206,  5,  6},    /* 1 */
    { 211, 15, 26},    /* 2 */
    { 226, 16, 28},    /* 3 */
    { 242,  7,  6},    /* 4 */
    { 249, 18, 32},    /* 5 */
    { 267, 24, 44},    /* 6 */
    { 291,  6,  4},    /* 7 */
    { 297, 30, 56},    /* 8 */
    { 327, 24, 44},    /* 9 */
    { 351, 12, 16},    /* : */
    { 363, 15, 22},    /* ; */
    { 378,  4,  4},    /* < */
    { 382,  6,  4},    /* = */
    { 388,  4,  4},    /* > */
    { 392, 21, 34},    /* ? */
    { 413, 56, 96},    /* @ */
    { 469,  9,  6},    /* A */
    { 478, 24, 36},    /* B */
    { 502, 19, 34},    /* C */
    { 521, 16, 24},    /* D */
    { 537, 12,  8},    /* E */
    { 549,  9,  6},    /* F */
    { 558, 23, 38},    /* G */
    { 581,  9,  6},    /* H */
    { 590,  3,  2},    /* I */
    { 593, 11, 18},    /* J */
    { 604,  9,  6},    /* K */
    { 613,  6,  4},    /* L */
    { 619, 12,  8},    /* M */
    { 631,  9,  6},    /* N */
    { 640, 22, 40},    /* O */
    { 662, 14, 20},    /* P */
    { 676, 25, 42},    /* Q */
    { 701, 17, 22},    /* R */
    { 718, 21, 38},    /* S */
    { 739,  6,  4},    /* T */
    { 745, 11, 18},    /* U */
    { 756,  6,  4},    /* V */
    { 762, 12,  8},    /* W */
    { 774,  6,  4},    /* X */
    { 780,  7,  6},    /* Y */
    { 787,  9,  6},    /* Z */
    { 796, 12,  8},    /* [ */
    { 808,  3,  2},    /* \ */
    { 811, 12,  8},    /* ] */
    { 823, 11, 10},    /* ^ */
    { 834,  3,  2},    /* _ */
    { 837,  8, 12},    /* ` */
    { 845, 18, 28},    /* a */
    { 863, 18, 28},    /* b */
    { 881, 15, 26},    /* c */
    { 896, 18, 28},    /* d */
    { 914, 18, 32},    /* e */
    { 932,  9, 10},    /* f */
    { 941, 23, 38},    /* g */
    { 964, 11, 14},    /* h */
    { 975,  9, 10},    /* i */
    { 984, 12, 16},    /* j */
    { 996,  9,  6},    /* k */
    {1005,  3,  2},    /* l */
    {1008, 19, 26},    /* m */
    {1027, 11, 14},    /* n */
    {1038, 18, 32},    /* o */
    {1056, 18, 28},    /* p */
    {1074, 18, 28},    /* q */
    {1092,  9, 10},    /* r */
    {1101, 18, 32},    /* s */
    {1119,  9, 10},    /* t */
    {1128, 11, 14},    /* u */
    {1139,  6,  4},    /* v */
    {1145, 12,  8},    /* w */
    {1157,  6,  4},    /* x */
    {1163, 10, 12},    /* y */
    {1173,  9,  6},    /* z */
    {1182, 40, 68},    /* { */
    {1222,  3,  2},    /* | */
    {1225, 40, 68},    /* } */
    {1265, 24, 40},    /* ~ */
    {1289, 14, 24}    /*  */
};

tStrokeFont::tStrokeFont(float s) : height(s), shader(NULL)
{
    shader = new tShader;
    shader->AddRef();
}

tStrokeFont::~tStrokeFont()
{
    shader->Release();
}


// size quereying functions 
float tStrokeFont::GetFontSize(void) const
{
    return 0;
}

float tStrokeFont::GetFontHeight(void) const
{
    return height + space;
}

float tStrokeFont::GetFontWidth(void) const 
{
    return 0;
}

float tStrokeFont::GetFontBaseLine() const
{
    return 0;
}

float tStrokeFont::GetTextHeight(const P3D_UNICODE* text) const 
{
    return height + space;
}

float tStrokeFont::GetTextWidth(const P3D_UNICODE* text) const
{
    return 0;
}

float tStrokeFont::GetLineWidth(const P3D_UNICODE* text) const 
{
    return 0;
}

void tStrokeFont::DisplayText(const P3D_UNICODE* text, int) const 
{
    DisplayLine(text);
}


void tStrokeFont::DisplayLine(const P3D_UNICODE* str, int) const 
{
    // tweak these values to adjust the screen size of the font
    const float size = 0.025f * height;

    const char PEN_UP = -50;

    float basex = 0.0f;
    float basey = -20.0f * size;
    float penz = 0.0f;

    P3D_UNICODE* s = (P3D_UNICODE*)str;
    int nVerts = 0;
    while(*s)
    {
        if(*s < 32 || *s > 127)
        {
            ++s;
            continue;
        }

        int glyphIndex = *s - 32;
        nVerts += (int)GlyphTable[glyphIndex].nVerts;
        ++s;
    }

    pddiPrimStream* stream = NULL;
    if(nVerts)
    {
        stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, nVerts);
    }
    s = (P3D_UNICODE*)str;
    while(*s)
    {
        if(*s == '\n')
        {
            basex = (float)0.0f;
            basey -= space;
            s++;
            continue;
        }
        if(*s == '\t')
        {
            basex = (float)(((((int) basex) / 40) + 1) * 40);
            s++;
            continue;
        }
        if(*s < 32 || *s > 127)
        {
            s++;
            continue;
        }

        // the glyph table starts at 32 (space)
        int glyphIndex = *s - 32;
        Glyph* glyph = &GlyphTable[glyphIndex];
        Stroke* stroke = &StrokeTable[glyph->firstStroke];
        // move pen to initial position
        // the first stroke x coord is the leftmost position
        float maxX = (1.0f + (float)abs(stroke[0].x)) * size;
        basex += maxX;
        pddiVector v;

        for(int i=1; i < glyph->nStroke-1; i++)
        {
            if(stroke[i+1].x != PEN_UP)
            {
                v.x = basex + size*(float)stroke[i].x;
                v.y = basey - size*(float)stroke[i].y;
                v.z = penz;
                stream->Vertex(&v, colour);

                v.x = basex + size*(float)stroke[i+1].x;
                v.y = basey - size*(float)stroke[i+1].y;
                stream->Vertex(&v, colour);
            }
            else
            {
                i++;
            }
        }

        // next character
        basex += maxX;
        s++;
    }
    if(nVerts)
    {
        p3d::pddi->EndPrims(stream);
    }
}

tColour tStrokeFont::GetColour(void) const
{
    return colour;
}

void tStrokeFont::SetColour(tColour c)
{
    colour = c;
}

tShader* tStrokeFont::GetShader(void) const
{
    return shader;
}

void tStrokeFont::SetShader(tShader* s)
{
    tRefCounted::Assign(shader, s);
}

float tStrokeFont::GetLineSpacing() const
{
    return space;
}

void tStrokeFont::SetLineSpacing(float s)
{
    space = s;
}


