#!/bin/bash
FORMAT_JPG="jpg"
FORMAT_JPEG="jpeg"
index=1
dir=$(eval pwd)/public/imgs
ALLIMGES=$(ls $dir | grep  ".$FORMAT_JPEG\|.$FORMAT_JPG")
for file in $ALLIMGES
        do
        name=img-${index}.jpg
        echo renaming $dir/$file to  $dir/$name
        # mv $dir/$file $dir/$name
        ((index++))
        # name=$(ls $file | cut -d. -f1)
        # mv $dir/public/imgs/$file ${name}.$suffix
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
