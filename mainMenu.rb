

def mainMenuDisplay
  puts "\n"
  puts "choose one Option:\n"
  puts " 1-Register \n 2-Sign in\n 3-About us\n 4-exit the system\n"

  puts "Please enter one of the options according to the number: "
end

def mainMenu

  #call display message
  mainMenuDisplay

  $option = gets.chomp.to_i

  #clear the screen
  clearScreen

  while $option != 4

    case
    when $option == 1
      #this is the registration section
      puts "welcome to registration section"
      registration

      break
    when $option == 2

      sign_in_Student
      break
    when $option == 3

      puts "    We are a Training center we here to share information in many areas such as
            web development, Mobile development, Software Development
                *****************We here to Share******************\n\n\n"

      puts "\n"
      #call display message
      mainMenuDisplay
      $option = gets.chomp.to_i
      #clear screen
      clearScreen
      next

    else
      #clear screen
      clearScreen
      puts "invalid Menu Option, please enter a valid option: "
      #call display message
      mainMenuDisplay
      $option = gets.chomp.to_i
      #clear screen
      clearScreen
    end


  end
  #exit the system
  exit!
end