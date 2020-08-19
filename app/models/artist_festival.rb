class ArtistFestival < ApplicationRecord
  belongs_to :artist
  belongs_to :festival

    def self.search (search)
        search = search.titleize
        key = "%#{search}%"
        if search.empty? 
            @search = nil
            byebug
        else 
            @search = Festival.where('location LIKE :search OR name LIKE :search', search: key).order(:name)
            if @search.empty?
                @search = Artist.where('name LIKE :search', search: key).order(:name)
            else 
                @search
            end 
        end
    end
end
