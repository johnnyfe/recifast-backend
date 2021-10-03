class RecipeSerializer < ActiveModel::Serializer
  attributes id:, :calories, :preparation_time, :image_url, :video_url, :instructions, :description, :name
  has_one :user, serializer: RecipeUserSerializer
end
