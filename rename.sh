#!/bin/bash
suffix="jpg"
newext="jpg"
index=1
dir=$(eval pwd)
for file in $(ls $dir/public/imgs | grep .$suffix)
        do
        index+=1
        echo $file
        name = $a+${index}
        # name=$(ls $file | cut -d. -f1)
        # mv $file ${name}.$newext
        mv $dir/public/imgs/$file ${name}.$suffix
        done
echo "renaming jpg files =====> x.jpg done!"