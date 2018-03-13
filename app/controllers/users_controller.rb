class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @referral_codes = @user.referral_codes.includes(:referrals)
  end

  private

  def set_user
    if current_user.is_admin?
      @user = User.find(params[:id])
    else
      @user = current_user
    end
  end
end
