class Admin::UsersController < Admin::AdminController
  layout "admin"
  before_filter :admin_user

  def index
    @users = User.order(:updated_at).page(params[:page]).per(15)
  end
  def new
    @user = Admin::User.new
  end

  def show
    @user = Admin::User.find(params[:id])
  end

  def create
    @user = Admin::User.new(params.require(:admin_user).permit(:name, :admin))
    if @user.valid?
      @user.save
      redirect_to admin_user_path(@user), notice: :".created"
    else
      render :new
    end
  end

  def edit
    @user = Admin::User.find(params[:id])
  end

  def update
    @user = Admin::User.find(params[:id])
    user = params.require(:admin_user).permit(:name, :admin)
    if @user.update(user)
      redirect_to admin_user_path(@user), notice: :".updateted"
    else
      render :edit
    end
  end

  def destroy
    @user = Admin::User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end
end
