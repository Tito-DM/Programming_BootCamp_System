class StudentList

  def initialize
    @studentContainer = Array.new
  end


  def list student

    @studentContainer.push(student)

  end

  def displayList

    @studentContainer.each do |list|
       puts "Student Registered"
       puts  puts " Name :#{list.firstName}\n Surname: #{list.surname}\n Age: #{list.age}\n Gender: #{list.gender}\n"
       puts "******************************************"
    end
  end

  def displayStudent (username, password)

      @studentContainer.each do |list|
        if list.username == username and list.password == password
          puts  puts " Name: #{list.firstName}\n Surname: #{list.surname}\n Age: #{list.age}\n Gender: #{list.gender}\n Username: #{list.username} \n Password: #{list.password} "

        end
      end
    end



  def loginStudent (username, password)
    @studentContainer.each do |list|

      if list.username == username and list.password == password
        puts "welcome #{list.firstName} #{list.surname} "
        return "login successfully"
      end
    end

  end



  def checkExistingStudent (username)
    @studentContainer.each do |list|

      if list.username == username

        return true
      end
    end
  end


  def editStudent (username, password,option, newData)

    @studentContainer.each do |list|

      case
      when option == 1
        if list.username == username and list.password == password
          list.firstName = newData
        end
        break
      when option == 2
        if list.username == username and list.password == password
          list.surname = newData
          end
          break
      when option == 3

        if list.username == username and list.password == password
          list.age = newData
        end
        break
      when option == 5
        if list.username == username and list.password == password
          if gender == "Male" or gender == "Female" or gender =="M" or gender =="F"
            @gender = gender
          else
            @gender = "invalid"

          end
          list.gender = newData
        end
        break
      when option == 6
        if list.username == username and list.password == password
           list.username = newData
      end
      break
      when option == 7
      if list.username == username and list.password == password
        list.password = newData
      end
        break
      else
        puts "invalid Menu"
      end

    end
  end

  def checkpassWord (password)
    @studentContainer.each do |list|

      if list.password == password

        return true
      end
    end

  end

  end