################################################################################
#
#  Definition:	This files build the choreoxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/choreo/inc

LIBS += $(ROOTDIR)/choreo/lib/choreo$(EXT).a

libs : choreo_x

libsclean : choreo_x_clean

choreo_x :
	@echo Updating choreo library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/choreo/build/ps2

choreo_x_clean :
	@echo Cleaning choreo library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/choreo/build/ps2 clean
