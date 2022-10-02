//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#include "progress.h"

static long total_len;
static long acc_bytes;
static time_t start_time;
static time_t last_time;

char *p_name;

int in_progress=0;

void init_progress(long total)
{
	acc_bytes = 0;
	total_len = total;
	p_name = NULL;
	last_time = 0;
	time(&start_time);
	in_progress=1;
	printf("  Elapsed:  Remaining:  Bytes:%10lu\n",total_len);
	//"  12:00:00    12:00:00        0000000000  "
	//printf(	"                total bytes: %10lu\n",total_len);
	progress_name(NULL);
	progress(0);
}

void end_progress(void)
{
	last_time--;	/* Force an update to display */
	progress_name(NULL);
	long bytes = total_len - acc_bytes;
	if(bytes>0)
		progress(bytes);
	else
		progress(0);
	printf("\n");
	in_progress=0;
}

void progress_name(char *fn)
{
	p_name = fn;
}

void progress(long bytes)
{
	if(in_progress)
	{
		time_t current_time;
		acc_bytes += bytes;
		if(last_time!=time(&current_time))
		{
			last_time = current_time;
			time_t elapsed,remaining;
			long rh,rm,rs,eh,em,es;
			double bytes_per_second;
			time(&current_time);
			elapsed = current_time-start_time;
			bytes_per_second = ((double)acc_bytes)/((double)elapsed);
			remaining = (long)(((double)(total_len-acc_bytes))/bytes_per_second);
			es = elapsed % 60;
			em = (elapsed/60) % 60;
			eh = elapsed/3600;
			rs = remaining % 60;
			rm = (remaining/60) % 60;
			rh = remaining/3600;
			printf( "%4lu:%02lu:%02lu  %4lu:%02lu:%02lu        %10lu  %3ld k/s  ",
				eh,em,es,rh,rm,rs,acc_bytes,(long)(bytes_per_second/1024));
			if(p_name)
				printf("File: %-20s\r",p_name);
			else
				printf("                          \r");
		}
	}
}