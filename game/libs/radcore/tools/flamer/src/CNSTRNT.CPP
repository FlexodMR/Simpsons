//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




/*
 *	CNSTRNT.CPP
 *
 *	Routines related to determining if a particular directory structure
 *	violates restrictions specific to various game systems.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "global.h"
#include "dir.h"
#include "cnstrnt.h"
#include "util.h"

#define	MAX_FILES	 1000			// Limit for PSX and Saturn
#define LONGEST_NAME 60				// Longest filename PSX and Saturn

/* The following structure is used to build up an array of hash values for
** each file found in the directory tree.
*/

struct hash_entry
{
	unsigned long value;			// Contains hash value
	struct node* root; 				// Points to base node of filename
};

struct hash_entry*  hash_table;		// Pointer to hash table
int					hash_index;		// Current index into table.
char hash_filename[ _MAX_PATH ];	// Needed for temp filename storage		

int psx_constraints(struct dir_tree *);
int saturn_constraints(struct dir_tree *);
int windows_constraints(struct dir_tree *);

int global_constraints(struct dir_tree *);
int valid_filenames(struct node *);
int iso9660name(char *);
int psx_fad(struct node *);
int filename_collisions( struct dir_tree *);
int count_files( struct node* );
void hash_tree( struct node* );
char* build_filespec( struct node* );
unsigned long rmStringHash(const char *);
int hash_compare( const void *arg1, const void *arg2 );

/*
 *	After you have built a diretory structure, this routine will
 *	traverse through it looking for problems.
 *
 */

void constraints(struct dir_tree *tree)
{
	int fatal=FALSE;
	switch(target_system)
		{
		case PSX : fatal = psx_constraints(tree); break;
		case SATURN : fatal = saturn_constraints(tree); break;
		case WINDOWS : fatal = windows_constraints(tree); break;
		}
	fatal = global_constraints(tree) || fatal;
	if(flat_files)
	{
		/* No duplicate filenames... */
		fatal = duplicates(tree) || fatal;
	}
	if(fatal)
		exit(1);
}

/*
 *	Checks for constraints common to all platforms.
 *
 */

int global_constraints(struct dir_tree *tree)
{
	int fatal = FALSE;
	fatal = valid_filenames(tree->first);
	return fatal;
}

/*
 *	Checks to see if all of the filenames from the current node on
 *	including files in subdiretories, conform to our strict
 *	interpreteation of valid names.
 *
 */

int valid_filenames(struct node *root)
{
	int fatal = FALSE;
	struct node *cur=root;
	while(cur!=NULL)
	{
		fatal = iso9660name(cur->name) || fatal;
		if(cur->directory)
			fatal = valid_filenames(cur->subdir) || fatal;
		cur=cur->next;
	}
	return fatal;
}

/*
 *	Check if a given name is a "valid" name
 *
 */

int iso9660name(char *name)
{
	int fatal=FALSE;
	int index;
	int extension = FALSE;
	int valid_chars;
	int baselen,extlen;
	char base[_MAX_PATH],ext[_MAX_PATH],buf[_MAX_PATH];

	if( strlen( name ) > 255 )
	{
		printf(	"ERROR: File path '%s' is longer than 255 characters in length.\n" );
		return TRUE;
	}

	strcpy(buf,name);
	for(index=strlen(buf)-1;index>=0;index--)
	{
		if (buf[index]=='.')
		{
			extension = TRUE;
			buf[index] = 0;
			break;
		}
	}
	strcpy(base,buf);
	if(extension)
		strcpy(ext,&(buf[index+1]));
	else
		strcpy(ext,"");
	baselen = strlen(base);
	extlen = strlen(ext);
	valid_chars=TRUE;
	for(index=0;index<baselen;index++)
		if( (!isalnum(base[index])) && (base[index]!='_') ) {
			valid_chars = FALSE;
			break;
		}
	for(index=0;index<extlen;index++)
		if( (!isalnum(ext[index])) && (ext[index]!='_') ) {
			valid_chars = FALSE;
			break;
		}

#if ENFORCE_INTERCHANGE==1
	if ( strlen(base)>8 || strlen(base)<1 )
	{
		printf("ERROR: The base part of the file or directory '%s'\n"
					 "is either too short or too long.  It must be\n"
					 "from 1 to 8 characters in length\n",
					 name);
		fatal = TRUE;
	}
	if ( strlen(ext)>3 )
	{
		printf( "ERROR: The extension part of the file or\n"
						"directory '%s' is too long.  It must be\n"
						"no more than 3 characters in length\n",
						name);
		fatal = TRUE;
	}
#endif

	if ( !valid_chars )
	{
		printf(	"WARNING: file or directory name '%s' may contain\n"
						"invalid characters!!  Please be careful.\n",
						name);
	}
	return fatal;
}

/*
 *	Check constraints specific to the PSX
 *
 */

int psx_constraints(struct dir_tree *tree)
{
	int fatal=FALSE;
	if(psxlimits)
	{
		if(tree->numfiles>30) {
			printf("ERROR: Too many files in root directory\n"
							"(There were %d files, 30 is the maximum)\n",
							tree->numfiles);
			fatal = TRUE;
			}
		if(tree->numdirs>15) {
			printf("ERROR: Too many directories in root directory\n"
							"(There were %d dirs, 15 is the maximum)\n",
							tree->numdirs);
			fatal = TRUE;
		}
	}
	if(!in_root(tree,"PSX.EXE") && !in_root(tree,"SYSTEM.CNF")) {
		printf(	"ERROR: There must be either a PSX.EXE file or a SYSTEM.CNF file\n"
			"       in the root directory!\n");
		fatal = TRUE;
	}
	fatal = psx_fad(tree->first) || fatal;

	//
	// Check for filename collisions and limits
	//
	fatal = filename_collisions( tree ) || fatal;

	return fatal;
}

/*
 *	For each directory and subdirectory, check constraints
 *	specific to PSX
 *
 */

int psx_fad(struct node *root)
{
	int fatal=FALSE;
	struct node *cur=root;
	if (!psxlimits) return FALSE;
	while(cur!=NULL)
	{
		if(cur->directory) {
			if(cur->numfiles>30) {
				printf("ERROR: Too many files in directory '%s\\%s'\n"
								"(There were %d files, 30 is the maximum)\n",
								cur->path,
								cur->name,
								cur->numfiles);
				fatal = TRUE;
				}
			if(cur->numdirs>15) {
				printf("ERROR: Too many directories in directory '%s\\%s'\n"
								"(There were %d dirs, 15 is the maximum)\n",
								cur->path,
								cur->name,
								cur->numdirs);
				fatal = TRUE;
			}
			fatal = psx_fad(cur->subdir) || fatal;
		}	
		cur=cur->next;
	}
	return fatal;
}

/*
 *	Check constraints specific to SEGA Saturn
 *
 */

int saturn_constraints(struct dir_tree *tree)
{
	int fatal = FALSE;
	if(!in_root(tree,"0.BIN")) {
		printf("ERROR: There must be a 0.BIN file in the root directory!\n");
		fatal = TRUE;
	}
	if(!in_root(tree,"SYSAREA.BIN")) {
		printf("ERROR: There must be a SYSAREA.BIN file in the root directory!\n");
		fatal = TRUE;
	}

	//
	// Check for filename collisions and limits
	//
	fatal = filename_collisions( tree ) || fatal;

	return fatal;
}

/*
 *	Check constraints specific to Windows
 *
 */

int windows_constraints(struct dir_tree *tree)
{
	int fatal = FALSE;
	return fatal;
}

//
//===================================================================================
// Routine: filename_collisions
//===================================================================================
// Description: This routine checks for hash collisions on all file names in the
//				directory tree. It does so by building up a table of hash values
//				and performing a quick sort to determine if any value are identical. 
//				It also ensures that the maximum number of files is not exceeded
//		        ( 1000 ) and that filename lengths are less than 60 characters.
//
// Parameters	tree - input - pointer to the tree structure
//
// Returns:		TRUE if fatal name collision detected, file limit exceeded, or
//				filename length limit detected.
//				FALSE otherwise
//
// Note:		A name collision or max file is not considered fatal if the user has overridden
//				name collision detection or max file
//===================================================================================
//

int filename_collisions( struct dir_tree *tree )
{
	int	collision;
	int	filecount;
	int	maxlengthdetected;

	int	fatal = FALSE;

	//
	// First count the total number of files. We need this value to allocate
	// our array of hash values. We also check if the number exceeds our limit.
	//

	filecount = tree->numfiles + count_files( tree->first );

	if( filecount <= 1 )
	{
		return( FALSE );
	}

	if( filecount > MAX_FILES )
	{
		//
		// Display message and determine if this error is fatal.
		//
		printf( "Limit of %d files has been exceeded by %d files\n", MAX_FILES, filecount - MAX_FILES );

		if( !override_maxfiles )
		{
			fatal = TRUE;
		}
	}

	hash_table = (struct hash_entry*) malloc( sizeof( hash_entry ) * filecount );	
	
	if( hash_table == NULL )
	{
		error("Failed to allocate memory for hash table");
	}	
	
	//
	// Traverse the tree once again, building up hash values for
	// each file name.
	//
	hash_index = 0;

	hash_tree( tree->first );

	//
	// Now we sort the hash table based on the hash value.
	//
	qsort( hash_table, filecount, sizeof( hash_entry ), hash_compare ); 

	//
	// Check for any two values in the table which have the same value.
	//

	collision = FALSE;
	
	for( int i = 1 ; i < filecount ; i++ )
	{
		if( hash_table[ i - 1 ].value == hash_table[ i ].value )
		{
			printf( "Hash collision: %s  ", build_filespec( hash_table[ i - 1 ].root ) );
			printf( "%s\n", build_filespec( hash_table[ i ].root ) );
			collision = TRUE;
		}
	}

	//
	// If a collision occured and it was not overriden, indicate a fatal error.
	//
	if( collision && !override_collisions )
	{
		fatal = TRUE;
	}

	//
	// Check to insure filename length limit not exceeded and display files if
	// so.
	//

	maxlengthdetected = FALSE;

	for( int j = 0 ; j < filecount ; j++ )
	{	
		char* pstr;
		pstr = build_filespec( hash_table[ j ].root );
		if( strlen( pstr ) >= LONGEST_NAME )
		{
			printf("Filename length exceeded: %s\n", pstr );
			maxlengthdetected = TRUE;
		} 
	}

	//
	// Check override flag for max length 
	//
	if( maxlengthdetected && !override_namelen )
	{
		fatal = TRUE;
	}

	//
	// Free memory allocate for the hask table.
	//
	free( hash_table );

	return( fatal );
}

//
//===================================================================================
// Routine:		hash_tree
//===================================================================================
// Description: Recursive routine hash each file in the tree
//
// Parameters	root - input - pointer to the node structure
//
// Returns:		n/a
//
// Note:		
//===================================================================================
//

void hash_tree( struct node* root )
{
	struct node *cur=root;
	char*	filename;

	while(cur!=NULL)
	{
		if( cur->directory )
		{
			hash_tree( cur->subdir );
		}
		else
		{
			//
			// Here we have a filename. Must build up the entire
			// file spec including the directory before
			// applying the hash function. Note that we are using static
			// data to hold the filename to prevent rampid growth of the stack.
			//
			filename = build_filespec( cur );
			
			//
			// Store the hash value and the root of the base filename
			// in the table.
			//
			hash_table[ hash_index ].value = rmStringHash( filename );
			hash_table[ hash_index ].root = cur;
			hash_index++;
		}
		cur = cur->next;
	}	
}

//
//===================================================================================
// Routine:		build_filespec
//===================================================================================
// Description: Build up the complete filespec for a file. The filespec is a 
//				null terminated, has no leading '\' and is all uppercase.
//				ie ( "TEST\PSX.EXE" )
//
// Parameters	root - input - pointer root of the filename.
//
// Returns:		pointer to start of filespec.
//
// Note:		This routine uses static memory so care must be taken.
//===================================================================================
//

char* build_filespec( struct node* root)
{
	char*	filespec;
	int		length;
	struct node *cur=root;

	//
	// We work backwards following the parent chain of subdirectories. 
	//

	filespec = &hash_filename[ _MAX_PATH - 1 ];
	*filespec = '\0';

	length = strlen( cur->name );
	filespec = filespec - length;
	strncpy( filespec, cur->name, length );

	while( cur->parent != NULL )
	{
		cur = cur->parent;
		filespec--;

		*filespec = '\\';

		length = strlen( cur->name );
		filespec = filespec - length;
		strncpy( filespec, cur->name, length );
	}
	
	//
	// Finally insure the string is in all upper case.
	//

	_strupr( filespec );  

	return( filespec );

}

//
//===================================================================================
// Routine:		count_files
//===================================================================================
// Description: Recursive routine to count actual files.
//
// Parameters	root - input - pointer to the node structure
//
// Returns:		number of in subdirectories.
//
// Note:		
//===================================================================================
//

int count_files( struct node* root )
{
	int	filecount = 0;
	struct node *cur=root;

	while(cur!=NULL)
	{
		if( cur->directory )
		{
			filecount += cur->numfiles;
			filecount += count_files( cur->subdir );
		}

		cur = cur->next;
	}	
	return( filecount );	
}

//
//===================================================================================
// Routine:		hash_compare
//===================================================================================
// Description: Compare two hash values for the qsort algoritm and return
//				appropiate value.
//
// Parameters	arg1 - input - pointer to hash entry
//				arg2 - input - pointer to hash entry
//
// Returns:		0 if hash values the same
//				-1 if hashvalue1 < hashvalue2
//				1 if hashvalue1 > hashvalue2
//
// Note:		
//===================================================================================
//

int hash_compare( const void *arg1, const void *arg2 )
{
	hash_entry*	h1 = (hash_entry*) arg1;
	hash_entry*	h2 = (hash_entry*) arg2;

	if( h1->value < h2->value )
	{
		return( -1 );
	}
	else if( h1->value > h2->value )
	{
		return( 1 );
	}
	else
	{
		return( 0 );
	}
}

//
//===================================================================================
// Routine:		rmStringHash
//===================================================================================
// Description: Hash string to a 32 bit CRC
//
// Parameters	x - input - pointer to null ternmiated string
//
// Returns:		32-bit CRC
//
// Note:		This routine was borrowed from RADLIB. It should be updated
//				if the RADLIB implementation is altered.	
//===================================================================================
//

unsigned long rmStringHash(const char *x)
{
    unsigned int hashValue = 0;
    
    while( *x )
    {
        //
        // Apply hashing algorithm
        //
        
        // X31 Alogrithm
        hashValue = ( hashValue << 5 ) - hashValue + (unsigned int) *x;
        
        // Old radcore algorithm
        //hashValue = hashValue + (hashValue >> 24);
        //hashValue = (hashValue << 7) + (unsigned int) *x;
        
        //
        // Update the String position
        //
        x++;
    }
    
    return( hashValue );
}

