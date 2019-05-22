class SearchFacade
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def total_students
    find_students.count
  end

  def find_students
    service = HogwartsService.new(@house)
    students = service.get_students
    students.map do |student|
      Student.new(student)
    end
  end
end
