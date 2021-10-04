class RenameColumnNameInComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :description, :integer
    add_column :comments, :description, :string
  end
end
