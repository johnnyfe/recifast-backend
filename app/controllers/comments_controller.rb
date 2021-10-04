class CommentsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = find_comment
        render json: comment
    end

    def create
        comment = Comment.create!(params_comment)
        render json: comment, status: :created
    end

    def update
        comment = find_comment
        comment.update!(params_comment)
        render json: comment, status: :accepted
    end

    def destroy
        comment = find_comment
        comment.destroy
        head :no_content
    end

    private

    def params_comment
        params.permit(:ingredient_quantity, :ingredient_portion, :recipe_id, :ingredient_id)
    end
    
    def find_comment
        Comment.find(params[:id])
    end

    def render_not_found
        render json: { error: "comment not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
