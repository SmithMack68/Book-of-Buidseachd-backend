class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_description, :image, :requirements, :incantation
  has_many :reviews
  has_many :casts
end
