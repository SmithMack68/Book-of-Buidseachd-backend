class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_description, :image, :requirements, :incantation

  has_many :reviews, serializer: ReviewSerializer

  # def user_can_modify
  #   current_user == self.object.user
  # end
end
