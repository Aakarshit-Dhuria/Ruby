sentence = "My name is Aakarshit"
p sentence

## String concatenation
# first_name = "Aakarshit"
# last_name = "Dhuria"
# puts first_name + " " + last_name

## String Interpolation(using value of variables inside a string)
# Can only be done in strings using double quotes, and not in single quotes.
# puts "My first name is #{first_name} and my last name is #{last_name}"

# full_name = "#{first_name} #{last_name}"
# puts full_name

# To print the class of anything because everything is an object in ruby
# puts full_name.class
# puts 10.class
# puts 10.0.class

## To see all the available methods of an object
# puts full_name.methods

## Trying a few different methods.
# puts 10.to_s
# puts full_name.length
# puts full_name.reverse
# puts full_name.capitalize

# puts full_name.empty?
# puts "".empty?
# puts "".nil?
# puts nil.nil?


sentence = "Welcome to the jungle"
puts sentence.sub('the jungle', 'india')

sentence = "Welcome to the jungle in the jungle for the jungle"
puts sentence.gsub('the jungle', 'india') # global substitution
# puts sentence

