#makefile :
# A Makefile is a text file used to specify a set of build rules for a software project.
# It typically contains a set of targets and dependencies, along with commands to be 
# executed to build or rebuild the targets.
# target: dependency
#   tab command 
all: blah

%.o: %.c
	gcc -c $<

blah: blah.o	
	gcc -o $@ $?


clean:
	rm -rf *.o
	rm -rf blah

#variable 

objects = program.o foo.o utils.o

program : $(objects)
	gcc -o program $(objects)

$(objects) : defs.h

foo = c
prog.o : prog.$(foo)
	$(foo)$(foo) -$(foo) prog.$(foo)

prog.o : prog.c
	gcc -c prog.c
clean:
	rm -rf program





# It's a target that is not first (the default), and not a prerequisite. 
# That means it'll never run unless you explicitly call make clean,
# also can use .PHONY 


# In a Makefile, .PHONY is a special target that is used to indicate that the associated
#  target is not a file that needs to be built. Instead, it is considered a "phony" 
#  target that is always out-of-date and needs to be rebuilt every time it is invoked.

# .PHONY: test
# .PHONY: a