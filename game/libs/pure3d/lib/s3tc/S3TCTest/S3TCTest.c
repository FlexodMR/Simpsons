// S3TCTest.cpp : Defines the entry point for the console application.
//

#include "Compress.h"


int main(int argc, char* argv[])
{
	if(argc == 3)
		Compress(argv[1], argv[2]);
	else if(argc == 2)
		Compress(argv[1], "Out.dds");

	return 0;
}
