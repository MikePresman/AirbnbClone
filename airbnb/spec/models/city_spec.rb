require 'rails_helper'
require 'constants.rb'

RSpec.describe City, type: :model do
  current_user = User.first_or_create!(email: "admin@admin.com", password: 'password1234', password_confirmation: 'password1234')
  
  before(:each) do 
    @city = City.new(city_name: "Austin", country: "United States", display_image: "random.jpg")
  end

  it 'has a valid country name' do 
      expect(Constants::COUNTRIES).to include(@city.country)
  end

  it 'has a display image' do
    expect(@city.display_image).not_to be_empty
  end

  it 'is a unique entry' do
    expect(City.where(city_name: @city.city_name, country: @city.country)).to be_empty
  end

  
end
