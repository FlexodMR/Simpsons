################################################################################
#
#  Definition:	This files build the pddixx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/poser/inc

LIBS += $(ROOTDIR)/poser/lib/poser$(EXT).a

libs : poser_x

libsclean : poser_x_clean

poser_x :
	@echo ----------------------------
	@echo Updating poser library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/poser/build/ps2mw

poser_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/poser/build/ps2mw clean
