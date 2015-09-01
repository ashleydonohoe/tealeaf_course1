#Pseudocode
=begin 
1. Print a welcome message <---
2. Print a promp for p/r/s <---
3. Get user input <---
4. Have program randomly choose p/r/s <---
5. Do comparison between user input and computer input
6. Tell what each chose.
7. Tell result (paper wraps rock, etc)
8. Tell who wins/loses
9. Ask to play again
=end

def play_again()
  puts "Do you want to play again? (yes, no)"
  play_again = gets.chomp.downcase
  if play_again == "yes"
    play_game()
  end
end

def play_game()
  puts "Play Paper Rock Scissors!"

  puts "Choose one: (P/R/S)"

  user_choice = gets.chomp.capitalize

  choices = ["P", "R", "S"]

  computer_choice = choices.keys.sample

  if (user_choice == computer_choice)
    puts "It's a tie!"
  elsif (user_choice == "R" && computer_choice == "S") 
    puts "Rock beats scissors! You win!"
  elsif (user_choice == "S" && computer_choice == "P")
    puts "Scissors beats paper! You win!"
  elsif (user_choice == "P" && computer_choice == "R")
    puts "Paper covers rock! You win!"
  else
    puts "#{user_choice} doesn't beat #{computer_choice}. You lose!"
  end
  play_again()
end

play_game()





