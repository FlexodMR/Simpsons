################################################################################
#
#  Definition:	This files build the radsoundxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radsound/inc

LIBS += $(ROOTDIR)/radsound/lib/radsound$(EXT).a

libs : radsound_x

libsclean : radsound_x_clean

radsound_x :
	@echo Updating radsound library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radsound/build/ps2mw

radsound_x_clean :
	@echo Cleaning radsound library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radsound/build/ps2mw clean
