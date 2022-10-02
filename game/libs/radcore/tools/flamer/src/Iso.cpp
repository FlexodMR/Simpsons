
//
// This file is responsible for producing the image and table of contents to be burned.
// It is a little contorted in that it produces two different formats based on whether
// or not we are using the SEGACDW or DAO burn software. DAO is the new software which
// supports a wide range of burners however it does not work well with the Yamaha 100.
// Hence the need to still support the SEGACDW.
//


#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <io.h>
#include <assert.h>
#include <time.h>

#include "global.h"
#include "dir.h"
#include "util.h"
#include "fileio.h"
#include "win.h"
#include "progress.h"
#include "windows.h"

#include "iso.h"

#define PRIMARY_VOLUME 1
#define VOLUME_TERMINATOR 255

#define POSTGAP_SIZE 150

#define TOC_DATA	0x41
#define TOC_AUDIO	0x01

#define TOC_MODE1	0x02
#define TOC_MODE2	0x04
#define TOC_CDDA	0x00

typedef unsigned char uchar;

struct TOC
{
	uchar type;
	uchar track;
	uchar index;
	uchar mode;
	uchar unknown;
	uchar minutes;
	uchar seconds;
	uchar frames;
};

struct TOC toc[255];
int toc_entries=0;

struct LM32Int
{
	long little;
	long big;
};

struct LM16Int
{
	short little;
	short big;
};

struct Recording_Date_and_Time
{
	unsigned char year;
	unsigned char month;
	unsigned char day;
	unsigned char hour;
	unsigned char minute;
	unsigned char second;
	signed char offset;
};

struct Date_and_Time_Format
{
	char year[4];
	char month[2];
	char day[2];
	char hour[2];
	char minute[2];
	char second[2];
	char hundredths[2];
	signed char offset;
};

#define FF_EXISTENCE	0x01
#define FF_DIRECTORY	0x02
#define FF_ASSOCIATED	0x04
#define FF_RECORD		0x08
#define FF_PROTECTION	0x10
#define FF_RESERVED		0x60
#define FF_MULTIEXTENT	0x80

struct Directory_Record
{
	unsigned char length;
	unsigned char extended_length;
	long l_extent_location,
		 m_extent_location;
	long l_data_length,
		 m_data_length;
	Recording_Date_and_Time recording_date_and_time;
	/*File_Flags flags;*/
	char flags;
	unsigned char unit_size;
	unsigned char gap_size;
	LM16Int volume_sequence_number;
	unsigned char length_of_identifier;
	char identifier_etal[1];
};

struct Volume_Descriptor
{
	unsigned char type;
	char identifier[5];
	unsigned char version;
			unsigned char unused1;	/* 8 */
			char system_identifier[32]; /*  9 to 40 */
			char volume_identifier[32]; /* 41 to 72 */
			unsigned char unused2[8];	/* 73 to 80 */
			LM32Int volume_space_size;	/* 81 to 88 */
			unsigned char unused3[32];	/* 89 to 120 */
			LM16Int volume_set_size;	/* 121 to 124 */
			LM16Int volume_sequence_num;/* 125 to 128 */
			LM16Int logical_block_size; /* 129 to 132 */
			LM32Int path_table_size;	/* 133 to 140 */
			long l_L_path_table;		/* 141 to 144 */
			long l_optional_L;			/* 145 to 148 */
			long b_M_path_table;		/* 149 to 152 */
			long b_optional_B;			/* 153 to 156 */
			Directory_Record root;
			char volume_set_id[128];
			char publisher_id[128];
			char data_preparer_id[128];
			char application_id[128];
			char copyright_file_id[37];
			char abstract_file_id[37];
			char biblio_file_id[37];
			Date_and_Time_Format creation,
								 modification,
								 expiration,
								 effective;
			unsigned char file_structure_version;
			unsigned char reserved1;
			unsigned char application_use[512];
			unsigned char reserved2[653];
};

struct Path_Table_Record
{
	unsigned char length;
	unsigned char extended_length;
	long extent_location;
	short parent_number;
	char identifier[256];
};

void generate_iso(struct dir_tree *);
long lswap(long);
short sswap(short);
LM32Int int32(long);
LM16Int int16(short);
void write_directory(FIOP,struct tnode *);
void write_directory_files(FIOP,struct tnode *);
void write_str_files(FIOP,struct tnode *);
void write_cdda_files(FIOP,struct tnode *);
short get_table_number(struct node *);
void pause(FIOP);
void pre_gap(FIOP);
void post_gap(FIOP);
void lead_in(FIOP);
void lead_out(FIOP fh);
void add_toc_entry(uchar type, uchar track, uchar index, uchar mode, long block);
void add_leadout_entry(uchar mode,long block);
void make_toc(void);

void open_toc(void);
void close_toc( void );
void addline_toc( char* );

// The following table is used to hold strings we add to the CUE file.
// This isn't really needed but would require major restructure

#define  MAX_TOCSIZE	2000
char tocbuffer[ MAX_TOCSIZE ];

void null_pad(FIOP,long);
size_t file_size(char *fn);

Volume_Descriptor pv,vt;
struct tnode **pathtable=NULL;
long next_block = 18;
int pathtablesize=0;

long total_image_size = 0;

#define BUFSIZE 2048*16	/* must be at least 2048*16 */

char buf[BUFSIZE];

void make_iso(struct dir_tree *tree)
{
	extern int sort_files;

	if( sort_files ) sort(tree);
	generate_iso(tree);
}

struct dnode
{
	struct dnode *next;
	struct node *n;
	struct Directory_Record *dirent;
};

struct tnode 
{
	struct tnode *next;
	struct node *n;
	struct Path_Table_Record *path;
	struct dnode *d;
};

struct tnode *get_dir_list(struct node *root)
{
	struct tnode *first=NULL;
	struct tnode *next=NULL;
	struct node *cur=root;
	while(cur!=NULL) {
		if(cur->directory) {
			if(first==NULL) {
				first = new tnode;
				assert(first!=NULL);
				first->n = cur;
				first->d = NULL;
				first->next = get_dir_list(cur->subdir);
				next = first;
			} else {
				struct tnode *temp = new tnode;
				assert(temp!=NULL);
				temp->n = cur;
				temp->d = NULL;
				temp->next = get_dir_list(cur->subdir);
				temp->path = NULL;
				next->next = temp;
			}
			if(next) 
				while(next->next!=NULL)
					next = next->next;
		}
		cur=cur->next;
	}
	return first;
}

long next_cdda_block = 0;
long next_str_block = 0;

long first_cdda_block=0;
long first_str_block=0;

long leadout_block = 0;

uchar cdda_index=2;

void update_str_offsets(struct node *root,long ptn)
{
	struct node *cur=root;
	while(cur!=NULL) {
		if(cur->directory && (cur->subdir!=NULL)) {
			update_str_offsets(cur->subdir,get_table_number(cur)-1);
		} else if(cur->is_str) {
			struct dnode *dn = pathtable[ptn]->d;
			while(dn!=NULL && dn->n!=cur)
				dn = dn->next;
			assert(dn!=NULL);
			dn->dirent->l_extent_location += first_str_block;
			dn->dirent->m_extent_location = lswap(dn->dirent->l_extent_location);
		}
		cur = cur->next;
	}
}

void update_cdda_offsets(struct node *root,long ptn)
{
	struct node *cur=root;
	while(cur!=NULL) {
		if(cur->directory && (cur->subdir!=NULL)) {
			update_cdda_offsets(cur->subdir,get_table_number(cur)-1);
		} else if(cur->is_cdda) {
			struct dnode *dn = pathtable[ptn]->d;
			while(dn!=NULL && dn->n!=cur)
				dn = dn->next;
			assert(dn!=NULL);
			dn->dirent->l_extent_location += first_cdda_block;
			dn->dirent->m_extent_location = lswap(dn->dirent->l_extent_location);
			if( !use_dao )
			{
				/* pregap is at -150, and since leadin is 150, net add is zero */
				add_toc_entry(TOC_AUDIO,cdda_index,0,TOC_CDDA,dn->dirent->l_extent_location);
				/* add 150 to data track offset to take into account leadin area */
				add_toc_entry(TOC_AUDIO,cdda_index,1,TOC_CDDA,dn->dirent->l_extent_location+150);
			}
			else
			{
				char TempBuf[ 100 ];

				/* pregap is at -150, and since leadin is 150, net add is zero */
				// subtract 150 because DAO does the leadin and uses realtime

				sprintf(TempBuf,"  TRACK %02d AUDIO\n", cdda_index );
				addline_toc( TempBuf );

				sprintf( TempBuf,"    INDEX 00 %02d:%02d:%02d\n", 
					 (dn->dirent->l_extent_location - 150) / (75*60),
					 ((dn->dirent->l_extent_location - 150 ) / 75) % 60,
					 (dn->dirent->l_extent_location - 150 ) % 75 );
				addline_toc( TempBuf );

				/* add 150 to data track offset to take into account leadin area */

				sprintf( TempBuf,"    INDEX 01 %02d:%02d:%02d\n", 
					 (dn->dirent->l_extent_location ) / (75*60),
					((dn->dirent->l_extent_location ) / 75) % 60,
					(dn->dirent->l_extent_location ) % 75 );
				addline_toc( TempBuf );
			}
			long blocks = (cur->filesize+2351)/2352;
			if(blocks<300)	/*  We want at least 4 seconds per audio track */
				blocks = 300;
			printf(	"Track %2d  (CDDA) : Digital Audio      Start: %-6d  End: %d\n",
					cdda_index,
					dn->dirent->l_extent_location+150,
					dn->dirent->l_extent_location+150+blocks);
			cdda_index++;
		}
		cur = cur->next;
	}
}

static struct tm tm_buf = { 0, 0, 0, 1, 0, 74, 0, 0, 0 };
struct tm *sturdy_localtime(const time_t *tt)
{
	struct tm *t = localtime(tt);
	if(t==NULL)
		return &tm_buf;
	else
		return t;
}

int cdda_tracker=1000;

struct dnode *makedirents(struct tnode *t)
{
	struct node *cur;
	struct dnode *first=NULL;
	struct dnode *next=NULL;
	assert(t);
	cur = t->n->subdir;
	first = new struct dnode;
	assert(first!=NULL);

	first->next = new struct dnode;
	assert(first->next!=NULL);
	first->dirent = (struct Directory_Record *)new char[34];
	assert(first->dirent!=NULL);
	first->next->dirent = (struct Directory_Record *)new char[34];
	assert(first->next->dirent!=NULL);

	memset(first->dirent,0,34);
	memset(first->next->dirent,0,34);

	first->dirent->length = first->next->dirent->length = 34;

	first->dirent->l_extent_location = t->path->extent_location;
	first->next->dirent->l_extent_location = 
		pathtable[t->path->parent_number]->path->extent_location;
	first->dirent->m_extent_location = lswap(t->path->extent_location);
	first->next->dirent->m_extent_location = 
		lswap(pathtable[t->path->parent_number]->path->extent_location);
	first->dirent->l_data_length = t->n->blocks*2048;
	first->next->dirent->l_data_length = 
		pathtable[t->path->parent_number]->n->blocks*2048;
	first->dirent->m_data_length = lswap(t->n->blocks*2048);
	first->next->dirent->m_data_length = 
		lswap(pathtable[t->path->parent_number]->n->blocks*2048);

	struct tm *dt;
	dt = sturdy_localtime(&(t->n->last_write));
	first->dirent->recording_date_and_time.year = dt->tm_year;
	first->dirent->recording_date_and_time.month = dt->tm_mon;
	first->dirent->recording_date_and_time.day = dt->tm_mday;
	first->dirent->recording_date_and_time.hour = dt->tm_hour;
	first->dirent->recording_date_and_time.minute = dt->tm_min;
	first->dirent->recording_date_and_time.second = dt->tm_sec;
	first->dirent->recording_date_and_time.offset = (_timezone/60/15);

	dt = sturdy_localtime(&(pathtable[t->path->parent_number]->n->last_write));
	first->next->dirent->recording_date_and_time.year = dt->tm_year;
	first->next->dirent->recording_date_and_time.month = dt->tm_mon;
	first->next->dirent->recording_date_and_time.day = dt->tm_mday;
	first->next->dirent->recording_date_and_time.hour = dt->tm_hour;
	first->next->dirent->recording_date_and_time.minute = dt->tm_min;
	first->next->dirent->recording_date_and_time.second = dt->tm_sec;
	first->next->dirent->recording_date_and_time.offset = (_timezone/60/15);

	first->dirent->flags = first->next->dirent->flags = FF_DIRECTORY;
	first->dirent->volume_sequence_number =
		first->next->dirent->volume_sequence_number = int16(1);
	first->dirent->length_of_identifier =
		first->next->dirent->length_of_identifier = 1;
	first->next->dirent->identifier_etal[0] = 1;
	first->n = t->n;
	first->next->n = pathtable[t->path->parent_number]->n;
	first->next->next = NULL;
	next = first->next;

	while (cur!=NULL) {
		struct dnode *temp;
		int templen;
		if((target_system==SATURN) && (_stricmp(cur->name,"sysarea.bin")==0))
		{
			cur = cur->next;
			continue;		/* if saturn then don't include sysarea.bin */
		}
		strcpy(buf,cur->name);
		if(!cur->directory)
			strcat(buf,";1");
		templen = strlen(buf) + 33;
		templen += (templen % 2);
		temp = new struct dnode;
		assert(temp!=NULL);
		temp->dirent = (struct Directory_Record *)new char[templen];
		assert(temp->dirent!=NULL);
		temp->next = NULL;
		temp->n = cur;
		memset(temp->dirent,0,templen);
		temp->dirent->length = templen;
		if(cur->directory) {
			int table_num = get_table_number(cur);
			assert(table_num>0);
			long extent_loc = pathtable[table_num-1]->path->extent_location;
			temp->dirent->l_extent_location = extent_loc;
			temp->dirent->m_extent_location = lswap(extent_loc);
			temp->dirent->l_data_length = cur->blocks*2048;
			temp->dirent->m_data_length = lswap(cur->blocks*2048);
		} else {
			temp->dirent->l_data_length = cur->filesize;
			temp->dirent->m_data_length = lswap(cur->filesize);
			if((target_system!=PSX) && cur->is_str) {
				printf("Found: '%s' treated as an STR movie with audio.\n",cur->name);
				printf("       Putting it on track 2\n");
				temp->dirent->l_extent_location = next_str_block;
				temp->dirent->m_extent_location = -1;	/* value updated later anyway */
				next_str_block += cur->blocks;
			} else if(cur->is_cdda) {
				printf("Found: '%s' treated as a CD Digital Audio file.\n",cur->name);
				printf("       Putting it on track %d\n",cdda_tracker++);
				long blocks = (cur->filesize+2351)/2352;
				//long newsize = blocks*2352;
				//long newblocks = (newsize+2351)/2352;
				temp->dirent->l_extent_location = next_cdda_block + 150; /* for pregap */
				temp->dirent->m_extent_location = -1;	/* value updated later anyway */
				if(blocks>=300)	/*  We want at least 4 seconds per audio track */
					next_cdda_block += blocks;
				else
					next_cdda_block += 300;
				next_cdda_block += 150;	/* for pregap */
				temp->dirent->l_data_length = blocks*2048;
				temp->dirent->m_data_length = lswap(temp->dirent->l_data_length);
			} else {
				if(cur->is_str)
				{
					printf("Found: '%s' treated as an STR movie with audio.\n",cur->name);
					printf("       Putting it on track 1\n");
				} else if(special && last_letters(buf,STR_EXT))
				{
					printf("Found: '%s' treated as an STR movie with no audio.\n",cur->name);
					printf("       Putting it on track 1\n");
				}
				temp->dirent->l_extent_location = next_block;
				temp->dirent->m_extent_location = lswap(next_block);
				next_block += cur->blocks;
			}
		}
		dt = sturdy_localtime(&(cur->last_write));
		temp->dirent->recording_date_and_time.year = dt->tm_year;
		temp->dirent->recording_date_and_time.month = dt->tm_mon;
		temp->dirent->recording_date_and_time.day = dt->tm_mday;
		temp->dirent->recording_date_and_time.hour = dt->tm_hour;
		temp->dirent->recording_date_and_time.minute = dt->tm_min;
		temp->dirent->recording_date_and_time.second = dt->tm_sec;
		temp->dirent->recording_date_and_time.offset = (_timezone/60/15);
		if(cur->directory)
			temp->dirent->flags = FF_DIRECTORY;
		temp->dirent->volume_sequence_number = int16(1);
		temp->dirent->length_of_identifier = strlen(buf);
		size_t i;
		for(i=0;i<strlen(buf);i++)
			temp->dirent->identifier_etal[i] =  toupper(buf[i]);
		next->next = temp;
		next = temp;
		cur = cur->next;
	}
	return first;
}

/*
 * Given the address of a node pointer that is a directory
 * return the offset into the pathtable for that
 * directory entry
 */

short get_table_number(struct node *n)
{
	int i;
	if(!pathtable)
		error("pathtable empty.");

	if(n==NULL)
		return 1;

	for(i=0;i<pathtablesize;i++)
	{
		if( pathtable[i] && pathtable[i]->n == n )
			return i+1;
	}
	return -1;
}

long lswap(long l)
{
	return (( l & 0xFF000000 ) >> 24) |
		   (( l & 0x00FF0000 ) >> 8) |
		   (( l & 0x0000FF00 ) << 8) |
		   (( l & 0x000000FF ) << 24);
}

short sswap(short s)
{
	return (( s & 0xFF00 ) >> 8) |
		   (( s & 0x00FF ) << 8);
}

LM32Int int32(long l)
{
	LM32Int temp = {l, lswap(l) };
	return temp;
}

LM16Int int16(short s)
{
	LM16Int temp = {s, sswap(s)};
	return temp;
}

int isomode = -1;

void generate_iso(struct dir_tree *tree)
{
	unsigned u;
	int i,level;
	int pathtablebytes=0;
	struct tnode *dirs=NULL,*temp;
	_fsize_t rootsize = getdirentsize(tree->first);
	long rootblocks = (rootsize + 2047) / 2048;
	time_t roottime;
	uchar toc_mode;
	Path_Table_Record *path;

	printf("Building CD-ROM image file.\n");
	
	isomode = (target_system==PSX) ? MODE2FORM1 : MODE1;
	toc_mode = (target_system==PSX) ? TOC_MODE2 : TOC_MODE1;

	pathtablesize = tree->totaldirs+1;
	pathtable = (struct tnode **)calloc(pathtablesize,sizeof(struct tnode*));
	if(pathtable==NULL)
		error("Can't allocate memory, this is very bad.");
	dirs = get_dir_list(tree->first);
		/* one extra for root directory */
	if(tree->first) {
		struct tnode *temp = new tnode;
		temp->next = dirs;
		temp->n = new struct node;
		temp->n->next = NULL;
		strcpy(temp->n->path,"");
		strcpy(temp->n->name,"");
		temp->n->parent = NULL;		/* root is parent */
		temp->n->level = 0;
		temp->n->directory = TRUE;
		temp->n->subdir = tree->first;
		temp->n->numfiles = 0;
		temp->n->numdirs = 0;
		temp->n->filesize = rootsize;
		temp->n->blocks = rootblocks;
		temp->n->is_cdda = FALSE;
		temp->n->is_str = FALSE;
		time(&roottime);
		temp->n->last_write = roottime;
		temp->path = NULL;
		dirs = temp;
	}

	long tempblock=0;
	temp = dirs;
	i=0;
	while(temp!=NULL) {
		int bytes;
		path = new Path_Table_Record;
		memset(path,0,sizeof(Path_Table_Record));
		temp->path = path;
		if(temp->n->name[0]!=0) {
			strcpy(path->identifier,temp->n->name);
			_strupr(path->identifier);
			path->length = strlen(path->identifier);
		} else
			path->length = 1;
		bytes = path->length + 8;
		bytes += (bytes%2);
		pathtablebytes += bytes;
		temp = temp->next;
		i++;
	}

	long pathtableblocks = (pathtablebytes + 2047) / 2048;
	long lpathloc = next_block;
	long mpathloc = next_block + pathtableblocks;
	next_block += (pathtableblocks*2);
	long root_dir_block = next_block;


	i=0;
	// FIXME:	Q. Bradley *hard-coded* the number of levels a CD can hold to 9.
	//			This might have been fine for PSX, etc. but for Win 95 this is
	//			a *BUG*!!!!  It can and *does* go to level 9 and above.
	for(level=0;level<12;level++) {
		temp = dirs;
		while(temp!=NULL)
		{
			if(temp->n->level==level) {
				pathtable[i] = temp;
				pathtable[i]->path->extent_location = next_block;
				next_block += pathtable[i]->n->blocks;
				i++;
			}
			temp = temp->next;
		}
	}

	cdda_tracker = 2;
	if((target_system!=PSX) && has_str_files) {
		cdda_tracker = 3;
	}

	for(i=0;i<pathtablesize;i++)
		pathtable[i]->d = makedirents(pathtable[i]);

	if(end_pad)
	{
		next_block += 3*60*75;	/* 3 minutes */
	}

	i=0;
	temp = dirs;
	while(temp!=NULL) {
		temp->path->parent_number = get_table_number(temp->n->parent);
		assert(temp->path->parent_number!=-1);
		temp = temp->next;
	}

	if(isomode==MODE1)
		printf("Track  1 (MODE1) : Data and programs  Start: 150     End: %d\n",next_block+150);
	else
		printf("Track  1 (MODE2) : Data and programs  Start: 150     End: %d\n",next_block+150);

	if( !use_dao )
	{
		add_toc_entry(TOC_DATA,0,0,TOC_MODE1,0);	/* leadin */
		add_toc_entry(TOC_DATA,1,0,toc_mode,0);	/* pregap */
		add_toc_entry(TOC_DATA,1,1,toc_mode,150);	/* data track */
		if((target_system!=PSX) && has_str_files) {
			add_toc_entry(TOC_DATA,2,0,toc_mode,next_block + 150); /* postgap */
			add_toc_entry(TOC_DATA,2,0,TOC_MODE2,next_block + 300); /* pregap */
			add_toc_entry(TOC_DATA,2,1,TOC_MODE2,next_block + 450); /* data track */
			first_str_block = next_block + 300;
			update_str_offsets(tree->first,0);
			cdda_index++;
			first_cdda_block = first_str_block + next_str_block + 150;
			printf(	"Track  2 (MODE2) : STR movies on a saturn or Windows???  Start: %d  End %d\n",
					next_block+450,next_block+450+next_str_block);
		} else
			first_cdda_block = next_block + 150;
	}
	else
	{
		//
		// Build up the TOC (cue file for DAO)
		//
		open_toc( );
		addline_toc( "FILE RADICAL.DSK BINARY\n" );
	
		//
		// DAO generates the lead in automatically. So start at real time 00:00:00
		//
		if( toc_mode == TOC_MODE1 )
		{
			addline_toc("  TRACK 01 MODE1/2352\n");
		}
		else		
		{
			addline_toc("  TRACK 01 MODE2/2352\n");
		}
		
		addline_toc("    INDEX 01 00:00:00\n");

		if((target_system!=PSX) && has_str_files)
		{
			char	TempStr[ 100 ];		

			addline_toc("  TRACK 02 MODE2/2352\n");

			sprintf( TempStr,"    INDEX 00 %02d:%02d:%02d\n", 
					 (next_block + 150) / (75*60),
					 ((next_block + 150) / 75) % 60,
					 (next_block + 150) % 75 );
			addline_toc( TempStr );

			sprintf( TempStr,"    INDEX 01 %02d:%02d:%02d\n", 
					 (next_block + 300) / (75*60),
					 ((next_block + 300) / 75) % 60,
					 (next_block + 300) % 75 );
			addline_toc( TempStr );

			first_str_block = next_block + 300;
			update_str_offsets(tree->first,0);
			cdda_index++;
			first_cdda_block = first_str_block + next_str_block + 150;
			printf(	"Track  2 (MODE2) : STR movies on a saturn or Windows???  Start: %d  End %d\n",
					next_block+450,next_block+450+next_str_block);
		} else
			first_cdda_block = next_block + 150;
	}

	if(next_block<150)
	{
		printf("ERROR: The data track needs to be at least 2 seconds long (approx. 300k)\n");
		printf("       Please add more data and rerun flamer.\n");
		exit(1);
	}
	
	update_cdda_offsets(tree->first,0);


	leadout_block = first_cdda_block + next_cdda_block; // + 150;	/* 150 for cdda guess ahead */

	char scratch[_MAX_PATH];

	/* do we really need to bother making a new image file?  Let's find out... */
	struct _finddata_t c_file;
	int toc_exists;
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.DSK");
	long hFile = _findfirst( scratch, &c_file );
	if(hFile==-1)
	{
		c_file.time_write = 0;
	}
	_findclose(hFile);
	
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.TOC");
	FILE *fh = fopen(scratch,"rb");
	toc_exists = (fh!=NULL);
	if(fh)
		fclose(fh);

	// ADD:  When adding image size checks, do it here!!!
	if( !use_dao )
	{
		total_image_size = (leadout_block+150+300)*2352 + (next_cdda_block+300)*98;
	}
	else
	{
		total_image_size = leadout_block*2352;
	}
	if( !override_limit && total_image_size > 333000 * 2352 )
	{
		printf( "*** ERROR:  Disk Image won't fit on CD-ROM ***\n" );
		exit( 1 );
	}

	if(	!toc_exists || 
		c_file.time_write < tree->newest_time ||
		c_file.size != (unsigned)total_image_size)
	{
		if(c_file.time_write)
		{
			printf("Deleting out of date disk image...\n");
			strcpy(scratch,dest_dir);
			strcat(scratch,"\\RADICAL.DSK");
			if(unlink(scratch)!=0) {
				perror("Can't delete RADICAL.DSK");
				exit(1);
			}
		}
	} else
	{
		printf("Hey!  We already have a disk image we can use!  Let's use that one\n"
			   "and save ourselves the trouble of building another!\n");
		printf("Using existing disk image...\n\n");
		return;
	}

	strcpy(scratch,dest_dir);

	char myBuffer[ _MAX_PATH ];
	char* ptr;
	
	GetFullPathName( scratch, _MAX_PATH, myBuffer, &ptr );
	strcpy( scratch, myBuffer );

	// if the prefix contains the drive letter (ie C:\)
	if ( myBuffer[1] == ':' )
	{
		scratch[3] = 0;
	}
	// else if it is a UNC name, we must follow it with a backslash
	else if ( myBuffer[0] == '\\' && myBuffer[1] == '\\')
	{
		int numSlash = 0;
		for ( int i=2; i<MAX_PATH; i++ )
		{
			if ( scratch[i] == '\\' || scratch[i] == '\0' )
			{
				if ( i != MAX_PATH )
				{
					numSlash++;
					if ( numSlash == 2 )
					{
						scratch[i] = '\\';
						scratch[i+1] = 0;
						break;
					}
				}
				else
				{
					// we do not have enough space to accomodate the entire UNC name...
					scratch[i-1] = '\\';
					scratch[i] = 0;
				}

			}
		}
	}
	check_freespace(scratch,total_image_size);

	memset(&pv,0,sizeof(pv));
	pv.type = 1;
	pv.identifier[0] = 'C';
	pv.identifier[1] = 'D';
	pv.identifier[2] = '0';
	pv.identifier[3] = '0';
	pv.identifier[4] = '1';
	pv.version = 1;
	for(i=0;i<32;i++)
		pv.system_identifier[i] = ' ';
	//strcpy(&pv.volume_identifier,"RADICALCHICKEN");
	for(i=0;i<32;i++)
			pv.volume_identifier[i] = ' ';
	if(target_system==PSX) {
		pv.system_identifier[0] = pv.volume_identifier[0] = 'P';
		pv.system_identifier[1] = pv.volume_identifier[1] = 'L';
		pv.system_identifier[2] = pv.volume_identifier[2] = 'A';
		pv.system_identifier[3] = pv.volume_identifier[3] = 'Y';
		pv.system_identifier[4] = pv.volume_identifier[4] = 'S';
		pv.system_identifier[5] = pv.volume_identifier[5] = 'T';
		pv.system_identifier[6] = pv.volume_identifier[6] = 'A';
		pv.system_identifier[7] = pv.volume_identifier[7] = 'T';
		pv.system_identifier[8] = pv.volume_identifier[8] = 'I';
		pv.system_identifier[9] = pv.volume_identifier[9] = 'O';
		pv.system_identifier[10] = pv.volume_identifier[10] = 'N';
	}
	for(u=0;u<strlen(disc_name);u++)
		pv.volume_identifier[u] = disc_name[u];
	pv.volume_space_size = int32(leadout_block-150);
	pv.volume_set_size = int16(1);
	pv.volume_sequence_num = int16(1);
	pv.logical_block_size = int16(2048);
	pv.path_table_size = int32(pathtablebytes);
	pv.l_L_path_table = lpathloc;
	pv.b_M_path_table = lswap(mpathloc);
	pv.root.length = 34;
	pv.root.l_extent_location = root_dir_block;
	pv.root.m_extent_location = lswap(root_dir_block);
	pv.root.l_data_length = pathtable[0]->n->blocks * 2048;
	pv.root.m_data_length = lswap(pathtable[0]->n->blocks * 2048);
	struct tm *dt;
	dt = sturdy_localtime(&roottime);
	pv.root.recording_date_and_time.year = dt->tm_year;
	pv.root.recording_date_and_time.month = dt->tm_mon;
	pv.root.recording_date_and_time.day = dt->tm_mday;
	pv.root.recording_date_and_time.hour = dt->tm_hour;
	pv.root.recording_date_and_time.minute = dt->tm_min;
	pv.root.recording_date_and_time.second = dt->tm_sec;
	pv.root.recording_date_and_time.offset = (_timezone/60/15);
	pv.root.flags = FF_DIRECTORY;
	pv.root.unit_size = 0;
	pv.root.gap_size = 0;
	pv.root.volume_sequence_number = int16(1);
	pv.root.length_of_identifier = 1;
	for(i=0;i<128;i++)
		pv.volume_set_id[i] = ' ';
	for(i=0;i<128;i++)
		pv.publisher_id[i] = ' ';
	for(i=0;i<128;i++)
		pv.data_preparer_id[i] = ' ';
	for(i=0;i<128;i++)
		pv.application_id[i] = ' ';
	for(i=0;i<37;i++)
		pv.copyright_file_id[i] = ' ';
	for(i=0;i<37;i++)
		pv.abstract_file_id[i] = ' ';
	for(i=0;i<37;i++)
		pv.biblio_file_id[i] = ' ';
	sprintf((char*)&pv.creation,"19%02d%02d%02d%02d%02d%02d00",
		dt->tm_year,dt->tm_mon,dt->tm_mday,dt->tm_hour,dt->tm_min,dt->tm_sec);
	pv.creation.offset = (_timezone/60/15);
	sprintf((char*)&pv.modification,"19%02d%02d%02d%02d%02d%02d00",
		dt->tm_year,dt->tm_mon,dt->tm_mday,dt->tm_hour,dt->tm_min,dt->tm_sec);
	pv.modification.offset = (_timezone/60/15);
	sprintf((char*)&pv.expiration,"0000000000000000");
	sprintf((char*)&pv.effective,"0000000000000000");
	pv.file_structure_version = 1;
	if(target_system==PSX) {
		pv.application_id[0] = 'P';
		pv.application_id[1] = 'L';
		pv.application_id[2] = 'A';
		pv.application_id[3] = 'Y';
		pv.application_id[4] = 'S';
		pv.application_id[5] = 'T';
		pv.application_id[6] = 'A';
		pv.application_id[7] = 'T';
		pv.application_id[8] = 'I';
		pv.application_id[9] = 'O';
		pv.application_id[10] = 'N';
		pv.application_use[141] = 'C';
		pv.application_use[142] = 'D';
		pv.application_use[143] = '-';
		pv.application_use[144] = 'X';
		pv.application_use[145] = 'A';
		pv.application_use[146] = '0';
		pv.application_use[147] = '0';
		pv.application_use[148] = '1';
	}

	// Config file overrides...

	for(u=0;u<strlen(SystemIdentifier);u++)
		pv.system_identifier[u] = SystemIdentifier[u];

	for(u=0;u<strlen(VolumeIdentifier);u++)
		pv.volume_identifier[u] = VolumeIdentifier[u];

	for(u=0;u<strlen(VolumeSetID);u++)
		pv.volume_set_id[u] = VolumeSetID[u];
	
	for(u=0;u<strlen(PublisherID);u++)
		pv.publisher_id[u] = PublisherID[u];
	
	for(u=0;u<strlen(DataPreparerID);u++)
		pv.data_preparer_id[u] = DataPreparerID[u];
	
	for(u=0;u<strlen(ApplicationID);u++)
		pv.application_id[u] = ApplicationID[u];
	
	for(u=0;u<strlen(CopyrightFileID);u++)
		pv.copyright_file_id[u] = CopyrightFileID[u];
	
	for(u=0;u<strlen(AbstractFileID);u++)
		pv.abstract_file_id[u] = AbstractFileID[u];
	
	for(u=0;u<strlen(BiblioFileID);u++)
		pv.biblio_file_id[u] = BiblioFileID[u];
	
	for(u=0;u<strlen(ApplicationUse);u++)
		pv.application_use[u] = ApplicationUse[u];

	memset(&vt,0,sizeof(vt));
	vt.type = 255;
	vt.identifier[0] = 'C';
	vt.identifier[1] = 'D';
	vt.identifier[2] = '0';
	vt.identifier[3] = '0';
	vt.identifier[4] = '1';
	vt.version = 1;

	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.DSK");
	FIOP isofh = fio_open(scratch,"wb");
	if(isofh==NULL)
		error("Can't create image file.");

	init_progress(total_image_size);

	if( !use_dao )
	{	
		lead_in(isofh);
	}

	progress_name("System Area");

	FIOP infh;
	if(target_system==SATURN)
	{
		size_t size = file_size("SYSAREA.BIN");
		if(size==0)
			error("SYSAREA.BIN had a size of zero, this is not OK.\n");
		infh = fio_open("SYSAREA.BIN","rb");
		if(infh==NULL) {
			printf("ERROR: Can't open required SYSAREA.BIN file in the current directory.");
			error("SYSAREA.BIN should be there.");
		}
		memset(buf,0,2048*16);
		fio_read(buf,size,infh);
		fio_close(infh);
		fio_block_write(buf,2048*16,isofh,isomode);
	} else if(target_system==WINDOWS)
	{
		memset(buf,0,2048*16);
		fio_block_write(buf,2048*16,isofh,isomode);
	} else /* target_system == PSX */
	{
		size_t result;
		strcpy(scratch,config_dir);
        if( use_ps2_license )
        {
		    strcat(scratch,"\\PS2LICEA.DAT");
        }
        else
        {
    	    strcat(scratch,"\\LICENSEA.DAT");
        }
		scratch[strlen(scratch)-5] = psx_license_code;
		infh = fio_open(scratch,"rb");
		if(infh==NULL) {
			printf("ERROR: Can't open required config file in '%s'.\n",config_dir);
			printf("ERROR: '%s' should be there.",scratch);
			exit(1);
		}

        if( use_ps2_license )
        {
		    for(i=0;i<16;i++) 
		    {
			    result = fio_read(buf,2336,infh);
			    assert(result==1);
			    result = fio_mode2336_write(buf,isofh);
			    assert(result==1);
		    }
        }
        else
        {    
		    for(i=0;i<12;i++) 
		    {
			    result = fio_read(buf,2336,infh);
			    assert(result==1);
			    result = fio_mode2336_write(buf,isofh);
			    assert(result==1);
		    }

    		memset(buf,0,2352*4);
	    	result = fio_write(buf,2352*4,isofh);
		    assert(result==1);
        }
		fio_close(infh);
	}
	infh = NULL;

	progress_name("Primary Volume");

	if(isomode==MODE2FORM1) {
		fio_eor(isofh);
		fio_mode21_write(&pv,isofh);
		fio_eor(isofh);
		fio_eof(isofh);
		fio_mode21_write(&vt,isofh);
	} else {
		fio_mode1_write(&pv,isofh);
		fio_mode1_write(&vt,isofh);		
	}

	progress_name("L Pathtable");

	/* L Path Table */
	for(i=0;i<pathtablesize;i++) {
		int pathlen = 8+pathtable[i]->path->length
					   +(pathtable[i]->path->length%2);
		if(i==(pathtablesize-1))
		{
			fio_eof(isofh);
			fio_eor(isofh);
		}
		fio_block_write(pathtable[i]->path,pathlen,isofh,isomode);
	}
	memset(buf,0,2048*16);
	if(pathtablebytes%2048)
		fio_block_write(buf,2048 - (pathtablebytes%2048),isofh,isomode);	/* round it out to block boundary */

	progress_name("M Pathtable");

	/* M Path Table */
	for(i=0;i<pathtablesize;i++) {
		int pathlen = 8+pathtable[i]->path->length
					   +(pathtable[i]->path->length%2);
		pathtable[i]->path->extent_location = lswap(pathtable[i]->path->extent_location);
		pathtable[i]->path->parent_number = sswap(pathtable[i]->path->parent_number);
		if(i==(pathtablesize-1))
		{
			fio_eof(isofh);
			fio_eor(isofh);
		}
		fio_block_write(pathtable[i]->path,pathlen,isofh,isomode);
	}
	memset(buf,0,2048*16);
	if(pathtablebytes%2048)
		fio_block_write(buf,2048 - (pathtablebytes%2048),isofh,isomode);	/* round it out to block boundary */

	for(i=0;i<pathtablesize;i++)
	{
		write_directory(isofh,pathtable[i]);
	}

	for(i=0;i<pathtablesize;i++)
	{
		write_directory_files(isofh,pathtable[i]);
	}

	if(end_pad)
		null_pad(isofh,3*60*75*2352);	/* 3 minutes of garbage */

	/* Data Track Post Gap */
	post_gap(isofh);

	if(target_system!=PSX && has_str_files)
	{
		pre_gap(isofh);
		for(i=0;i<pathtablesize;i++)
		{
			write_str_files(isofh,pathtable[i]);
		}
		post_gap(isofh);
	}

	if(has_cdda_files)
		for(i=0;i<pathtablesize;i++)
		{
			write_cdda_files(isofh,pathtable[i]);
		}

//	post_gap(isofh);	/* FREE Bonus post gap for Safety's sake! */

	/* CD-ROM Lead-Out area */
	if( !use_dao )
	{
		lead_out(isofh);
	}

//	progress_name("Null Pad");
//
//	null_pad(isofh,2352*1024*2);	/* 2 megs of zeros to satisfy segacdw */

	fio_close(isofh);
	isofh = NULL;

	end_progress();

	if( !use_dao )
	{
		if(has_cdda_files)
			add_leadout_entry(TOC_CDDA,leadout_block+150);
		else if (has_str_files)
			add_leadout_entry(TOC_MODE2,leadout_block+150);
		else
			add_leadout_entry(TOC_MODE1,leadout_block+150);
		make_toc();
	}
	else
	{
		close_toc( );
	}
}

uchar uchar2bcd(uchar c)
{
	return	((c/10) << 4) |
			(c%10);
}

void add_leadout_entry(uchar mode,long block)
{
	assert(toc_entries<255);
	toc[toc_entries].type = (mode==TOC_CDDA) ? TOC_AUDIO : TOC_DATA;
	toc[toc_entries].track = 0xAA;
	toc[toc_entries].index = 0x01;
	toc[toc_entries].mode = mode;
	toc[toc_entries].unknown = 0;
	toc[toc_entries].minutes = uchar2bcd(block / (75*60));
	toc[toc_entries].seconds = uchar2bcd((block / 75) % 60);
	toc[toc_entries].frames = uchar2bcd(block % 75);
	toc_entries++;
}

void add_toc_entry(uchar type, uchar track, uchar index, uchar mode, long block)
{
	assert(toc_entries<255);
	toc[toc_entries].type = type;
	toc[toc_entries].track = uchar2bcd(track);
	toc[toc_entries].index = uchar2bcd(index);
	toc[toc_entries].mode = mode;
	toc[toc_entries].unknown = 0;
	toc[toc_entries].minutes = uchar2bcd(block / (75*60));
	toc[toc_entries].seconds = uchar2bcd((block / 75) % 60);
	toc[toc_entries].frames = uchar2bcd(block % 75);
	toc_entries++;
}

void make_toc(void)
{

/*
OFFSET : CONTROL   TNO/X   FORM     TIME      DUMP(HEX)
 0000H : DATA  --- LeadIn  MODE1    00:00:00  41 00 00 02 00 00 00 00
 0008H : DATA  --- 01/00   MODE1    00:00:00  41 01 00 02 00 00 00 00
 0010H : DATA  --- 01/01   MODE1    00:02:00  41 01 01 02 00 00 02 00
 0018H : DATA  --- 02/00   MODE1    00:09:52  41 02 00 02 00 00 09 52
 0020H : DATA  --- 02/00   ROMXA    00:11:52  41 02 00 04 00 00 11 52
 0028H : DATA  --- 02/01   ROMXA    00:13:52  41 02 01 04 00 00 13 52
 0030H : AUDIO -2- 03/00   CDDA     00:19:52  01 03 00 00 00 00 19 52
 0038H : AUDIO -2- 03/01   CDDA     00:21:52  01 03 01 00 00 00 21 52
 0040H : AUDIO -2- 04/00   CDDA     00:25:52  01 04 00 00 00 00 25 52
 0048H : AUDIO -2- 04/01   CDDA     00:27:52  01 04 01 00 00 00 27 52
 0050H : AUDIO -2- 05/00   CDDA     00:31:52  01 05 00 00 00 00 31 52
 0058H : AUDIO -2- 05/01   CDDA     00:33:52  01 05 01 00 00 00 33 52
 0060H : AUDIO -2- 06/00   CDDA     00:37:52  01 06 00 00 00 00 37 52
 0068H : AUDIO -2- 06/01   CDDA     00:39:52  01 06 01 00 00 00 39 52
 0070H : AUDIO -2- LeadOut CDDA     00:43:52  01 AA 01 00 00 00 43 52
*/

	char scratch[_MAX_PATH];
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.TOC");
	FILE *tocfh = fopen(scratch,"wb");
	assert(tocfh!=NULL);
	size_t io_result = fwrite(toc,8*toc_entries,1,tocfh);
	assert(io_result==1);
	fclose(tocfh);
}

void blank_150(FIOP fh)
{
	char buf[2352];
	int i;
	memset(buf,0,2352);
	for(i=0;i<150;i++) {
		size_t result = fio_write(buf,2352,fh);
		assert(result==1);
	}
}

void lead_out(FIOP fh)
{
	progress_name("Lead out");
	null_pad(fh,300*2352 + 300*98);
//	blank_150(fh);
//	blank_150(fh);
}

void lead_in(FIOP fh)
{
	progress_name("Lead in");
	blank_150(fh);
}

void pre_gap(FIOP fh)
{
	progress_name("Pregap");
	blank_150(fh);
}

void post_gap(FIOP fh)
{
	progress_name("Postgap");
	blank_150(fh);
}

void pause(FIOP fh)
{
	progress_name("CDDA Pause");
	if( !use_dao )
	{
		null_pad(fh,150*2352 + 150*98);
	}
	else
	{
		null_pad(fh,150*2352 );
	}
	//blank_150(fh);
}

void write_directory(FIOP isofh,struct tnode *t)
{
	long byteswritten=0;
	assert(t!=NULL);
	struct dnode *cur = t->d;
	progress_name(t->n->name);
	memset(buf,0,2048);
	while(cur!=NULL) {
		if(cur->next==NULL) {
			fio_eof(isofh);
			fio_eor(isofh);
		}
		if(byteswritten+cur->dirent->length > 2048)
		{
			size_t io_result = fio_block_write(buf,2048-byteswritten,isofh,isomode);
			assert(io_result==(unsigned long)(2048-byteswritten));
			byteswritten = 0;
		}
		size_t io_result = fio_block_write(cur->dirent,cur->dirent->length,isofh,isomode);
		assert(io_result==cur->dirent->length);
		byteswritten += cur->dirent->length;
		cur = cur->next;
	}
	if(byteswritten<2048) {
		size_t io_result = fio_block_write(buf,2048-byteswritten,isofh,isomode);
		assert(io_result==(unsigned long)(2048-byteswritten));
	}
}

void write_file(FIOP isofh,struct dnode *cur)
{
	char fn[_MAX_PATH];
	long fsize = cur->n->filesize;
	size_t io_result;

	strcpy(fn,cur->n->path);
	strcat(fn,"\\");

    //
    // Check if PS2. Mess with a few of the files.
    if( use_ps2_license )
    {
        if( stricmp( cur->n->name, "SLPS_123.45" ) == 0 )
        {   
            //
            // Lets use the data for callers executable.
            //
            strcat(fn,ps2Executable);            
        }
        else if( stricmp( cur->n->name, "system.cnf" ) == 0 )
        {
            //
            // Lets just write our binary image.
            //
			fio_eof(isofh);
			fio_eor(isofh);
			memset(buf,0,2048);
            if( psx_license_code != 'E')
            {   
                memcpy( buf, NTSCsystem, strlen( NTSCsystem ) );
            }
            else
            {   
                memcpy( buf, PALsystem, strlen( PALsystem ) );
            }

			io_result = fio_block_write(buf,2048,isofh,isomode);
            assert(io_result==(unsigned)2048);
            return;
        }
        else
        {
        	strcat(fn,cur->n->name);
        }
    }
    else
    {
    	strcat(fn,cur->n->name);
    }
	progress_name(cur->n->name);
	FIOP fh = fio_open(fn,"rb");
	assert(fh!=NULL);
	if(cur->n->is_str)
	{
		long blocks,
			 max_blocks = cur->n->blocks;
		for(blocks=0;blocks<max_blocks;blocks++)
		{
			io_result = fio_read(buf,2336,fh);
			assert(io_result==1);
			io_result = fio_mode2336_write(buf,isofh);
			assert(io_result==1);

		}
	} else if(cur->n->is_cdda)
	{
		char subcode[98];
		long i;
		long blocks = (cur->n->filesize+2351)/2352;
		memset(subcode,0,98);
		for(i=1;i<blocks;i++)
		{
			io_result = fio_read(buf,2352,fh);
			assert(io_result==1);
			io_result = fio_write(buf,2352,isofh);
			assert(io_result==1);
			if( !use_dao )
			{
				io_result = fio_write(subcode,98,isofh);
				assert(io_result==1);
			}
		}
		memset(buf,0,2352);
		i = cur->n->filesize - ((blocks-1)*2352);
		assert(i<=2352 && i>0);
		io_result = fio_read(buf,i,fh);
		assert(io_result==1);
		io_result = fio_write(buf,2352,isofh);
		assert(io_result==1);
		if( !use_dao )
		{
			io_result = fio_write(subcode,98,isofh);
			assert(io_result==1);
		}
	} else
	{
		int cbTagString;

		if( cur->n->is_tag )
			// WRITE BURN ID TAG
			cbTagString = strlen( TagString );
		else
			cbTagString = 0;

		fsize -= cbTagString;
		while(fsize>BUFSIZE)
		{
			io_result = fio_read(buf,BUFSIZE,fh);
			assert(io_result==1);
			io_result = fio_block_write(buf,BUFSIZE,isofh,isomode);
			assert(io_result==BUFSIZE);
			fsize -= BUFSIZE;

		}
		fsize += cbTagString;
		if(fsize) 
		{
			long blocks = (fsize+2047)/2048;
			memset(buf,0,blocks*2048);
			io_result=fio_read(buf,fsize - cbTagString,fh);
			if( cbTagString > 0 )
				memcpy(buf + fsize - cbTagString, TagString, cbTagString );
			assert(io_result==1);
			fio_eof(isofh);
			fio_eor(isofh);
			io_result = fio_block_write(buf,blocks*2048,isofh,isomode);
			assert(io_result==(unsigned)blocks*2048);
		}

	}
	fio_close(fh);
}

void write_directory_files(FIOP isofh,struct tnode *t)
{
	assert(t!=NULL);
	struct dnode *cur = t->d;
	while(cur!=NULL)
	{
		if(	!cur->n->directory && 
			((target_system!=PSX) ? !cur->n->is_str : TRUE) &&
			!cur->n->is_cdda)
			write_file(isofh,cur);
		cur = cur->next;
	}
}

void write_str_files(FIOP isofh,struct tnode *t)
{
	assert(t!=NULL);
	struct dnode *cur = t->d;
	while(cur!=NULL)
	{
		if(!cur->n->directory && cur->n->is_str)
			write_file(isofh,cur);
		cur = cur->next;
	}
}

void null_pad(FIOP fh,long bytes)
{
	long i,blocks = bytes/2352;
	memset(buf,0,2352);
	for(i=0;i<blocks;i++) {
		size_t io_result = fio_write(buf,2352,fh);
		assert(io_result==1);
	}
	if((bytes>0) && (bytes % 2352)) {
		size_t io_result = fio_write(buf,bytes%2352,fh);
		assert(io_result==1);
	}
}

void write_cdda_files(FIOP isofh,struct tnode *t)
{
	assert(t!=NULL);
	struct dnode *cur = t->d;
	while(cur!=NULL)
	{
		if(!cur->n->directory && cur->n->is_cdda)
		{
			long blocks = (cur->n->filesize+2351)/2352;
//			long newsize = blocks*(2352+98);
//			long newblocks = (newsize+2351)/2352;
			pause(isofh);
			write_file(isofh,cur);
//			if(newsize%2352)
//				null_pad(isofh,2352 - (newsize % 2352)); /* Pad to block boundary */
			if( !use_dao )
			{
				null_pad(isofh,(300 - blocks)*(2352+98)); /* Pad out to 4 seconds if necessary */
			}
			else
			{
				null_pad(isofh,(300 - blocks)*(2352)); /* Pad out to 4 seconds if necessary */
			}
		}
		cur = cur->next;
	}
}

void valid(char *fn)
{
	struct _finddata_t c_file;
	long hFile;
	FILE *ifh;
	size_t len;
	size_t count=0;
	char buf[BUFSIZE],msg[256];
	assert(fn!=NULL);
	hFile = _findfirst( fn, &c_file );
	assert(hFile!=-1);
	len = c_file.size;
	_findclose(hFile);
	ifh = fopen(fn,"rb");
	assert(ifh!=NULL);
	printf(	"Validating the output image...\n");
	init_progress(len);
	progress_name("Validating...");
	while(!feof(ifh)) {
	    size_t result = fread(buf,1,BUFSIZE,ifh);
		count += result;
		progress(result);
	    if(result!=BUFSIZE) {
			if(ferror(ifh)) {
				printf("\n");
				sprintf(msg,"error %d at %lu\n",errno,count);
				perror(msg);
				exit(1);
			}
		}
	}
	fclose(ifh);
	end_progress();
}

/*
void valid(char *fn)
{
  struct _finddata_t c_file;
  long hFile;
  FILE *ifh;
  size_t count=0,tick=0;
  size_t len;
  time_t start_time,current_time;
  char buf[BUFSIZE],msg[256];
  assert(fn!=NULL);
  hFile = _findfirst( fn, &c_file );
  assert(hFile!=-1);
  len = c_file.size;
  _findclose(hFile);
  ifh = fopen(fn,"rb");
  assert(ifh!=NULL);
  printf("Validating the output image...\n"
		 "                                                  "
		 "File length: %10lu\n",len);
  time(&start_time);
  while(!feof(ifh)) {
    size_t result = fread(buf,1,BUFSIZE,ifh);
    count += result;
    tick++;
    if(tick>32)
    {
      time_t elapsed,remaining;
      long eh,em,es,rh,rm,rs;
      double bytes_per_second;
      time(&current_time);
      elapsed = current_time-start_time;
      bytes_per_second = ((double)count)/((double)elapsed);
      remaining = (long)(((double)(len-count))/bytes_per_second);
      es = elapsed % 60;
      em = (elapsed/60) % 60;
      eh = elapsed/3600;
      rs = remaining % 60;
      rm = (remaining/60) % 60;
      rh = remaining/3600;
      printf(	"Elapsed: %3lu h %2lu m %2lu s   "
      		"Remaining: %3lu h %2lu m %2lu s   "
		"Bytes: %10lu\r",
      		eh,em,es,rh,rm,rs,count);
      tick=0;
    }
    if(result!=BUFSIZE) {
      if(ferror(ifh)) {
        printf("\n");
        sprintf(msg,"error %d at %lu\n",errno,count);
        perror(msg);
        exit(1);
      }
    }
  }
  fclose(ifh);
}

*/

size_t file_size(char *fn)
{
	size_t size;
	FILE *fh = fopen(fn,"rb");
	if(fh!=NULL)
	{
		if(fseek(fh,0,SEEK_END))
		{
			fclose(fh);
			return 0;
	   	}
		size = ftell(fh);
	   	fclose(fh);
		return size;
	}
	return 0;
}

void open_toc(void)
{
	tocbuffer[ 0 ] = '\0';
}

void close_toc( void )
{
	FILE* toc_fh; 
	char scratch[_MAX_PATH];
	strcpy(scratch,dest_dir);
	strcat(scratch,"\\RADICAL.TOC");
	toc_fh = fopen(scratch,"wb");
	assert(toc_fh!=NULL);
	size_t io_result = fwrite( tocbuffer,strlen( tocbuffer ),1,toc_fh);
	assert(io_result==1);
	fclose(toc_fh);
}

void addline_toc( char* line)
{
	assert( MAX_TOCSIZE > (strlen(tocbuffer) + strlen( line )) );
	strcat( tocbuffer, line );
}
