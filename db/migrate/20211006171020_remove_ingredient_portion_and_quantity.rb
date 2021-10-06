class RemoveIngredientPortionAndQuantity < ActiveRecord::Migration[6.1]
  def change
    remove_column :cooking_lists, :ingredient_portion, :integer
    remove_column :cooking_lists, :ingredient_quantity, :integer
  end
end
