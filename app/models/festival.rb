class Festival < ApplicationRecord

    has_many :favorites
    has_many :artist_festivals
    has_many :fans, through: :favorites
    has_many :artists, through: :artist_festivals

    validates :search, length: { minimum: 3 }

    def self.search(search)
        if search 
            festivals = Festival.find_by(location: search)
            if festivals
                self.where(festival_id: festivals)
            else 
                Festival.all
            end
        else
            Festival.all
        end
    end
    
end # class end
