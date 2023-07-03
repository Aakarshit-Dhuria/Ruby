# require 'bcrypt'

# my_password = BCrypt::Password.create("password1")

# puts my_password
# puts my_password.version
# puts my_password.cost
# puts my_password == "password1"
# puts my_password == "password2"


## All these 3 contain different hash values, although they have the same password value
# my_password = BCrypt::Password.create("password1")
# my_password_1 = BCrypt::Password.create("password1")
# my_password_2 = BCrypt::Password.create("password1")

## We can verify this by checking it
# puts my_password
# puts my_password_1
# puts my_password_2
# puts my_password == my_password_1

## The only way to match passwords is to compare it to the actual value passed while creating the hash.
# puts my_password == "password1"
# puts my_password_1 == "password1"


## Instead of writing the whole code again and again, we have created our own auth module using bcrypt which we can directly use in our student class by including it inside the class.
require_relative 'bcrypt_auth_module'


class Student
  # We can include the module directly in our class
  include Auth
  attr_accessor :first_name, :last_name, :email, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end


  def to_s
    "First name : #{@first_name} and last name : #{@last_name}, Username : #{@username} and Password : #{@password}, email : #{@email}"
  end
end

aakarshit = Student.new("Aakarshit", "Dhuria", "aakarshit@gmail.com", "aakarshit1", "aakarshitpass")
john = Student.new("john", "doe", "john@gmail.com", "john1", "johnpass")

# So basically, we can use this create hash digest method from auth module using the objects of our own class.
puts aakarshit.create_hash_digest(aakarshit.password)
