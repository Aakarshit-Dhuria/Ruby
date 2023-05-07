#### making a simple area code project 

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
# Write code here
    return somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
    return somehash[key]
end
 
# Execution flow
loop do
    # Write your program execution code here
    puts "Do you want to look up an area code for a city?(Y/N)"
    input = gets.chomp.downcase
    
    break if input != "y"

    puts get_city_names(dial_book)
    puts "Which city do you want to look up?"
    input_city = gets.chomp.downcase
    if dial_book.include?(input_city)
        puts "The area code for #{input_city} is #{get_area_code(dial_book, input_city)}" 
    else
        puts "You entered an invalid city."
    end
end