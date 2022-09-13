class CreateSpells < ActiveRecord::Migration[7.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.text :short_description
      t.string :image_url
      t.text :requirements
      t.text :incantation

      t.timestamps
    end
  end
end
