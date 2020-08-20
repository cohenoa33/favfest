class ArtistFestivalsController < ApplicationController
    
    def search
        @artist_festival = ArtistFestival.search(params[:search])
        
    end

    private
    def artist_festivals_params
        params.require(:artist_festivals).permit(:search)
    end
end
