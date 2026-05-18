# Mastermind project

# Randomly set order of 4 numbers between 1-6 (cpu is code maker)
CODE_NUMBERS = [1, 2, 3, 4, 5, 6]
secret_code = CODE_NUMBERS.sample(4)

p secret_code # Delete before going live

# Provide instructions to the user
puts "Welcome to Mastermind!"
puts "Try to guess the 4 digit code from numbers 1 to 6."

# User (code breaker) makes guess
user_guess = gets.chomp.to_i

puts "User's guess is #{user_guess}" # Delete before going live
puts "User's guess is a(n) #{user_guess.class}" # Delete before going live

# Compare guess to code
# Provide feedback
# State which numbers and positions are correct
# User continues to make guesses until code is completely guessed or 10 attempts have been made
