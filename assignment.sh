#!/bin/bash
echo -n 'path: '
read dirpath
echo -n 'filename: '
read filename
read ll
read ul
while [  $ll  -le $ul  ]
do
  cat $filename | grep $ll
  ll=` expr $ll + 1 `
done
