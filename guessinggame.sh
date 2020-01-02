#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
    read guess
    if [[ $guess -eq $filenum ]]
    then
        echo "You finally guessed it!"
    else
        if [[ $guess -gt $filenum ]]
        then
            echo "There is less... try again:"
            guess_filenum
        else
            echo "There is more... try again:"
            guess_filenum
        fi
    fi
}

echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory:"
guess_filenum
