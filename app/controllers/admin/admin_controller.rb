class Admin::AdminController < ApplicationController
  before_action :authenticate_admin!
  
  protected
  def authenticate_admin!
    # current_user should have a admin role
  end
end
