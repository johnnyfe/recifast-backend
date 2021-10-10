class Ingredient < ApplicationRecord
    has_many :cooking_lists, dependent: :destroy
    has_many :ingredients, through: :cooking_lists

    validates :name, uniqueness: true, presence: true
    validates :calories, presence: true, numericality: { only_integer: true, less_than: 1001}
    validates :image_url, presence: true, uniqueness: true 
    validates :category, presence: true
    validates :price, presence: true, numericality: { only_integer: true, more_than:1, less_than: 10001}
    validates :quantity, presence: true, numericality: { only_integer: true, more_than:1, less_than: 101}
    validates :portion, presence: true, numericality: { only_integer: true, more_than:0, less_than: 1001}
end
