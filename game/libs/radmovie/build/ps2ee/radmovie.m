################################################################################
#
#  Definition:	This files build the radmoviexx.a and added the generated 
#		file to the defined LIBS 
################################################################################
INCLUDEDIR += $(ROOTDIR)/radmovie/inc

LIBS += $(ROOTDIR)/radmovie/lib/radmovie$(EXT).a

libs : radmovie_x

libsclean : radmovie_clean

radmovie_x :
	@echo Updating radmovie library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radmovie/build/ps2ee

radmovie_clean :
	@echo Cleaning radmovie library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radmovie/build/ps2ee clean
