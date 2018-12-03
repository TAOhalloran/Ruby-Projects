users = [
          { username: "tom", password: "pass1" },
          { username: "stu", password: "pass2" },
          { username: "prk", password: "pass3" },
          { username: "jim", password: "pass4" },
          { username: "max", password: "pass5" },
          { username: "kip", password: "pass6" }
        ]


def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    else
    end
  end
  "Credentials were incorrect."
end


p "Welcome to Authenticator"

25.times {print '-'}
puts
puts "This program will verify your credentials."
puts "If crendtials are verfied, program will return the user object."

attempt = 0
while attempt < 4
  puts
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authenticator = auth_user(username, password, users)
  puts authenticator
  puts
  puts "Press n to quit, or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempt += 1
  end


puts "You have exceeded the number of attempts, now exiting Authenticator." if attempt == 4

