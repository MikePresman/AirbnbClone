require 'rails_helper'

RSpec.describe "Admin::Cities", type: :request do

  before(:each) do 
    current_user = User.first_or_create!(email: "admin@admin.com", password: 'password1234', password_confirmation: 'password1234')
    Admin.create!(user_id: current_user.id)
  end


  # TODO fix this 302
  describe "GET /admin/cities" do
    it "get index admin/cities" do
      get admin_cities_path 
      expect(response).to have_http_status(:success)
    end
  end
end
