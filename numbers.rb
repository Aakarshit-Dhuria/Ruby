x = 5
y = 10
puts y / x

puts "5" * 2

# cant do this
# puts 2 * "5"

puts "-" * 20

## Special method times
# 20.times { puts "hi" }
# 20.times { puts rand(10) }

puts "5".to_i * 2
puts "5".to_i.to_f * 2
puts "5".to_f * 2

## String which cant be converted to a string is converted to zero.
puts "hello".to_f * 2


puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{first_number.to_f * second_number.to_f}"
puts "The first number divided by the second number is: #{first_number.to_f / second_number.to_f}"
puts "The first number subtracted from the second number is: #{second_number.to_f - first_number.to_f}"
puts "The first number added to the second number is: #{second_number.to_f + first_number.to_f}"
puts "The first number mod the second number is: #{first_number.to_f % second_number.to_f}"