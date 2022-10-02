//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



/*
 *	DIR.CPP
 *
 *	Routines related to making the directory tree structure, and
 *	doing various manipulations to them.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <io.h>
#include <direct.h>
#include <string.h>
#include <search.h>

#include <assert.h>

#include "global.h"
#include "dir.h"
#include "util.h"

struct node *get_dirs(char *);
struct node *process_entry(struct _finddata_t *,char *);
void print_tree_drv(struct node *,int);
int in_tree_drv(struct node *,char *);
void tree_count(struct dir_tree *,struct node *);
int sub_count(int,struct dir_tree *,struct node *,struct node *,int *);
void free_node(struct node *);
int nodecmp(const struct node **,const struct node **);
struct node *get_flatlist(struct node *);
struct node *remove_cdda_drv(struct node *);
int dir_has_cdda(struct node *);
struct node *cdda_tree_drv(struct node *);
void sort_node(struct node **);
int compcmp(const struct node **,const struct node **);
int str_with_audio(char *fn);

char NTSCsystem[ ] ="BOOT2 = cdrom0:\\SLPS_123.45;1\r\n"
                    "VER = 1.00\r\n"
                    "VMODE = NTSC\r\n";

char PALsystem[ ] ="BOOT2 = cdrom0:\\SLPS_123.45;1\r\n"
                   "VER = 1.00\r\n"
                   "VMODE = PAL\r\n";

int has_cdda_files = FALSE;
int has_str_files = FALSE;

/*
 *	Loads the current directory into a dir_tree structure
 *
 */

struct dir_tree *load_dirs(void)
{
	char buf[_MAX_PATH];
	struct dir_tree *tree;
	tree = new struct dir_tree;
	if (tree == NULL)
		error("Can't get enough memory, what is going on???!");
	tree->totaldirs = 
		tree->numdirs = tree->numfiles = 
		tree->dirdepth = tree->longest_path_len = 0;
	if( _getcwd( buf, _MAX_PATH ) == NULL ) {
	  perror( "_getcwd error" );
		exit(1);
	}
	if(buf[strlen(buf)-1]=='\\')
		buf[strlen(buf)-1]=0;
	tree->first = get_dirs(buf);
 	tree->newest_time = 0;
	tree_count(tree,tree->first);
	return tree;
}

/*
 *	The program load_dirs uses to do it's dirty work
 *	A seperate routine so it can be recursive
 *
 */

struct node *get_dirs(char *current_dir)
{
  struct _finddata_t c_file;
  long hFile;
	struct node *temp,*first;

  /* Find first file in current directory */
  if( (hFile = _findfirst( "*.*", &c_file )) == -1L ) {
	  return NULL;
  }

  first = temp = process_entry(&c_file,current_dir);

  while( _findnext( hFile, &c_file ) == 0 )
  {
		struct node *next;
		next = process_entry(&c_file,current_dir);
		if (temp == NULL) {	/* if we haven't put anything in the list yet, */
			temp = next;			/* then put whateer we just got at the beginning of the list */
		} else {						/* otherwise we already have something... */
			temp->next = next;  /* so put it at the end of the list */ 
			if (next != NULL)   /* If we actually have something here, then update our */
				temp = next;			/* end of list pointer */

		}
		if (first == NULL)
			first = temp;
	}

	_findclose( hFile );

	return first;
}

/*
 *	For each file or diretory found, put it through this to 
 *	generate the proper kind of node, if there are directories
 *  it will recursively call get_dirs and hook the resulting
 *  lists into the list of files and dirs
 *
 */

struct node *process_entry(struct _finddata_t *c_file, char *current_dir)
{
	if ( c_file->attrib & _A_SYSTEM ) {
		/* Ignore system files */
		/* printf("%sIgnoring System Files\n",indentation); */
	} else if ( c_file->attrib & _A_SUBDIR ) {
		if ((strcmp(c_file->name,".") != 0) &&
			  (strcmp(c_file->name,"..") != 0) &&
			  (_stricmp(c_file->name,"FLAMER.CFG")!=0))
		{
			char original[_MAX_PATH],
				   subdir[_MAX_PATH];

			struct node *dir;
			dir = new struct node;
			if (dir == NULL)
				error("Can't get enough memory, what is going on???! (A)");

			dir->next = NULL;
			strcpy(dir->path,current_dir);
			strcpy(dir->name,c_file->name);
			dir->parent = NULL;
			dir->level = 0;
			dir->directory = TRUE;
			dir->subdir = NULL;
			dir->numfiles = 0;
			dir->numdirs = 0;
			dir->is_cdda = FALSE;
			dir->is_str = FALSE;
			dir->is_tag = FALSE;
			dir->last_write = c_file->time_write;

			if( _getcwd( original, _MAX_PATH ) == NULL ) {
			  perror( "_getcwd error" );
				exit(1);
			}
			strcpy(subdir,original);
			if(subdir[strlen(subdir)-1]!='\\')
				strcat(subdir,"\\");
			strcat(subdir,c_file->name);
			if ( _chdir(subdir) == -1)
			{
				printf("Subdir: '%s'\n",subdir);
				perror( "_chdir error (A)" );
				exit(1);
			} else {
				dir->subdir = get_dirs(subdir);
				if ( _chdir(original) == -1)
				{
					perror( "_chdir error (B)");
					exit(1);
				}
			}
			dir->filesize = getdirentsize(dir->subdir);
			dir->blocks = (dir->filesize + 2047) / 2048;
			return dir;
		}
	} else {
		struct	node *file;
		char	szTemp[_MAX_PATH];

        //
        // If we are burning the PS2 image, play with a few of the names.
        //
        if( use_ps2_license )
        {
            if( stricmp( c_file->name, ps2Executable ) == 0 )
            {
                //
                // Change name. When we write the data, we will open the correct filename.
                //
                strcpy( c_file->name, "SLPS_123.45");
            }
            else if( stricmp( c_file->name, "system.cnf") == 0 )
            {
                //
                // Change the file size to the size of our internal image of this file.
                //
                c_file->size = (psx_license_code != 'E') ? strlen( NTSCsystem ) : strlen( PALsystem );
            }
        }
 
		file = new struct node;
		if (file == NULL)
			error("Can't get enough memory, what is going on???! (B)");
		file->next = NULL;
		strcpy(file->path,current_dir);
		strcpy(file->name,c_file->name);
		sprintf( szTemp, "%s\\%s", file->path, file->name );
		_strupr( szTemp );
		if( _stricmp( szTemp, TagFile ) == 0 )
			file->is_tag = TRUE, c_file->size += strlen( TagString );
		else
			file->is_tag = FALSE;
		file->directory = FALSE;
		file->subdir = NULL;				
		file->numfiles = 0;
		file->numdirs = 0;
		file->is_cdda = special && last_letters(c_file->name,CDDA_EXT);
		if(file->is_cdda)
			has_cdda_files = TRUE;
		file->is_str = special && last_letters(c_file->name,STR_EXT) && str_with_audio(c_file->name);
		if(file->is_str)
			has_str_files = TRUE;
		if(file->is_str)
			file->filesize = (c_file->size/2336)*2048;
		else
			file->filesize = c_file->size;
		file->blocks = (file->filesize + 2047) / 2048;
		file->last_write = c_file->time_write;
		return file;
	}
	return NULL;
}

int str_with_audio(char *fn)
{
	unsigned long buf[4];
	FILE *fh = fopen(fn,"rb");
	assert(fh!=NULL);
	int result = fread(buf,sizeof(unsigned long),4,fh);
	if(result!=4)
	{
		printf(	"WARNING: Found a file named '%s'.\n"
				"         It seems like it is not an .STR movie,\n"
				"         but it has a .STR extension.\n");
		return FALSE;
	}
	fclose(fh);

	if(buf[0]==0x80010160)
	{
		printf(	"WARNING: Found a file named '%s'.\n"
				"         It seems to be an .STR movie with no audio, so that is\n"
				"         how I am going to deal with it, ok?\n",fn);
		return FALSE;
	} else if(buf[2]==0x80010160)
		return TRUE;
	else
	{
		printf("ERROR: Encountered an STR file, and I can't figure out\n"
			   "       if it has audio or not.  Was looking for magic\n"
			   "       number 0x80010160 but couldn't find it...\n"
			   "       What is going on???!\n");
		printf("       File name: '%s'\n",fn);
		exit(1);
	}
	assert(FALSE);
	return FALSE;
}

_fsize_t getdirentsize(struct node *dirent)
{
	_fsize_t totalbytes = 34 + 34; /* add current and parent */
	_fsize_t nextsize;
	_fsize_t blocks=1;
	struct node *cur;
	cur = dirent;
	while(cur!=NULL) {
		//Fixes uncommon bug on Saturn where whole disk is
		//corrupted - AH Oct '96
		if((target_system==SATURN) && (_stricmp(cur->name,"sysarea.bin")==0))
		{
			cur = cur->next;
			continue;		/* if saturn then don't include sysarea.bin */
		}

		if(cur->directory)
		{
			nextsize = (strlen(cur->name) + 33);
			nextsize += (nextsize%2);
		} else {
			nextsize = (strlen(cur->name) + 33 + 2); /* don't forget the version */
			nextsize += (nextsize%2);
		}
		if(totalbytes+nextsize>blocks*2048)
		{
			totalbytes = blocks*2048;
			blocks++;
		}
		totalbytes += nextsize;
		cur = cur->next;
	}
	return totalbytes; 
}

/*
_fsize_t getdirentsize(struct node *dirent)
{
	_fsize_t totalbytes = 0;
	struct node *cur;
	cur = dirent;
	while(cur!=NULL) {
		if(cur->directory)
		{
			totalbytes += (strlen(cur->name) + 33);
			totalbytes += (totalbytes%2);
		} else {
			totalbytes += (strlen(cur->name) + 33 + 2); /* don't forget the version 
			totalbytes += (totalbytes%2);
		}
		cur = cur->next;
	}
	return totalbytes + 34 + 34; /* add current and parent sss
}
*/
/*
 *	Return true if the filename has the extension ".DA"
 *
 */

int cdda_file(char *fn)
{
	int i,
			fnl=strlen(fn),
			extl=3;
	char ext[4]=".DA";
	int off=fnl-extl;
	if(fnl<extl)
		return FALSE;
	for(i=0;i<extl;i++)
		if(toupper(fn[off+i])!=toupper(ext[i]))
		  return FALSE;
	return TRUE;
}

int last_letters(char *fn,char *ext)
{
	int i,
		fnl=strlen(fn),
		extl=strlen(ext);
	int off=fnl-extl;
	if(fnl<extl)
		return FALSE;
	for(i=0;i<extl;i++)
		if(toupper(fn[off+i])!=toupper(ext[i]))
		  return FALSE;
	return TRUE;
}

/*
 *	Goes througha  dir_tree structure deleting
 *	all of the directories and files that are
 *	DA files (directories containing DA files
 *	are deleted)
 *
 */

struct dir_tree *remove_cdda(struct dir_tree *tree)
{
	tree->first = remove_cdda_drv(tree->first);
	return tree;
}

/*
 *
 *	engine of remove_cdda
 *
 */

struct node *remove_cdda_drv(struct node *root)
{
	struct node *cur=root,*first=NULL,*last=NULL;
	while(cur!=NULL) {
		if(	(cur->directory && dir_has_cdda(cur->subdir)) ||
				cdda_file(cur->name) )
		{
			struct node *next=cur->next;
			if(last==NULL)
				last = cur->next;
			else
				last->next = cur->next;
			cur->next = NULL;	/* only want to free directory and contents, not later entries */
			free_node(cur);
			cur = next;
		} else {
/*			if (cur->directory) {
				cur->subdir = remove_cdda_drv(cur->subdir);
				if(!cur->subdir)
				{
					struct node *next=cur->next;
					if(last==NULL)
						last = cur->next;
					else
						last->next = cur->next;
					free_node(cur);
					cur = next;
				}
				warning("Empty directories are not written to CD-ROM.\n");
			} */
			if(first==NULL)
				first = cur;
			last = cur;
			if(cur)
				cur = cur->next;
		}
	}
	return first;
}

/*
 *
 *	Returns true if the there are any DA files in the
 *  root of the directory list passed ot it
 *
 */

int dir_has_cdda(struct node *root)
{
	struct node *cur=root;
	while(cur!=NULL) {
		if(cdda_file(cur->name))
			return TRUE;
		cur=cur->next;
	}
	return FALSE;
}

/*
 *	Makes a tree containing just the DA files
 *	from a tree containing all files
 *
 */

struct dir_tree *cdda_tree(struct dir_tree *tree)
{
	struct node *temp = cdda_tree_drv(tree->first);
	if(temp) {
		struct dir_tree *newtree = new struct dir_tree;
		if(newtree==NULL)
			error("Out of memory, Aborting.\n");
		newtree->first = temp;
		newtree->numdirs = 0;
		newtree->numfiles = 0;
		newtree->dirdepth = 0;
		newtree->longest_path_len = 0;
		return newtree;
	}
	return NULL;
}

/*
 *	Engine for cdda_tree
 *
 */

struct node *cdda_tree_drv(struct node *root)
{
	if(root!=NULL) {
		if(cdda_file(root->name) || root->directory) {
			struct node *temp = new struct node;
			if(temp==NULL)
				error("Not enough memory, aborting.\n");
			temp->numfiles = 0;
			temp->numdirs = 0;
			strcpy(temp->name,root->name);
			if((temp->directory=root->directory)!=0) {
				temp->subdir = cdda_tree_drv(root->subdir);
				if(!temp->subdir) {
					delete temp;
					return cdda_tree_drv(root->next);
				}
			}
			temp->next = cdda_tree_drv(root->next);
		  return temp;
		}
		return cdda_tree_drv(root->next);
	}
	return NULL;
}

/*
 *	For debugging purposes, print out the directory tree
 *
 */

void print_tree(struct dir_tree *tree)
{
	printf(	"Root files: %d   dirs: %d   directory depth: %d\n"
					"longest path length: %d\n\n",
					tree->numfiles,
					tree->numdirs,
					tree->dirdepth,
					tree->longest_path_len);
	print_tree_drv(tree->first,0);
}

/*
 *	YAE, Yet Another Engine
 *
 */

void print_tree_drv(struct node *root,int spaces)
{
  char ind[_MAX_PATH];
  struct node *cur;
	int i;
	
	strcpy(ind,"");
	for(i=0;i<spaces;i++)
		strcat(ind," ");

	cur = root;
	while(cur != NULL) {
		if (cur->directory) {
			/* printf("%s[%s]\n",ind,cur->name); */
			printf("%s[%s]   files: %d   dirs: %d\n",ind,cur->name,
						 cur->numfiles,cur->numdirs);
			print_tree_drv(cur->subdir,spaces+2);
		} else {
			printf("%s%s\n",ind,cur->name);
		}
		cur = cur->next;
	}
}

/*
 *	Returns TRUE if file name is in the root directory of tree
 *
 */

int in_root(struct dir_tree *tree, char *name)
{
	struct node *cur=tree->first;
	while(cur != NULL)
	{
		if (!cur->directory) {
			if (_stricmp(cur->name,name)==0)
				return TRUE;
		}
		cur = cur->next;
	}
	return FALSE;
}

/*
 *	Returns TRUE if file name is anywhere in tree
 *
 */

int in_tree(struct dir_tree *tree, char *name)
{
	return in_tree_drv(tree->first,name);
}

int in_tree_drv(struct node *root, char *name)
{
  struct node *cur=root;
	while(cur != NULL) {
		if (cur->directory) {
			if (in_tree_drv(cur->subdir,name))
				return TRUE;
		} else {
			if (_stricmp(cur->name,name)==0)
				return TRUE;
		}
		cur = cur->next;
	}
	return FALSE;
}

/*
 *	Fill in the count fields of a tree
 *
 */

void tree_count(struct dir_tree *tree,struct node *root)
{
  struct node *cur=root;
	int templen,curlen;
	int maxlen = 0;
	int tempdepth = 0;
	int maxdepth = 0;
	while(cur != NULL) {
		curlen = strlen(cur->name);
		cur->parent = NULL;	/* If parent is null, that means it is in root directory */
		tree->newest_time = __max(cur->last_write,tree->newest_time);
		if (curlen>maxlen)
			maxlen = curlen;
		if (cur->directory) {
			(tree->totaldirs)++;
			(tree->numdirs)++;
			templen = curlen + sub_count(1,tree,cur,cur->subdir,&tempdepth);
			if (templen > maxlen)
				maxlen = templen;
			if (tempdepth > maxdepth)
				maxdepth = tempdepth;
		} else {
			(tree->numfiles++);
		}
		cur = cur->next;
	}
	tree->longest_path_len = maxlen;
	tree->dirdepth = maxdepth;
}

/* 
 * returns longest path length
 *
 */

int sub_count(int level,struct dir_tree *tree,
			  struct node *parent,struct node *root,int *subdirs)
{
  struct node *cur=root;
	int templen,curlen;
	int maxlen = 0;
	int tempdepth = 0;
	int maxdepth = 0;
  while (cur!=NULL) {
		cur->parent = parent;
		cur->level = level;
		curlen = strlen(cur->name);
		tree->newest_time = __max(cur->last_write,tree->newest_time);
		if (curlen>maxlen)
			maxlen = curlen;
		if (cur->directory) {
			(tree->totaldirs)++;
			(parent->numdirs)++;
			templen = curlen + sub_count(level+1,tree,cur,cur->subdir,&tempdepth);
			if (templen > maxlen)
				maxlen = templen;
			if (tempdepth > maxdepth)
				maxdepth = tempdepth;
		} else {
			(parent->numfiles)++;
		}
		cur = cur->next;
	}
	(*subdirs) = 1 + maxdepth;
	return 1+maxlen;	/* add 1 for backslash */
}

/*
 *
 *
 *
 */

void sort(struct dir_tree *tree)
{
	sort_node(&(tree->first));
}

void sort_node(struct node **root)
{
	struct node **arr;
	int count=0,i;
	struct node *cur=(*root);
	if(cur==NULL)
		return;
	while(cur!=NULL)
	{
		if(cur->directory)
			sort_node(&(cur->subdir));
		count++;
		cur=cur->next;
	}
	cur=(*root);
	arr = (struct node **)malloc(sizeof(struct node*)*count);
	if (arr == NULL)
		error("Can't get enough memory, what is going on???! (G)");
	i = 0;
	while(cur!=NULL)
	{
		arr[i] = cur;
		cur = cur->next;
		i++;
	}
	qsort(arr,count,sizeof(struct node*),
		(int (__cdecl *)(const void *,const void *))compcmp);
	for(i=0;i<count-1;i++)
		arr[i]->next = arr[i+1];
	arr[count-1]->next = NULL;
	(*root) = arr[0];
}

char as[_MAX_PATH],bs[_MAX_PATH];
char ab[_MAX_PATH],ae[_MAX_PATH];
char bb[_MAX_PATH],be[_MAX_PATH];

int compcmp(const struct node **a,const struct node **b)
{
	char *tok;
	strcpy(as,(*a)->name);
	strcpy(bs,(*b)->name);

	tok = strtok(as,".;");
	if(tok)
		strcpy(ab,tok);
	else {
		error("Invalid Filename:");
		error((char*)(*a)->name);
	}
	tok = strtok(NULL,".;");
	if(tok)
		strcpy(ae,tok);
	else
		strcpy(ae,"");
	
	tok = strtok(bs,".;");
	if(tok)
		strcpy(bb,tok);
	else {
		error("Invalid Filename:");
		error((char*)(*a)->name);
	}
	tok = strtok(NULL,".;");
	if(tok)
		strcpy(be,tok);
	else
		strcpy(be,"");

	if(_stricmp(ab,bb)==0)
		return _stricmp(ae,be);
	else
		return _stricmp(ab,bb);
}

/*
 *	return TRUE if there are filenames duplciated
 *  anywhere in the tree
 *
 */

int duplicates(struct dir_tree *orig)
{
	struct node *temp;
	struct node *cur;
	/*struct nodeptrarr *arr;*/
	struct node **arr;
	int count,index,dup=FALSE;
	int size;

	if(!orig)
		return FALSE;

	temp = get_flatlist(orig->first);
	cur=temp;
	count = 0;
	while(cur!=NULL) {
		count++;
		cur=cur->next;
	}
	size = sizeof(struct node *)*count;
	arr = (struct node **)new char[size];
	if (arr == NULL)
		error("Can't get enough memory, what is going on???! (D)");
	cur=temp;
	count=0;
	while(cur!=NULL) {
		arr[count] = cur;
		count++;
		cur=cur->next;
	}
	qsort(arr,count,sizeof(struct node *),(int (__cdecl *)(const void *,const void *))nodecmp);
	for(index=0;index<(count-1);index++)
	{
		if(_stricmp((arr[index])->name,(arr[index+1])->name)==0)
		{
			printf("ERROR: Duplicate filename '%s' and '%s'\n",
						 (arr[index])->name,(arr[index+1])->name);
			dup = TRUE;
		}
	}
	free_node(temp);
	return dup;
}

int nodecmp(const struct node **a,const struct node **b)
{
	return _stricmp((*a)->name,(*b)->name);
}

/*
 *	Removes directory structure from root and returns it
 *
 */

struct node *get_flatlist(struct node *root)
{
	struct node *orig=root,
							*next=NULL,
							*temp=NULL,
							*first=NULL;
	while(orig!=NULL)
	{
		if(orig->directory)
		{
			temp = get_flatlist(orig->subdir);
		} else {
			temp = new struct node;
			if (temp == NULL)
				error("Can't get enough memory, what is going on???! (C)");
			temp->next = NULL;
			strcpy(temp->name,orig->name);
			temp->directory = FALSE;
			temp->subdir = NULL;				
			temp->numfiles = orig->numfiles;
			temp->numdirs = orig->numdirs;
			temp->is_cdda = orig->is_cdda;
			temp->is_str = orig->is_str;
			temp->last_write = orig->last_write;
		}
		if(temp!=NULL) {
			if(first==NULL)
				first = temp;
			if(next==NULL)
				next = temp;
			else
				next->next = temp;
			/* next can not be NULL by this point */
			while(next->next!=NULL)
			  next = next->next;
		}
		orig = orig->next;
	}
  return first;
}

/*
 *	Free all the memory associated with a tree
 *
 */

void free_tree(struct dir_tree *tree)
{
  free_node(tree->first);
	delete tree;
}

/*
 *	Free a node and all of it's following friends and children
 *
 */

void free_node(struct node *root)
{
	struct node *cur=root;
	struct node *temp;
	while(cur!=NULL)
	{
		if (cur->directory)
			free_node(cur->subdir);
		temp = cur->next;
		delete cur;
		cur = temp;
	}
}
