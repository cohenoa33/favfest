class FestivalsController < ApplicationController
    def index
        @festivals = Festival.all
    end
    
    def show
        # byebug
        @festival = Festival.find(params[:id])
    end



    private

    # def festival_params
    #     params.require(:festival).permit
    # end

end
