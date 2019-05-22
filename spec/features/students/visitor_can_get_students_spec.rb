require 'rails_helper'

RSpec.describe "as a visitor" do
  context "when i select a house" do
    it "gets the students from that house" do
      # When I visit "/"
      visit '/'
      # And I select "Slytherin" from the dropdown
      select "Slytherin", :from => :house
      click_on "Get Students"
      # Then my path should be "/search" with "house=slytherin" in the parameters
      # expect(page).to have_current_path(search_path(house: 'slytherin'))
      # And I should see a message "22 Students"
      expect(page).to have_content("22 Students")
      # And I should see a list of the 22 members of Slytherin
      expect(page.all('.student').count).to eq(22)
      # And I should see a name and id for each student.
      within(page.all('.student')[0]) do
        expect(page).to have_content("Name:")
        expect(page).to have_content("ID:")
      end
    end
  end
end
