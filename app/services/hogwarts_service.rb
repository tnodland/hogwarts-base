class HogwartsService
  def initialize(house)
    @house = house
  end

  def get_students
    binding.pry
    conn = Faraday.new("http://hogwarts-it.herokuapp.com/api/v1/house/#{@house}?api_key=#{ENV["HOGWARTS_KEY"]}")
  end
end
