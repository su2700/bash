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



# In a Makefile, .PHONY is a special target that is used to indicate that the associated
#  target is not a file that needs to be built. Instead, it is considered a "phony" 
#  target that is always out-of-date and needs to be rebuilt every time it is invoked.

# .PHONY: test
# .PHONY: a