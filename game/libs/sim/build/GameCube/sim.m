################################################################################
#
#  Definition:	This files build the pddixx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/sim 

LIBS += $(ROOTDIR)/sim/lib/sim$(EXT).a

libs : sim_x

libsclean : sim_x_clean

sim_x :
	@echo ----------------------------
	@echo Updating sim library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/sim/build/GameCube

sim_x_clean :
	@$(ROOTDIR)/radbuild/globaltools/make.exe --no-print-directory -r -C $(ROOTDIR)/sim/build/GameCube clean
