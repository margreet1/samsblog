class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end
end
