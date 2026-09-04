# Mastermind project

# Randomly set order of 4 numbers between 1-6 (cpu is code maker)
CODE_NUMBERS = [1, 2, 3, 4, 5, 6].freeze
secret_code = CODE_NUMBERS.sample(4)

p secret_code # Delete before going live

# Provide instructions to the user
puts "Welcome to Mastermind!"

10.times do
  # User (code breaker) makes guess
  puts "Please enter your 4 digit guess from 1 to 6."
  user_guess = gets.chomp.to_i.digits.reverse

  puts "User's guess is #{user_guess}" # Delete before going live
  puts "User's guess is a(n) #{user_guess.class}" # Delete before going live

  # Isolate exact position matches (exact hits) to calculate feedback pegs
  matches = secret_code.zip(user_guess).filter_map { |a, b| a if a == b }
  p matches
  # TODO: State which numbers and positions are correct

  # Compare guess to code
  if secret_code.include?(user_guess) # TODO: Fix this to compare each element
    puts "Correct!"
  else
    puts "Wrong!"
  end
  # User continues to make guesses until code is completely guessed or 10 attempts have been made
end
