class ArtistsController < ApplicationController

    def index
        @artists = Artist.all.order(:name)
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

    # def update
	# 	if @artist.update(artist_params)
	# 		redirect_to @artist
	# 	else
	# 		render :edit
	# 	end
	# end

    private

    def artist_params
        params.require(:artist).permit(:name, :genre, :artist_image, :bio, :video)
    end


end

