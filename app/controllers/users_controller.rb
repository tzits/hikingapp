class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.valid?
			@user.save
    else
      redirect_to root_path
    end
  end

  def show
    @user =  User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      redirect_to :back
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private
def user_params
  params.require(:user).permit(:first_name, :last_name, :trail_name :gender, :username, :experience, :password, :bio, :avatar)
end

end
