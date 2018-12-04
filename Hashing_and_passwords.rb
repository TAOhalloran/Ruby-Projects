require 'bundler/inline'
 
gemfile true do
source 'http://rubygems.org'
gem 'bcrypt'
end
 
require 'bcrypt'
 
users = [
          { username: "tom", password: "pass1" },
          { username: "stu", password: "pass2" },
          { username: "prk", password: "pass3" },
          { username: "jim", password: "pass4" },
          { username: "max", password: "pass5" },
          { username: "kip", password: "pass6" }
        ]

 
def create_hash(password)
  BCrypt::Password.create(password)
end
 
def verify_hash(password)
  BCrypt::Password.new(password)
end
 
def secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash(user_record[:password])
  end
  list_of_users
end
