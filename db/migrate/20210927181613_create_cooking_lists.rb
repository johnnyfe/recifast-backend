class CreateCookingLists < ActiveRecord::Migration[6.1]
  def change
    create_table :cooking_lists do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
