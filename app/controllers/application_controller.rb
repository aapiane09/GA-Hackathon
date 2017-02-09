class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def require_login
    if !current_user
      redirect_to login_path
    end
  end
end
