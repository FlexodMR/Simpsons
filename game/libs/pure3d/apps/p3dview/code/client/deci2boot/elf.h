/* This file defines standard ELF types, structures, and macros.
    Copyright (C) 1995, 1996, 1997 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
    Contributed by Ian Lance Taylor <ian@cygnus.com>.

    The GNU C Library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Library General Public License as
    published by the Free Software Foundation; either version 2 of the
    License, or (at your option) any later version.

    The GNU C Library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Library General Public License for more details.

    You should have received a copy of the GNU Library General Public
    License along with the GNU C Library; see the file COPYING.LIB.  If not,
    write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
    Boston, MA 02111-1307, USA.  */

#ifndef _ELF_H

#define    _ELF_H 1

/* Standard ELF types.  Using __attribute__ mode ensures that GCC
    will choose the right number of bits for these types.  */

/* Type for a 16-bit quantity.  */
typedef unsigned short Elf32_Half;
typedef unsigned int Elf64_Half;

/* Types for signed and unsigned 32-bit quantities.  */
typedef unsigned int Elf32_Word;
typedef         int Elf32_Sword;
typedef unsigned int Elf64_Word;
typedef         int Elf64_Sword;

/* Types for signed and unsigned 64-bit quantities.  */
typedef unsigned int Elf32_Xword;
typedef         int Elf32_Sxword;
typedef unsigned int Elf64_Xword;
typedef         int Elf64_Sxword;

/* Type of addresses.  */
typedef unsigned int Elf32_Addr;
typedef unsigned int Elf64_Addr;

/* Type of file offsets.  */
typedef unsigned int Elf32_Off;
typedef unsigned int Elf64_Off;

/* Type for section indices, which are 16-bit quantities.  */
typedef unsigned int Elf32_Section;
typedef unsigned int Elf64_Section;

/* Type of symbol indices.  */
typedef unsigned int Elf32_Symndx;
typedef unsigned int Elf64_Symndx;


/* The ELF file header.  This appears at the start of every ELF file.  */

#define EI_NIDENT (16)

typedef struct
{
  unsigned char    e_ident[EI_NIDENT];    /* Magic number and other info */
  Elf32_Half    e_type;            /* Object file type */
  Elf32_Half    e_machine;        /* Architecture */
  Elf32_Word    e_version;        /* Object file version */
  Elf32_Addr    e_entry;        /* Entry point virtual address */
  Elf32_Off    e_phoff;        /* Program header table file offset */
  Elf32_Off    e_shoff;        /* Section header table file offset */
  Elf32_Word    e_flags;        /* Processor-specific flags */
  Elf32_Half    e_ehsize;        /* ELF header size in bytes */
  Elf32_Half    e_phentsize;        /* Program header table entry size */
  Elf32_Half    e_phnum;        /* Program header table entry count */
  Elf32_Half    e_shentsize;        /* Section header table entry size */
  Elf32_Half    e_shnum;        /* Section header table entry count */
  Elf32_Half    e_shstrndx;        /* Section header string table index */
} Elf32_Ehdr;

typedef struct
{
  unsigned char    e_ident[EI_NIDENT];    /* Magic number and other info */
  Elf64_Half    e_type;            /* Object file type */
  Elf64_Half    e_machine;        /* Architecture */
  Elf64_Word    e_version;        /* Object file version */
  Elf64_Addr    e_entry;        /* Entry point virtual address */
  Elf64_Off    e_phoff;        /* Program header table file offset */
  Elf64_Off    e_shoff;        /* Section header table file offset */
  Elf64_Word    e_flags;        /* Processor-specific flags */
  Elf64_Half    e_ehsize;        /* ELF header size in bytes */
  Elf64_Half    e_phentsize;        /* Program header table entry size */
  Elf64_Half    e_phnum;        /* Program header table entry count */
  Elf64_Half    e_shentsize;        /* Section header table entry size */
  Elf64_Half    e_shnum;        /* Section header table entry count */
  Elf64_Half    e_shstrndx;        /* Section header string table index */
} Elf64_Ehdr;

/* Fields in the e_ident array.  The EI_* macros are indices into the
    array.  The macros under each EI_* macro are the values the byte
    may have.  */

#define EI_MAG0        0        /* File identification byte 0 index */
#define ELFMAG0        0x7f        /* Magic number byte 0 */

#define EI_MAG1        1        /* File identification byte 1 index */
#define ELFMAG1        'E'        /* Magic number byte 1 */

#define EI_MAG2        2        /* File identification byte 2 index */
#define ELFMAG2        'L'        /* Magic number byte 2 */

#define EI_MAG3        3        /* File identification byte 3 index */
#define ELFMAG3        'F'        /* Magic number byte 3 */

/* Conglomeration of the identification bytes, for easy testing as a word.  */
#define    ELFMAG        "\177ELF"
#define    SELFMAG        4

#define EI_CLASS    4        /* File class byte index */
#define ELFCLASSNONE    0        /* Invalid class */
#define ELFCLASS32    1        /* 32-bit objects */
#define ELFCLASS64    2        /* 64-bit objects */

#define EI_DATA        5        /* Data encoding byte index */
#define ELFDATANONE    0        /* Invalid data encoding */
#define ELFDATA2LSB    1        /* 2's complement, little endian */
#define ELFDATA2MSB    2        /* 2's complement, big endian */

#define EI_VERSION    6        /* File version byte index */
                    /* Value must be EV_CURRENT */

#define EI_PAD        7        /* Byte index of padding bytes */

/* Legal values for e_type (object file type).  */

#define ET_NONE        0        /* No file type */
#define ET_REL        1        /* Relocatable file */
#define ET_EXEC        2        /* Executable file */
#define ET_DYN        3        /* Shared object file */
#define ET_CORE        4        /* Core file */
#define    ET_NUM        5        /* Number of defined types.  */
#define ET_LOPROC    0xff00        /* Processor-specific */
#define ET_HIPROC    0xffff        /* Processor-specific */

/* Legal values for e_machine (architecture).  */

#define EM_NONE        0        /* No machine */
#define EM_M32        1        /* AT&T WE 32100 */
#define EM_SPARC    2        /* SUN SPARC */
#define EM_386        3        /* Intel 80386 */
#define EM_68K        4        /* Motorola m68k family */
#define EM_88K        5        /* Motorola m88k family */
#define EM_486        6        /* Intel 80486 */
#define EM_860        7        /* Intel 80860 */
#define EM_MIPS        8        /* MIPS R3000 big-endian */
#define EM_S370        9        /* Amdahl */
#define EM_MIPS_RS4_BE 10        /* MIPS R4000 big-endian */

#define EM_SPARC64     11        /* SPARC v9 (not official) 64-bit */

#define EM_PARISC      15        /* HPPA */
#define EM_PPC         20        /* PowerPC */

/* If it is necessary to assign new unofficial EM_* values, please
    pick large random numbers (0x8523, 0xa7f2, etc.) to minimize the
    chances of collision with official or non-GNU unofficial values.  */

#define EM_ALPHA    0x9026

/* Legal values for e_version (version).  */

#define EV_NONE        0        /* Invalid ELF version */
#define EV_CURRENT    1        /* Current version */

/* Section header.  */

typedef struct
{
  Elf32_Word    sh_name;        /* Section name (string tbl index) */
  Elf32_Word    sh_type;        /* Section type */
  Elf32_Word    sh_flags;        /* Section flags */
  Elf32_Addr    sh_addr;        /* Section virtual addr at execution */
  Elf32_Off    sh_offset;        /* Section file offset */
  Elf32_Word    sh_size;        /* Section size in bytes */
  Elf32_Word    sh_link;        /* Link to another section */
  Elf32_Word    sh_info;        /* Additional section information */
  Elf32_Word    sh_addralign;        /* Section alignment */
  Elf32_Word    sh_entsize;        /* Entry size if section holds table */
} Elf32_Shdr;

typedef struct
{
  Elf64_Word    sh_name;        /* Section name (string tbl index) */
  Elf64_Word    sh_type;        /* Section type */
  Elf64_Xword    sh_flags;        /* Section flags */
  Elf64_Addr    sh_addr;        /* Section virtual addr at execution */
  Elf64_Off    sh_offset;        /* Section file offset */
  Elf64_Xword    sh_size;        /* Section size in bytes */
  Elf64_Word    sh_link;        /* Link to another section */
  Elf64_Word    sh_info;        /* Additional section information */
  Elf64_Xword    sh_addralign;        /* Section alignment */
  Elf64_Xword    sh_entsize;        /* Entry size if section holds table */
} Elf64_Shdr;

/* Special section indices.  */

#define SHN_UNDEF    0        /* Undefined section */
#define SHN_LORESERVE    0xff00        /* Start of reserved indices */
#define SHN_LOPROC    0xff00        /* Start of processor-specific */
#define SHN_HIPROC    0xff1f        /* End of processor-specific */
#define SHN_ABS        0xfff1        /* Associated symbol is absolute */
#define SHN_COMMON    0xfff2        /* Associated symbol is common */
#define SHN_HIRESERVE    0xffff        /* End of reserved indices */

/* Legal values for sh_type (section type).  */

#define SHT_NULL    0        /* Section header table entry unused */
#define SHT_PROGBITS    1        /* Program data */
#define SHT_SYMTAB    2        /* Symbol table */
#define SHT_STRTAB    3        /* String table */
#define SHT_RELA    4        /* Relocation entries with addends */
#define SHT_HASH    5        /* Symbol hash table */
#define SHT_DYNAMIC    6        /* Dynamic linking information */
#define SHT_NOTE    7        /* Notes */
#define SHT_NOBITS    8        /* Program space with no data (bss) */
#define SHT_REL        9        /* Relocation entries, no addends */
#define SHT_SHLIB    10        /* Reserved */
#define SHT_DYNSYM    11        /* Dynamic linker symbol table */
#define    SHT_NUM        12        /* Number of defined types.  */
#define SHT_LOSUNW    0x6ffffffd    /* Sun-specific low bound.  */
#define SHT_GNU_verdef    0x6ffffffd    /* Version definition section.  */
#define SHT_GNU_verneed    0x6ffffffe    /* Version needs section.  */
#define SHT_GNU_versym    0x6fffffff    /* Version symbol table.  */
#define SHT_HISUNW    0x6fffffff    /* Sun-specific high bound.  */
#define SHT_LOPROC    0x70000000    /* Start of processor-specific */
#define SHT_HIPROC    0x7fffffff    /* End of processor-specific */
#define SHT_LOUSER    0x80000000    /* Start of application-specific */
#define SHT_HIUSER    0x8fffffff    /* End of application-specific */

/* Legal values for sh_flags (section flags).  */

#define SHF_WRITE    (1 << 0)    /* Writable */
#define SHF_ALLOC    (1 << 1)    /* Occupies memory during execution */
#define SHF_EXECINSTR    (1 << 2)    /* Executable */
#define SHF_MASKPROC    0xf0000000    /* Processor-specific */

/* Symbol table entry.  */

typedef struct
{
  Elf32_Word    st_name;        /* Symbol name (string tbl index) */
  Elf32_Addr    st_value;        /* Symbol value */
  Elf32_Word    st_size;        /* Symbol size */
  unsigned char    st_info;        /* Symbol type and binding */
  unsigned char    st_other;        /* No defined meaning, 0 */
  Elf32_Section    st_shndx;        /* Section index */
} Elf32_Sym;

typedef struct
{
  Elf64_Word    st_name;        /* Symbol name (string tbl index) */
  unsigned char    st_info;        /* Symbol type and binding */
  unsigned char st_other;        /* No defined meaning, 0 */
  Elf64_Section    st_shndx;        /* Section index */
  Elf64_Addr    st_value;        /* Symbol value */
  Elf64_Xword    st_size;        /* Symbol size */
} Elf64_Sym;

/* Special section index.  */

#define SHN_UNDEF    0        /* No section, undefined symbol.  */

/* How to extract and insert information held in the st_info field.  */

#define ELF32_ST_BIND(val)        (((unsigned char) (val)) >> 4)
#define ELF32_ST_TYPE(val)        ((val) & 0xf)
#define ELF32_ST_INFO(bind, type)    (((bind) << 4) + ((type) & 0xf))

/* Both Elf32_Sym and Elf64_Sym use the same one-byte st_info field.  */
#define ELF64_ST_BIND(val)        ELF32_ST_BIND (val)
#define ELF64_ST_TYPE(val)        ELF32_ST_TYPE (val)
#define ELF64_ST_INFO(bind, type)    ELF32_ST_INFO ((bind), (type))

/* Legal values for ST_BIND subfield of st_info (symbol binding).  */

#define STB_LOCAL    0        /* Local symbol */
#define STB_GLOBAL    1        /* Global symbol */
#define STB_WEAK    2        /* Weak symbol */
#define    STB_NUM        3        /* Number of defined types.  */
#define STB_LOPROC    13        /* Start of processor-specific */
#define STB_HIPROC    15        /* End of processor-specific */

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */

#define STT_NOTYPE    0        /* Symbol type is unspecified */
#define STT_OBJECT    1        /* Symbol is a data object */
#define STT_FUNC    2        /* Symbol is a code object */
#define STT_SECTION    3        /* Symbol associated with a section */
#define STT_FILE    4        /* Symbol's name is file name */
#define    STT_NUM        5        /* Number of defined types.  */
#define STT_LOPROC    13        /* Start of processor-specific */
#define STT_HIPROC    15        /* End of processor-specific */


/* Symbol table indices are found in the hash buckets and chain table
    of a symbol hash table section.  This special index value indicates
    the end of a chain, meaning no further symbols are found in that bucket.  */

#define STN_UNDEF    0        /* End of a chain.  */


/* Relocation table entry without addend (in section of type SHT_REL).  */

typedef struct
{
  Elf32_Addr    r_offset;        /* Address */
  Elf32_Word    r_info;            /* Relocation type and symbol index */
} Elf32_Rel;

/* I have seen two different definitions of the Elf64_Rel and
    Elf64_Rela structures, so we'll leave them out until Novell (or
    whoever) gets their act together.  */
/* The following, at least, is used on Sparc v9, MIPS, and Alpha.  */

typedef struct
{
  Elf64_Addr    r_offset;        /* Address */
  Elf64_Xword    r_info;            /* Relocation type and symbol index */
} Elf64_Rel;

/* Relocation table entry with addend (in section of type SHT_RELA).  */

typedef struct
{
  Elf32_Addr    r_offset;        /* Address */
  Elf32_Word    r_info;            /* Relocation type and symbol index */
  Elf32_Sword    r_addend;        /* Addend */
} Elf32_Rela;

typedef struct
{
  Elf64_Addr    r_offset;        /* Address */
  Elf64_Xword    r_info;            /* Relocation type and symbol index */
  Elf64_Sxword    r_addend;        /* Addend */
} Elf64_Rela;

/* How to extract and insert information held in the r_info field.  */

#define ELF32_R_SYM(val)        ((val) >> 8)
#define ELF32_R_TYPE(val)        ((val) & 0xff)
#define ELF32_R_INFO(sym, type)        (((sym) << 8) + ((type) & 0xff))

#define ELF64_R_SYM(i)            ((i) >> 32)
#define ELF64_R_TYPE(i)            ((i) & 0xffffffff)
#define ELF64_R_INFO(sym,type)        (((sym) << 32) + (type))

/* Program segment header.  */

typedef struct
{
  Elf32_Word    p_type;            /* Segment type */
  Elf32_Off    p_offset;        /* Segment file offset */
  Elf32_Addr    p_vaddr;        /* Segment virtual address */
  Elf32_Addr    p_paddr;        /* Segment physical address */
  Elf32_Word    p_filesz;        /* Segment size in file */
  Elf32_Word    p_memsz;        /* Segment size in memory */
  Elf32_Word    p_flags;        /* Segment flags */
  Elf32_Word    p_align;        /* Segment alignment */
} Elf32_Phdr;

typedef struct
{
  Elf64_Word    p_type;            /* Segment type */
  Elf64_Word    p_flags;        /* Segment flags */
  Elf64_Off    p_offset;        /* Segment file offset */
  Elf64_Addr    p_vaddr;        /* Segment virtual address */
  Elf64_Addr    p_paddr;        /* Segment physical address */
  Elf64_Xword    p_filesz;        /* Segment size in file */
  Elf64_Xword    p_memsz;        /* Segment size in memory */
  Elf64_Xword    p_align;        /* Segment alignment */
} Elf64_Phdr;

/* Legal values for p_type (segment type).  */

#define    PT_NULL        0        /* Program header table entry unused */
#define PT_LOAD        1        /* Loadable program segment */
#define PT_DYNAMIC    2        /* Dynamic linking information */
#define PT_INTERP    3        /* Program interpreter */
#define PT_NOTE        4        /* Auxiliary information */
#define PT_SHLIB    5        /* Reserved */
#define PT_PHDR        6        /* Entry for header table itself */
#define    PT_NUM        7        /* Number of defined types.  */
#define PT_LOPROC    0x70000000    /* Start of processor-specific */
#define PT_HIPROC    0x7fffffff    /* End of processor-specific */

/* Legal values for p_flags (segment flags).  */

#define PF_X        (1 << 0)    /* Segment is executable */
#define PF_W        (1 << 1)    /* Segment is writable */
#define PF_R        (1 << 2)    /* Segment is readable */
#define PF_MASKPROC    0xf0000000    /* Processor-specific */

/* Legal values for note segment descriptor types for core files. */

#define NT_PRSTATUS    1        /* Contains copy of prstatus struct */
#define NT_FPREGSET    2        /* Contains copy of fpregset struct */
#define NT_PRPSINFO    3        /* Contains copy of prpsinfo struct */

/* Legal values for the  note segment descriptor types for object files.  */

#define NT_VERSION    1        /* Contains a version string.  */


/* Dynamic section entry.  */

typedef struct
{
  Elf32_Sword    d_tag;            /* Dynamic entry type */
  union
     {
        Elf32_Word d_val;            /* Integer value */
        Elf32_Addr d_ptr;            /* Address value */
     } d_un;
} Elf32_Dyn;

typedef struct
{
  Elf64_Sxword    d_tag;            /* Dynamic entry type */
  union
     {
        Elf64_Xword d_val;        /* Integer value */
        Elf64_Addr d_ptr;            /* Address value */
     } d_un;
} Elf64_Dyn;

/* Legal values for d_tag (dynamic entry type).  */

#define DT_NULL        0        /* Marks end of dynamic section */
#define DT_NEEDED    1        /* Name of needed library */
#define DT_PLTRELSZ    2        /* Size in bytes of PLT relocs */
#define DT_PLTGOT    3        /* Processor defined value */
#define DT_HASH        4        /* Address of symbol hash table */
#define DT_STRTAB    5        /* Address of string table */
#define DT_SYMTAB    6        /* Address of symbol table */
#define DT_RELA        7        /* Address of Rela relocs */
#define DT_RELASZ    8        /* Total size of Rela relocs */
#define DT_RELAENT    9        /* Size of one Rela reloc */
#define DT_STRSZ    10        /* Size of string table */
#define DT_SYMENT    11        /* Size of one symbol table entry */
#define DT_INIT        12        /* Address of init function */
#define DT_FINI        13        /* Address of termination function */
#define DT_SONAME    14        /* Name of shared object */
#define DT_RPATH    15        /* Library search path */
#define DT_SYMBOLIC    16        /* Start symbol search here */
#define DT_REL        17        /* Address of Rel relocs */
#define DT_RELSZ    18        /* Total size of Rel relocs */
#define DT_RELENT    19        /* Size of one Rel reloc */
#define DT_PLTREL    20        /* Type of reloc in PLT */
#define DT_DEBUG    21        /* For debugging; unspecified */
#define DT_TEXTREL    22        /* Reloc might modify .text */
#define DT_JMPREL    23        /* Address of PLT relocs */
#define    DT_NUM        24        /* Number used */
#define DT_LOPROC    0x70000000    /* Start of processor-specific */
#define DT_HIPROC    0x7fffffff    /* End of processor-specific */
#define    DT_PROCNUM    DT_MIPS_NUM    /* Most used by any processor */

/* The versioning entry types.  The next are defined as part of the
    GNU extension.  */
#define DT_VERSYM    0x6ffffff0

/* These were chosen by Sun.  */
#define    DT_VERDEF    0x6ffffffc    /* Address of version definition
                       table */
#define    DT_VERDEFNUM    0x6ffffffd    /* Number of version definitions */
#define    DT_VERNEED    0x6ffffffe    /* Address of table with needed
                       versions */
#define    DT_VERNEEDNUM    0x6fffffff    /* Number of needed versions */
#define DT_VERSIONTAGIDX(tag)    (DT_VERNEEDNUM - (tag))    /* Reverse order! */
#define DT_VERSIONTAGNUM 16

/* Sun added these machine-independent extensions in the "processor-specific"
    range.  Be compatible.  */
#define DT_AUXILIARY    0x7ffffffd      /* Shared object to load before self */
#define DT_FILTER       0x7fffffff      /* Shared object to get values from */
#define DT_EXTRATAGIDX(tag)    ((Elf32_Word)-((Elf32_Sword) (tag) <<1>>1)-1)
#define DT_EXTRANUM    3

/* Version definition sections.  */

typedef struct
{
  Elf32_Half    vd_version;        /* Version revision */
  Elf32_Half    vd_flags;        /* Version information */
  Elf32_Half    vd_ndx;            /* Version Index */
  Elf32_Half    vd_cnt;            /* Number of associated aux entries */
  Elf32_Word    vd_hash;        /* Version name hash value */
  Elf32_Word    vd_aux;            /* Offset in bytes to verdaux array */
  Elf32_Word    vd_next;        /* Offset in bytes to next verdef
                       entry */
} Elf32_Verdef;

/* Legal values for vd_version (version revision).  */
#define VER_DEF_NONE    0        /* No version */
#define VER_DEF_CURRENT    1        /* Current version */
#define VER_DEF_NUM    2        /* Given version number */

/* Legal values for vd_flags (version information flags).  */
#define VER_FLG_BASE    0x1        /* Version definition of file itself */
#define VER_FLG_WEAK    0x2        /* Weak version identifier */

/* Auxialiary version information.  */

typedef struct
{
  Elf32_Addr    vda_name;        /* Version or dependency names */
  Elf32_Word    vda_next;        /* Offset in bytes to next verdaux
                       entry */
} Elf32_Verdaux;

/* Version dependency section.  */

typedef struct
{
  Elf32_Half    vn_version;        /* Version of structure */
  Elf32_Half    vn_cnt;            /* Number of associated aux entries */
  Elf32_Addr    vn_file;        /* Offset of filename for this
                       dependency */
  Elf32_Word    vn_aux;            /* Offset in bytes to vernaux array */
  Elf32_Word    vn_next;        /* Offset in bytes to next verneed
                       entry */
} Elf32_Verneed;

/* Legal values for vn_version (version revision).  */
#define VER_NEED_NONE     0        /* No version */
#define VER_NEED_CURRENT 1        /* Current version */
#define VER_NEED_NUM     2        /* Given version number */

/* Auxiliary needed version information.  */

typedef struct
{
  Elf32_Word    vna_hash;        /* Hash value of dependency name */
  Elf32_Half    vna_flags;        /* Dependency specific information */
  Elf32_Half    vna_other;        /* Unused */
  Elf32_Addr    vna_name;        /* Dependency name string offset */
  Elf32_Word    vna_next;        /* Offset in bytes to next vernaux
                       entry */
} Elf32_Vernaux;

/* Legal values for vna_flags.  */
#define VER_FLG_WEAK    0x2        /* Weak verison identifier */


/* Auxiliary vector.  */

/* This vector is normally only used by the program interpreter.  The
    usual definition in an ABI supplement uses the name auxv_t.  The
    vector is not usually defined in a standard <elf.h> file, but it
    can't hurt.  We rename it to avoid conflicts.  The sizes of these
    types are an arrangement between the exec server and the program
    interpreter, so we don't fully specify them here.  */

typedef struct
{
  int a_type;            /* Entry type */
  union
     {
        long int a_val;        /* Integer value */
        void *a_ptr;        /* Pointer value */
        void (*a_fcn) (void);    /* Function pointer value */
     } a_un;
} Elf32_auxv_t;

typedef struct
{
  long int a_type;        /* Entry type */
  union
     {
        long int a_val;        /* Integer value */
        void *a_ptr;        /* Pointer value */
        void (*a_fcn) (void);    /* Function pointer value */
     } a_un;
} Elf64_auxv_t;

/* Legal values for a_type (entry type).  */

#define AT_NULL        0        /* End of vector */
#define AT_IGNORE    1        /* Entry should be ignored */
#define AT_EXECFD    2        /* File descriptor of program */
#define AT_PHDR        3        /* Program headers for program */
#define AT_PHENT    4        /* Size of program header entry */
#define AT_PHNUM    5        /* Number of program headers */
#define AT_PAGESZ    6        /* System page size */
#define AT_BASE        7        /* Base address of interpreter */
#define AT_FLAGS    8        /* Flags */
#define AT_ENTRY    9        /* Entry point of program */
#define AT_NOTELF    10        /* Program is not ELF */
#define AT_UID        11        /* Real uid */
#define AT_EUID        12        /* Effective uid */
#define AT_GID        13        /* Real gid */
#define AT_EGID        14        /* Effective gid */

/* Motorola 68k specific definitions.  */

/* m68k relocs.  */

#define R_68K_NONE    0        /* No reloc */
#define R_68K_32    1        /* Direct 32 bit  */
#define R_68K_16    2        /* Direct 16 bit  */
#define R_68K_8        3        /* Direct 8 bit  */
#define R_68K_PC32    4        /* PC relative 32 bit */
#define R_68K_PC16    5        /* PC relative 16 bit */
#define R_68K_PC8    6        /* PC relative 8 bit */
#define R_68K_GOT32    7        /* 32 bit PC relative GOT entry */
#define R_68K_GOT16    8        /* 16 bit PC relative GOT entry */
#define R_68K_GOT8    9        /* 8 bit PC relative GOT entry */
#define R_68K_GOT32O    10        /* 32 bit GOT offset */
#define R_68K_GOT16O    11        /* 16 bit GOT offset */
#define R_68K_GOT8O    12        /* 8 bit GOT offset */
#define R_68K_PLT32    13        /* 32 bit PC relative PLT address */
#define R_68K_PLT16    14        /* 16 bit PC relative PLT address */
#define R_68K_PLT8    15        /* 8 bit PC relative PLT address */
#define R_68K_PLT32O    16        /* 32 bit PLT offset */
#define R_68K_PLT16O    17        /* 16 bit PLT offset */
#define R_68K_PLT8O    18        /* 8 bit PLT offset */
#define R_68K_COPY    19        /* Copy symbol at runtime */
#define R_68K_GLOB_DAT    20        /* Create GOT entry */
#define R_68K_JMP_SLOT    21        /* Create PLT entry */
#define R_68K_RELATIVE    22        /* Adjust by program base */

/* Intel 80386 specific definitions.  */

/* i386 relocs.  */

#define R_386_NONE    0        /* No reloc */
#define R_386_32    1        /* Direct 32 bit  */
#define R_386_PC32    2        /* PC relative 32 bit */
#define R_386_GOT32    3        /* 32 bit GOT entry */
#define R_386_PLT32    4        /* 32 bit PLT address */
#define R_386_COPY    5        /* Copy symbol at runtime */
#define R_386_GLOB_DAT    6        /* Create GOT entry */
#define R_386_JMP_SLOT    7        /* Create PLT entry */
#define R_386_RELATIVE    8        /* Adjust by program base */
#define R_386_GOTOFF    9        /* 32 bit offset to GOT */
#define R_386_GOTPC    10        /* 32 bit PC relative offset to GOT */

/* SUN SPARC specific definitions.  */

/* SPARC relocs.  */

#define R_SPARC_NONE    0        /* No reloc */
#define R_SPARC_8    1        /* Direct 8 bit */
#define R_SPARC_16    2        /* Direct 16 bit */
#define R_SPARC_32    3        /* Direct 32 bit */
#define R_SPARC_DISP8    4        /* PC relative 8 bit */
#define R_SPARC_DISP16    5        /* PC relative 16 bit */
#define R_SPARC_DISP32    6        /* PC relative 32 bit */
#define R_SPARC_WDISP30    7        /* PC relative 30 bit shifted */
#define R_SPARC_WDISP22    8        /* PC relative 22 bit shifted */
#define R_SPARC_HI22    9        /* High 22 bit */
#define R_SPARC_22    10        /* Direct 22 bit */
#define R_SPARC_13    11        /* Direct 13 bit */
#define R_SPARC_LO10    12        /* Truncated 10 bit */
#define R_SPARC_GOT10    13        /* Truncated 10 bit GOT entry */
#define R_SPARC_GOT13    14        /* 13 bit GOT entry */
#define R_SPARC_GOT22    15        /* 22 bit GOT entry shifted */
#define R_SPARC_PC10    16        /* PC relative 10 bit truncated */
#define R_SPARC_PC22    17        /* PC relative 22 bit shifted */
#define R_SPARC_WPLT30    18        /* 30 bit PC relative PLT address */
#define R_SPARC_COPY    19        /* Copy symbol at runtime */
#define R_SPARC_GLOB_DAT 20        /* Create GOT entry */
#define R_SPARC_JMP_SLOT 21        /* Create PLT entry */
#define R_SPARC_RELATIVE 22        /* Adjust by program base */
#define R_SPARC_UA32    23        /* Direct 32 bit unaligned */

/* MIPS R3000 specific definitions.  */

/* Legal values for e_flags field of Elf32_Ehdr.  */

#define EF_MIPS_NOREORDER 1        /* A .noreorder directive was used */
#define EF_MIPS_PIC      2        /* Contains PIC code */
#define EF_MIPS_CPIC      4        /* Uses PIC calling sequence */
#define EF_MIPS_ARCH      0xf0000000    /* MIPS architecture level */

/* Legal values for MIPS architecture level.  */

#define E_MIPS_ARCH_1      0x00000000    /* -mips1 code.  */
#define E_MIPS_ARCH_2      0x10000000    /* -mips2 code.  */
#define E_MIPS_ARCH_3      0x20000000    /* -mips3 code.  */

/* Special section indices.  */

#define SHN_MIPS_ACOMMON 0xff00        /* Allocated common symbols */
#define SHN_MIPS_TEXT     0xff01        /* Allocated test symbols.  */
#define SHN_MIPS_DATA     0xff02        /* Allocated data symbols.  */
#define SHN_MIPS_SCOMMON 0xff03        /* Small common symbols */
#define SHN_MIPS_SUNDEFINED 0xff04    /* Small undefined symbols */

/* Legal values for sh_type field of Elf32_Shdr.  */

#define SHT_MIPS_LIBLIST  0x70000000    /* Shared objects used in link */
#define SHT_MIPS_CONFLICT 0x70000002    /* Conflicting symbols */
#define SHT_MIPS_GPTAB      0x70000003    /* Global data area sizes */
#define SHT_MIPS_UCODE      0x70000004    /* Reserved for SGI/MIPS compilers */
#define SHT_MIPS_DEBUG      0x70000005    /* MIPS ECOFF debugging information */
#define SHT_MIPS_REGINFO  0x70000006    /* Register usage information */
#define SHT_MIPS_OPTIONS  0x7000000d    /* Miscellaneous options.  */
#define SHT_MIPS_DWARF    0x7000001e    /* DWARF debugging information.  */
#define SHT_MIPS_EVENTS      0x70000021    /* Event section.  */

/* Legal values for sh_flags field of Elf32_Shdr.  */

#define SHF_MIPS_GPREL    0x10000000    /* Must be part of global data area */

/* Entries found in sections of type SHT_MIPS_GPTAB.  */

typedef union
{
  struct
     {
        Elf32_Word gt_current_g_value;    /* -G value used for compilation */
        Elf32_Word gt_unused;        /* Not used */
     } gt_header;            /* First entry in section */
  struct
     {
        Elf32_Word gt_g_value;        /* If this value were used for -G */
        Elf32_Word gt_bytes;        /* This many bytes would be used */
     } gt_entry;                /* Subsequent entries in section */
} Elf32_gptab;

/* Entry found in sections of type SHT_MIPS_REGINFO.  */

typedef struct
{
  Elf32_Word    ri_gprmask;        /* General registers used */
  Elf32_Word    ri_cprmask[4];        /* Coprocessor registers used */
  Elf32_Sword    ri_gp_value;        /* $gp register value */
} Elf32_RegInfo;

/* MIPS relocs.  */

#define R_MIPS_NONE    0        /* No reloc */
#define R_MIPS_16    1        /* Direct 16 bit */
#define R_MIPS_32    2        /* Direct 32 bit */
#define R_MIPS_REL32    3        /* PC relative 32 bit */
#define R_MIPS_26    4        /* Direct 26 bit shifted */
#define R_MIPS_HI16    5        /* High 16 bit */
#define R_MIPS_LO16    6        /* Low 16 bit */
#define R_MIPS_GPREL16    7        /* GP relative 16 bit */
#define R_MIPS_LITERAL    8        /* 16 bit literal entry */
#define R_MIPS_GOT16    9        /* 16 bit GOT entry */
#define R_MIPS_PC16    10        /* PC relative 16 bit */
#define R_MIPS_CALL16    11        /* 16 bit GOT entry for function */
#define R_MIPS_GPREL32    12        /* GP relative 32 bit */

/* Legal values for p_type field of Elf32_Phdr.  */

#define PT_MIPS_REGINFO    0x70000000    /* Register usage information */

/* Legal values for d_tag field of Elf32_Dyn.  */

#define DT_MIPS_RLD_VERSION  0x70000001    /* Runtime linker interface version */
#define DT_MIPS_TIME_STAMP   0x70000002    /* Timestamp */
#define DT_MIPS_ICHECKSUM    0x70000003    /* Checksum */
#define DT_MIPS_IVERSION     0x70000004    /* Version string (string tbl index) */
#define DT_MIPS_FLAGS         0x70000005    /* Flags */
#define DT_MIPS_BASE_ADDRESS 0x70000006    /* Base address */
#define DT_MIPS_CONFLICT     0x70000008    /* Address of CONFLICT section */
#define DT_MIPS_LIBLIST         0x70000009    /* Address of LIBLIST section */
#define DT_MIPS_LOCAL_GOTNO  0x7000000a    /* Number of local GOT entries */
#define DT_MIPS_CONFLICTNO   0x7000000b    /* Number of CONFLICT entries */
#define DT_MIPS_LIBLISTNO    0x70000010    /* Number of LIBLIST entries */
#define DT_MIPS_SYMTABNO     0x70000011    /* Number of DYNSYM entries */
#define DT_MIPS_UNREFEXTNO   0x70000012    /* First external DYNSYM */
#define DT_MIPS_GOTSYM         0x70000013    /* First GOT entry in DYNSYM */
#define DT_MIPS_HIPAGENO     0x70000014    /* Number of GOT page table entries */
#define DT_MIPS_RLD_MAP         0x70000016    /* Address of run time loader map.  */
#define DT_MIPS_NUM         0x17

/* Legal values for DT_MIPS_FLAG Elf32_Dyn entry.  */

#define RHF_NONE           0        /* No flags */
#define RHF_QUICKSTART           (1 << 0)    /* Use quickstart */
#define RHF_NOTPOT           (1 << 1)    /* Hash size not power of 2 */
#define RHF_NO_LIBRARY_REPLACEMENT (1 << 2)    /* Ignore LD_LIBRARY_PATH */

/* Entries found in sections of type SHT_MIPS_LIBLIST.  */

typedef struct
{
  Elf32_Word    l_name;            /* Name (string table index) */
  Elf32_Word    l_time_stamp;        /* Timestamp */
  Elf32_Word    l_checksum;        /* Checksum */
  Elf32_Word    l_version;        /* Interface version */
  Elf32_Word    l_flags;        /* Flags */
} Elf32_Lib;

/* Legal values for l_flags.  */

#define LL_EXACT_MATCH      (1 << 0)    /* Require exact match */
#define LL_IGNORE_INT_VER (1 << 1)    /* Ignore interface version */

/* Entries found in sections of type SHT_MIPS_CONFLICT.  */

typedef Elf32_Addr Elf32_Conflict;


/* HPPA specific definitions.  */

/* Legal values for sh_type field of Elf32_Shdr.  */

#define SHT_PARISC_GOT        0x70000000 /* GOT for external data.  */
#define SHT_PARISC_ARCH        0x70000001 /* Architecture extensions.  */
#define SHT_PARISC_GLOBAL    0x70000002 /* Definition of $global$.  */
#define SHT_PARISC_MILLI    0x70000003 /* Millicode routines.  */
#define SHT_PARISC_UNWIND    0x70000004 /* Unwind information.  */
#define SHT_PARISC_PLT        0x70000005 /* Procedure linkage table.  */
#define SHT_PARISC_SDATA    0x70000006 /* Short initialized data.  */
#define SHT_PARISC_SBSS        0x70000007 /* Short uninitialized data.  */
#define SHT_PARISC_SYMEXTN    0x70000008 /* Argument/relocation info.  */
#define SHT_PARISC_STUBS    0x70000009 /* Linker stubs.  */

/* Legal values for sh_flags field of Elf32_Shdr.  */

#define SHF_PARISC_SHORT    0x20000000 /* Section with short addressing. */

/* Legal values for ST_TYPE subfield of st_info (symbol type).  */

#define STT_PARISC_MILLICODE    13    /* Millicode function entry point.  */


/* Alpha specific declarations.  */

/* Alpha relocs.  */

#define R_ALPHA_NONE        0    /* No reloc */
#define R_ALPHA_REFLONG        1    /* Direct 32 bit */
#define R_ALPHA_REFQUAD        2    /* Direct 64 bit */
#define R_ALPHA_GPREL32        3    /* GP relative 32 bit */
#define R_ALPHA_LITERAL        4    /* GP relative 16 bit w/optimization */
#define R_ALPHA_LITUSE        5    /* Optimization hint for LITERAL */
#define R_ALPHA_GPDISP        6    /* Add displacement to GP */
#define R_ALPHA_BRADDR        7    /* PC+4 relative 23 bit shifted */
#define R_ALPHA_HINT        8    /* PC+4 relative 16 bit shifted */
#define R_ALPHA_SREL16        9    /* PC relative 16 bit */
#define R_ALPHA_SREL32        10    /* PC relative 32 bit */
#define R_ALPHA_SREL64        11    /* PC relative 64 bit */
#define R_ALPHA_OP_PUSH        12    /* OP stack push */
#define R_ALPHA_OP_STORE    13    /* OP stack pop and store */
#define R_ALPHA_OP_PSUB        14    /* OP stack subtract */
#define R_ALPHA_OP_PRSHIFT    15    /* OP stack right shift */
#define R_ALPHA_GPVALUE        16
#define R_ALPHA_GPRELHIGH    17
#define R_ALPHA_GPRELLOW    18
#define R_ALPHA_IMMED_GP_16    19
#define R_ALPHA_IMMED_GP_HI32    20
#define R_ALPHA_IMMED_SCN_HI32    21
#define R_ALPHA_IMMED_BR_HI32    22
#define R_ALPHA_IMMED_LO32    23
#define R_ALPHA_COPY        24    /* Copy symbol at runtime */
#define R_ALPHA_GLOB_DAT    25    /* Create GOT entry */
#define R_ALPHA_JMP_SLOT    26    /* Create PLT entry */
#define R_ALPHA_RELATIVE    27    /* Adjust by program base */

#endif    /* elf.h */

