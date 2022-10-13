class UserSerializer < ActiveModel::Serializer
  attributes :username
 
  has_many :spells, serializer: UserSpellSerializer
  
  has_many :reviews, serializer: ReviewSerializer
  
 
end
