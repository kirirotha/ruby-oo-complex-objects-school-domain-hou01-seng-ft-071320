# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    if @roster.key?(@grade)
      @roster[@grade] << @name
    else
      @roster[@grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, students|
      sorted_roster[grade] = students.sort
    end
    sorted_roster
  end
end
