class AddRelationshipToPlantation < ActiveRecord::Migration
  def change
    add_column :vegetables, :plantation_id, :integer
  end
end
