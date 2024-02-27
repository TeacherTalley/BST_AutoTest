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
./AutoTest_Style.sh
echo
echo "--- Checking main output (diff) ---"
cd build
# Output test disabled for now
# ../AutoTest_OutputTest.sh
# echo
# echo "--- Unit testing (googletest - all tests at once) ---"
# ctest
# echo
echo "--- Unit testing (single test at a time) ---"
./AutoTest_gtests --gtest_filter=BSTTest.Empty
./AutoTest_gtests --gtest_filter=BSTTest.Search
./AutoTest_gtests --gtest_filter=BSTTest.SearchNotFound
./AutoTest_gtests --gtest_filter=BSTTest.Insert
./AutoTest_gtests --gtest_filter=BSTTest.Delete
./AutoTest_gtests --gtest_filter=BSTTest.Inorder
./AutoTest_gtests --gtest_filter=BSTTest.Preorder
./AutoTest_gtests --gtest_filter=BSTTest.Postorder
./AutoTest_gtests --gtest_filter=BSTTest.RemoveException
./AutoTest_gtests --gtest_filter=BSTTest.InsertException

echo
cd ..
echo "#################### END: AutoTest Results   #####################"
echo
