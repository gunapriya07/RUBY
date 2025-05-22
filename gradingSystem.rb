puts "Grading System:"

puts "How many students' marks do you want to check?"
n = gets.chomp.to_i

n.times do |i|
  puts "Enter marks for Student #{i + 1}:"
  marks = gets.chomp.to_i

  if marks >= 90 && marks <= 100
    puts "Grade A"
  elsif marks >= 80
    puts "Grade B"
  elsif marks >= 70
    puts "Grade C"
  elsif marks >= 60
    puts "Grade D"
  elsif marks >= 50
    puts "Grade E"
  else
    puts "Failed"
  end
end

puts "------------------------------------------------------------"
puts "|----------------------------------------------------------|"
puts "------------------------------------------------------------"

puts "Temperature Checking:"

puts "Enter the temperature in Celsius:"
temp = gets.chomp.to_i

if temp >= 30
  puts "It's too hot..!"
elsif temp >= 20
  puts "Nice Weather...!"
elsif temp >= 10
  puts "Cool...!!"
else 
  puts "It's very cool..!"
end
