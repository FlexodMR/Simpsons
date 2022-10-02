################################################################################
#
#  Definition:	This files build the pddixx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radmath

LIBS += $(ROOTDIR)/radmath/lib/radmath$(EXT).a

libs : radmath_x

libsclean : radmath_x_clean

radmath_x :
	@echo ----------------------------
	@echo Updating radmath library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/radmath/build/ps2mw

radmath_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/radmath/build/ps2mw clean
