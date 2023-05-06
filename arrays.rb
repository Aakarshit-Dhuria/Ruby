a = [1,2,3,4,5,6,7,8,9,10,11]

# puts a
# print a
# puts

# p a
# p a.last
# p a[1]

x = 1..100
# p x
# p x.class
# p x.to_a
# p x.to_a.shuffle

# z = x.to_a.shuffle!
# p z

#### ! is used after a method to make the changes in place on the variable i.e. it stores the changes of the operation in the variable.
# p z.reverse!
# p z

x = "a".."z"
# p x
z = x.to_a
# p z
# p z.length

#### Add an element to the end of the array
z << 10
# p z

## 2nd way
z.append(100)
# p z

#### Add an element to the beginning of the array
z.unshift("Aakarshit")
# p z


#### To get the uniq elements
z.append("Aakarshit")
z.append(10)
# p z
# p z.uniq
# p z
# p z.uniq! # stores the result
# p z

#### To check for empty
# p z.empty?


#### To check if an element is present
# p z.include?("Aakarshit")
# p z.include?("Dhuria")


#### Push and pop operations
# p z.push("new item")
# p z
# p z.pop
# p z

#### Join elements together
# p z.join
# b = p z.join(" ")
# p b
# p b.split(" ")!
# p b


#### Shortcut to create a new array
z = %w(my name is Aakarshit and i am an incoming sde intern at Scaler)
# p z


#### Iterate over elements
# for items in z
#     print items + " "
# end

## Preferred way

z.each do |item|
    print item + " "
end

puts

## Single line syntax to iterate over an array
z.each {|item| print item + " "}
puts
z.each {|item| print item.capitalize + " "}



#### To filter(select) out elements based on a condition 
z = (1..100).to_a.shuffle
p z.select {|number| number.odd?}
p z.select {|number| number > 90}
p z.select {|number| number > 90}.length
