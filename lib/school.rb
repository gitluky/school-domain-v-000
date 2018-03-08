class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student, grade)
    if !roster.keys.include?(grade)
      roster[grade] = []
    end
    roster[grade] << student
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    roster.collect do |grade,students|
      students.sort
    end
  end

end
