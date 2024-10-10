#!/bin/bash
cd BST_AutoTest/build
./main > test_main_output.txt 2>&1
#diffopts="--ignore-blank-lines --side-by-side --ignore-space-change --suppress-common-lines --color=always"
diffopts="--ignore-blank-lines --side-by-side --ignore-space-change --color=always"
diff $diffopts ../AutoTest_main_output.txt test_main_output.txt