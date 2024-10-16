#!/bin/bash
echo
echo "#################### START: AutoTest Setup #####################"
echo
echo "--- Copy student source from parent directory ---"
#srcfiles="../main.cpp ../BST.h"
srcfiles="../main.cpp ../*.h"
echo "Source files:" $srcfiles
cp $srcfiles .
echo "--- Building program ---"
cmake -S . -B build
cmake --build build
echo "##################### END: AutoTest Setup  #####################"
echo
