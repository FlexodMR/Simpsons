################################################################################
#
#  Definition:	This files build the pngxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/pure3d

LIBS += $(ROOTDIR)/pure3d/build/lib/png$(EXT).a

libs : png_x

libsclean : png_x_clean

png_x :
	@echo ----------------------------
	@echo Updating png library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2mw/png

png_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2mw/png clean
