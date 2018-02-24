all: compile test
compile:
	gprbuild -j0 -p

test:
	valgrind bin/taglib-tests-main data/*
