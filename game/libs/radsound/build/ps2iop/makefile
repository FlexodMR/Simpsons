# How to build iop modules:
#
#   % iop-gcc -c part1.c
#   % iop-gcc -c part2.c
#   % iop-gcc -o program part1.o part2.o -L<libdir> -l<lib> -ilb=xxx.ilb
#

-include files.txt

OBJECTDIR = Release
RM=../../../radbuild/globaltools/rm.exe
MKDIR=../../../radbuild/globaltools/mkdir.exe
ECHO=../../../radbuild/globaltools/echo.exe

VPATH = $(dir $(patsubst %, $(SOURCEDIR)/%, $(FILES)))
OBJECTS = $(patsubst %, $(OBJECTDIR)/%.obj, $(notdir $(FILES)))
GCC=D:/usr/local/sce/iop/gcc/bin/iop-elf-gcc

ALL: $(TARGET)

$(TARGET) : $(OBJECTDIR) $(OBJECTS)
	@$(ECHO) Creating: $(notdir $@)
	@$(GCC) -o $@ $(OBJECTS) $(SONYLIBDIR) -L/usr/local/sce/iop/gcc/lib -ilb=libsd.ilb

#	@$(GCC) -g -o $@ $(OBJECTS) $(SONYLIBDIR) -L/usr/local/sce/iop/gcc/lib -ilb=libsd.ilb





$(OBJECTDIR) :
	@$(ECHO) Creating Directory: $(OBJECTDIR)
	@$(MKDIR) $(OBJECTDIR)

$(OBJECTDIR)/%.obj : %.c
	@$(ECHO) Compiling: $(notdir $@)
	@$(GCC)  -c $< -o $@

    # Debug Compile
    # @$(GCC) -O0 -g -c $< -o $@

clean:
	@$(ECHO) Cleaning ...
	@$(RM) -rf $(OBJECTDIR)
	@$(RM) -f $(TARGET)
