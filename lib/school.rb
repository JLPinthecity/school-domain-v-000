require "pry"
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #will contain keys of grade levels, value will be array of student names

  end

  def add_student(name, grade)
     roster["#{grade}"] = []
     roster["#{grade}"] << "#{name}" if !roster["#{grade}"].include?("#{name}")
     roster["#{grade}"]
  end

end
