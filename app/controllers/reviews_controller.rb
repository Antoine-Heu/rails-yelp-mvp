class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to reviews_id_path(@review)
  end

  def new
    @review = Review.new
  end

  private

  def restaurant_params
    params.require(:review).permit(:rating, :content)
  end

end
