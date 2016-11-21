class SessionsController < ApplicationController
  def new
  @user = User.new
end

def create
  @user = User.confirm(params[:email], params[:password])

  if @user
    login(@user)
    flash[:success] = "You are now logged in."
    redirect_to @user
  else
    flash[:error] = "Incorrect login or password"
    redirect_to root_path
  end

end

def destroy
  session[:user_id] = nil
  flash[:success] = "You are logged out. Bye!"
  logout
  redirect_to root_path
end

end
