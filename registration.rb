def registration

  puts "Please enter your name or 4 to exit: "
  name = gets.chomp
  #call the exit login function
  exitSection name

  puts "Please enter your surname or 4 to exit:"
  surname = gets.chomp

  #call the exit login function
  exitSection surname

  puts "Please enter your age or 4 to exit:"
  age = gets.chomp.to_i

  #call the exit login function
  exitSection age

  puts "Please enter your gender, Please remember to enter M/F or Male or Female or 4 to exit:"
  gender = gets.chomp.capitalize

  #call the exit login function
  exitSection gender

  puts "Please set your Username or 4 to exit:"
  username = gets.chomp

  #call the exit login function
  exitSection username

  puts "Please set your Password or 4 to exit:"
  password = gets.chomp

  #call the exit login function
  exitSection password
  clearScreen

  $student = Student.new(name,surname,age,gender,username,password)

  #check gender and age input

  if $student.gender == "invalid" or $student.age == 0 or $studentList.checkExistingStudent(username) == true
    #check age
    while $student.age == 0
      puts "Please check your age is 17 or above and remember u can oly enter numbers\n"
      puts "Please enter a valid age: "
      age = gets.chomp.to_i
      #call the exit login function
      exitSection age
      $student = Student.new(name,surname,age,gender,username,password)
    end

    #check gender
    while  $student.gender == "invalid"
      puts "invalid gender remember can only be Male/Female or M/F"
      puts "Please enter a valid gender: "
      gender = gets.chomp.capitalize
      $student = Student.new(name,surname,age,gender,username,password)
    end

    while $studentList.checkExistingStudent(username) == true
      puts "This user is already registered please check your username"
      puts "Please enter a valid one: "
      username = gets.chomp
      #call the exit login function
      exitSection age
      $student = Student.new(name,surname,age,gender,username,password)

    end

  end

  #add student to List

  $studentList.list($student)
  puts "\n"

  #clear screen
  clearScreen
  puts "  registration successfully  \n"

  mainMenu
  exit!

end