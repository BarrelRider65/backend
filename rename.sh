#!/bin/bash
FORMAT_JPG="jpg"
FORMAT_JPEG="jpeg"
index=1
dir=$(eval pwd)/pics
# ALLIMGES=$(ls $dir | grep  ".$FORMAT_JPEG\|.$FORMAT_JPG")
ALLIMGES=$(ls $dir)
for file in $ALLIMGES
        do
        name=img_${index}.jpg
        echo renaming $dir/$file to  $dir/$name
        # mv $dir/$file $dir/$name
        ((index++))
        # name=$(ls $file | cut -d. -f1)
        # echo ${name}
        #  mv $dir/$file ${dir}/$name
        done
echo "renaming $index image files =====> x.jpg done!"


# # rename files using for loops
# FILES="$(ls *.txt)"
# NEW="new"
# for FILE in $FILES
#     do
#         echo "Renaming $FILE to new-${FILE}"
#         mv $FILE $NEW-$FILE
# done
