class CommentsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    def index
        commentss = Comments.all
        render json: commentss
    end

    def show
        comments = find_comments
        render json: comments
    end

    def create
        comments = Comments.create!(params_comments)
        render json: comments, status: :created
    end

    def update
        comments = find_comments
        comments.update!(params_comments)
        render json: comments, status: :accepted
    end

    def destroy
        comments = find_comments
        comments.destroy
        head :no_content
    end

    private

    def params_comments
        params.permit(:ingredient_quantity, :ingredient_portion, :recipe_id, :ingredient_id)
    end
    
    def find_comments
        Comments.find(params[:id])
    end

    def render_not_found
        render json: { error: "comments not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
