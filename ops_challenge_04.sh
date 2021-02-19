#!/bin/bash

# Resources: https://linuxhandbook.com/bash-arrays/ https://linuxize.com/post/bash-concatenate-strings/

# Objectives:
# [X] Create four directories: dir1, dir2, dir3, dir4
# [X] Put the four directories in an array
# [X] References the array variable to create a new .txt file in each directory


function create_directories () {

    for i in {1..4}
    do
        command mkdir "dir$i"
    done
}

create_directories

function put_in_array () {
    my_path="$HOME/Documents/OPs 201 Code Challenges/ops_challenge_04/ops_challenge_04/"
    my_dir=("dir1" "dir2" "dir3" "dir4")

    for i in {0..3}
    do
        add_files="${my_path}${my_dir[$i]}"
        txt_name=("1" "2" "3" "4") 
        command touch "${add_files}/test${txt_name[$i]}.txt"
    done
}

put_in_array




#Example Code for Future Reference:

#Create and manipulate Arrays:
#files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt") #Creates array
#files[0]="a.txt" #Changes the first array to "a.txt" 
#files+=("f6.txt") #Adds another element to the end of the array

#echo ${files[0]} #Prints the first element
#echo ${files[*]} #Prints all elements
#echo ${#files[@]} #Prints the number of elements in the array

#num=(1 2 3 4 5)
#echo "${num[*]}"
#unset num["2"] #Deletes the 3rd element of the array, "unset num" will just delete the entire array altogether
#echo "${num[*]}"

#Concatenate Strings:
#var1="Hello,"
#var2=" World"
#var3="$var1$var2"

#echo "$var3"

#Concatenate Literal Strings:
#var4="Hello, "
#var5="${var4}World"

#echo "$var5" 

#Concatenate using += operator
#var6="Hello, "
#var6+="World"

#echo "$var6"