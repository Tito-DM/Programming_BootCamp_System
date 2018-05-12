load 'course.rb'
class CourseList

  def initialize
    @curseContainer = Array.new
  end


  def add_curse curso
    @curseContainer.push(curso)
  end
end