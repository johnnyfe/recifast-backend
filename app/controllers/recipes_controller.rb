class RecipesController < ApplicationController
    
    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        recipe = Recipe.find(params[:id])
        render json: recipe
    end

    def create
        recipe = Recipe.create!(params_recipe)
        render json: recipe, status: :created
    end

    private

    def params_recipe
        params.permit(:calories, :preparation_time, :video_url, :instructions, :description, :user, :name)
    end
    
end
