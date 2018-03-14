class Admin::ReferralCodesController < Admin::AdminController
  def new
    @referral_code = ReferralCode.new
  end

  def create
    user = User.find(params[:referral_code][:user_id])
    @referral_code = user.referral_codes.new(referral_code_params)
    if @referral_code.save
      flash[:alert] = 'Referral is added'
      redirect_to admin_user_path(current_user)
    else
      render 'new'
    end
  end

  private
  def referral_code_params
    params.require(:referral_code).permit(:code)
  end
end
