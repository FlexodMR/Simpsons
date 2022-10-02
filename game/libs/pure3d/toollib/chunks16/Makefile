SUBDIRS = src

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
