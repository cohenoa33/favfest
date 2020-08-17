class Festival < ApplicationRecord

    has_many :favorites
    has_many :artist_festivals
    has_many :fans, through: :favorites
    has_many :artists, through: :artist_festivals


    def self.search (search)
        key = "%#{search}%"
        if search.empty? 
            @festivals_search = nil
        else 
            @festivals_search = Festival.where('location LIKE :search OR name LIKE :search', search: key).order(:name)
        end
    end

end # class end
