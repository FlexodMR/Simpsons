# How to build iop modules:
#
#   % iop-gcc -c part1.c
#   % iop-gcc -c part2.c
#   % iop-gcc -o program part1.o part2.o -L<libdir> -l<lib> -ilb=xxx.ilb
#

-include files.txt

OBJECTDIR = Release

VPATH = $(dir $(patsubst %, $(SOURCEDIR)/%, $(FILES)))
OBJECTS = $(patsubst %, $(OBJECTDIR)/%.obj, $(notdir $(FILES)))

ALL: $(TARGET)

$(TARGET) : $(OBJECTDIR) $(OBJECTS)
	@echo Creating: $(notdir $@)
	@iop-elf-gcc -o $@ $(OBJECTS) $(SONYLIBDIR) -L/usr/local/sce/iop/gcc/lib -L/usr/local/sce/iop/lib -ilb=ilink.ilb

$(OBJECTDIR) :
	@echo Creating Directory: $(OBJECTDIR)
	@mkdir $(OBJECTDIR)

$(OBJECTDIR)/%.obj : %.c
	@echo Compiling: $(notdir $@)
	@iop-elf-gcc -c $< -o $@

clean:
	@echo Cleaning ...
	@rm -rf $(OBJECTDIR)
	@rm -f $(TARGET)