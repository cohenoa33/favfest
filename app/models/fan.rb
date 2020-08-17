class Fan < ApplicationRecord
    has_many :favorites
    has_many :festivals, through: :favorites
    
    validates :username, presence: true, uniqueness: true, length:{ in: 5...15 }
    # validates :password_confirmation, presence: true, length:{ in: 5...10 }
    validates :password, presence: true, length:{ in: 5...10 }
    
    has_secure_password
end
