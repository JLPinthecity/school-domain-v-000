require "pry"
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {} #will contain keys of grade levels, value will be array of student names

  end

  def add_student(name, grade)
     roster[grade] ||= []
     roster[grade] << "#{name}"
  end

  def grade(num)
    roster(num)
  end
# => {9 => ["AC Slater", "Zach Morris"],
#10 => ["Aardvark", "Kelly Kapowski"],
#11 => ["Screech", "Xavier"]}


  def sort
    sorted = {}
    roster.each do |grade, names|
      sorted[grade] = names.sort
    end
    sorted
  end
