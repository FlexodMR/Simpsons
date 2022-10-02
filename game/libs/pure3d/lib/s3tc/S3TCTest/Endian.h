// Endian.h
// Routines for endian-switching structures as required by target architecture
// Based on code by Mike Ockenden, Nintendo of America
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

typedef unsigned char u8;

void FixEndian(u8* src, unsigned long numBytes);
void ReverseDesc2Endian(DDSURFACEDESC2* pDesc2);
void ReverseCmpColorBlocks( char* pData, int size );
