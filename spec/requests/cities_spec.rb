require 'rails_helper'

RSpec.describe "Cities", type: :request do
  current_user = User.first_or_create!(email: "admin@admin.com", password: 'password1234', password_confirmation: 'password1234')
  
  before(:each) do 
    @city = City.new(city_name: "Austin", country: "United States", display_image: "random.jpg")
  end

  describe "GET /cities/:id" do
    it "get city endpoint" do
      city = City.create(city_name: "LA", country: "United States", display_image: "123.png")
      get city_url(city)
      expect(response).to have_http_status(200)
    end
  end
end
