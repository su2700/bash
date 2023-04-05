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

    if ! [[ -x "./chop.sh" ]]; then
        echo "Error: chop.sh not found or not executable in the current directory." >&2
        exit 1
    fi
    # call UUT
    actual_output=$(./chop.sh "${p1}"  "${p2}" 2>&1)
    rc=$?
    echo "debug: o: $actual_output, rc: $rc" 
    
    if [[ ${rc} -eq 0 ]]; then
        echo "==> $tc_name succeeded"
        if [[ $actual_output != "$expected_output"  ]]; then
            echo "ERROR: unexpected output"
            return 1
        else
            echo "output matches"
        fi
    else
        if [[ $actual_output =~ $expected_output ]] && [ $rc -eq "$expected_rc" ]; then
            echo "==> $tc_name succeeded"
        else
            echo "==> $tc_name failed"
            return 1
        fi
    fi

    return 0
}

_test_case "numbers" 3 "num" 0 || exit 1
_test_case "numbers" -1 "Error" 2 || exit 1
_test_case "numbers" 20 "Error" 2 || exit 1
_test_case "" 0 "Error" 2 || exit 1
_test_case "numbers" 6 "number" 0 || exit 1

echo "==> all test cases pass, gratulation"
exit 0

