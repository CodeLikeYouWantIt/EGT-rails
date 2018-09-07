class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.text :description, null:false
      t.string :time, null:false
      t.date :date, null:false
      t.string :location, null:false

      t.timestamps
    end
  end
end
