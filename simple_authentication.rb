#### Practice simple Authenticator project

users = [
    { username: 'user1', password: 'password1' },
    { username: 'user2', password: 'password2'},
    { username: 'user3', password: 'password3'},
    { username: 'user4', password: 'password4'},
    { username: 'user5', password: 'password5'}
]

def auth_user(username, password, users)
    users.each do |user|
        if user[:username] == username && user[:password] == password
            return "Hi #{username}, you are successfully logged in."
        end
    end

    return "Please enter a valid username and password"

    # for user in users
    #     if user[:username] == username && user[:password] == password
    #         logged_in = true
    #         puts "Hi #{username}, you are successfully logged in."
    #     end
    # end

    # break if logged_in
    # if !logged_in
    #     puts "Please enter a valid username and password."
    # end
end

x = 3
while x > 0
    puts "Enter your username"
    username = gets.chomp
    puts "Enter your password"
    password = gets.chomp

    auth_message = auth_user(username, password, users)
    puts auth_message

    puts "Press n to quit or any other key to continue"
    key = gets.chomp.downcase
    break if key == "n"
    x = x - 1
end

puts "You exceeded the maximum number of attempts" if x == 0