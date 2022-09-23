class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    has_secure_password #password setter/encrypter 

    has_many :casts
    has_many :spells, through: :casts
    # has_many :reviews
    # has_many :users, through: :reviews
end
