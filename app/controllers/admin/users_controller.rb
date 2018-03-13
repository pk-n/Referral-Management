class Admin::UsersController < Admin::AdminController
  before_action :user_params, only: [:create]

  def new
    @user = User.new
  end

  def index
    @users = User.all.where.not(id: current_user.id)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:alert] = "A new User is added"
      redirect_to admin_users_path
    else
      render 'new'
    end
  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation)
    end
end
