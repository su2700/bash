#!/bin/bash

# this test script will test 5 kinds of cases of user input for the script chop.sh
# if 1, zero string, 2, negative index, 3, no index, 4, no arguments, 5, index > length

# test case1
echo " "
echo "case no 1"
expected_output="plejd"

actual_output=$(./chop.sh )
if [[ "${actual_output}" == "${expected_output}" ]]; then
  echo "Test case 1 passed"
else
  echo "Test case 1 failed: error, no string"  
fi

echo " "
# test case2
echo "case no 2"
actual_output=$(./chop.sh plejdland -2)
if [[ "${actual_output}" == "${expected_output}" ]]; then
  echo "Test case 4 passed"
else
  echo "Test case 4 failed: negative index"  
fi

echo " "
# test case3
echo "case no 3"
actual_output=$(./chop.sh plejdland )
if [[ "${actual_output}" == "${expected_output}" ]]; then
  echo "Test case 3 passed"
else
  echo "Test case 3 failed: no index"  
fi

echo " "
# test case4
echo "case no 4"
actual_output=$(./chop.sh plejdland 20)
if [[ "${actual_output}" == "${expected_output}" ]]; then
  echo "Test case 4 passed"
else
  echo "Test case 4 failed: index should not big than length of string"  
fi
