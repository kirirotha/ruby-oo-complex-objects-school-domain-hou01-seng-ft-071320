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
      @roster.add {@grade => [name]}
    end
  end

end
