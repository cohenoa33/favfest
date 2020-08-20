class Festival < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :artist_festivals
    has_many :fans, through: :favorites
    has_many :artists, through: :artist_festivals

    def self.index_by
       Festival.order(:name)
    end
    
    def uniq_artists
        self.artists.order(:name).uniq
    end

    def date
        self.start_date.strftime("%m/%d/%Y")
    end

    def updated_at
        self.favorites.order(:created_at)
    end

    def alphabatize 
        self.favorites.order(:name).alphabetize
    end


end # class end
