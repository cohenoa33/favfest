class Festival < ApplicationRecord

    has_many :favorites
    has_many :artist_festivals
    has_many :fans, through: :favorites
    has_many :artists, through: :artist_festivals

end
