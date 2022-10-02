################################################################################
#
#  Definition:	This files build the zlibxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/pure3d/lib/zlib

LIBS += $(ROOTDIR)/pure3d/build/lib/zlib$(EXT).a

libs : zlib_x

libsclean : zlib_x_clean

zlib_x :
	@echo ----------------------------
	@echo Updating zlib library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2/zlib

zlib_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2/zlib clean
