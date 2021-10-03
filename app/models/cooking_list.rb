class CookingList < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :ingredient_quantity, presence: true, numericality: { only_integer: true, more_than:1, less_than: 101}
  validates :ingredient_portion, presence: true, numericality: { only_integer: true, more_than:1, less_than: 1001}
end
