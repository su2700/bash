#!/bin/bash
echo line1
cat test.txt
cat > test.txt <<EOF
AAA
BBB
EOF
cat test.txt
echo line2
