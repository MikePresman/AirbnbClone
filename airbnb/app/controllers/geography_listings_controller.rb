class GeographyListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin

  def index

  end

  def new
    @city = City.new
  end

  def create
    puts params[:city]
  end

  private
  def new_city_validation
    # params.permit(:city).require()
  end


end
