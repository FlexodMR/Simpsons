################################################################################
#
#  Definition:	This files build the radcontentxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radcontent/inc

LIBS += $(ROOTDIR)/radcontent/lib/radcontent$(EXT).a

libs : radcontent_x

libsclean : radcontent_x_clean

radcontent_x :
	@echo Updating radcontent library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radcontent/build/gamecube

radcontent_x_clean :
	@echo Cleaning radcontent library ...
	@echo ----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radcontent/build/gamecube clean
