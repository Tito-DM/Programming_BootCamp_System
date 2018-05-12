load 'lecture.rb'
class Course
  def initialize (name, startDate,endDate,category,lecture)
    @name = name
    @startDate = startDate
    @endDate = endDate
    @category = category
    @lecture = lecture
  end

  def  getlecture()
    lect = Lecture.new

    if lect.lectName.include?(@lecture) then
      return @lecture
    else
      puts "u not a lecture"
    end

  end

  attr_accessor :name, :startDate, :endDate, :category


end

