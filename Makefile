
SINGLEOUTDIR ?= yes
SRCDIR    	 ?= src
SHAREDLIBDIR ?= shared
STATICLIBDIR ?= static


.PHONY : all
all:
	$(MAKE) -C libs/$(SHAREDLIBDIR)
	$(MAKE) -C libs/$(STATICLIBDIR)
	$(MAKE) -C $(SRCDIR)

.PHONY : install
install:
	$(MAKE) install -C libs/$(SHAREDLIBDIR)
	$(MAKE) install -C libs/$(STATICLIBDIR)
	$(MAKE) install -C $(SRCDIR)
ifeq "$(SINGLEOUTDIR)" "yes"
	@$(RM) binaries/*.a
	@$(RM) binaries/*.lib
endif

.PHONY : clean
clean:
	$(MAKE) clean -C libs/$(SHAREDLIBDIR)
	$(MAKE) clean -C libs/$(STATICLIBDIR)
	$(MAKE) clean -C $(SRCDIR)
	@$(RM) -r binaries/
