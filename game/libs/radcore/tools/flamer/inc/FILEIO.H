
#define MODE1	0
#define MODE2FORM1	1
#define MODE2FORM2	2


#define SM_EOR		0x01
#define SM_VIDEO	0x02
#define SM_AUDIO	0x04
#define SM_DATA		0x08
#define SM_TRIGGER	0x10
#define SM_FORM2	0x20
#define	SM_REALTIME	0x40
#define SM_EOF		0x80



struct FIO
{
	FILE *fh;
	int eof;
	int eor;
};

typedef struct FIO *FIOP;

FIOP fio_open( const char *filename, const char *mode );
int fio_close( FIOP stream );
size_t fio_read( void *buffer, size_t size, FIOP stream );
size_t fio_write( const void *buffer, size_t size, FIOP stream );
size_t fio_block_write(const void *buffer, size_t size, FIOP stream, int mode);
size_t fio_mode1_write(const void *,FIOP stream);
/*size_t fio_mode2_write(const void *buffer, const void *subheader, FIOP stream );*/
size_t fio_mode21_write( const void *buffer, FIOP stream);
size_t fio_mode22_write( const void *buffer, FIOP stream );
size_t fio_mode2336_write(const void *buffer, FIOP stream );
void fio_eor(FIOP stream);
void fio_eof(FIOP stream);