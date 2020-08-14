class Fan < ApplicationRecord
    has_many :favorites
    has_many :festivals, through: :favorites
end
