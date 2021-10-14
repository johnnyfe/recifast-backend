class CookingListsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    def index
        cookingLists = CookingList.all
        render json: cookingLists
    end

    def show
        cookingList = find_cookingList
        render json: cookingList
    end

    def create
        cookingList = CookingList.create!(params_cookingList)
        render json: cookingList, status: :created
    end

    def update
        cookingList = find_cookingList
        cookingList.update!(params_cookingList)
        render json: cookingList, status: :accepted
    end

    def destroy
        cookingList = cookingList = CookingList.find_by(ingredient_id: params[:id])
        cookingList.destroy
        head :no_content
    end

    private

    def params_cookingList
        params.permit(:recipe_id, :ingredient_id)
    end
    
    def find_cookingList
        CookingList.find(params[:id])
    end

    def render_not_found
        render json: { error: "cookingList not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
