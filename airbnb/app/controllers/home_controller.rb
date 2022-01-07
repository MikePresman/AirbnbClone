class HomeController < ApplicationController

  def index 
    @top_ten_cities = City.all.limit(5)
  end
end
