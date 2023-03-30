#!/bin/bash

# this test script will test 5 kinds of cases of user input for the script chop.sh
# if 1, zero string, 2, negative index, 3, no index, 4, no arguments, 5, index > length

set -e
function _test_case()
{
    p1=$1               # string
    p2=$2               # index
    expected_output=$3     # expected return value/exit code
    expected_rc=$4  # expected string from STDOUT/ERR

    tc_name="\"$p1\", $p2"

    # call UUT
    # need check for the script chop.sh exist in the right path and executable, how? 
    actual_output=$(./chop.sh "${p1}"  "${p2}")
    rc=$?
    if [[ $rc != "$expected_rc" ]]; then
        echo " $tc_name => unexpected RC: $rc, expected $expected_rc"
        return 1
    fi

    if [[ "${expected_output}" != "${actual_output}" ]]; then
        echo " $tc_name => unexpected output: $actual_output, expected: $expected_output"
        return 1
    fi
    return 0
}

# 1st case test, 
_test_case "numbers" 2 "nu" 0 || exit 1

# 2nd case test, inputs string and negative index values, expect returen "" , exp output 1
_test_case "numbers" -2 "Error: you must be input appropriate string and index " 2 || exit 1
_test_case "numbers" 30 "Error: you must be input appropriate string and index " 2 || exit 1

# 3rd case test, inputs string and no index values, expect get error back
_test_case "numbers" "" "Usage: chop <string> <index>" 1 || exit 1
_test_case "numbers" "-h" "Usage: chop <string> <index>" 1 || exit 1

_test_case "numbers" "--help" "Usage: chop <string> <index>" 1 || exit 1
_test_case "" "" "Usage: chop <string> <index>" 1 || exit 1

