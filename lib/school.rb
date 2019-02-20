# code here!
require 'pry'
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade] == nil
      roster[grade] = [student_name]
    else
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.sort.to_h.each do |k, v|
      roster[k] = v.sort
    end
    roster
  end

end
