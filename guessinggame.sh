#!/bin/bash

# Function to count files in the current directory
function count_files {
    echo $(ls -1 | wc -l)
}

# Main script
file_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
    # Prompt for the user's guess
    read -p "Enter your guess: " guess

    # Ensure the input is numeric
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Invalid input. Please enter a number."
        continue
    fi

    # Provide feedback based on the guess
    if (( guess < file_count )); then
        echo "Too low. Try again."
    elif (( guess > file_count )); then
        echo "Too high. Try again."
    else
        echo "Congratulations! You guessed the correct number of files."
        break
    fi
done
