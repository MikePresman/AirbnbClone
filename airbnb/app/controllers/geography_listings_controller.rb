class GeographyListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin


  def index

  end

  def new
    @city = City.new
    @countries = Constant::COUNTRIES
  end

  def create
    city = new_city_validation
    if new_city.save

    else

    end
  end

  private
  def new_city_validation
    params.require(:city).permit(
      :city_name,
      :country,
      :display_image
    )
  end


end
