class IngredientsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    def index
        ingredients = Ingredient.all
        render json: ingredients
    end

    def show
        ingredient = find_ingredient
        render json: ingredient
    end

    def create
        ingredient = Ingredient.create!(params_ingredient)
        render json: ingredient, status: :created
    end

    def update
        ingredient = find_ingredient
        ingredient.update!(params_ingredient)
        render json: ingredient, status: :accepted
    end

    def destroy
        ingredient = find_ingredient
        ingredient.destroy
        head :no_content
    end

    private

    def params_ingredient
        params.permit(:name, :calories, :category, :image_url, :price, :quantity, :portion)
    end
    
    def find_ingredient
        Ingredient.find(params[:id])
    end

    def render_not_found
        render json: { error: "ingredient not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
