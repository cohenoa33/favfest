class FansController < ApplicationController
        # before_action :authorized, except: [:new, :create]
        # before_action :current_fan, except: [:new, :create]

        def new
        @fan = Fan.new
        end

        def create
        @fan = Fan.new(fan_params)
            if @fan.save
                session[:user_id] = @fan.id 
                redirect_to festivals_path
            else
                flash[:errors] = @fan.errors.full_messages
                redirect_to signup_path
            end
        end
    
        def show
            @fan = Fan.find(params[:id])
        end

        def index
        @fans = Fan.all
        end

        private

        def fan_params
        params.require(:fan).permit(:username, :password, :password_confirmation)
        end

end