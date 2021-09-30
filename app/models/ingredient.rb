class Ingredient < ApplicationRecord
    has_many :cooking_lists, dependent: :destroy
    has_many :ingredients, through: :cooking_lists
end
