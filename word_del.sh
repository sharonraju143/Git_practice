#!/bin/bash
echo -n "Enter the directory path : "
read dirpath
cd $dirpath
echo enter file name
read file
echo enter word
read word
cat $file
echo file before removing $word:
grep -v -i $word $file > test
mv test $file
echo file after removing $word:
cat $file