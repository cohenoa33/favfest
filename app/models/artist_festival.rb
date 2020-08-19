class ArtistFestival < ApplicationRecord
  belongs_to :artist
  belongs_to :festival

  def self.search (search)
    search = search.titleize
    key = "%#{search}%" 
    if !search.empty? 
          @artist_festival = Festival.where('location LIKE :search OR name LIKE :search', search: key).order(:name)
          if @artist_festival.empty?
            @artist_festival = Artist.where('name LIKE :search OR genre LIKE :search', search: key).order(:name)
          else
            @artist_festival
          end
    else
        @artist_fesitval = nil
      end
    end
    
end
