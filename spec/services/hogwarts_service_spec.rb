require 'rails_helper'

RSpec.describe HogwartsService do
  context "instance methods" do
    it "gets students" do
      house = "Slytherin"
      service = HogwartsService.new(house)

      return_value = service.get_students

      expect(return_value).to be_a(Array)
      expect(return_value[0]).to be_a(Hash)
    end
  end
end
