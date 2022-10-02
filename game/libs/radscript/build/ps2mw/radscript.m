################################################################################
#
#  Definition:	This files build the radscriptxx.a and added the generated 
#		file to the defined LIBS 
################################################################################
INCLUDEDIR += $(ROOTDIR)/radscript/inc

LIBS += $(ROOTDIR)/radscript/lib/radscript$(EXT).a

libs : radscript_x

libsclean : radscript_x_clean

radscript_x :
	@echo Updating radscript library ...
	@echo ------------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radscript/build/ps2mw

radscript_x_clean :
	@echo Cleaning radscript library ...
	@echo ------------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radscript/build/ps2mw clean
