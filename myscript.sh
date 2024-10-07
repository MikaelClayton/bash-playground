#!/bin/bash

# ECHO COMMAND
#echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
#NAME="Mikael"
#echo "My name is $NAME"

# USER INPUT
#read -p "Enter your name: " NAME
#echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
#NAME="Mikael"
#if [ "$NAME" == "Mikael" ]
#then
#    echo "Your name is Mikael"
#fi

# IF-ELSE
#NAME="Mikaels"
#if [ "$NAME" == "Mikael" ]
#then
#    echo "Your name is Mikael"
#  else
#    echo "Your name is not Mikael"
#fi

# ELSE-IF (elif)
#NAME="Jacaaak"
#if [ "$NAME" == "Mikael" ]
#then
#    echo "Your name is Mikael"
#elif [ "$NAME" == "Jack" ]
#then
#    echo "Your name is Jack"
#else
#    echo "Your name is not Mikael or Jack"
#fi

# COMPARISON
#NUM1=8
#NUM2=5
#if [ "$NUM1" -gt "$NUM2" ]
#then
#    echo "$NUM1 is greater than $NUM2"
#else
#    echo "$NUM1 is less than $NUM2"
#fi

# FILE CONDITIONS
#FILE="test.txt"
#if [ -f "$FILE" ]
#then
#  echo "$FILE is a file"
#else
#  echo "$FILE is NOT a file"
#fi
#
##CASE STATEMENT
#read -p "Are you 18 or over? Y/N " ANSWER
#case "$ANSWER" in
#  [yY] | [yY][eE][sS])
#    echo "You can have a beer :)"
#    ;;
#  [nN] | [nN][oO])
#    echo "Sorry no beer for you :("
#    ;;
#  *)
#    echo "Please enter a valid input (y/yes) or (n/no)"
#  ;;
#esac

# SIMPLE FOR LOOP
#NAMES="Mikael Jack John"
#for NAME in $NAMES
#  do
#    echo "Hello $NAME"
#done

# FOR LOOP TO RENAME FILES
#FILES=$(ls *.txt)
#NEW="new"
#for FILE in $FILES
#  do
#    echo "Renaming $FILE to new-$FILE"
#    mv $FILE $NEW-$FILE
#done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
#LINE=1
#while read -r CURRENT_LINE
#  do
#    echo "$LINE: $CURRENT_LINE"
#    ((LINE++))
#done < "./new-1.txt"

# FUNCTION
#function sayHello() {
#  echo "Hello World"
#}
#
#sayHello

# FUNCTION WITH PARAMETERS
#function greet() {
#  echo "Hello I am $1 and I am $2 years old"
#}
#
#greet "Mikael" "23"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"