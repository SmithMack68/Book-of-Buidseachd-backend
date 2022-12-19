class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :short_description, :image, :requirements, :incantation, :permitted

  has_many :reviews, serializer: ReviewSerializer

  def permitted
    current_user.id == self.object.user_id
    # current_user == self.object.users
  end
end
