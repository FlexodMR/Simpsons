SUBDIRS = \
	convert2dxtn \
	dxtnreplace \
	imgextract \
	imgrestore \
	mesh2hf \
	p3danim \
	p3dbumpmap \
	p3dcompress \
	p3dcopy \
	p3ddeindex \
	p3ddel \
	p3dextract \
	p3dgc \
	p3dimage \
	p3dinfo \
	p3djoin \
	p3dlight \
	p3dmipmap \
	p3dmutate \
	p3doffopt \
	p3dprimgroup \
	p3dprint \
	p3dps2 \
	p3dscale \
	p3dskin \
	p3dsubdivide \
	p3dtoon \
	p3duv \
	p3dvertex \
	p3dworldspace \
	p3dxbox \
	simobj \
	spltbmp \
	tristrip


# missing Makefile
#	txt2p3d

# Needs updating
#	link
#	makefont
# 	p3dname

all::
	@set -e;\
	for i in $(SUBDIRS);\
		do $(MAKE) -C $$i all; \
	done

# clean up intermediate files
clean::
	@set -e;\
	for i in $(SUBDIRS);\
		do $(MAKE) -C $$i CLEANING=1 clean; \
	done

# install targets
install::
	for i in $(SUBDIRS); do\
		$(MAKE) -C $$i install; \
	done
