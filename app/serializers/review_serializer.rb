class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment
  has_one :spell
  has_one :user
end
