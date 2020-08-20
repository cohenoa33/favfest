class SessionsController < ApplicationController

	def new
	end

	def create
		@fan = Fan.find_by(username: params[:username])
		if @fan && @fan.authenticate(params[:password])
			session[:user_id] = @fan.id
			redirect_to festivals_path
		else
			if @fan == nil
				flash[:message] = "User could not be found."
			else
				flash[:message] = "Wrong password."
			end
			redirect_to new_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to festivals_path
	end
end
