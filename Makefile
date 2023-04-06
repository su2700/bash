#makefile :
# A Makefile is a text file used to specify a set of build rules for a software project.
# It typically contains a set of targets and dependencies, along with commands to be 
# executed to build or rebuild the targets.
a: 
	echo "hello world"
test:
	./test_chop.sh

.PHONY: test
