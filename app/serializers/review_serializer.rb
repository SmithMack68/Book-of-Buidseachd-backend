class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :username

  belongs_to :user

  def username
    object.user.username if object.user
  end
end
