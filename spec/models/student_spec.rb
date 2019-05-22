require 'rails_helper'

RSpec.describe Student do
  it "has attributes" do
    attrs = {
      :id=>52,
      :name=>"Gormlaith Gaunt",
      :house_id=>4,
      :created_at=>"2019-03-30T17:47:41.195Z",
      :updated_at=>"2019-03-30T17:47:41.195Z"}

    student = Student.new(attrs)
    expect(student.id).to eq(52)
    expect(student.name).to eq("Gormlaith Gaunt")
  end
end
