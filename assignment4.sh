#!/bin/bash
read -p "which directory files you wanted to archieve : "
archieve() { 
    cd $dirpath
    tar -czvf zip_archieve/ names.txt
}
archieve
