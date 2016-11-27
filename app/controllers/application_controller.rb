class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  include SessionsHelper

  private

  def require_login
    if !current_user
      redirect_to root_path
    end
  end
end
