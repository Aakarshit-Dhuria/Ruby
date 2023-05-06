puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your full name has #{full_name.length - 1} characters in it."


# puts "Enter a number to multiply by 2: "
# number = gets.chomp
# puts "The number becomes #{number.to_i * 2}"