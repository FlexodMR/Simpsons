//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <io.h>
#include <time.h>
#include <string.h>

#include "win.h"

#include "global.h"
#include "dir.h"

struct image_node
{
	struct image_node *next;
	char *file_name;
	_fsize_t filesize;
	time_t last_write;
};

struct image_node *build_image_node_list(char *path);
int image_node_cmp(struct image_node **a,struct image_node **b);

void check_freespace(char *drive,unsigned long estimate)
{

    ULARGE_INTEGER BytesAvailable;
    ULARGE_INTEGER TotalBytes;
    ULARGE_INTEGER TotalFree;
    unsigned long freespace;

    BOOL b_result = GetDiskFreeSpaceEx( drive, &BytesAvailable,
                                        &TotalBytes,
                                        &TotalFree );
    assert(b_result);


    if( BytesAvailable.HighPart > 0 )
    {
        freespace = 0xffffffff;
    }
    else
    {
        freespace = BytesAvailable.LowPart;
    }        

	printf("Freespace on drive %s is %lu\n",drive,freespace);
	printf("Estimated disk image size is %lu\n",estimate);

	
	if(estimate > freespace)
	{
    	int needed = estimate - freespace ;

		char scratch[_MAX_PATH];
		struct image_node **arr;

		printf("Need more room, attempting to make space.\n");

		long count;
		struct image_node *first = build_image_node_list(image_dir);
		count = 0;
		struct image_node *temp = first;
		while(temp!=NULL)
		{
			count++;
			temp = temp->next;
		}
		arr = (struct image_node **)malloc(sizeof(struct image_node*)*count);
		assert(arr!=NULL);
		int i = 0;
		temp = first;
		while(temp!=NULL)
		{
			arr[i] = temp;
			temp = temp->next;
			i++;
		}
		qsort(arr,count,sizeof(struct image_node*),
			(int (__cdecl *)(const void *,const void *))image_node_cmp);
		for(i=0;i<count;i++)
		{
			strcpy(scratch,arr[i]->file_name);
			printf("Deleting %s, size %lu\n",scratch,arr[i]->filesize);
			unlink(scratch);
			scratch[strlen(scratch)-3] = 0;
			strcat(scratch,"TOC");
			printf("Deleting %s\n",scratch);
			unlink(scratch);
			needed -= arr[i]->filesize;
			if(needed<=0)
				break;
		}

        BOOL b_result = GetDiskFreeSpaceEx( drive, &BytesAvailable,
                                        &TotalBytes,
                                        &TotalFree );
        assert(b_result);

        if( BytesAvailable.HighPart > 0 )
        {
            freespace = 0xffffffff;
        }
        else
        {
            freespace = BytesAvailable.LowPart;
        }        

		printf("Freespace on drive %s is %lu\n",drive,freespace);
		printf("Estimated disk image size is %lu\n",estimate);

    	if(estimate > freespace)
		{
			printf("ERROR: Failed to get enough free space.\n");
			exit(1);
		}
	}
	int a = 0;
	a++;
}

int image_node_cmp(struct image_node **a,struct image_node **b)
{
	return (*a)->last_write - (*b)->last_write;
}

struct image_node *build_image_node_list(char *path)
{
	struct _finddata_t c_file;
	long hFile;	
	struct image_node *temp=NULL,*first=NULL;

	char scratch[_MAX_PATH];

	strcpy(scratch,path);
	strcat(scratch,"\\*.*");

	/* Find first file in current directory */
	if( (hFile = _findfirst( scratch, &c_file )) == -1L )
	{
		return NULL;
	}

	do {
		temp = NULL;
		if ( c_file.attrib & _A_SUBDIR ) {
			if ((strcmp(c_file.name,".") != 0) &&
				(strcmp(c_file.name,"..") != 0))
			{
				struct image_node *next;
				strcpy(scratch,path);
				strcat(scratch,"\\");
				strcat(scratch,c_file.name);
				temp = build_image_node_list(scratch);
				next = temp;
				if(next)
				{
					while(next->next!=NULL)
						next = next->next;
					next->next = first;
					first = temp;
				}
			}
		} else if(last_letters(c_file.name,".DSK"))
		{
			temp = new struct image_node;
			assert(temp!=NULL);
			temp->file_name = new char[strlen(path) + 1 + strlen(c_file.name) + 1];
			assert(temp->file_name!=NULL);
			temp->filesize = c_file.size;
			temp->last_write = c_file.time_write;
			strcpy(temp->file_name,path);
			strcat(temp->file_name,"\\");
			strcat(temp->file_name,c_file.name);
			temp->next = first;
			first = temp;
		}
	} while( _findnext( hFile, &c_file ) == 0 );

	_findclose( hFile );

	return first;
}