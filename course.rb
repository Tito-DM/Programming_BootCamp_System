
class Course
  def initialize (name, startDate,endDate,category,lecture,about)
    @name = name
    @startDate = startDate
    @endDate = endDate
    @category = category
    @lecture = lecture
    @about = about
  end



  attr_accessor :name, :startDate, :endDate, :category,:lecture,:about



end


