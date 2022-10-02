//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <assert.h>

#include "progress.h"

#include "fileio.h"


void small_delay(void)	/* 1 or 2 seconds */
{
	time_t time1,time2;
	time1 = time(&time1);
	time1 += 2;
	while(time1<time(&time2))
		;
}

void fio_eof(FIOP stream)
{
	stream->eof = 1;
}

void fio_eor(FIOP stream)
{
	stream->eor = 1;
}

FIOP fio_open( const char *filename, const char *mode )
{
	int timer =0;

	FIOP temp = new FIO;
	assert(temp!=NULL);
	temp->eof = temp->eor = 0;
	temp->fh = fopen(filename,mode);
	//Retry	a few times to open the file
	if(temp->fh==NULL) 
	{
		do 
		{
				small_delay();
				temp->fh = fopen(filename,mode);
				if(temp->fh) 
				{
					printf("Network BUG AVOIDED!!\n");
					return temp;
				} 
				else 
				{
					printf(	"ERROR: Could not open the file '%s'.\n"
							"       Either it does not exist or there is some other problem.\n",filename);
					exit(1);
				}
		}
		while (++timer < 10);
		if (!temp->fh) 
		{ 
			delete temp;
			temp = NULL;
		}
	}
	return temp;
}

int fio_close( FIOP stream )
{
	FILE *fh = stream->fh;
	delete stream;
	return fclose(fh);
}

size_t fio_read( void *buffer, size_t size, FIOP stream )
{
	size_t result = fread(buffer,size,1,stream->fh);
	if(result!=1)
	{
		small_delay();
		result = fread(buffer,size,1,stream->fh);
		if(result!=1)
		{
			printf("\n\nNetwork BUG KILLED US! (in reading)\n");
			printf("As a workaround, copy your files to a local\n");
			printf("drive on the burnstation and burn them from there.\n");
			exit(1);
		} else
		{
			printf("\n\nNear miss with the network bug...\n");
		}
	}
	return result;
}

/*
int fseek( FIOP stream, long offset, int origin )
{
	return fseek(stream,offset,origin);
}
*/

size_t fio_write( const void *buffer, size_t size, FIOP stream )
{
	progress(size);
	return fwrite(buffer,size,1,stream->fh);
}

size_t bytesperblock[3] = { 2048 , 2048 , 2324 };

size_t fio_block_write(const void *buffer, size_t size, FIOP stream, int mode)
{
	static char block_buf[2352];
	static int block_buf_index=0;
	static int lastmode = MODE1;
	size_t needed;
	size_t length = size;
	size_t written = 0;
	size_t result;
	assert(block_buf_index ? mode==lastmode : 1);
	assert((mode>=MODE1) && (mode<=MODE2FORM2));
	needed = bytesperblock[mode] - block_buf_index;
	while(length>=needed) {
		memcpy(	block_buf+block_buf_index,
				((const char *)buffer)+written,
				needed);
		switch(mode) {
		case MODE1 :
			result = fio_mode1_write(block_buf,stream);
			break;
		case MODE2FORM1 :
			result = fio_mode21_write(block_buf,stream);
			break;
		case MODE2FORM2 :
			result = fio_mode22_write(block_buf,stream);
			break;
		}
		length -= needed;
		written += needed;
		block_buf_index = 0;
		needed = bytesperblock[mode];
		if(result!=1)
			return 0;
	}
	if(length>0) {
		memcpy(	block_buf+block_buf_index,
				((const char *)buffer)+written,length);
		block_buf_index += length;
	}
	lastmode = mode;
	return size;
}

unsigned char header[16] = { 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 'M', 'S', 'F', 0 };

size_t fio_mode1_write( const void *buffer, FIOP stream )
{
	char local_buffer[288];
	size_t result;
	memset(local_buffer,0,288);
	result = fwrite(header,16,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(buffer,2048,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(local_buffer,288,1,stream->fh);
	if(result!=1)
		return 0;
	progress(16+2048+288);
	return 1;
}

size_t fio_mode2336_write(const void *buffer, FIOP stream )
{
	size_t result;
	result = fwrite(header,16,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(buffer,2336,1,stream->fh);
	if(result!=1)
		return 0;
	progress(16+2336);
	return 1;
}
/*
size_t fio_mode2_write(const void *buffer, const void *subheader, FIOP stream )
{
	char local_buffer[280];
	size_t result;
	memset(local_buffer,0,280);
	result = fwrite(header,16,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(subheader,8,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(buffer,2048,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(local_buffer,280,1,stream->fh);
	if(result!=1)
		return 0;
	progress(16+8+2048+280);
	return 1;
}
*/
size_t fio_mode21_write( const void *buffer, FIOP stream)
{
	char local_buffer[280];
	char subheader[8];
	subheader[0] = subheader[4] = 0;
	subheader[2] = subheader[6] = SM_DATA;
	subheader[1] = subheader[3] = subheader[5] = subheader[7] = 0;
	if(stream->eof) {
		subheader[2] |= SM_EOF;
		subheader[6] |= SM_EOF;
		stream->eof = 0;
	}
	if(stream->eor) {
		subheader[2] |= SM_EOR;
		subheader[6] |= SM_EOR;
		stream->eor = 0;
	}
	size_t result;
	memset(local_buffer,0,280);
	result = fwrite(header,16,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(subheader,8,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(buffer,2048,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(local_buffer,280,1,stream->fh);
	if(result!=1)
		return 0;
	progress(16+8+2048+280);
	return 1;
}

size_t fio_mode22_write( const void *buffer, FIOP stream )
{
	char local_buffer[16];
	size_t result;
	char subheader[8];
	subheader[0] = subheader[4] = 0;
	subheader[2] = subheader[6] = SM_DATA;
	subheader[1] = subheader[3] = subheader[5] = subheader[7] = 0;
	if(stream->eof) {
		subheader[2] |= SM_EOF;
		subheader[2] |= SM_EOF;
		stream->eof = 0;
	}
	if(stream->eor) {
		subheader[2] |= SM_EOR;
		subheader[2] |= SM_EOR;
		stream->eor = 0;
	}
	memset(local_buffer,0,16);
	result = fwrite(local_buffer,16,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(subheader,8,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(buffer,2324,1,stream->fh);
	if(result!=1)
		return 0;
	result = fwrite(local_buffer,4,1,stream->fh);
	if(result!=1)
		return 0;
	progress(16+8+2324+4);
	return 1;	
}
