################################################################################
#
#  Definition:	This files build the radcorexx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radcore/inc
INCLUDEDIR += $(ROOTDIR)/radcore/src/radfile/common

LIBS += $(ROOTDIR)/radcore/lib/radcore$(EXT).a \
	$(SONY)/lib/liblgdev.a

libs : radcore_x

libsclean : radcore_x_clean

radcore_x :
	@echo ----------------------------
	@echo Updating radcore library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make --no-print-directory -r -C $(ROOTDIR)/radcore/build/ps2mw

radcore_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make --no-print-directory -r -C $(ROOTDIR)/radcore/build/ps2mw clean

