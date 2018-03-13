class WelcomeController < ApplicationController
  def home
    if current_user.is_admin?
      redirect_to admin_user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end
end
