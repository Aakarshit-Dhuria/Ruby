class Student
  # We can use attr_accessor to directly get getters and setters for the given symbols
  attr_accessor :first_name, :last_name, :email, :password

  # To only make it read only, i.e. only a getter and not a setter on it, we can use:
  attr_reader :password

  #### Standard syntax to define individual attributes.
  # @first_name
  # @last_name
  # @email
  # @username
  # @password


  #### To avoid initialising individual attributes, we can directly create a method initialise which will be automatically called with the given parameters.
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

  # We use equal to after a method name to make it a setter method.
  # Using a setter method we can directly change its value using the assignment operator.
  # def first_name=(name)
  #   @first_name = name
  # end

  # def last_name=(name)
  #   @last_name = name
  # end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end
end


#### Setting individual attributes
# aakarshit = Student.new
# puts aakarshit
# aakarshit.first_name = "Aakarshit"
# aakarshit.last_name = "Dhuria"
# puts aakarshit
# puts aakarshit.first_name
# puts aakarshit.last_name


#### Better way of directly setting all attributes
aakarshit = Student.new("Aakarshit", "Dhuria", "aakarshit@gmail.com", "aakarshit1", "aakarshitpass")
john = Student.new("john", "doe", "john@gmail.com", "john1", "johnpass")

puts aakarshit
puts john

aakarshit.last_name = john.last_name
puts "Aakarshit is altered."
puts aakarshit