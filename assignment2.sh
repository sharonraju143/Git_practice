#!/bin/bash
read dirpath
cd $dirpath
if [ -d "$dirpath" ]
then
    echo "directory exists."
else
    echo "directory doesnt exits."
fi 
read filename
read ll
read ul
if [[ -f "$filename" ]]
then
    echo "file exists."
else
    echo "file does not exits."
fi
while [  $ll  -le $ul  ]
do
  cat $filename | grep $ll
  ll=` expr $ll + 1 `
done
