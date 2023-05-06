#### HASH a.k.a Dictionary

my_hash = {'a' => 1,  'b' => 2, 'c' => 3, 'd' => 4}
# p my_hash['a']

my_details = {'first_name' => 'John', 'last_name' => 'Dhuria'}
# p my_details['first_name']

#### Using symbols as keys instead of strings
## using symbols we have to use : along with the symbol to access it. 
another_hash = {a:1,b:2,c:3}
# p another_hash[:a]


#### To get all keys and values in the hash
# p my_hash.keys
# p my_hash.values


#### Iterate over a dictionary
# my_hash.each do |key, value|
#     puts "the key is #{key} and the value is #{value}"
# end

## To verify the keys are actually symbols
# another_hash.each do |key, value|
#     puts "the key is #{key.class} and the value is #{value.class}"
# end


#### To add a new key, value to the hash
my_hash['e'] = "Aakarshit"
# puts my_hash

my_hash[:f] = "Dhuria"
# puts my_hash

# puts my_hash["f"] # returns empty because key doesn't exist


#### One line syntax to iterate over a hash
# my_hash.each {|key, value| puts "the key is #{key} and the value is #{value}"} 



#### Selection based on a condition on key or value
puts my_hash.select {|key,value| value.is_a?(Integer)}
puts my_hash.select {|key,value| value.is_a?(String)}


#### Delete a key based on a condition on key or value
puts my_hash.each {|key,value| my_hash.delete(key) if value.is_a?(String)}
