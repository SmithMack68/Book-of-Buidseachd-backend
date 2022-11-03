class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :comment, :spell, :permitted
 
  has_one :spell
  def spell 
    {name:object.spell.name}
    end
    
  def username
    object.user.username if object.user
  end

  def permitted
    current_user == self.object.user
  end
end



