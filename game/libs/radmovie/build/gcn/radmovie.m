################################################################################
#
#  Definition:	This files build the radmoviexx.a and added the generated 
#		file to the defined LIBS 
################################################################################
INCLUDEDIR += \
			$(ROOTDIR)/radmovie/inc \
			$(ROOTDIR)/Sdks/GameCube/HVQM4Include \
 
LIBS += \
			$(ROOTDIR)/radmovie/lib/radmovie$(EXT).a \
			$(ROOTDIR)/Sdks/GameCube/HVQM4Lib/hvqm4audio.a \
			$(ROOTDIR)/Sdks/GameCube/HVQM4Lib/hvqm4dec.a \
			$(ROOTDIR)/Sdks/GameCube/Bink/binkngc.a

libs : radmovie_x

libsclean : radmovie_clean

radmovie_x :
	@echo Updating radmovie library ...
	@echo -----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make --no-print-directory -r -C $(ROOTDIR)/radmovie/build/gcn

radmovie_clean :
	@echo Cleaning radmovie library ...
	@echo -----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make --no-print-directory -r -C $(ROOTDIR)/radmovie/build/gcn clean
