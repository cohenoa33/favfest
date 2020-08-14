class Artist < ApplicationRecord
    has_many :artist_festival
    has_many :festivals, through: :artist_festival
end
