class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :preparation_time
      t.integer :calories
      t.string :image_url
      t.string :video_url
      t.string :instructions
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
