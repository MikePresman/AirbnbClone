class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :validate_admin
end
