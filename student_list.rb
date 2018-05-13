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

    data = newData


      case
      when option == 1

        @studentContainer.each do |list|

          if list.username == username and list.password == password

            list.firstName = data
          end
        end


      when option == 2
        @studentContainer.each do |list|

          if list.username == username and list.password == password

            list.surname = data
          end
        end

      when option == 3

        @studentContainer.each do |list|

          if list.username == username and list.password == password

            list.age = data.to_i
          end
        end

      when option == 5
        @studentContainer.each do |list|

          if list.username == username and list.password == password
            if newData == "Male" or newData == "Female" or newData =="M" or newData =="F"
              list.gender = newData
            else
              list.gender= "invalid"

            end
            list.gender = newData
          end
        end

      when option == 6
        @studentContainer.each do |list|

          if list.username == username and list.password == password

            list.username = data
          end
        end

      when option == 7
        @studentContainer.each do |list|

          if list.username == username and list.password == password

            list.password = data
          end
        end

      else
        puts "invalid Menu"
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