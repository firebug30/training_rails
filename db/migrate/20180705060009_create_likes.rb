class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :video_id, null: false

      t.timestamps
      t.index :user_id
      t.index :video_id
      t.index [:user_id, :video_id], unique: true
    end
  end
end