#!/bin/bash
echo Testing: $1
./BST_AutoTest/build/AutoTest_gtests --gtest_filter=$1
