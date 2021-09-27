class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.integer :portion
      t.integer :calories
      t.string :category
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
