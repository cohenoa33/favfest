class FestivalsController < ApplicationController

    def index
        @festivals = Festival.all
    end
    
    def show
        @festival = Festival.find(params[:id])
        @current_fan = current_fan
    end
    
    def search
         @festivals_search = Festival.search(params[:location])
    end



    def festival_params
        params.require(:festival).permit(:name, :location, :organizer_id, :image_url, :start_date, :duration, :description, :search)
    end
end