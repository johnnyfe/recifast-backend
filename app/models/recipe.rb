class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :cooking_lists, dependent: :destroy
  has_many :ingredients, through: :cooking_lists
  

  validates :name, uniqueness: true, presence: true
  validates :preparation_time, presence: true, numericality: { only_integer: true , greater_than:0, less_than: 1441}
  validates :calories, presence: true, numericality: { only_integer: true, less_than: 5001}
  validates :image_url, presence: true, uniqueness: true
  validates :video_url, presence: true, uniqueness: true
  validates :instructions, presence: true
  validates :description, presence: true
end
