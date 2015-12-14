class ReviewsController < ApplicationController
  
  def edit
    @review = Review.find(params[:id])
  end
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = @recipe.reviews.build(review_params)
    @review.chef = current_user
    if @review.save
      flash[:success] = "Your review was submitted succesfully"
      redirect_to recipe_path(@recipe)
    else
      flash[:danger] = "There was problem submitting your review"
      redirect_to :back
    end
  end
  
  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:success] = "Your review was updated succesfully"
      redirect_to recipe_path(@review.recipe)
    else
      render 'edit'
    end
  end
  
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end
  
  private
  
    def review_params
      params.require(:review).permit(:title, :body)
    end
    
end