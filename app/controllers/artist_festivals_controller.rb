class ArtistFestivalsController < ApplicationController

    def search
        @search = ArtistFestival.search(params[:search])
    end

    private

    def aertistfestival_params
        params.require(:artistfestival).permit(:search)
    end

end
