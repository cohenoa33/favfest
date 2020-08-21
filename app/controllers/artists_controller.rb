class ArtistsController < ApplicationController

    def index
        @artists = Artist.index_artist_by
    end
    
    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
		if @artist.save
			redirect_to @artist
		else
		render :new
    end
end
        
    # def edit
    #     @artist = Artist.find(params[:id])
    # end

    # def update
    #     @artist = Artist.update(artist_params)
    #     redirect_to @artist
    # end
    


    private
    def artist_params
        params.require(:artist).permit(:name, :genre, :artist_image, :bio, :video)
    end


end

