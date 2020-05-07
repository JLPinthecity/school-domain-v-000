require "pry"
class School
  attr_accessor :name 

  def initialize(name)
    @name = name
    @roster = {} #will contain keys of grade levels, value will be array of student names

  end

  def add_student(name, grade)
     hash["grade"] = []
     hash["grade"] << "#{name}"
     hash
  end

end
