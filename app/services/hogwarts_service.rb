class HogwartsService
  def initialize(house)
    @house = house
  end

  def get_students
    conn = Faraday.new("http://hogwarts-it.herokuapp.com/api/v1/house/#{@house}?api_key=#{ENV["HOGWARTS_KEY"]}")
    response_body = conn.get.body
    students = JSON.parse(response_body, symbolize_names: true)[:data][0][:attributes]
  end
end
