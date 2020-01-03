#!/usr/bin/env bash

#Count files and directories include hidden files and hidden directories
filenum=$(ls -A | wc -l)
guess=-1
function guess_filenum {
    while [ $guess -ne $filenum ];
    do
        read guess
        if ! [[ "$guess" =~ ^[0-9]+$ ]]
        then
            echo "Sorry integers only... try again:"
            guess=-1
        elif [[ $guess -gt $filenum ]]
        then
            echo "There is less... try again:"
        elif [[ $guess -lt $filenum ]]
        then
            echo "There is more... try again:"
        else
            echo "You finally guessed it!"
        fi
    done
}

echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory:"
guess_filenum
