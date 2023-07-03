require 'bcrypt'

module Auth
  # We can use self.method_name or Auth.method_name to make it a class method, which can be called without an instance.
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && user_record[:password] == password
        user_record
      end
    end
    "Please enter valid credentials."
  end
end
  