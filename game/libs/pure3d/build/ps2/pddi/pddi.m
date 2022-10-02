################################################################################
#
#  Definition:	This files build the pddixx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/pure3d

LIBS += $(ROOTDIR)/pure3d/build/lib/pddi$(EXT).a

libs : pddi_x

libsclean : pddi_x_clean

pddi_x :
	@echo ----------------------------
	@echo Updating pddi library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2/pddi

pddi_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/ps2/pddi clean
