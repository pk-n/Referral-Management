class UsersController < ApplicationController
  def show
  end
  
  def home
    redirect_to current_user
  end
end
