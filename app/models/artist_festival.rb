class ArtistFestival < ApplicationRecord
  belongs_to :artist
  belongs_to :festival

  def self.search (search)
    search = search.titleize
    if search.empty?
      @artist_fesitval = nil
    else
      find_festival(search)
    end
  end

  def self.find_festival(search)
    key = "%#{search}%" 
    @festival = Festival.where('location LIKE :search OR name LIKE :search', search: key).order(:name)
    find_artist(search, @festival)
  end

    def self.find_artist(search, festival)
      key = "%#{search}%" 
      @artist = Artist.where('name LIKE :search OR genre LIKE :search', search: key).order(:name)
      search_results(festival, @artist)
    end

    def self.search_results(festival, artist)
      @artist_festival = festival + artist
    end
    
end
