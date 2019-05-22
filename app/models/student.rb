class Student
  attr_reader :name, :id

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
  end
end
