class AddUserIdToSpells < ActiveRecord::Migration[7.0]
  def change
    add_column :spells, :user_id, :integer
  end
end
