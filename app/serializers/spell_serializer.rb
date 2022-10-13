class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_description, :image, :requirements, :incantation

  has_many :reviews, serializer: ReviewSerializer
  # has_many :reviews, key: :user


end
