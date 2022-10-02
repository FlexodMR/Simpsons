//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <direct.h>

#include "global.h"
#include "dir.h"
#include "util.h"
#include "script.h"

struct dir_tree *cdda=NULL;

void psx_script(FILE *,struct dir_tree *tree);
void saturn_script(FILE *,struct dir_tree *tree);
void windows_script(FILE *,struct dir_tree *tree);
void simple_file(FILE *,char *, char *);
void flat_script(FILE *,char *,struct node *);
void deep_script(FILE *,char *,struct node *);
void global_pre(FILE *);
void license(FILE *);
void sysarea(FILE *);
void end_track1(FILE *);
void global_post(FILE *);
void da_dir(FILE *fh,struct dir_tree *);
void da_script(FILE *,char *,struct node *);
void iso_script(FILE *,char *,struct node *);


void make_script(struct dir_tree *tree)
{
	FILE *fh=NULL;
	char scratch[_MAX_PATH];
	printf("\nGenerating script files...\n");	
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.SCR");
	fh = fopen(scratch,"wt");
	if(fh==NULL)
		error("Can't create script file.\n");
	cdda = cdda_tree(tree);
	tree = remove_cdda(tree);
	global_pre(fh);
	switch(target_system)
		{
		case PSX : psx_script(fh,tree); break;
		case SATURN : saturn_script(fh,tree); break;
		case WINDOWS : windows_script(fh,tree); break;
		}
	global_post(fh);
	fclose(fh);
}

void global_pre(FILE *fh)
{
	fprintf(fh,	"Disc RADICAL.DSK\n"
							"CatalogNo 0\n"
							"Session CDROM\n"
							"LeadIn MODE1\n"
							"EndLeadIn\n");
}

void global_post(FILE *fh)
{
	if(cdda)
		fprintf(fh,"LeadOut CDDA\n");
	else
		fprintf(fh,"LeadOut MODE1\n");
	fprintf(fh,	"    Empty 300\n"
							"EndLeadOut\n"
							"EndSession\n"
							"EndDisc\n");
}

void simple_file(FILE *fh,char *fn, char *path)
{
	char name[_MAX_PATH];
	if(target_system==SATURN &&
		 (_stricmp("0.BIN",fn)==0 || _stricmp("SYSAREA.BIN",fn)==0))
		 return;
	strcpy(name,fn);
	_strupr(name);
	fprintf(fh,	"\tFile \"%s\"\n"
							"\t    FileSource %s%s\n"
							"\t    EndFileSource\n"
							"\tEndFile\n",
							name,path,fn);
}

/*
void flat_script(FILE *fh,char *path,struct node *root)
{
	struct node *cur=root;
	while(cur!=NULL)
	{
		if(cur->directory) {
			char newpath[_MAX_PATH];
			strcpy(newpath,path);
			strcat(newpath,cur->name);
			strcat(newpath,"\\");
			flat_script(fh,newpath,cur->subdir);
		} else {
			simple_file(fh,cur->name,path);
		}
		cur=cur->next;
	}
}
*/

void deep_script(FILE *fh,char *path,struct node *root)
{
	struct node *cur=root;
	char name[_MAX_PATH];
	while(cur!=NULL)
	{
		if(cur->directory) {
			char newpath[_MAX_PATH];
			strcpy(newpath,path);
			strcat(newpath,cur->name);
			strcat(newpath,"\\");
			strcpy(name,cur->name);
			_strupr(name);
			fprintf(fh,"\tDirectory %s\n",name);
			deep_script(fh,newpath,cur->subdir);
			fprintf(fh,"\tEndDirectory\n");
		} else {
			/*
				*** Add Burn ID TAG to File HERE! ***
			 */
			simple_file(fh,cur->name,path);
		}
		cur=cur->next;
	}
}

void psx_script(FILE *fh,struct dir_tree *tree)
{
	char buf[_MAX_PATH];
	license(fh);
	_getcwd(buf,_MAX_PATH);
	if(buf[strlen(buf)-1]!='\\')
		strcat(buf,"\\");
	iso_script(fh,buf,tree->first);
	end_track1(fh);
	if(cdda)
		da_script(fh,buf,cdda->first);
}

/*
void da_dir(FILE *fh,struct dir_tree *tree)
{
	char buf[_MAX_PATH];
	if(!tree)
		return;
	if(duplicates(tree))
		error("Duplicate DA track file names not allowed.\n");
	if(copy_files)
		strcpy(buf,"");
	else {
		_getcwd(buf,_MAX_PATH);
		if(buf[strlen(buf)-1]!='\\')
			strcat(buf,"\\");
	}
	da_script(fh,buf,tree->first);
}
*/

int first_da_track_written = FALSE;

char dirstack[8][14];
int dirstacktop=0;

void simple_cdda_file(FILE *fh,char *fn, char *path)
{
	int i;
	char name[_MAX_PATH];
	strcpy(name,fn);
	_strupr(name);
	fprintf(fh,"    Track CDDA\n");
	if(!first_da_track_written) {
		fprintf(fh, "\tPause 150\n");
		first_da_track_written = TRUE;
	}
	for(i=0;i<dirstacktop;i++)
		fprintf(fh,	"\tDirectory %s\n",dirstack[i]);
	fprintf(fh,	"\tFile \"%s\"\n"
							"\t    FileSource %s%s\n"
							"\t    EndFileSource\n"
							"\tEndFile\n",
							name,path,fn);
	for(i=0;i<dirstacktop;i++)
		fprintf(fh,	"\tEndDirectory\n");
	fprintf(fh,"    EndTrack\n");
}

void da_script(FILE *fh,char *path,struct node *root)
{
	struct node *cur=root;
	char name[_MAX_PATH];
	while(cur!=NULL)
	{
		if(cur->directory) {
			char newpath[_MAX_PATH];
			if(dirstacktop==7)
				error("Directories too deep, 8 directories deep is the maximum.\n");
			strcpy(name,cur->name);
			_strupr(name);
			strcpy(dirstack[dirstacktop],name);
			dirstacktop++;
			strcpy(newpath,path);
			strcat(newpath,cur->name);
			strcat(newpath,"\\");
			da_script(fh,newpath,cur->subdir);
			dirstacktop--;
		} else {
			simple_cdda_file(fh,cur->name,path);
		}
		cur=cur->next;
	}
}

/*
void da_script(FILE *fh,struct node *root,char *path)
{
	struct node *cur=root;
	while(cur!=NULL)
	{
		if(cur->directory)
		{
			char subname[_MAX_PATH];
			strcpy(subname,path);
			strcat(subname,cur->name);
			strcat(subname,"\\");
			da_script(fh,cur->subdir,subname);
		}
		else
		{
			int i;
			char dirname[_MAX_PATH],
				   upname[_MAX_PATH];
			fprintf(fh,	"    Track CDDDA\n");
			if(!first_da_track_written) {
				fprintf(fh,"\tPause 150\n");
				first_da_track_written = TRUE;
			}
			strcpy(upname,cur->name);
			_strupr(upname);
			i=0;
			while(upname[i] && upname[i]!='.')
			{
				dirname[i] = upname[i];
				i++;
			}
			dirname[i] = 0;
			fprintf(fh,	"\tDirectory DA\n"
									"\t    Directory %s\n"
									"\t\tFile \"%s\"\n"
									"\t\t    FileSource %s%s\n"
									"\t\t    EndFileSource\n"
									"\t\tEndFile\n"
									"\t    EndDirectory\n"
									"\tEndDirectory\n"
									"    EndTrack\n",
									dirname,
									upname,
									path,
									cur->name);
		}
		cur=cur->next;
	}
}
*/

void saturn_script(FILE *fh,struct dir_tree *tree)
{
	psx_script(fh,tree);
}

void windows_script(FILE *fh,struct dir_tree *tree)
{
	psx_script(fh,tree);
}

void iso_script(FILE *fh,char *path,struct node *root)
{
/*	if(flat_files)
		flat_script(fh,path,tree->first);
	else*/
		deep_script(fh,path,root);
}

void end_track1(FILE *fh)
{
	fprintf(fh,	"\tPostGap 150\n    EndTrack\n");
}

void license(FILE *fh)
{
	fprintf(fh,	"SystemArea %s\\licensea.dat\n"
							"    Track MODE1\n"
							"\tVolume ISO9660 %s\\licensea.dat\n"
							"\t    PrimaryVolume 0:2:16\n"
							"\t    EndPrimaryVolume\n"
							"\tEndVolume\n\n",config_dir,dest_dir);
}

void sysarea(FILE *fh)
{
	fprintf(fh,	"SystemArea %s\\sysarea.bin\n"
							"    Track MODE1\n"
							"\tVolume ISO9660 %s\\sysarea.bin\n"
							"\t    PrimaryVolume 0:2:16\n"
							"\t    EndPrimaryVolume\n"
							"\tEndVolume\n\n"
							"\tFile 0\n"
							"\t    FileSource %s\\0.BIN\n"
							"\t    EndFileSource\n"
							"\tEndFile\n",dest_dir,dest_dir,dest_dir);
}