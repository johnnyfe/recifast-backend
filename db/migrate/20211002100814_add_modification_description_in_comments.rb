class AddModificationDescriptionInComments < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :descriptionrating, :description
    add_column :comments, :rating, :integer
  end
end
