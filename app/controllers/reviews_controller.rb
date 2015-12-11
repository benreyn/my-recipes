class ReviewsController < ApplicationController
  
  before_action :get_review, except: [:index, :new, :create]
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.create(review_params)
    redirect_to recipe_path(@recipe)
  end
  
  def destroy
  end
  
  private
  
    def review_params
      params.require(:comment).permit(:title, :body)
    end
  
end