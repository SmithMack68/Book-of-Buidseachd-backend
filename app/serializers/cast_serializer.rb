class CastSerializer < ActiveModel::Serializer
  attributes :user, :spell

  has_one :user

  def spell
    {name:object.spell.name}
  end

end
