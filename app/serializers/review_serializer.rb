class ReviewSerializer < ActiveModel::Serializer
  attributes :username, :comment, :spell
 
  has_one :spell
  def spell 
    {name:object.spell.name}
    end
    

  def username
    object.user.username if object.user
  end
end



