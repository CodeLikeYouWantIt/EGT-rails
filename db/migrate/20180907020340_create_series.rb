class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title, null:false
      t.integer :user_id, foreign_key:true
      t.timestamps
    end
  end
end
