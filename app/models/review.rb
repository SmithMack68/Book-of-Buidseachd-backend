class Review < ApplicationRecord
  belongs_to :spell
  belongs_to :user
end
