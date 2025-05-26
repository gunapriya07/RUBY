require 'colorize'


puts "HELLO,WORLD".green

FILE_NAME='notes.txt'

def write_note
  puts "Enter your note:".light_blue
  note=gets.chomp
  File.open(FILE_NAME,'a') {|f| f.puts(note)}
  puts "Added succesfully".green
end

def read_note

  if File.exist?(FILE_NAME)
     puts "Your are reading notes:".light_blue
     File.open(FILE_NAME,'r') {|f| puts f.read} 
  else
    puts "Invalid file...!"

  end
end


loop do
   puts "Choose any one option:".blue
   puts "\n 1.write a note".light_blue
   puts "\n 2.read all the notes".light_blue
   puts "\n 3.Exit".light_blue
   
   puts "Enter the option:".yellow
   choice=gets.chomp

   case choice
   when "1"
      write_note
   when "2"
       read_note
   when "3"
        puts "End..!".green
        break
   else
      puts "Invalid number..!".red  
   end
end