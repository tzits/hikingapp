class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.confirm(params[:email], params[:password])

    if @user
      session[:user_id] = @user.id
      flash[:success] = "You are now logged in."
      redirect_to user_path(@user)
    else
      flash[:error] = "Incorrect login or password"
      render :new
    end

  end

  def destroy
    logout
    redirect_to root_path
  end

end
