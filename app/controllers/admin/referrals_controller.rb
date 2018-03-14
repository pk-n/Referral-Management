class Admin::ReferralsController < Admin::AdminController
  before_action :referral_params, only: [:create]
  
  def new
    @referral = Referral.new
  end
  
  def create
    referral_code = ReferralCode.find(params[:referral][:referral_code])
    @referral = referral_code.referrals.new(referral_params)
    if @referral.save
      flash[:alert] = 'A new Referral is created'
      redirect_to admin_user_path(current_user)
    else
      render 'new'
    end
  end
  
  private
  def referral_params
    params.require(:referral).permit(:first_name, :last_name, :email, :phone_number)
  end
end
