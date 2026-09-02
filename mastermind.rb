# Mastermind project

# Randomly set order of 4 numbers between 1-6 (cpu is code maker)
CODE_NUMBERS = [1, 2, 3, 4, 5, 6].freeze
secret_code = CODE_NUMBERS.sample(4)

p secret_code # Delete before going live

# Provide instructions to the user
puts "Welcome to Mastermind!"
puts "Try to guess the 4 digit code from numbers 1 to 6."

10.times do
  # User (code breaker) makes guess
  puts "Please enter your selection."
  user_guess = gets.chomp.to_i

  puts "User's guess is #{user_guess}" # Delete before going live
  puts "User's guess is a(n) #{user_guess.class}" # Delete before going live

  # Compare guess to code
  # Provide feedback
  # State which numbers and positions are correct
  if secret_code.include?(user_guess)
    puts "Correct!"
  else
    puts "Wrong!"
  end
  # User continues to make guesses until code is completely guessed or 10 attempts have been made
end
