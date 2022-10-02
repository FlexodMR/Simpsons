/* SCEI CONFIDENTIAL
 "PlayStation2" Programmer Tool Runtime Library  Release 1.1
 */
// Version 0.00
// ASCII
// 
// Copyright (C) 1999 Sony Computer Entertainment Inc. All Rights Reserved.
// 
// Version        Date            Design      Log
// --------------------------------------------------------------------
// 0.00           10/13/99        koji        1st version

#include "deci2boot.h"

// define EE architecture
#define ELF_CLASS   ELFCLASS32
#define ELF_DATA    ELFDATA2LSB
#define ELF_ARCH    EM_MIPS
#define ELF_TYPE    ET_EXEC

int ElfOpen(char *fname) {
    int fd;
    unsigned char magic[SELFMAG];

    if ((fd = open(fname, O_RDONLY | O_BINARY)) < 0) return -1;
    if (read(fd, magic, SELFMAG) != SELFMAG) return -2;

    if ((magic[EI_MAG0]!=0x7f) || (magic[EI_MAG1]!='E') 
        || (magic[EI_MAG2]!='L') || (magic[EI_MAG3]!='F')) {
        close(fd);
        return -3;
    }

    lseek(fd, 0, SEEK_SET);
    return fd;
}

int ElfGetEhdr(int fd, Elf32_Ehdr *ehdr) {
    lseek(fd, 0, SEEK_SET);
    if (read(fd, ehdr, sizeof(Elf32_Ehdr)) != sizeof(Elf32_Ehdr)) return 0;
    lseek(fd, 0, SEEK_SET);
    return 1;
}

int ElfIsForEE(Elf32_Ehdr *ehdr) {
    if (ehdr->e_ident[EI_CLASS] != ELF_CLASS) return 1;
    if (ehdr->e_ident[EI_DATA] != ELF_DATA) return 2;
    if (ehdr->e_type != ELF_TYPE) return 3;
    if (ehdr->e_machine != ELF_ARCH) return 4;
    if (ehdr->e_ehsize != sizeof(Elf32_Ehdr)) return 5;
    if (ehdr->e_phentsize != sizeof(Elf32_Phdr)) return 6;

    // section header is optional in ELF executable
    if (ehdr->e_shnum > 0)
        if (ehdr->e_shentsize != sizeof(Elf32_Shdr)) return 7;
    return 0;
}

Elf32_Phdr *ElfGetPhdrTbl(int fd, Elf32_Ehdr *ehdr) {
    int len;
    Elf32_Phdr *phdr;

    lseek(fd, ehdr->e_phoff, SEEK_SET);

    len = ehdr->e_phentsize * ehdr->e_phnum;
    if ((phdr=(Elf32_Phdr *)malloc(len)) == NULL) return NULL;

    if (read(fd, phdr, len) != len) {
        free(phdr);
        return phdr = NULL;
    }
    lseek(fd, 0, SEEK_SET);
    return phdr;
}

Elf32_Shdr *ElfGetShdrTbl(int fd, Elf32_Ehdr *ehdr) {
    int len;
    Elf32_Shdr *shdr;

    lseek(fd, ehdr->e_shoff, SEEK_SET);

    len = ehdr->e_shentsize * ehdr->e_shnum;
    if ((shdr=(Elf32_Shdr *)malloc(len)) == NULL) return NULL;

    if (read(fd, shdr, len) != len) {
        free(shdr);
        return shdr = NULL;
    }
    lseek(fd, 0, SEEK_SET);
    return shdr;
}

void *ElfReadSectionData(int fd, Elf32_Off off, Elf32_Word sz) {
    char *buf;

    if (sz <= 0) return NULL;
    if ((buf=(char *)malloc(sz)) == NULL) return NULL;

    lseek(fd, off, SEEK_SET);
    if (read(fd, buf, sz) != (int)sz) {
        free(buf);
        return NULL;
    }
    lseek(fd, 0, SEEK_SET);

    return (void *)buf;
}

// Local variables:
// tab-width: 4
// End:
// vi:set tabstop=4:


