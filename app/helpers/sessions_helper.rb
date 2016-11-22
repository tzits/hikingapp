module SessionsHelper

  # def login(user)
  #   session[:user_id] = user.id
  #   @current_user = user
  # end

  def logout
    @current_user = session[:user_id] = nil
  end

  def logged_in?
    if @current_user
      true
    else
      false
    end
  end
end
