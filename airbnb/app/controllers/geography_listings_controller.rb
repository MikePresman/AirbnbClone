class GeographyListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin


  def index

  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to all_cities_path
    else
      flash[:error] = "Error"
      render "new"
    end
  end

  private
  def city_params
    params.require(:city).permit(
      :city_name,
      :country,
      :display_image
    )
  end


end
