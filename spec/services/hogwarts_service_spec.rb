require 'rails_helper'

RSpec.describe HogwartsService do
  context "instance methods" do
    it "gets students" do
      house = "slytherin"
      service = HogwartsService.new(house)

      return_value = service.get_students

      expect(return_value).to be_a(Hash)
      expect(return_value[:data][:attributes][:name]).to eq(house)
    end
  end
end
