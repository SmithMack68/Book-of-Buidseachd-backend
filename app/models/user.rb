class User < ApplicationRecord
    has_secure_password #password setter/encrypter 
    validates :username, presence: true, uniqueness: true

    has_many :casts
    has_many :spells, through: :casts
    has_many :reviews
    has_many :spells, through: :reviews
end
