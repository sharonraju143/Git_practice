echo -n 'dirpath: '
read dirpath
cd $dirpath
echo -n 'filename: '
read filename
if [[ -f "$filename" ]]
then
    echo "file exists."
else
    echo "file doesnot exits."
fi

