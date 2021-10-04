class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :description, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, less_than: 6}
end
