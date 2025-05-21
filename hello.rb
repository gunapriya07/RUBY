# Personal Info
puts "Hello, World!"

name = "I am Guna Priya"
interest = "I love coding, learning new tech, and building cool stuff!"
goal = "My goal is to become a full-stack developer."

puts name
puts interest
puts goal

# Game Intro
puts "\nI designed a game using Ruby basics."
puts "🎮 Game Name: Guess the Secret Number"

secret_number = 7

puts "Welcome to the Number Guessing Game!"
puts "Guess a number between 1 and 10:"

user_guess = gets.chomp.to_i

if user_guess == secret_number
  puts "🎉 Correct! You guessed the right number."
elsif user_guess > secret_number
  puts "Too high! The number was #{secret_number}."
else 
  puts "Too low! The number was #{secret_number}."
end
