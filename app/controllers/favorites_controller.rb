class FavoritesController < ApplicationController
    before_action :find_festival, :current_fan
    before_action :find_favorite, only: [:destroy]

    def create
        if already_added_to_wishlist?
            flash[:notice] = "You can't add to wishlist more than once"
        else
            @wishlist = @festival.favorites.create(fan_id: current_fan.id)
            # byebug
            redirect_to @festival
        end
    end

    def destroy
    # byebug
    if !(already_added_to_wishlist?)
    flash[:notice] = "Cannot un-wishlist"
    else
    @favorite.destroy
    end
    redirect_to @festival
    end

    
    def already_added_to_wishlist?
        Favorite.where(fan_id: current_fan.id, festival_id:
        params[:festival_id]).exists?
    end

    private

    def find_festival
        @festival = Festival.find(params[:festival_id])
    end

    def find_favorite
        @favorite = @festival.favorites.find(params[:id])
    end

end
