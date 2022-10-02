################################################################################
#
#  Definition:	This files build the radcorexx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/radcontent/inc

LIBS += $(ROOTDIR)/radcontent/lib/radcontent$(EXT).a

libs : radcontent_x

libsclean : radcontent_x_clean

ifeq ($(OSTYPE),linux)
MAKE=make
else
MAKE=$(ROOTDIR)/radbuild/globaltools/make
endif

radcontent_x :
	@echo Updating radcontent library ...
	@echo ----------------------------
	@$(MAKE) --no-print-directory -r -C $(ROOTDIR)/radcontent/build/ps2mw

radcontent_x_clean :
	@echo Cleaning radcontent library ...
	@echo ----------------------------
	@$(MAKE) --no-print-directory -r -C $(ROOTDIR)/radcontent/build/ps2mw clean

