contacts=[
  {name:"Gunapriya",age:19,phone_number:"1234567890",email:"guna@gmail.com"},
  {name:"Riya",age:20,phone_number:"0987654321",email:"riya@gmail.com"},
  {name:"kalyan",age:18,phone_number:"98352328492",email:"kalyan@gmail.com"}
]


puts "Contact List:"
# using for each loop
contacts.each do |contact|
  puts "Name: #{contact[:name]}"
  puts "Age: #{contact[:age]}"
  puts "phoneNumber: #{contact[:phone_number]}"
end
puts "-"*5

## by using second indexes
puts "Using indexe"
puts contacts[0][:name]

puts "-"*5

puts "Using map"
## using map
names = contacts.map { |contact| contact[:name] }
puts "All Contact Names: #{names.join(', ')}"

puts "-"*5

puts "Using select"
# using select
adults = contacts.select { |contact| contact[:age] > 18 }
puts "Adults:"
adults.each { |contact| puts contact[:name] }

puts "-"*5

puts "Using find"
#using find
found = contacts.find { |contact| contact[:name] == "Riya" }
puts "Found: #{found[:name]}, #{found[:phone_number]}" if found

puts "-"*5

puts "Using for loop"
for contact in contacts
  puts "Name: #{contact[:name]}"
end

puts "-"*5