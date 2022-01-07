class HomeController < ApplicationController

  def index 
    @top_ten_cities = City.all.limit(10)
  end
end
