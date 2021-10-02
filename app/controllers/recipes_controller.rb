class RecipesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    def index
        recipes = Recipe.all
        render json: recipes
    end

    def show
        recipe = find_recipe
        render json: recipe
    end

    def create
        recipe = Recipe.create!(params_recipe)
        render json: recipe, status: :created
    end

    def update
        recipe = find_recipe
        recipe.update!(params_recipe)
        render json: recipe, status: :accepted
    end

    def destroy
        recipe = find_recipe
        recipe.destroy
        head :no_content
    end

    private

    def params_recipe
        params.permit(:calories, :preparation_time, :image_url, :video_url, :instructions, :description, :name, :user_id)
    end
    
    def find_recipe
        Recipe.find(params[:id])
    end

    def render_not_found
        render json: { error: "recipe not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
