require 'rails_helper'

RSpec.describe "cities/show", type: :view do
  current_user = User.first_or_create!(email: "admin@admin.com", password: 'password1234', password_confirmation: 'password1234')

  before(:each) do 
    @city = City.new(city_name: "Austin", country: "United States", display_image: "random.jpg")
  end

  it 'renders a banner of the city image' do
    render
    assert_select "img" do
      assert_select "[src=?]", @city.display_image
    end
  end
end