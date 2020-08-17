class FestivalsController < ApplicationController
    def index
        @festivals = Festival.all
    end
    
    def show
        @festival = Festival.find(params[:id])
    end
    
    def search 
        @festivals_search = Festival.search(params[:location])
    end


    private
    
    def festival_params
        params.require(:festival).permit(:name, :location, :organizer_id, :image_url, :camping, :start_date, :end_date, :description, :search)
    end

end
