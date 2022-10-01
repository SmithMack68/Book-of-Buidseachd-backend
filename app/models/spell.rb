class Spell < ApplicationRecord
    has_many :casts
    has_many :users, through: :casts
    has_many :reviews
    has_many :users, through: :reviews 
end 