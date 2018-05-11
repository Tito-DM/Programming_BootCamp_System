

class Lecture


  mario ={
      name: "Mario Author",
      age: 29,
      gender: "Male",
      staff_number: 2011,
      password: 0121

  }

  nzau ={
      name: "Nzau Nzinga",
      age: 30,
      gender: "Male",
      staff_number: 2012,
      password: 0122

  }

  luna ={
      name: "Luna Matondo",
      age: 28,
      gender: "Famele",
      staff_number: 2013,
      password: 0123

  }

  $lectures = []
  $lectures.push mario
  $lectures.push nzau
  $lectures.push luna

  def lectName
      name = []
    $lectures.each do |lect|

      name.push lect[:name]
    end

    return name

  end

end


