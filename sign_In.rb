def sign_inDisplay
  puts "choose one Option:\n"
  puts " 1-Edit First Name \n 2-Edit Surname \n 3-Edit Age \n 5-Edit Gender \n 6-Edit userName \n 7-Edit Password \n 4-exit"
  puts "Please enter one of the options according to the number: "
end







def sign_in_Student

  puts "Login or enter 4 to exit\n"



  puts "Enter your UserName: "
  username = gets.chomp

  #call the exit login function
  exitSection username

  puts "Enter your Password: "

  password = gets.chomp
  #call the exit login function
  exitSection username

  #clear screen
  clearScreen







  while  $studentList.loginStudent(username,password) != "login successfully"
    puts "Invalid username or password or enter 4 to exit"
    puts "Enter your UserName: "
    username = gets.chomp
    #call the exit login function
    exitSection username
    puts "Enter your Password: "
    password = gets.chomp
    #clear screen
    sleep 1
    clearScreen
    #call the exit login function
    exitSection password

  end

  puts "choose one Option:\n"
  puts " 1-Edit Profile \n 2-Register For Course \n 3-check your profile\n 4-log out"
  puts "Please enter one of the options according to the number: "
  $option1 = gets.chomp.to_i
  #clear screen
  clearScreen

  while $option1 != 4

    case
    when $option1 == 1
      #this is the registration section
      # call display method
      sign_inDisplay
      $option2 = gets.chomp.to_i
      #clear screen
      clearScreen
      while $option2 != 4
        case
        when $option2 == 1
          puts "Enter New First name: "
          newFirstName = gets.chomp
          $studentList.editStudent(username,password,$option2,newFirstName)
          puts "\n             change made successfully "
          #clear screen
          sleep 1
          clearScreen
          sign_inDisplay
          $option2 = gets.chomp.to_i
          #clear screen
          clearScreen
          next
        when $option2 == 2
          puts "Enter New surname: "
          newSurName = gets.chomp
          $studentList.editStudent(username,password,$option2,newSurName)
          puts "\n             change made successfully "
          #clear screen
          sleep 1
          clearScreen
          sign_inDisplay
          $option2 = gets.chomp.to_i
          #clear screen
          clearScreen
          next

        when $option2 == 3
          puts "Enter New Age: "
          newAge = gets.chomp.to_i
          $studentList.editStudent(username,password,$option2,newAge)
          puts "\n             change made successfully "
          #clear screen
          sleep 1
          clearScreen
          sign_inDisplay
          $option2 = gets.chomp.to_i
          #clear screen
          clearScreen
          break
        when $option2 == 5
          puts "Enter New Gender: "
          newGender = gets.chomp
          $studentList.editStudent(username,password,$option2,newGender)
          puts "\n             change made successfully "
          #clear screen
          sleep 1
          clearScreen
          sign_inDisplay
          $option2 = gets.chomp.to_i
          #clear screen
          clearScreen
          break
        when $option2 == 6
          puts "Enter New username: "
          newUserName = gets.chomp
          $studentList.editStudent(username,password,$option2,newUserName)
          puts "\n             change made successfully "
          #clear screen
          sleep 1
          clearScreen
          sign_inDisplay
          $option2 = gets.chomp.to_i
          #clear screen
          clearScreen
          username = newUserName
          break

        when $option2 == 7
          if $count == 0 then
            puts "Enter the old Password: "
            olpass = gets.chomp
          end


          if $studentList.checkpassWord(olpass) == true
            puts "Enter New username: "
            newPassword = gets.chomp
            $studentList.editStudent(username,password,$option2,newPassword)
            puts "\n             change made successfully "
            #clear screen
            sleep 1
            clearScreen
            sign_inDisplay
            $option2 = gets.chomp.to_i
            #clear screen
            clearScreen
            password = newPassword
          else
            $count = 1
            while  $studentList.checkpassWord(olpass) != true
              puts " wrong old password"
              puts "Enter the old Password: "
              olpass = gets.chomp
            end

          end

        end
      end
      puts " 1-Edit Profile \n 2-Register For Course \n 3-check your profile\n 4-log out"
      puts "Please enter one of the options according to the number: "
      $option1 = gets.chomp.to_i
      #clear screen
      clearScreen
      next
    when $option1 == 2
      puts "Available Courses"
      break
    when $option1 == 3
      puts "your current Profile"
      $studentList.displayStudent(username,password)
      puts "\n"
      puts " 1-Edit Profile \n 2-Register For Course \n 3-check your profile\n 4-log out"
      puts "Please enter one of the options according to the number: "
      $option1 = gets.chomp.to_i
      #clear screen
      clearScreen
      next

    else
      puts "invalid Menu Option, please enter a valid option: "
      $option1 = gets.chomp.to_i
    end


  end
  puts "  log out successfully  "
  clearScreen
  mainMenu






  clearScreen
  mainMenu

end