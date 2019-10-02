class UserRoom < ActiveRecord::Migration[5.2]
  def change
    create_table :user_rooms do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
