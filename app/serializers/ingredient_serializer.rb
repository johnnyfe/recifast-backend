class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :category, :image_url, :price, :quantity, :portion
  has_many :cooking_lists
end
