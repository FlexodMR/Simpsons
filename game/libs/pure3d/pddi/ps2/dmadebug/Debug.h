#ifndef DEBUG_H
#define DEBUG_H

#ifdef DEBUG
#define dprintf(s) { printf("%s : ", __FILE__); printf s }
#define dputs(s) { printf("%s : ", __FILE__); puts(s); }
#else
#define dprintf(s) 
#define dputs(s)
#endif

#endif

typedef char BOOL;

typedef enum { ENTRY_TITLE, ENTRY_FIELD, ENTRY_FIELD_NL } debug_msg_type;
    // Entry title is for entries on new lines,
    // entry field is just for normal fields
    // entry field nl is for entrys that should start on a new line

#define USE_COLOURS

#ifdef USE_COLOURS
#define COLOUR_BLACK        "\033[30m"
#define COLOUR_RED            "\033[31m"
#define COLOUR_GREEN        "\033[32m"
#define COLOUR_YELLOW        "\033[33m"
#define COLOUR_BLUE            "\033[34m"
#define COLOUR_PURPLE        "\033[35m"
#define COLOUR_CYAN            "\033[36m"
#define COLOUR_LIGHT_GREY    "\033[37m"

#define COLOUR_BG_BLACK        "\033[40m"
#define COLOUR_BG_RED        "\033[41m"
#define COLOUR_BG_GREEN        "\033[42m"
#define COLOUR_BG_YELLOW    "\033[43m"
#define COLOUR_BG_BLUE        "\033[44m"
#define COLOUR_BG_PURPLE    "\033[45m"
#define COLOUR_BG_CYAN        "\033[46m"
#define COLOUR_BG_LIGHT_GREY "\033[47m"

#define COLOUR_NORMAL        "\033[0m"
#define COLOUR_BOLD            "\033[1m"
#define COLOUR_UNDERLINE    "\033[4m"
#define COLOUR_BLINK        "\033[5m"
#define COLOUR_REVERSE_VIDEO "\033[7m"

#else

#define COLOUR_BLACK        ""
#define COLOUR_RED            ""
#define COLOUR_GREEN        ""
#define COLOUR_YELLOW        ""
#define COLOUR_BLUE            ""
#define COLOUR_PURPLE        ""
#define COLOUR_CYAN            ""
#define COLOUR_LIGHT_GREY    ""

#define COLOUR_BG_BLACK        ""
#define COLOUR_BG_RED        ""
#define COLOUR_BG_GREEN        ""
#define COLOUR_BG_YELLOW    ""
#define COLOUR_BG_BLUE        ""
#define COLOUR_BG_PURPLE    ""
#define COLOUR_BG_CYAN        ""
#define COLOUR_BG_LIGHT_GREY ""

#define COLOUR_NORMAL        ""
#define COLOUR_BOLD            ""
#define COLOUR_UNDERLINE    ""
#define COLOUR_BLINK        ""
#define COLOUR_REVERSE_VIDEO ""
#endif


#define NORM            COLOUR_NORMAL
#define DATA            COLOUR_GREEN
#define ADDRESS            COLOUR_YELLOW
#define VERBOSE            COLOUR_CYAN
#define MEMCONTENTS        COLOUR_PURPLE


        // Colour of error messages
#define ERRORCOL        COLOUR_BG_RED COLOUR_BLACK COLOUR_BLINK

        // Colour of warnings
#define WARNINGCOL        COLOUR_BG_YELLOW COLOUR_BLACK COLOUR_BLINK

        // Colour of the line that announces a DMA tag
#define DMATITLE        COLOUR_BG_GREEN COLOUR_BLACK

        // Colour of the line that announces a VIF code
#define VIFTITLE        COLOUR_BG_LIGHT_GREY COLOUR_BLACK

        // Colour of the line that announces a GIFTAG
#define GIFTAGTITLE        COLOUR_BG_CYAN COLOUR_BLACK

        // Colour of the verbose form of the Register name
#define GSREGISTERTITLE        COLOUR_BG_PURPLE COLOUR_BLACK

        // Colour of code/register field names
#define FIELD_NAME        COLOUR_LIGHT_GREY

#define DATA_FLOAT        DATA "%s" NORM
#define DATA_DEC        DATA "%d" NORM
#define DATA_HEX        DATA "0x%x" NORM
#define DATA_2HEX        DATA "0x%02x" NORM
#define DATA_4HEX        DATA "0x%04x" NORM
#define DATA_6HEX        DATA "0x%06x" NORM
#define DATA_8HEX        DATA "0x%08x" NORM
#define DATA_STR        DATA "%s" NORM
#define VERBOSE_STR        VERBOSE "%s" NORM
#define MEMCONTENTS_32    MEMCONTENTS "%08x" NORM
#define MEMCONTENTS_64    MEMCONTENTS "%08x.%08x" NORM
#define MEMCONTENTS_128    MEMCONTENTS "%08x.%08x.%08x.%08x" NORM
#define ADDRESS_HEX        COLOUR_YELLOW "%08x" NORM

#define NAME_DATA_FLOAT    FIELD_NAME"%s" NORM "="DATA_FLOAT
#define NAME_DATA_DEC    FIELD_NAME"%s" NORM "="DATA_DEC
#define NAME_DATA_HEX    FIELD_NAME"%s" NORM "="DATA_HEX
#define NAME_DATA_2HEX    FIELD_NAME"%s" NORM "="DATA_2HEX
#define NAME_DATA_4HEX    FIELD_NAME"%s" NORM "="DATA_4HEX
#define NAME_DATA_6HEX    FIELD_NAME"%s" NORM "="DATA_6HEX
#define NAME_DATA_8HEX    FIELD_NAME"%s" NORM "="DATA_8HEX
#define NAME_DATA_STR    FIELD_NAME"%s" NORM "="DATA_STR
#define VERBOSEA "("VERBOSE_STR")"

#define DATASOURCEADDRESS "["COLOUR_CYAN"%08x"NORM"]"


        // This is the wrapping width
#define LINE_WIDTH (100)

        // The indent used for lines that continue onto the next one
    // 24 spaces
#define INDENT_SIZE (25)
#define INDENT "                        :"        // Note, the last char MUST not be a space


typedef enum {
    NO_ERROR = 0,
    ERROR_FATAL_CONT = 2,        // A fatal error was found, but it's possible to keep going and look for more errors.
    ERROR_FATAL_HALT = 4,        // A fatal error was found, and it means it's not possible to look ahead for more errors.
    ERROR_WARNING = 8
} DMA_ERROR_REPORTING;

#define ASSERT(test, str)      if(!(test)) { printf("Line %d: ", __LINE__); printf(str); printf("\n"); Exit(1); }

#define FATAL(s) (((s) & (ERROR_FATAL_HALT | ERROR_FATAL_CONT)) != 0)
#define WARNING(s) (((s) & ERROR_WARNING) != 0)

typedef enum {
    ERR__start                        = 0,
    ERR_DEBUG_TOO_MANY_WARNINGS        = 5, // too many warnings to continue
    ERR_NULL_NEXTTAG                = 10, // attempted to obtain 'nextTag' but it was unexpectedly NULL.
    ERR_RESERVED_PCE                = 20, // PCE field is set to 'reserved' value.
    ERR_DMA_ALIGNMENT                = 30, // dma tag is not quad/word aligned.
    ERR_DMA_INVALID_ADDRESS            = 40, // dma tag does not lie within main memory or scratch pad!
    ERR_CALLSTACK_OVERFLOW            = 60, // CALL tag encountered, but callstack is full!
    ERR_INVALID_TAG_FOR_CHANNEL        = 70, // This tag cannot be used on this DMA channel
    ERR_CANT_FIND_TAG_WITH_DATA        = 80, // Cannot find any DMA tag in the entire list which has data to transfer
    ERR_INSUFFICIENT_DATA            = 90, // Need more data, but the DMA chain has terminated or an error occurred
    ERR_DMA_INVALID_DIR                = 100, // Dn_CHCR.DIR mode is not handled
    ERR_DMA_INVALID_MOD                = 110, // Dn_CHCR.MOD > 1 is not handled
    ERR_DMA_OPENFILE                = 120, // Could not open a DMA virtual file

        // VIF related errors
    ERR_VIF_CURSOR_AT_END            = 300, // VIF cursor tried to move, but couldn't because there was insufficient data
    ERR_VIF_UNKNOWN_UNPACK_FORMAT    = 310, // Unknown UNPACK format in VIF code.
    ERR_VIF_MPG_ALIGNMENT            = 320, // MPG statement is not properly aligned.
    ERR_VIF_LIST_ALIGNMENT            = 330, // VIF list is not aligned on a 4 byte boundary
    ERR_VIF_UNKNOWN_VIFCODE            = 340, // An unknown VIF code was encountered
    ERR_VIF_INVALID_VIFCODE            = 350, // An valid VIF code was found on a VIF channel (i.e. 0) that does not support it.
    ERR_VIF_INVALID_CHANNEL            = 360, // You are trying to decode via a channel which is not SCE_DMA_VIF[0/1]
    ERR_VIF_INVALID_MODE            = 380, // MODE register is set to 3, which is 'undefined'.
    ERR_VIF_INVALID_CYCLE            = 390, // The CYCLE register has an invalid setting.
    ERR_VIF_UNPACK_TOO_SHORT        = 400, // The UNPACK function completed, but the internal VIFCODE.length was not 0.
                                            // A Logic error most likely, or the DMA ended prematurely.
    ERR_VIF_MPG_INCOMPLETE            = 410, // Error obtaining more data for a disassembly of an MPG vifcode
    ERR_VIF_STROWCOL_INCOMPLETE        = 420, // Error obtaining more data for a disassembly of an STROW/STCOL vifcode
    ERR_VIF_STMASK_INCOMPLETE        = 430, // Error obtaining more data for a disassembly of an STMASK vifcode

    ERR_GIF_INVALID_PRIM            = 700, // An invalid primitive type was specified in the PRIM field.
    ERR_GIF_INVALID_REG                = 710, // An invalid register number was specified in a REGS field.
    ERR_GIF_INSUFFICIENT_DATA        = 720, // Tried to examine a tag or register setting, but the DMA
                                            // ended prematurely.
    ERR_GIF_INVALID_REGISTER        = 730, // The disassembler encountered a reference to an invalid GS register.
    ERR_GIF_LIST_ALIGNMENT            = 740, // GIF list is not aligned on a 4 byte boundary
    ERR_GIF_INVALID_DIR                = 750, // DIR value is not handled
    ERR_GIF_INVALID_ADDR            = 760, // GIFTAG or register is at an invalid address

    ERR___end
} DMA_ERROR;

typedef enum {
    WARN__start = 1000,
    WARN_UNUSED_TAG_BITS_NON_ZERO    = 1010,    // Unused bits in the DMA tag are not zero - possibly
                                            // because >= 1MB is trying to be transferred.
    WARN_ADDR_ALIGNMENT                = 1020, // 'ADDR' field in tag is not aligned to quadword boundary
    WARN_PREMATURE_END                = 1030, // tag encountered specifying the end of the
                                            // DMA transfer, but call stack not empty
    WARN_DMA_LOOKS_SPR                = 1040, // DMA address looks like a SPR address, but bit 31 is not set
    WARN_DMA_NORMAL_QWC_ZERO        = 1050, // 'Normal' DMA started, but QWC == 0
    WARN_DMA_ASP_NOT_ZERO            = 1060, // Source Chain started with CHCR.ASP != 0
    WARN_DMA_TTE_IN_NORM_MODE        = 1070, // TTE is set to 1 in Normal transfer mode
    WARN_DMA_TTE_IN_GIF_CHANNEL        = 1080, // TTE is set to 1 for Source Chain transfer to GIF channel
    WARN_DMA_QWC_NOT_ZERO            = 1090, // Source Chain mode transfer started, but QWC != 0.

    WARN_VIF_INDETERMINATE_WRITE    = 3000, // Indeterminate word is being written by UNPACK
    WARN_VIF_DIRECT_INCOMPLETE        = 3010, // GIF is awaiting more data when DIRECT/DIRECTHL ends
    WARN_VIF_INVALID_ADDRESS        = 3020, // You are trying to Unpack to an invalid VU memory address (will wrap around)

    WARN_GIF_PRE_DISABLED            = 5000, // PRE bit is set in a GIFTAG, but mode is not PACKED.
    WARN_GIF_SMALL_NREG                = 5010, // Registers are set, but NREG is not high enough to use them
    WARN_GIF_INV_FIELD                = 5030, // An invalid field has been found in a GS Register
    WARN_GIF_TTE_ON                    = 5040,    // TTE bit is enabled for a transfer thru PATH3
    WARN_GIF_LAST_EOP_ZERO            = 5050, // EOP bit was not set in the last GIF tag.
    WARN_GIF_REGLIST_A_D            = 5060, // A+D field is in one of the REGS fields in REGLIST mode
    WARN_GIF_EXPECTING_DATA            = 5070, // GIF_disassemble ended, but LOOPCNT was not 0 (GIF was expecting more data)
    WARN__end
} DMA_WARNING;

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
extern "C" {
#endif

extern char gErrorBuffer[];
extern char gTempString[];
extern char *gOutputBuffer;

void DEBUG_parseConfig(char *initString);
void DEBUG_reset(void);
int DEBUG_addError(int errNum, int severity, char *errString);
int DEBUG_addToOutputBuffer(char *s);
int DEBUG_strlen(char *s);
void DEBUG_addField(debug_msg_type type, char *final, char *fmt, ...);
void DEBUG_saveBuffers(char *filename, BOOL append);

void DEBUG_init(char *cs);

#if defined(__LANGUAGE_C_PLUS_PLUS)||defined(__cplusplus)||defined(c_plusplus)
}
#endif

