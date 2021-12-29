class GeographyListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin

  def index
  end
end
