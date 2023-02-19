#!/bin/bash
#Current Directory : /home/sharon/Desktop/practice
read dirpath
read extension
cd $dirpath
logic(){
    mkdir backup
    cp -v *.txt ./backup
}
if [[ ! -d "backup" ]]
then 
logic
else
echo "backup directory already exist, do you want to override: YES/NO : "
read result
if [[ $result == "YES" ]]
then
rm -r backup
logic
else
echo " Thank you, the backup directory already exists"
fi
fi