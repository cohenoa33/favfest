class Artist < ApplicationRecord
    has_many :artist_festival
    has_many :festivals, through: :artist_festival

    def self.index_artist_by
       Artist.order(:name)
    end

    def shows 
        self.festivals.order(:name).uniq
    end

end
