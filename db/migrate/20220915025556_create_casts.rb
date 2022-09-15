class CreateCasts < ActiveRecord::Migration[7.0]
  def change
    create_table :casts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :spell, null: false, foreign_key: true

      t.timestamps
    end
  end
end
