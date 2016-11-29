class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      login(@user)
      add_checklists(@user)
      redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.join(". ")
      redirect_to root_path
    end
  end

  def show
    @user =  User.find(params[:id])
    @sql_hike = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 1")
    @sql_bike = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 2")
    @sql_canoe = User.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{params[:id]} AND list_id = 3")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      redirect_to :back
      flash[:error] = @user.errors.full_messages.join(". ")
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :trail_name, :gender, :email, :experience, :password, :bio, :avatar)
  end

end
