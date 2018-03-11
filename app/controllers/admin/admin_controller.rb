class Admin::AdminController < ApplicationController
  before_action :authenticate_admin!
  
  protected

  def authenticate_admin!
    unless current_user.is_admin?
      redirect_to root_url
    end
  end
end
