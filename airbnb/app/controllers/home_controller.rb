class HomeController < ApplicationController
  def index 
    @top_ten_cities = City.all.limit(5)

    @value="old"
    @top_four_countries = Constants::COUNTRIES.select do |n| 
      n == "United States" || n == "Bahamas" || n == "Barbados" || n == "Panama"
    end
  end

  def test_stream
    @value="new"
    render layout: false
  end
end

# TODO importmap + initialize alpinejs3 for it
# TODO turbo stream example
# TODO Add rental
# TODO add experiences
# TODO add online etc.
# TODO Ransack

# TODO Rolify 
# TODO Flipper
# TODO Pre-commit. Secrets and rubocop
# TODO Ahoy gem


