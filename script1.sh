#!/bin/bash

## 加上执行权限的语法
## chmod a+x // 所有
## chmod u+x // owner

echo "Begining of script ====="

#NAME = "John Wick"//WRONG 不能有空格
# NAME="John wick"
# echo "hello ${NAME}"


#user input
# read -p "Enter your age : " AGE
# echo "Hello , your age is ${AGE}"

# NAME="Jimmy"
# if [ "$NAME" == "Jimmy" ] # 这些空格都是必须的
# then
#     echo "evening , jimmy"
# fi    


# NAME="Jmmy"
# if [ "$NAME" == "Jimmy" ] # 这些空格都是必须的
# then
#     echo "evening , jimmy"
# else 
#     echo "i leave you be then"    
# fi 



# NAME="Jim"
# if [ "$NAME" == "Jimmy" ] # 这些空格都是必须的
# then
#     echo "evening , jimmy"
# elif [ "$NAME" == "Jim" ]  
# then  
#     echo "jim is weak"
# else 
#     echo "i leave you be then"    
# fi 

## comparsion
## -eq equals
## -ne not equals
## -gt greater than
## -lt less than
## -le less than or equal to 

# NUM1=3
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#     echo "$NUM1 is greater than $NUM2"
# else
#     echo "$NUM1 is less than $NUM2"    
# fi    


## file manipulations
# -d is a directory
# -e file.exists
# -f if the provided string is a file
# -w True if the file is writeable
# FILE="./word/test.txt"
# if [ -f "$FILE" ]
# then
#     echo "file exists and is a file"
# else 
#     echo "does not exists"    
# fi    


# ## case statement
# read -p "Are you 21 or above? Y/N" ANSWER
# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#     echo "you can have wine ;)"
#     ;;
#     [nN] | [nN][oO])
#     echo "sorry , no drinking"
#     ;;
#  *)
#     echo "please enter y/yes or n/no"
#     ;;
# esac    


# ## simple for loop
# NAMES="jOHN kEVIN ALICE BRIAN"
# for NAME in $NAMES
#     do
#      echo "HELLO ${NAME}"
# done     

## rename files using for loops
# FILES="$(ls *.txt)"
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renaming $FILE to new-${FILE}"
#         mv $FILE $NEW-$FILE
# done        


## while loop read through file
# LINE=1
# while read -r CURRENT_LINE
#     do
#         echo "$LINE: $CURRENT_LINE"
#         ((LINE++))
# done < "./new-sample1.txt"        


# functions
# function sayHello() {
#     echo "SAY SOMETHING"
# }
# sayHello

## function with params
function greet() {
    echo "hello i am $1 and $2"
}

greet "John" "Bob"