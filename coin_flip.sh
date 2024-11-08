#!/bin/bash
# Coin Flip Game

echo "Welcome to the Coin Flip Game!"
echo "Guess heads or tails. Type 'quit' to exit."

# Game loop
while true; do
  # Prompt the player for their guess
  read -p "Enter your guess (heads or tails): " guess

  # Allow the player to quit the game
  if [ "$guess" == "quit" ]; then
    echo "Thanks for playing!"
    break
  fi

  # Check if the guess is valid
  if [[ "$guess" != "heads" && "$guess" != "tails" ]]; then
    echo "Invalid choice. Please choose 'heads' or 'tails'."
    continue
  fi

  # Generate a random outcome for the coin flip
  if (( RANDOM % 2 == 0 )); then
    flip="heads"
  else
    flip="tails"
  fi

  echo "The coin landed on: $flip"

  # Check if the player guessed correctly
  if [ "$guess" == "$flip" ]; then
    echo "Congratulations! You guessed correctly."
  else
    echo "Sorry, you guessed wrong."
  fi

  echo
done
