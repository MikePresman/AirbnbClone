class Admin::CitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin

  def index
  end

  def edit 
  end

  def show
    @city = City.find_by_id(params[:id])
  end

  def edit 
    @city = City.find_by_id(params[:id])
  end

  def update 
    @city = City.find_by_id(params[:id])
    if @city.update(city_params) 
      redirect_to admin_cities_new_path
    else
      render :edit, status: unprocessable_entity
    end
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to admin_cities_new_path
    else
      flash[:error] = "Error"
      direct_to admin_cities_new_path
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
