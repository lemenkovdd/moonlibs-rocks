DIR_TOP := .

LS_ROCKSPEC = $(wildcard $(DIR_TOP)/*.rockspec)
LS_MANIFEST = $(addprefix $(DIR_TOP)/,manifest manifest-5.1 manifest-5.2 manifest-5.3 manifest-5.4)


LUAROCKS := luarocks
LUAROCKS_ARGS = $(nothing)
LUAROCKS_ADMIN := luarocks-admin
LUAROCKS_ADMIN_ARGS = $(nothing)
WGET := wget
WGET_ARGS = --backups=1


all: fetch build
.PHONY: all

fetch:
	grep -P "^\s*#" -v $(DIR_TOP)/rocks.list.txt | \
		grep -P "^\s*$$" -v | \
		xargs -I@ \
			$(WGET) $(WGET_ARGS) @
.PHONY: fetch

build:
	$(LUAROCKS_ADMIN) $(LUAROCKS_ADMIN_ARGS) make_manifest $(DIR_TOP)
.PHONY: build

mostyclean:
.PHONY: mostyclean

clean: mostyclean
.PHONY: clean

distclean: clean
	rm -f $(addsuffix .1,$(LS_ROCKSPEC))
.PHONY: distclean

realclean: distclean
	rm -f $(DIR_TOP)/index.html $(LS_ROCKSPEC) $(LS_MANIFEST)
.PHONY: realclean
