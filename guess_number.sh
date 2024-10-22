#!/bin/bash

# Generate a random number between 1 and 100
target_number=$(( RANDOM % 100 + 1))
guess=0

echo "Welcome to the number guessing game!"
echo "I'm thinking of a number between 1 and 100."

# Loop until correct guess
while [[ $guess -ne $target_number ]]; do
	read -p "Enter your guess: " guess

if [[ $guess -lt $target_number ]]; then
	echo "Too low!"
elif [[ $guess -gt $target_number ]]; then
	echo "Too high!"
else
	echo "Congratulations! You've guessed the right number: $target_number"
fi
done
