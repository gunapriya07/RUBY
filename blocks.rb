puts "Blocks in iteration:"

numbers=[1,4,52,34]
numbers.each do |num|
  puts "Numbers:#{num}"
end

def with_block
  puts "Before block"
  yield
  puts "After block"
end
with_block {puts {"Hello from the block"}}

puts "\nProcs:"
shout=Proc.new {puts "I'm a proc!"}
shout.call

def twice(proc)
  proc.call
  proc.call
end
twice(shout)

puts "LAMBDAS"

say_hi = -> {puts "Hi from Lambda!"}
say_hi.call

add=->(a,b){a+b}
puts "Lambda result: #{add.call(3,2)}"

begin
   add.call(1)
rescue ArgumentError=>e
  puts "Lambda error: #{e.message}"
end

puts "\n Enumerables"

nums=[1,2,3,4,5]

squares=nums.map{|n| n**2}
puts "Squares: #{squares.inspect}"

evens=numbers.select {|n| n.even?}
puts "Even numbers: #{evens.inspect}"

sum=numbers.reduce(0) {|acc,n| acc+n}
puts "Sum : #{sum}"

