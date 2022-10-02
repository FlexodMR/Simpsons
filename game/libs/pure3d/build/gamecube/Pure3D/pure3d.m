################################################################################
#
#  Definition:	This files build the pure3dxx.a and added the generated 
#		file to the defined LIBS 
################################################################################

INCLUDEDIR += $(ROOTDIR)/pure3d

LIBS += $(ROOTDIR)/pure3d/build/lib/pure3d$(EXT).a

libs : pure3d_x

libsclean : pure3d_x_clean

pure3d_x :
	@echo ----------------------------
	@echo Updating pure3d library ...
	@echo ----------------------------
	@$(ROOTDIR)/radbuild/GlobalTools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/gamecube/Pure3D

pure3d_x_clean :
	@$(ROOTDIR)/radbuild/GlobalTools/make.exe --no-print-directory -r -C $(ROOTDIR)/pure3d/build/gamecube/Pure3D clean
