class AddIngredientPortionAndQuantityToCookingList < ActiveRecord::Migration[6.1]
  def change
    add_column :cooking_lists, :ingredient_portion, :integer
    add_column :cooking_lists, :ingredient_quantity, :integer
  end
end
