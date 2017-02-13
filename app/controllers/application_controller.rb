class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def require_login
    if !current_user
      redirect_to login_path
    end
  end

  def save_my_previous_url
    session[:my_previous_url] = URI(request.referer || '').path
  end
end
