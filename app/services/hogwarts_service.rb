class HogwartsService
  def initialize(house)
    @house = house
  end

  def house_converter(house)
    if @house == "Slytherin"
     4
   elsif @house == "Griffyndor"
     1
   elsif @house == "Ravenclaw"
     2
   elsif @house == "Hufflepuff"
     3
    end
  end

  def get_students
    response_body = conn.get.body
    students = JSON.parse(response_body, symbolize_names: true)
    # binding.pry
  end

  private
    def conn
      @_conn ||= faraday_block
    end

    def faraday_block
      Faraday.new("https://hogwarts-as-a-service.herokuapp.com/api/v1/house/#{house_converter(@house)}") do |f|
        f.headers['x_api_key'] = ENV["HOGWARTS_KEY"]
        f.adapter Faraday.default_adapter
      end
    end
end
