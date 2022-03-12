class HomeController < ApplicationController
  def index 
    @top_ten_cities = City.all.limit(5)

    @top_four_countries = Constants::COUNTRIES.select do |n| 
      n == "United States" || n == "Bahamas" || n == "Barbados" || n == "Panama"
    end
  end
end

# TODO importmap for alpinejs
# TODO check if I really need sprockets-rails?
# TODO Add rental
# TODO add experiences
# TODO add online etc.
# TODO Ransack

# TODO Rolify 
# TODO Flipper
# TODO Pre-commit. Secrets and rubocop
# TODO Ahoy gem


