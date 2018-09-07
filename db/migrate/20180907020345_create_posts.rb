class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name, null:false
      t.text :description, null:false
      t.integer :likes, null:true

      t.integer :user_id, foreign_key:true
      t.integer :series_id, foreign_key:true

      t.timestamps
    end
  end
end
