load 'studentSign_In.rb'

class Student
  def initialize(firstName, surname, age, gender, username, password,courseRegistered)

    @firstName = firstName
    @surname = surname
    @courseRegistered = courseRegistered

    if age.is_a? Numeric and age >= 17 then
      @age = age
    else
      @age = 0

    end

    if gender == "Male" or gender == "Female" or gender =="M" or gender =="F"
      @gender = gender
    else
      @gender = "invalid"

    end

    @username = username
    @password = password
  end
  attr_accessor :firstName, :surname, :age, :gender, :username, :password, :courseRegistered,:courseRegistered


end

