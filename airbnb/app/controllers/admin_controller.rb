class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin

  private
  def validate_admin
    redirect_to root_path unless current_user.is_admin?
  end
end
