
/*
 * Program to burn Saturn, PSX, and Windows CD's using
 * a Yamaha CDR100 and the SEGCDW software
 *
 */


#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <direct.h>
#include <ctype.h>
#include <time.h>
#include <assert.h>

#include "global.h"
#include "dir.h"
#include "cnstrnt.h"
#include "system.h"
#include "script.h"
#include "iso.h"
#include "fileio.h"
#include "win.h"
#include "windows.h"

#define FLAMER_VERSION "4.1"

struct dir_tree *tree=NULL;

int target_system;
//int copy_files=FALSE;		/* copy files with NCOPY if TRUE */
//int debug=FALSE;				/* prints out directory tree at end */
int test=FALSE;					/* passes -t option to SEGACDW if TRUE */
int really_burn=TRUE;	/* call SEGACDW if TRUE */
int flat_files=FALSE;		/* all files in root if TRUE */
int validate=FALSE;		/* check to see if image file can be read */
int special=TRUE;		/* do special processing of str files and so on */
int end_pad=FALSE;		/* put 27,648,000 of nothing at the end. */
int sort_files=TRUE;	/* Sort Files the TRUE */
int use_ps2_license = FALSE; /* Use old psx liscense */
int script=FALSE;		/* use old vcdbuild method */

int psxlimits=TRUE;		/* limit psx to 30 files 45 directories */
int override_limit = FALSE;	/* TRUE if OK to over-ride disk image size */
int override_collisions = FALSE; /* TRUE if we allow name collisions */
int override_maxfiles = FALSE; /* TRUE if we allow file limit to be exceeded */
int override_namelen = FALSE;  /* TRUE is we allow filename lengths to be exceeded */

int use_dao = FALSE;		/* TRUE if we are using the Goldenhawk DAO CD burn software */

int speed=4;
int scsiid=2;
int hostadapter=0;

char psx_license_code = 'A';

char dest_dir[_MAX_PATH];
char config_dir[_MAX_PATH];
char image_dir[_MAX_PATH];

char ps2Executable[ 50 ];

char disc_name[33];

char SystemIdentifier[33];
char VolumeIdentifier[33];
char VolumeSetID[129];
char PublisherID[129];
char DataPreparerID[129];
char ApplicationID[129];
char CopyrightFileID[38];
char AbstractFileID[38];
char BiblioFileID[38];
char ApplicationUse[513];
char TagFile[_MAX_PATH]= {0};	// Tag this file with a Burn ID
char TagString[256] = {0};		// Tag the file with this string
void usage(void);
void version(void);
void loadConfig(void);
void print_current_options();

void main( int argc, char * argv[] )
{
	int i;

	version();

	if (argc < 2) {
		usage();
		exit(1);
	}

	disc_name[0] = 0;

	loadConfig();

	if (_stricmp(argv[1],"saturn")==0) {
		target_system = SATURN;
		flat_files = TRUE;
		printf("Burning a SEGA Saturn CD.\n\n");
	} else if (_stricmp(argv[1],"psx")==0) {
		target_system = PSX;
		printf("Burning a Sony Playstation CD.\n\n");
	} else if (_stricmp(argv[1],"ps2")==0) {
		target_system = PSX;
		printf("Burning a Sony Playstation2 CD.\n\n");
        use_ps2_license = TRUE;
	} else if (_stricmp(argv[1],"windows")==0) {
		target_system = WINDOWS;
		printf("Burning a Windows CD.\n\n");
		printf("WARNING!  Then platform type WINDOWS is obsolete.  PLEASE use WIN95 instead!\n");
	} else if (_stricmp(argv[1],"win95")==0) {
		target_system = WINDOWS;
		printf("Burning a Windows CD.\n\n");
	} else if(_stricmp(argv[1],"purge")==0) {
		char scratch[_MAX_PATH];
		strcpy(config_dir,argv[0]);
//		char* ptr;

        GetModuleFileName( NULL, config_dir, sizeof( config_dir ) );
//		GetFullPathName( config_dir, _MAX_PATH, config_dir, &ptr );

		for(i=strlen(config_dir)-1;i>=0;i--)
			if(config_dir[i]=='\\')
			{
				config_dir[i] = 0;
				break;
			}
		strcpy(image_dir,config_dir);
		strcat(image_dir,"\\IMAGE");
		sprintf(scratch,"DELTREE /Y %s",image_dir);
		syscall(scratch);
		exit(1);
	} else {
		usage();
		exit(1);
	}

	for(i=2;i<argc;i++) {
		if (argc>2) {
//			if(_stricmp(argv[i],"copy")==0) {
//				copy_files = TRUE;
//			} else if(_stricmp(argv[i],"/nocopy")==0) {
//				copy_files = FALSE;
//			} else if(_stricmp(argv[i],"/debug")==0) {
//				debug = TRUE;
//			} else if(_stricmp(argv[i],"/nodebug")==0) {
//				debug = FALSE;
/*			} else*/ 
			
			if(_stricmp(argv[i],"/test")==0) {
				test = TRUE;
			} else if(_stricmp(argv[i],"/notest")==0) {
				test = FALSE;
			} else if(_stricmp(argv[i],"/burn")==0) {
				really_burn = TRUE;
			} else if(_stricmp(argv[i],"/noburn")==0) {
				really_burn = FALSE;
			} else if(_stricmp(argv[i],"/flat")==0) {
				flat_files = TRUE;
			} else if(_stricmp(argv[i],"/noflat")==0) {
				flat_files = FALSE;
			} else if(_stricmp(argv[i],"/validate")==0) {
				validate = TRUE;
			} else if(_stricmp(argv[i],"/novalidate")==0) {
				validate = FALSE;
			} else if(_stricmp(argv[i],"/special")==0) {
				special = TRUE;
			} else if(_stricmp(argv[i],"/nospecial")==0) {
				special = FALSE;
			} else if(_stricmp(argv[i],"/script")==0) {
				script = TRUE;
			} else if(_stricmp(argv[i],"/noscript")==0) {
				script = FALSE;
			} else if(_stricmp(argv[i],"/endpad")==0) {
				end_pad = TRUE;
			} else if(_stricmp(argv[i],"/noendpad")==0) {
				end_pad = FALSE;
			} else if(_stricmp(argv[i], "/sort") == 0) {
				sort_files = TRUE;
			} else if(_stricmp(argv[i], "/nosort") == 0 ) {
				sort_files = FALSE;
			} else if(_stricmp(argv[i],"/limits")==0) {
				if(target_system!=PSX)
				{
					printf("the /LIMITS option is only valid when burning Playstation CD's\n");
					exit(1);
				}
				psxlimits = TRUE;
			} else if(_stricmp(argv[i],"/nolimits")==0) {
				if(target_system!=PSX)
				{
					printf("the /NOLIMITS option is only valid when burning Playstation CD's\n");
					exit(1);
				}
				psxlimits = FALSE;
			} else if(_stricmp(argv[i],"/ID")==0) {
				i++;
				if(i==argc)
				{
					printf("Sorry, but /ID requires a number\n");
					exit(1);
				}
				scsiid = atoi(argv[i]);
				if(scsiid<1)
				{
					printf(	"Sorry, but %s is not a valid ID value\n"
							"Try a non-negative integer number please\n",argv[i]);
					exit(1);
				}
			} else if(_stricmp(argv[i],"/HA")==0) {
				i++;
				if(i==argc)
				{
					printf("Sorry, but /HA requires a number\n");
					exit(1);
				}
				hostadapter = atoi(argv[i]);
				if(hostadapter<1)
				{
					printf(	"Sorry, but %s is not a valid host adapter value\n"
							"Try a non-negative integer number please\n",argv[i]);
					exit(1);
				}
			} else if(_stricmp(argv[i],"/SPEED")==0) {
				i++;
				if(i==argc)
				{
					printf("Sorry, but /SPEED requires a number\n");
					exit(1);
				}
				speed = atoi(argv[i]);
				if(speed<1 || speed > 16)
				{
					printf(	"Sorry, but %s is not a valid speed value\n"
				 			"Try a non-negative integer number please\n",argv[i]);
					exit(1);
				}
			} else if(_stricmp(argv[i],"/COUNTRY")==0) {
				i++;
				if(i==argc)
				{
					printf("Sorry, but /COUNTRY requires a letter\n");
					exit(1);
				}
				psx_license_code = *argv[i];
				if(target_system!=PSX)
				{
					printf("Sorry, but the /COUNTRY option is only valid for PSX CD's\n");
					exit(1);
				}
			} else if(_stricmp(argv[i],"/TAG") == 0) {
				// Tag the file with
				i++;
				if(i==argc)
				{
					printf("Sorry, but /TAG requires a filename\n");
					exit(1);
				}
				_fullpath( TagFile, argv[i], _MAX_PATH );
				_strupr( TagFile );
			} else if( _stricmp( argv[i], "/NOTAG" ) == 0 ) {
				memset( TagFile, 0, sizeof TagFile );
				memset( TagString, 0, sizeof TagString );
			} else if( _stricmp( argv[i], "/OVERSIZE" ) == 0 ) {
				override_limit = TRUE;
			} else if( _stricmp( argv[i], "/NOOVERSIZE" ) == 0 ) {
				override_limit = FALSE;
			} else if( _stricmp( argv[i], "/COLLISION" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /COLLISION option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_collisions = TRUE;
			} else if( _stricmp( argv[i], "/NOCOLLISION" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /NOCOLLISION option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_collisions = FALSE;
			} else if( _stricmp( argv[i], "/MAXFILES" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /MAXFILES option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_maxfiles = FALSE;
			} else if( _stricmp( argv[i], "/NOMAXFILES" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /NOMAXFILES option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_maxfiles = TRUE;
			} else if( _stricmp( argv[i], "/NAMELEN" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /NAMELEN option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_namelen = FALSE;
			} else if( _stricmp( argv[i], "/NONAMELEN" ) == 0 ) {
				if(target_system == WINDOWS)
				{
					printf("Sorry, the /NONAMELEN option is invalid when burning Windows CD's\n");
					exit(1);
				}
				override_namelen = TRUE;
			} else {
				usage();
				exit(1);
			}
		}
	}

	print_current_options();

//	if (copy_files) {
//		printf("Files will be copied to local drive.\n\n");
//	} else {
//		printf("Files will remain on network drive.\n\n");
//	}

	//
	// Here we determine which CD burning tool to use. If we detect the DAO executable
	// in the search path, then we will use it. Otherwise we will use the old 
	// sega burner.
	//
	char pathbuffer[_MAX_PATH];
	_searchenv( "DAO.EXE", "PATH", pathbuffer );
	if( *pathbuffer != '\0' )
	{
		//
		// Non null string indicates that the DAO executable was found.
		//
		use_dao = TRUE;
	}

	strcpy(config_dir,argv[0]);
//	char* ptr;

    GetModuleFileName( NULL, config_dir, sizeof( config_dir ) );

//	GetFullPathName( config_dir, _MAX_PATH, config_dir, &ptr );
	
	for(i=strlen(config_dir)-1;i>=0;i--)
    {
		if(config_dir[i]=='\\')
		{
			config_dir[i] = 0;
			break;
		}
    }
	strcpy(image_dir,config_dir);
	char scratch[_MAX_PATH];
	if(_getcwd(scratch,_MAX_PATH)==NULL)
	{
	  perror( "_getcwd error" );
		exit(1);		
	}
	strcat(image_dir,"\\IMAGE");
	strcpy(dest_dir,image_dir);
	scratch[1] = 0;
	strcat(dest_dir,"\\");
	strcat(dest_dir,scratch);
	strcat(dest_dir,&(scratch[2]));

	if(dest_dir[strlen(dest_dir)-1]=='\\')
		dest_dir[strlen(dest_dir)-1] = 0;

	printf("Config dir: '%s'\n",config_dir);
	printf(" Image dir: '%s'\n",image_dir);
	printf("  Dest dir: '%s'\n",dest_dir);

	unsigned u;
	for(u=3;u<strlen(dest_dir);u++) {
		if(dest_dir[u]=='\\')
		{
	  		strcpy(scratch,dest_dir);
			scratch[u] = 0;
			_mkdir(scratch);
		}
	}

	_mkdir(dest_dir);


    //
    // On the PS2, the liscense files we use were generated assuming the elf
    // was named SLSP123.45. If the user has a different elf name, we must alter it
    // behind the scenes.
    //
    if(use_ps2_license )
    {
        //
        // Open the system config file.
        //
        char filespec[ 256 ];

        _getcwd( filespec, _MAX_PATH );
        if( filespec[ strlen( filespec ) - 1 ] != '\\' )
        {
            strcat( filespec, "\\");
        }
        strcat( filespec, "system.cnf");
        
        //
        // Get size of file.
        //
        WIN32_FIND_DATA FindData;
        HANDLE dirHandle = FindFirstFile( filespec, &FindData );
        if( dirHandle != INVALID_HANDLE_VALUE )
        {
            FindClose( dirHandle );
        
      	    FIOP fh = fio_open(filespec,"rb");

            char  buffer[ 2048 ];
   		    int	io_result = fio_read(buffer,FindData.nFileSizeLow, fh);
            assert( io_result == 1 );
            fio_close( fh );    
        
            //
            // Currently all we extract is the filename of the executable.
            // We assume version is 1.00 and NTSC for japan and america, PAL for europe.
            //   
            char* pstr = strstr( buffer, "cdrom0:\\" );
            assert(pstr != NULL );
            pstr += strlen( "cdrom0:\\" );
            char* dst = ps2Executable;
            while( *pstr != ';' )
            {
                *dst++ = *pstr++;
            }
            *dst = '\0';
        }
    }

	printf("Loading directory structure.\n");

	{
		time_t tNow;
		char szTimeStamp[256];

		time( &tNow );
		strftime( szTimeStamp, 256, "%Y/%m/%d %H:%M:%S", localtime( &tNow ) );
		sprintf( TagString, "$$RADICAL %s $$", szTimeStamp );
		if( TagFile[0] )
			printf( "FLAMER Tagging file %s with %s\n", TagFile, TagString );
	}
	tree = load_dirs();

	printf("Checking constraints.\n");

	constraints(tree);

	//prep();

	if(script) {
		make_script(tree); 
		post();
	} else {
		make_iso(tree);
		burn();
	}

//	if(debug)
//		print_tree(tree);
}

void version(void)
{
	printf("\nFLAMER version " FLAMER_VERSION "\n\n");
}

void usage(void)
{
	printf(	"Usage: FLAMER [PSX | PS2 | SATURN | WIN95 | PURGE] <OPTIONS>\n\n");

	print_current_options();

	printf(	"/SPEED x    Burn at 1, 2, 4, 8, or 16 speed.  x = 1 | 2 | 4 | 8 | 16\n"
			"/SPECIAL    do special things to .DA and .STR files\n"
			"/TEST       enable test mode of CD writer\n"
			"/BURN       after creating the image, burn it to CD\n"
			"/FLAT       collapse directory structure\n"
			"/VALIDATE   check hard disk for bad sectors before burning\n"
			"/ENDPAD     put a 30MB of black data at the end of the data track\n"
			"/LIMITS     enable 30 file, 15 directory check for PSX\n"
			"/COUNTRY x  choose license file for PSX.  x = A | J | E\n"
			"/TAG file   Tag this file with a Burn ID\n"
			"/ID x       choose SCSI ID of CD writer\n"
            "/HA x       choose SCSI Host Adpater\n"
			"/SORT       Sort files and directories\n"
			"/OVERSIZE   Override disk image limits\n"
			"/COLLISION  Override filename collision detection\n"
			"/NOMAXFILES Override number of files limit\n"
			"/NONAMELEN  Override maximum filename length detection\n"
			);
	printf("\nFor further customization, use a FLAMER.CFG file.\n");
	printf("An example can be found in L:\\RTOOLS\\FLAMER\\FLAMER.CFG\n");
}

void loadConfig(void)
{
	SystemIdentifier[0]	= SystemIdentifier[32]	= 0;
	VolumeIdentifier[0]	= VolumeIdentifier[32]	= 0;
	VolumeSetID[0]		= VolumeSetID[128]		= 0;
	PublisherID[0]		= PublisherID[128]		= 0;
	DataPreparerID[0]	= DataPreparerID[128]	= 0;
	ApplicationID[0]	= ApplicationID[128]	= 0;
	CopyrightFileID[0]	= CopyrightFileID[37]	= 0;
	AbstractFileID[0]	= AbstractFileID[37]	= 0;
	BiblioFileID[0]		= BiblioFileID[37]		= 0;
	ApplicationUse[0]	= ApplicationUse[512]	= 0;

	FILE *fh = fopen("FLAMER.CFG","rt");
	if(fh!=NULL)
	{
		char buffer[1024];
		buffer[1023] = 0;
		fgets(buffer,1023,fh);
		while(!feof(fh))
		{
			char *token = strtok(buffer," \t");
			if(*token == ';')
			{
				// it is a comment
			} else if(_stricmp(token,"SystemIdentifier:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>32)
					printf("FLAMER.CFG WARNING: SystemIdentifier is too long\n");
				strncpy(SystemIdentifier,(token+i),32);
			} else if(_stricmp(token,"VolumeIdentifier:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>32)
					printf("FLAMER.CFG WARNING: VolumeIdentifier is too long\n");
				strncpy(VolumeIdentifier,(token+i),32);
			} else if(_stricmp(token,"VolumeSetID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>128)
					printf("FLAMER.CFG WARNING: VolumeSetID is too long\n");
				strncpy(VolumeSetID,(token+i),128);
			} else if(_stricmp(token,"PublisherID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>128)
					printf("FLAMER.CFG WARNING: PublisherID is too long\n");
				strncpy(PublisherID,(token+i),128);
			} else if(_stricmp(token,"DataPreparerID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>128)
					printf("FLAMER.CFG WARNING: DataPreparerID is too long\n");
				strncpy(DataPreparerID,(token+i),128);
			} else if(_stricmp(token,"ApplicationID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>128)
					printf("FLAMER.CFG WARNING: ApplicationID is too long\n");
				strncpy(ApplicationID,(token+i),128);
			} else if(_stricmp(token,"CopyrightFileID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>37)
					printf("FLAMER.CFG WARNING: CopyrightFileID is too long\n");
				strncpy(CopyrightFileID,(token+i),37);
			} else if(_stricmp(token,"AbstractFileID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>37)
					printf("FLAMER.CFG WARNING: AbstractFileID is too long\n");
				strncpy(AbstractFileID,(token+i),37);
			} else if(_stricmp(token,"BiblioFileID:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>37)
					printf("FLAMER.CFG WARNING: BiblioFileID is too long\n");
				strncpy(BiblioFileID,(token+i),37);
			} else if(_stricmp(token,"ApplicationUse:")==0)
			{
				token = strtok(NULL,"\n");
				for(unsigned i=0;i<strlen(token);i++)
					if(!isspace(*(token+i)))
						break;
				if(strlen(token+i)>512)
					printf("FLAMER.CFG WARNING: ApplicationUse is too long\n");
				strncpy(ApplicationUse,(token+i),512);
			} 
			fgets(buffer,1023,fh);
		}
	}
}


void print_current_options(void)
{
	printf("Current Options: ");
//	if(copy_files) printf("/COPY "); else printf("/NOCOPY ");
//	if(debug) printf("/DEBUG "); else printf("/NODEBUG ");
	if(test) printf("/TEST "); else printf("/NOTEST ");
	if(really_burn) printf("/BURN "); else printf("/NOBURN ");
	if(flat_files) printf("/FLAT "); else printf("/NOFLAT ");
	if(validate) printf("/VALIDATE "); else printf("/NOVALIDATE ");
	if(script) printf("/SCRIPT "); else printf("/NOSCRIPT ");
	if(special) printf("/SPECIAL "); else printf("/NOSPECIAL ");
	if(end_pad) printf("/ENDPAD "); else printf("/NOENDPAD ");
	if(sort_files) printf("/SORT "); else printf("/NOSORT ");
	if(target_system==PSX)
	{ if(psxlimits) printf("/LIMITS "); else printf("/NOLIMITS "); }
	if(target_system==PSX) printf("/COUNTRY %c ",psx_license_code);
	if( TagFile[0] == 0 ) printf("/NOTAG "); else printf( "/TAG %s ", TagFile );
	if( override_limit ) printf("/OVERSIZE "); else printf( "/NOOVERSIZE " );
	if(target_system != WINDOWS )
	{ if( override_collisions ) printf("/COLLISION "); else printf( "/NOCOLLISION " ); }
	if(target_system != WINDOWS )
	{ if( override_maxfiles ) printf("/NOMAXFILES "); else printf( "/MAXFILES " ); }
	if(target_system != WINDOWS )
	{ if( override_namelen ) printf("/NONAMELEN "); else printf( "/NAMELEN " ); }
	printf("/HA %d /ID %d /SPEED %d\n\n",hostadapter, scsiid,speed);
}
