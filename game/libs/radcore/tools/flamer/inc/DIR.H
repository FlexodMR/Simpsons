
#include <io.h>


struct node
{
	struct node *next;		/* next file or directory */
	char path[_MAX_PATH];
	char name[_MAX_PATH];	/* name of file or directory */
	struct node *parent;
	int level;
	int directory;				/* is it a directory? */
	struct node *subdir;  /* if so, then here is the subdir info */
	int numfiles;					/* and how many files in this dir? */
	int numdirs;					/* and how many dirs in this dir? */
	_fsize_t filesize;	/* number of bytes in length */
	long blocks;		/* number if ISO blocks in file */

	time_t last_write;	/* time of last write to original file */

	int is_cdda; /* for convenience, avoid checking filename all the time */
	int is_str;	/* for convenience, avoid checking filename all the time */
	int is_tag; /* Tag this file with a Burn ID */
};

struct dir_tree
{
	struct node *first;
	int numdirs,					/* total number of directories in root*/
			numfiles;					/* total number of files in root*/
	int dirdepth;					/* Number of dirs in deapest path */
	int totaldirs;
	int longest_path_len;	/* length of longest path in characters */

	time_t newest_time;
};

struct dir_tree *load_dirs(void);
void print_tree(struct dir_tree *);
int in_tree(struct dir_tree *, char *);
struct dir_tree *flatten(struct dir_tree *);
void free_tree(struct dir_tree *);
int duplicates(struct dir_tree *);
int in_root(struct dir_tree *, char *);
struct dir_tree *cdda_tree(struct dir_tree *);
int cdda_file(char *);
struct dir_tree *remove_cdda(struct dir_tree *);
void sort(struct dir_tree *tree);
_fsize_t getdirentsize(struct node *);
int last_letters(char *fn,char *ext);
