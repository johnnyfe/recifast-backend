class CookingListSerializer < ActiveModel::Serializer
  attributes :id, :recipe_id, :ingredient_id, :ingredient_portion, :ingredient_quantity
  belongs_to :recipe
  belongs_to :ingredient
end
