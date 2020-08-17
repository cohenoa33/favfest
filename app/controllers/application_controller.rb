class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= Fan.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to festivals_path if !logged_in?
  end

end
