class SearchFacade
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def total_students
    get_students.count
  end

  def find_students
    service = HogwartsService.new(@house)
  end
end
