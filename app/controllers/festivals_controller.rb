class FestivalsController < ApplicationController

    def index
        @festivals = Festival.index_by
    end
    
    def show
        @festival = Festival.find(params[:id])
        @current_fan = current_fan
        if current_fan != nil
            @favorite = @festival.favorites.find_by(fan_id: @current_fan.id)
                if !@favorite.blank?
                @favorite_id = @favorite.id
         end
        end
    end
    

private

    def festival_params
        params.require(:festival).permit(:name, :location, :organizer_id, :image_url, :start_date, :duration, :description)
    end
end