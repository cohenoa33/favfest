class ApplicationController < ActionController::Base

  def current_fan
    @current_fan ||= Fan.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_fan
  end

  def authorized
    redirect_to festivals_path if !logged_in?
  end

  
end
