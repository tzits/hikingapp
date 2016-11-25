class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  include SessionsHelper

  private
  
  def require_login
    if !current_user
      #send an http response to stop program execution
      redirect_to root_path
    end
  end
end
