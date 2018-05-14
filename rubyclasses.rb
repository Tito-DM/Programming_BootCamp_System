# main file system

load 'student.rb'
load 'student_list.rb'
load 'lecture.rb'
load 'mainMenu.rb'
load 'registration.rb'
load 'sign_In.rb'

#global variable
$count = 0
$lectureList = Lecture.new
$studentList = StudentList.new


def exitSection data
  if data == '4' then

    #clear screen
    clearScreen
    mainMenu
  end

  #exit in age section

  if data.to_i == 4 then
    #clear screen
    clearScreen
    mainMenu
  end

end


def clearScreen
  sleep 1
  system ('clear')
end

  puts "***********Welcome to Programing BootCamp Training******"
  puts "\n"
  mainMenu






