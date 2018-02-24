PREFIX?=$(shell dirname $(shell dirname $(shell which gprbuild)))

-include Makefile.conf
all: compile test

compile:
	gprbuild -p -j0 -P taglib-ada.gpr
clean:
	git clean -xdf

gen:
	rm -rf .gen; mkdir .gen
	echo "#include <tag_c.h>" >.gen/gen.cpp
	cd .gen;gcc -I /usr/include/taglib -c gen.cpp -fdump-ada-spec
	ls .gen
	cp .gen/*tag_c_h.ads src/
test:
	${MAKE} -C tests
	
install:
	cp taglib.gpr ${PREFIX}/share/gpr/
	gprinstall -p taglib-ada.gpr  --prefix=${CURDIR}/_target
	
uninstall:
	gprinstall --uninstall -p taglib.gpr      --prefix=${PREFIX}
	rm  ${PREFIX}/share/gpr/taglib.gpr

Makefile.conf:
	@echo "export PATH=${PATH}" >$@
