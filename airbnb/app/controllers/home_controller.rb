class HomeController < ApplicationController
  def index 
    @top_ten_cities = City.all.limit(5)

    @top_four_countries = Constants::COUNTRIES.select do |n| 
      n == "United States" || n == "Bahamas" || n == "Barbados" || n == "Panama"
    end

    @value_2 = "old"
  end


  def value
    puts params
    puts request.query_parameters

    @value = "new"
    @disable_nav = true
    render layout: false
  end


end

# TODO Add rental
# TODO add experiences
# TODO add online etc.
# TODO Ransack

# TODO Rolify 
# TODO Flipper
# TODO Pre-commit. Secrets and rubocop
# TODO Ahoy gem


