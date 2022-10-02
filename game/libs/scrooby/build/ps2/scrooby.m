################################################################################
#
#  Definition:	This files build the scroobyxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/scrooby/inc
INCLUDEDIR += $(ROOTDIR)/scrooby/src

LIBS += $(ROOTDIR)/scrooby/lib/scrooby$(EXT).a

libs : scrooby_x

libsclean : scrooby_x_clean

scrooby_x :
	@echo Updating Scrooby library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -C $(ROOTDIR)/scrooby/build/ps2

scrooby_x_clean :
	@echo Cleaning Scrooby library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/scrooby/build/ps2 clean
