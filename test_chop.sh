#!/bin/bash

# this test script will test 5 kinds of cases of user input for the script chop.sh
# if 1, zero string, 2, negative index, 3, no index, 4, no arguments, 5, index > length

# set -e
function _test_case()
{
    p1=$1               # string
    p2=$2               # index
    expected_output=$3     # expected return value/exit code
    expected_rc=$4  # expected string from STDOUT/ERR

    tc_name="\"$p1\", $p2" #backslash escape， test case name

    # call UUT
    # need check for the script chop.sh exist in the right path and executable, how? 
    actual_output=$(./chop.sh "${p1}"  "${p2}")
    rc=$?
    # test 1, test help falg
    if [[ ${rc} -ne 1 ]]; then
        echo "help flag test failed"
    else
        echo "help flag test passed"
    fi  
   
   # test 2, test empty string 
    if [[ ${rc} -ne 2 ]]; then
        echo "empty string test failed"
    else
        echo "empty string test passed"
    fi  
    
    # test3, test negative index
    if [[ ${rc} -ne 2 ]]; then
        echo "negative index test failed"
    else
        echo "negative index test passed"
    fi  
   
    # test4, test index out of range
    if [[ ${rc} -ne 2 ]]; then
        echo "index out of range test failed"
    else
        echo "index out of range test passed"
    fi  

    # test5, test valid input
    if [[ ${rc} -ne 0 ]]; then
        echo "valid input test failed"
    else
        echo "valid input test passed"
    fi  

    return 0
}

# 1st case test, 
_test_case "numbers" 2 "nu" 0 || exit 1
echo "test case 1 passed"

# 2nd case test, inputs string and negative index values, expect returen "" , exp output 1
# exit 1 means exit program immediately,
# because the _test_case returns nonzero exit code || (or) will execute program of exit and return 1
_test_case "numbers" -2 "Error: you must be input appropriate string and index " 2 || exit 1   
echo "test case 2 passed"
_test_case "numbers" 30 "Error: you must be input appropriate string and index " 2 || exit 1
echo "test case 3 passed"

# 3rd case test, inputs string and no index values, expect get error back
_test_case "numbers" "" "Usage: chop <string> <index>" 1 || exit 1
echo "test case 4 passed"
_test_case "numbers" "-h" "Usage: chop <string> <index>" 1 || exit 1
echo "test case 5 passed"

_test_case "numbers" "--help" "Usage: chop <string> <index>" 1 || exit 1
echo "test case 6 passed"
_test_case "" "" "Usage: chop <string> <index>" 1 || exit 1
echo "test case 7 passed"


