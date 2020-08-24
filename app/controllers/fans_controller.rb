class FansController < ApplicationController
    before_action :authorized, except: [:new, :create]
    before_action :current_fan, except: [:new, :create]
    before_action :find_fan, only: [:show, :alphabetical_order]

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
        @fan = Fan.find(@current_fan.id)
        @fanfestivals =  @fan.festivals
        # byebug
        if params[:sort]
            @fanfestivals =  @fanfestivals.sort_by do |festival| 
                festival.name
            end
        else 
            byebug
            # @fanfestivals =  @fanfestivals.sort_by {|festival| festival.created_at}
        end
    end

    def index
        @fans = Fan.all
    end

    def alphabetical_order
        # @fan = Fan.find(@current_fan.id)
        redirect_to '/alphabetical'
    end
    private

    def fan_params
    params.require(:fan).permit(:username, :password, :password_confirmation, :sort)
    end

    def find_fan
        @fan = Fan.find(@current_fan.id)
    end

end