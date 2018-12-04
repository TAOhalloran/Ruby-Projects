class Student
  attr_accessor :first_name, :last_name, :email, :username, :password


def initialize(firstname, lastname, username, email,  password)
  @first_name = firstname
  @last_name = lastname
  @username = username
  @email = email
  @password = password
end




def to_s
  "First Name: #{@first_name}, Last Name: #{@last_name}, Username: #{@username}, Email: #{@email}, Password: #{@password}"
end

end

tom = Student.new("Tom","Crown","tCrown","TCrown@gmail.com","pass1")

stu = Student.new("Stu","Jeffy","McSwag","Stu@gmail.com","pass2")

puts tom
puts stu


