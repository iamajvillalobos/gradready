class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.string :variety
      t.string :color
      t.references :plantation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
