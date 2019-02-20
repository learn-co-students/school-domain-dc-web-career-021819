require 'pry'
class School
  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    sorted_roster = {}
    grades = @roster.keys.sort
    grades.each do |grade|
      sorted_roster[grade] = @roster[grade].sort
    end
    sorted_roster
  end
end
