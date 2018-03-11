class UsersController < ApplicationController
  def home
    if false #current_user is a admin
      redirect_to admin_user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end
  
  def show
  end
end
