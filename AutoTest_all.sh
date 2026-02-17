#!/bin/bash
repo=BST_AutoTest
echo "#################### START: AutoTest Setup ##################################"
echo " To be consistent with the grading environment, assume we are starting out "
echo " in the source directory (i.e., the parent of the AutoTest directory)."
echo " You will get a cd error if you execute directly from the AutoTest directory."
echo "#############################################################################"
cd $repo
echo
echo "#################### START: AutoTest Results #####################"
echo "--- Checking code format (cpplint) ---"
./AutoTest_Style.sh $repo main.cpp BST.h
echo
echo "--- Checking main output (diff) ---"
cd build
# Output test disabled for now
# ../AutoTest_OutputTest.sh
echo
echo "--- Unit testing (googletest - all tests at once) ---"
ctest
echo
# GitHub Classroom auto-grading runs the following commands from the current
# directory of the project being tested.  To similate that here, we need to
# change to the project directory before running the tests.
#
cd ../..
# Note: The following commands should be exactly the same as specified in classroom.yml
echo "--- Unit testing (single test at a time) ---"
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Empty
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Search
./BST_AutoTest/AutoTest_gtest.sh BSTTest.SearchNotFound
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Insert
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Remove
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Inorder
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Preorder
./BST_AutoTest/AutoTest_gtest.sh BSTTest.Postorder
./BST_AutoTest/AutoTest_gtest.sh BSTTest.RemoveException
./BST_AutoTest/AutoTest_gtest.sh BSTTest.InsertException
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMinInt
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMaxInt
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMinString
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMaxString
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMinEmpty
./BST_AutoTest/AutoTest_gtest.sh BSTTest.FindMaxEmpty

echo
echo "#################### END: AutoTest Results   #####################"
echo
