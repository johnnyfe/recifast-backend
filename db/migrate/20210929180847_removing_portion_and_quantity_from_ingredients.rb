class RemovingPortionAndQuantityFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :portion, :integer
    remove_column :ingredients, :quantity, :integer
  end
end
