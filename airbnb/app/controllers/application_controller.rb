class ApplicationController < ActionController::Base
  def validate_admin
    redirect_to root_path unless current_user.is_admin?
  end
end
