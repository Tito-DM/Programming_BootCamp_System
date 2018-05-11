# main file system

load 'student.rb'
load 'student_list.rb'



def sign_in_Student

  puts "Enter your UserName: "
  username = gets.chomp
  puts "Enter your Password: "
  password = gets.chomp

  while  $studentList.loginStudent(username,password) != "login successfully"
    puts "Invalid username or password"
    puts "Enter your UserName: "
    username = gets.chomp
    puts "Enter your Password: "
    password = gets.chomp

  end

    puts "choose one Option:\n"
    puts " 1-Edit Profile \n 2-Register For Course \n 3-check your profile\n 4-log out"
    puts "Please enter one of the options according to the number: "
    option = gets.chomp.to_i

  while option != 4

    case
    when option == 1
      #this is the registration section
      puts "Edit your Profile"
      puts " 1-Edit first Name \n 2-Edit surname \n 3-Edit age \n 5-Edit gender \n 6-Edit username \n 7-Edit- password \n 0-exit"
      $option2 = gets.chomp.to_i

      while $option2 != 0
        case
        when $option2 == 1
          puts "Enter New First name: "
          newFirstName = gets.chomp
          $studentList.editStudent(username,password,$option2,newFirstName)
          $option2 = gets.chomp.to_i
          break
        when $option2 == 2
          puts "Enter New surname: "
          newSurName = gets.chomp
          $studentList.editStudent(username,password,$option2,newSurName)
          $option2 = gets.chomp.to_i
         break

        when $option2 == 3
          puts "Enter New Age: "
          newAge = gets.chomp
          $studentList.editStudent(username,password,$option2,newAge)
          $option2 = gets.chomp.to_i
          break
        when $option2 == 5
          puts "Enter New Gender: "
          newGender = gets.chomp
          $studentList.editStudent(username,password,$option2,newGender)
          $option2 = gets.chomp.to_i
          break
        when $option2 == 6
          puts "Enter New username: "
          newUserName = gets.chomp
          $studentList.editStudent(username,password,$option2,newUserName)
          $option2 = gets.chomp.to_i
          break

        when $option2 == 7
          puts "Enter the old Password: "
          olpass = gets.chomp

          if $studentList.checkpassWord(olpass) == true
            puts "Enter New username: "
            newPassword = gets.chomp
            $studentList.editStudent(username,password,$option2,newPassword)
            $option2 = gets.chomp.to_i
          else
            puts " wrong old password"
          end

          break
        end
      end


      break
    when option == 2
        puts "Available Courses"
      break
    when option == 3
      puts "your current Profile"
      $studentList.displayStudent(username,password)
      puts "\n"
      puts " 1-Edit Profile \n 2-Register For Course \n 3-check your profile\n 4-log out"
      puts "Please enter one of the options according to the number: "
      option = gets.chomp.to_i
      break

    else
      puts "invalid Menu Option, please enter a valid option: "
      option = gets.chomp.to_i
    end


  end
  puts "  log out successfully  "
  mainMenu

  end





def mainMenu

  puts "\n"
  puts "choose one Option:\n"
  puts " 1-Register \n 2-Sign in\n 3-About us\n 4-exit the system\n"

  puts "Please enter one of the options according to the number: "
  option = gets.chomp.to_i

  while option != 4

    case
    when option == 1
      #this is the registration section
      puts "welcome to registration section"
      registration

      break
    when option == 2
      sign_in_Student
      break
    when option == 3
      break

    else
      puts "invalid Menu Option, please enter a valid option: "
      option = gets.chomp.to_i
    end


  end
end
$studentList = StudentList.new

def registration

  puts "Please enter your name: "
  name = gets.chomp
  puts "Please enter your surname:"
  surname = gets.chomp
  puts "Please enter your age:"
  age = gets.chomp.to_i
  puts "Please enter your gender, Please remember to enter M/F or Male or Female:"
  gender = gets.chomp.capitalize
  puts "Please set your Username:"
  username = gets.chomp
  puts "Please set your Password:"
  password = gets.chomp



  $student = Student.new(name,surname,age,gender,username,password)

  #check gender and age input

    if $student.gender == "invalid" or $student.age == 0 or $studentList.checkExistingStudent(username) == true
      #check age
      while $student.age == 0
        puts "Please check your age is 17 or above and remember u can oly enter numbers\n"
        puts "Please enter a valid age: "
        age = gets.chomp.to_i
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
        $student = Student.new(name,surname,age,gender,username,password)

      end

    end

  #add student to List

  $studentList.list($student)
   puts "\n"
   puts "  registration successfully  \n"


  mainMenu


  end



  puts "***********Welcome to Programing BootCamp Training******"
  puts "\n"
  mainMenu






