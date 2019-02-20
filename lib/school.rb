class School
  attr_accessor :roster

  def initialize(school_name)
    @roster = {}
    @school_name = school_name
  end

  def add_student(name, grade)
    if @roster[grade].nil?
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.values.each {|array| array.sort!}
    @roster
  end
end
