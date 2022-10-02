################################################################################
#
#  Definition:	This files build the radcorexx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radcore/inc

LIBS += $(ROOTDIR)/radcore/lib/radcore$(EXT).a \
	$(SONY)/lib/liblgdev.a

libs : radcore_x

libsclean : radcore_x_clean

ifeq ($(OSTYPE),linux)
MAKE=make
else
MAKE=$(ROOTDIR)/radbuild/globaltools/make
endif

radcore_x :
	@echo ----------------------------
	@echo Updating radcore library ...
	@echo ----------------------------
	@$(MAKE) --no-print-directory -r -C $(ROOTDIR)/radcore/build/ps2ee

radcore_x_clean :
	@$(MAKE) --no-print-directory -r -C $(ROOTDIR)/radcore/build/ps2ee clean

