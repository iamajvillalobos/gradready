class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.string :variety
      t.string :color
      t.date :harvested_at

      t.timestamps null: false
    end
  end
end
