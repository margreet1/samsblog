class ReviewsController < ApplicationController

  def admin_list
    authorize Review
  end

  def index
    @reviews = Review.all
  end

  def show
    @user = authorize User.find(params[:id])
    @review = Review.find(params[:id])
  end

  def admin
    @review = Review.all
  end

  def update
    @review = Review.find(params[:id])
    authorize @review,
    if @review.update(review_params)
      redirect_to @review
    else
      render :edit
    end
  end

  def publish
    @review = Review.find(params[:id])
    authorize @review, :update?
    @review.publish!
    redirect_to @review
  end
end
