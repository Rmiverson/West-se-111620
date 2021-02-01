class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :light
      t.string :water
      t.integer :price

      t.timestamps
    end
  end
end