#makefile :
# A Makefile is a text file used to specify a set of build rules for a software project.
# It typically contains a set of targets and dependencies, along with commands to be 
# executed to build or rebuild the targets.
# target: dependency
#   tab command 
all: hello

%.o: %.c
	gcc -c $<

hello: hello.o	
	gcc -o $@ $?


clean:
	rm -rf *.o
	rm -rf hello

blah: blah.o
	gcc blah.o -o blah
blah.o: blah.c # will recompile if the prerequisites modified.
	gcc blah.c -o blah.o


# It's a target that is not first (the default), and not a prerequisite. 
# That means it'll never run unless you explicitly call make clean
clean:
	rm -rf *.o # delete all the .o files

# In a Makefile, .PHONY is a special target that is used to indicate that the associated
#  target is not a file that needs to be built. Instead, it is considered a "phony" 
#  target that is always out-of-date and needs to be rebuilt every time it is invoked.

# .PHONY: test
# .PHONY: a