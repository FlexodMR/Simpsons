
/****************************************************************/
/*			WARNING WARNING WARNING WARNING WARNING WARNING		*/
/*																*/
/* This pragma pack line is to insure that structures get		*/
/* aligned properly.  It is equivalent to the /Zp1 option		*/
/* to the CL compiler, but it is put here for safeties sake		*/
/* Do not remove it under penalty of .. well, something         */
/* terrible, like totally broken CD's							*/
/****************************************************************/
#pragma pack(1)

#ifndef FALSE
#define FALSE 0
#endif

#ifndef TRUE
#define TRUE !FALSE
#endif

#define PSX 1
#define SATURN 2
#define WINDOWS 3

extern int target_system;
//extern int copy_files;
extern int test;
extern int really_burn;
extern int flat_files;
extern int validate;
extern int special;
extern int end_pad;
extern int override_limit;	// TRUE if size limit is ignored
extern int override_collisions; // TRUE if collisions are ignored.
extern int override_maxfiles; // TRUE if maximum file limit is ignored.
extern int override_namelen; // TRUE is max file length ignored
extern int use_ps2_license;
extern char ps2Executable[ ];
extern char NTSCsystem[ ];
extern char PALsystem[ ];

extern int use_dao;			// TRUE if use goldenhawk dao burn software

extern int speed;
extern int scsiid;
extern int hostadapter;

extern char psx_license_code;

extern int has_cdda_files;
extern int has_str_files;

extern int psxlimits;

//#define DEST_DIR "D:\\SCRATCH"
//#define CONFIG_DIR "D:\\BURNME\\CONFIG"

extern char disc_name[];

extern char dest_dir[];
extern char config_dir[];
extern char image_dir[];

//Config file defines
extern char SystemIdentifier[];
extern char VolumeIdentifier[];
extern char VolumeSetID[];
extern char PublisherID[];
extern char DataPreparerID[];
extern char ApplicationID[];
extern char CopyrightFileID[];
extern char AbstractFileID[];
extern char BiblioFileID[];
extern char ApplicationUse[];
extern char TagFile[];		// Tag this file with a Burn ID
extern char TagString[];		// Tag the file with this string

// size
extern long total_image_size;

//Extensions
#define CDDA_EXT ".DA"
#define STR_EXT ".STR"
#define STR_NO_AUDIO_EXTENSION ".SNA;1"
