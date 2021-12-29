class GeographyListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin


  def index
  end

  def show
  end

  def create
  end

  def new
  end


  private
  def new_city_listing
  end
end
