# !/bin/bash
echo -n "Enter the Directory Path : "
read dir
cd $dir
if [ -d "$dir" ]
then
echo "list of files in the directory"
ls 
else
echo "enter proper directory name"
fi