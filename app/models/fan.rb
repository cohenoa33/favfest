class Fan < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :festivals, through: :favorites
    
    validates :username, presence: true, uniqueness: true, length:{ in: 5...15 }
    validates :password, presence: true, length:{ in: 5...10 }
    
    has_secure_password

    def most_recent
        self.festivals.order(:created_at)
    end


    def alphabatize 
        self.festivals.order(:name)
    end

    def total_wishlist
        self.favorites.count
    end
   
    def user_name_capitalize
        self.username.capitalize
    end

    def find_comment(festival)
        self.favorites.find_by(festival_id: festival.id).comment
    end

end
