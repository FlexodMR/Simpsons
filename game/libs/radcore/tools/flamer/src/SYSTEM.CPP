//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <direct.h>
#include <string.h>

#include <time.h>

#include "global.h"
#include "system.h"
#include "iso.h"

int syscall(const char *command)
{
	int result;
	printf("Running command '%s'\n",command);
	result = system(command);
	if(result==-1) {
		printf("ERROR: System call failed: '%s'\n",command);
		printf("Reason: ");
		switch(errno)
		{
		case E2BIG : printf("Argument list is too big.\n"); break;
		case ENOENT : printf("Command interpreter could not be found.\n"); break;
		case ENOEXEC : printf("Command interpreter is not executable.\n"); break;
		case ENOMEM : printf("There was not enough memory.\n"); break;
		default : printf("Unkown.\n");
		}
		exit(1);
	} else if (result!=0) {
		printf("System call '%s' returned with exit code %d.\n",
					 command,
					 result);
		/* printf("This could mean a failure has occured.  Proceed\n"
			     "with extreme caution.\n"); */
		exit(1);
	}
	return result;
}

void prep(void)
{
	printf("\nPreparing destination directory...\n");
//	syscall("DELTREE /Y " DEST_DIR);
//	syscall("MKDIR " DEST_DIR);
}

void post(void)
{
//	char buf[_MAX_PATH];
	printf("Scriptfile built, now making image file\n");
//	if(copy_files)
//		copy_files_tolocal(_getcwd(buf,_MAX_PATH));
	_chdir(dest_dir);
	syscall("VCDBUILD RADICAL");
	syscall("VCDMKTOC RADICAL.RTI");
	burn();
	printf("Done.\n");

}

void burn(void)
{
	char scratch[_MAX_PATH];
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.DSK");
	if(validate)
		valid(scratch);

	time_t now,estimate = total_image_size/(1024*150*speed) + 4*60;
	now = time(NULL) + estimate;
	struct tm *t = sturdy_localtime(&now);
	printf(	"\nI guess this burn will take %2d hours %2d minutes and %2d seconds.\n"
			"Completing at %02d:%02d:%02d.\n\n",
			estimate/3600,(estimate/60)%60,estimate%60,t->tm_hour,t->tm_min,t->tm_sec);

	if(really_burn) {
		time_t t1,t2;
		printf("Burning...\n" );
		_chdir(dest_dir);

		//
		// We must support two burning tools since dao does not work well with old
		// yamaha 100 burners
		//
		if( use_dao )
		{
			if(test)
				sprintf(scratch, "DAO RADICAL.TOC /TEST /ID=%d:%d:0 /SPEED=%d /NOCONFIRM /EJECT", hostadapter, scsiid,speed );
			else
				sprintf(scratch, "DAO RADICAL.TOC /ID=%d:%d:0 /SPEED=%d /NOCONFIRM /EJECT", hostadapter, scsiid,speed );
		}
		else
		{
			if(test)
				sprintf(scratch,"SEGACDW -t -i %d -s %d RADICAL",scsiid,speed);
			else
				sprintf(scratch,"SEGACDW -i %d -s %d RADICAL",scsiid,speed);
		}
		t1 = time(NULL);
		syscall(scratch);
		t2 = time(NULL);
		strcpy(scratch,config_dir);
		strcat(scratch,"\\FLAMER.LOG");
		FILE *fh = fopen(scratch,"a+");
		if(fh!=NULL)
		{
			t = sturdy_localtime(&t1);
			int sh = t->tm_hour;
			int sm = t->tm_min;
			int ss = t->tm_sec;
			t = sturdy_localtime(&t2);
			int eh = t->tm_hour;
			int em = t->tm_min;
			int es = t->tm_sec;
			fprintf(fh,"Start %2d:%02d:%02d  End %2d:%02d:%02d  Duration %2d:%02d:%02d  File size %dk\n",
				sh,sm,ss,eh,em,es,eh-sh,em-sm,es-ss,(total_image_size+1023)/1024);
			fclose(fh);
		}
	}
}

/*
void copy_files_tolocal(char *source_dir)
{
	char buf[_MAX_PATH*4];
	printf("Copying files to local drive...\n");
	sprintf(buf,"NCOPY %s TO %s /S/E/V",source_dir,dest_dir);
	syscall(buf);
}
*/