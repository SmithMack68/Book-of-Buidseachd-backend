class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :creature_type
      t.integer :age
      t.string :password_digest

      t.timestamps
    end
  end
end
