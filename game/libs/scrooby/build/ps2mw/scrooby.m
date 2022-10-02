################################################################################
#
#  Definition:	This files build the scroobyxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

LIBS += $(ROOTDIR)/scrooby/lib/scrooby$(EXT).a

libs : scrooby_x

scrooby_x :
	@echo Updating Scrooby library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -C $(ROOTDIR)/scrooby/build/ps2mw
