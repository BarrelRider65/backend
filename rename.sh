#!/bin/bash
FORMAT_JPG="jpg"
FORMAT_JPEG="jpeg"
index=1
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
dir=$(eval pwd)/pics
# ALLIMGES=$(ls $dir | grep  ".$FORMAT_JPEG\|.$FORMAT_JPG")
ALLIMGES=$(ls $dir)
for file in $ALLIMGES
        do
        name=img_${index}.webp
        # echo renaming $dir/$file to  $dir/$name
        # file  $dir/$file
        # mv $dir/$file $dir/$name
        ((index++))
        # name=$(ls $file | cut -d. -f1)
        # echo ${name}
        mv $dir/$file ${dir}/$name
        done
echo "renaming $index image files =====> x.jpg done!"
IFS=$SAVEIFS


# # rename files using for loops
# FILES="$(ls *.txt)"
# NEW="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-${FILE}"
#         mv $FILE $NEW-$FILE
# done
