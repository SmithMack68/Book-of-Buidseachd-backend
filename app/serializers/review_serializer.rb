class ReviewSerializer < ActiveModel::Serializer
  attributes :comment, :user, :spell
  # has_one :spell
  has_one :user

  # def review
  #   {}
  # end

end
