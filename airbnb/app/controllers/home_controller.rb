class HomeController < ApplicationController

  def index 
    @top_ten_cities = City.all.limit(5)

    @top_four_countries = Constants::COUNTRIES.select do |n| 
      n == "United States" || n == "Bahamas" || n == "Barbados" || n == "Panama"
    end
  end
end
