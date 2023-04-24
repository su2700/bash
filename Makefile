#makefile :
# A Makefile is a text file used to specify a set of build rules for a software project.
# It typically contains a set of targets and dependencies, along with commands to be 
# executed to build or rebuild the targets.
# target: dependency
#   tab command 

program := blah

all: ${program}

%.o: %.c
	gcc -c $<

${program}: ${program}.o  preprocess
	gcc -o $@ $< | ./preprocess > $@

preprocess:
	sed 's/Makefile/Makenewfile/g'  blah.c > preprocessed.c 
	gcc -o preprocess preprocessed.c 


clean:
	rm -rf *.o
	rm -rf ${program}
	rm -rf preprocessed.c