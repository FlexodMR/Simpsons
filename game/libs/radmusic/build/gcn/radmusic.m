################################################################################
#
#  Definition:	This files build the radmusicxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radmusic/inc

LIBS += $(ROOTDIR)/radmusic/lib/radmusic$(EXT).a

libs : radmusic_x

libsclean : radmusic_x_clean

radmusic_x :
	@echo Updating radmusic library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radmusic/build/gcn

radmusic_x_clean :
	@echo Cleaning radmusic library ...
	@echo -----------------------------
	@$(ROOTDIR)\\radbuild\\globaltools\\make --no-print-directory -r -C $(ROOTDIR)/radmusic/build/gcn clean
