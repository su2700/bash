# Bash

[Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
<!-- section use ## -->

## bats core can be used to test the container image

## shunit2, source shunit2, then can use the test function from shunit2

<!-- subsection use ### -->
### shunit2 functions, setUp(){}, testEquality(){}, tearDown(){}, oneTimeTearDown(){}

<!-- text -->
## text

### strikethrough

~~test content with strikethrought~~

### blod

## **This text is blod**

### italics

### *italics*

## Learnings

- chop.sh is called UUT (unit under test)
- test function is used to simplify developers work
- test function usually calls the UUT in a function that
  checks both RC and output against expected output


## URL link pointing to github profile

[Noah Github Profile](https://github.com/su2700)

# It's a target that is not first (the default), and not a prerequisite. 
# That means it'll never run unless you explicitly call make clean,
# also can use .PHONY 


# In a Makefile, .PHONY is a special target that is used to indicate that the associated
#  target is not a file that needs to be built. Instead, it is considered a "phony" 
#  target that is always out-of-date and needs to be rebuilt every time it is invoked.

# .PHONY: test
# .PHONY: a