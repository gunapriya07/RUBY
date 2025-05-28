require 'colorize'
require 'pry'  # For debugging

puts "HELLO,WORLD".green

FILE_NAME = 'notes.txt'

def write_note
  begin
    puts "Enter your note:".light_blue
    note = gets.chomp
    raise "Note cannot be empty!" if note.strip.empty?

    File.open(FILE_NAME, 'a') { |f| f.puts(note) }
    puts "Added successfully".green
  rescue => e
    puts "Error while writing note: #{e.message}".red
  ensure
    puts "Write operation completed.".yellow
  end
end

def read_note
  begin
    if File.exist?(FILE_NAME)
      puts "You are reading notes:".light_blue
      File.open(FILE_NAME, 'r') { |f| puts f.read }
    else
      raise "The file #{FILE_NAME} does not exist."
    end
  rescue => e
    puts "Error while reading: #{e.message}".red
  ensure
    puts "Read operation completed.".yellow
  end
end

loop do
  puts "Choose any one option:".blue
  puts "\n 1. Write a note".light_blue
  puts "\n 2. Read all the notes".light_blue
  puts "\n 3. Exit".light_blue

  puts "Enter the option:".yellow
  choice = gets.chomp

  case choice
  when "1"
    write_note
  when "2"
    read_note
  when "3"
    puts "End..!".green
    break
  else
    puts "Invalid number..! Please choose 1, 2, or 3.".red
  end

  # Optional: Debug at any loop iteration
  # binding.pry
end
