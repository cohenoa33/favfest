class FestivalsController < ApplicationController
    def index
    
        @festivals = Festival.search(params[:search])
    end
    
    def show
        @festival = Festival.find(params[:id])
    end
    
    def search  
        if params[:search].blank?  
            flash[:errors] = "Could not find a matching state, please try again."
            render 'search'
        elsif
            @parameter = params[:search].downcase  
            @results = Festival.find_by(location: @parameter.capitalize)
        else 
            flash[:errors] = "Could not find a matching state, please try again."
            render 'search'
        end
    end


    private
    
    def festival_params
        params.require(:festival).permit(:name, :location, :organizer_id, :image_url, :camping, :start_date, :end_date, :description, :search)
    end

end
